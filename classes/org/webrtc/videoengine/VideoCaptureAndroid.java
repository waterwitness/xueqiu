package org.webrtc.videoengine;

import android.annotation.SuppressLint;
import android.graphics.ImageFormat;
import android.graphics.SurfaceTexture;
import android.hardware.Camera;
import android.hardware.Camera.AutoFocusCallback;
import android.hardware.Camera.CameraInfo;
import android.hardware.Camera.Parameters;
import android.hardware.Camera.PreviewCallback;
import android.os.Handler;
import android.util.Log;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceHolder.Callback;
import com.letpower.engine.PAEngine;
import com.pingan.a.a.e;
import com.pingan.main.IAVCallStatusListener;
import java.io.IOException;
import java.io.PrintStream;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.Exchanger;
import java.util.concurrent.ExecutorService;

public class VideoCaptureAndroid
  implements Camera.PreviewCallback, SurfaceHolder.Callback
{
  public static final String DEFAULT_SINGLE_POOL_NAME = "DEFAULT_SINGLE_POOL_NAME";
  private static final String TAG = "VideoCaptureAndroid";
  public static Camera cameraFront;
  private static Camera.CameraInfo cameraInfo;
  private static Exchanger<Handler> handlerExchanger;
  private static SurfaceHolder localPreview;
  private static IAVCallStatusListener mAvCallStatusListener = null;
  private static VideoCaptureAndroid.ThreadPoolProxy mShortPool = null;
  private static Exchanger<Boolean> result;
  private Camera camera;
  private VideoCaptureAndroid.CameraThread cameraThread;
  private Handler cameraThreadHandler;
  private SurfaceTexture dummySurfaceTexture;
  private ExecutorService executor;
  private final int id;
  private final Camera.CameraInfo info;
  private final long native_capturer;
  private final int numCaptureBuffers = 3;
  TimerTask task;
  Timer timer;
  
  public VideoCaptureAndroid(int paramInt, long paramLong)
  {
    this.id = paramInt;
    this.native_capturer = paramLong;
    if (cameraInfo == null)
    {
      System.out.println("new Camera.CameraInfo();");
      cameraInfo = new Camera.CameraInfo();
    }
    this.info = cameraInfo;
    Camera.getCameraInfo(paramInt, this.info);
    if (handlerExchanger == null) {
      System.out.println("new Exchanger<Handler>();==" + Thread.currentThread().isAlive());
    }
    handlerExchanger = new Exchanger();
    if (mShortPool == null)
    {
      System.out.println("new ThreadPoolProxy()==" + Thread.currentThread().isAlive());
      mShortPool = new VideoCaptureAndroid.ThreadPoolProxy();
    }
  }
  
  private native void ProvideCameraFrame(byte[] paramArrayOfByte, int paramInt, long paramLong);
  
  private static <T> T exchange(Exchanger<T> paramExchanger, T paramT)
  {
    try
    {
      paramExchanger = paramExchanger.exchange(paramT);
      return paramExchanger;
    }
    catch (InterruptedException paramExchanger)
    {
      throw new RuntimeException(paramExchanger);
    }
  }
  
  private void outputAVCallStatus(int paramInt, Object paramObject)
  {
    mAvCallStatusListener = PAEngine.getIAVCallStatusListener();
    e.a("LDSDK", "VideoCaptureAndroid-outputAVCallStatus mAvCallStatusListener:" + mAvCallStatusListener + "--status:" + paramInt + "--obj:" + paramObject);
    if (mAvCallStatusListener != null)
    {
      e.a("LDSDK", "VideoCaptureAndroid-outputAVCallStatus mAvCallStatusListener  in");
      mAvCallStatusListener.outputAVCallStatus(paramInt, paramObject);
    }
  }
  
  public static void setLocalPreview(SurfaceHolder paramSurfaceHolder)
  {
    localPreview = paramSurfaceHolder;
  }
  
  private void setPreviewDisplayOnCameraThread(SurfaceHolder paramSurfaceHolder, Exchanger<IOException> paramExchanger)
  {
    try
    {
      this.camera.setPreviewDisplay(paramSurfaceHolder);
      exchange(paramExchanger, null);
      return;
    }
    catch (IOException paramSurfaceHolder)
    {
      exchange(paramExchanger, paramSurfaceHolder);
    }
  }
  
  private void setPreviewRotation(final int paramInt)
  {
    try
    {
      mShortPool.execute(new Runnable()
      {
        public void run()
        {
          VideoCaptureAndroid.this.setPreviewRotationOnCameraThread(paramInt);
        }
      });
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  private void setPreviewRotationOnCameraThread(int paramInt)
  {
    Log.v("VideoCaptureAndroid", "setPreviewRotation:" + paramInt);
    if (this.camera == null) {
      return;
    }
    if (this.info.facing == 1)
    {
      int i = (360 - paramInt) % 360;
      Log.v("VideoCaptureAndroid", "info.facing == Camera.CameraInfo.CAMERA_FACING_FRONT setPreviewRotation:" + paramInt + ", resultRotation=" + i);
      paramInt = i;
    }
    for (;;)
    {
      this.camera.setDisplayOrientation(paramInt);
      return;
      Log.v("VideoCaptureAndroid", "info.facing == Camera.CameraInfo.CAMERA_FACING_BACK setPreviewRotation:" + paramInt + ", resultRotation=" + paramInt);
    }
  }
  
  private boolean startCapture(final int paramInt1, final int paramInt2, final int paramInt3, final int paramInt4)
  {
    try
    {
      final Exchanger localExchanger = new Exchanger();
      if (mShortPool == null)
      {
        System.out.println("diyici==mShortPool");
        mShortPool = new VideoCaptureAndroid.ThreadPoolProxy();
      }
      mShortPool.execute(new Runnable()
      {
        public void run()
        {
          String str = Thread.currentThread().getName();
          System.out.println("startCaptureOnCameraThread线程的名字===" + str);
          VideoCaptureAndroid.this.startCaptureOnCameraThread(paramInt1, paramInt2, paramInt3, paramInt4, localExchanger);
        }
      });
      boolean bool = ((Boolean)exchange(localExchanger, Boolean.valueOf(false))).booleanValue();
      return bool;
    }
    finally {}
  }
  
  @SuppressLint({"NewApi"})
  private void startCaptureOnCameraThread(int paramInt1, int paramInt2, int paramInt3, int paramInt4, Exchanger<Boolean> paramExchanger)
  {
    Log.d("VideoCaptureAndroid", "startCapture: " + paramInt1 + "x" + paramInt2 + "@" + paramInt3 + ":" + paramInt4);
    for (;;)
    {
      try
      {
        this.camera = Camera.open(this.id);
        if (this.id == 0)
        {
          this.timer = new Timer();
          this.task = new TimerTask()
          {
            public void run()
            {
              if (VideoCaptureAndroid.this.camera == null) {
                return;
              }
              VideoCaptureAndroid.this.camera.autoFocus(new Camera.AutoFocusCallback()
              {
                public void onAutoFocus(boolean paramAnonymous2Boolean, Camera paramAnonymous2Camera)
                {
                  if (paramAnonymous2Boolean)
                  {
                    System.out.println("只有加上了这一句，才会自动对焦。start");
                    paramAnonymous2Camera.cancelAutoFocus();
                    System.out.println("只有加上了这一句，才会自动对焦。end");
                  }
                }
              });
            }
          };
          this.timer.schedule(this.task, 2000L, 5000L);
        }
        Log.d("VideoCaptureAndroid", "startCaptureOnCameraThread: Camera id + " + this.id);
        if (localPreview != null)
        {
          localPreview.addCallback(this);
          if ((localPreview.getSurface() != null) && (localPreview.getSurface().isValid())) {
            this.camera.setPreviewDisplay(localPreview);
          }
          Camera.Parameters localParameters = this.camera.getParameters();
          Log.d("VideoCaptureAndroid", "isVideoStabilizationSupported: " + localParameters.isVideoStabilizationSupported());
          if (localParameters.isVideoStabilizationSupported()) {
            localParameters.setVideoStabilization(true);
          }
          localParameters.setPreviewSize(paramInt1, paramInt2);
          localParameters.setPreviewFpsRange(paramInt3, paramInt4);
          localParameters.setPreviewFormat(17);
          this.camera.setParameters(localParameters);
          paramInt2 = paramInt1 * paramInt2 * ImageFormat.getBitsPerPixel(17) / 8;
          paramInt1 = 0;
          if (paramInt1 < 3) {
            break label436;
          }
          this.camera.setPreviewCallbackWithBuffer(this);
          this.camera.startPreview();
          exchange(paramExchanger, Boolean.valueOf(true));
          cameraFront = this.camera;
          return;
        }
      }
      catch (RuntimeException localRuntimeException)
      {
        Log.d("VideoCaptureAndroid", "RuntimeException--摄像头开启失败");
        outputAVCallStatus(20, "PERMISSION_CAMERA");
        localRuntimeException.printStackTrace();
        return;
      }
      catch (IOException localIOException)
      {
        localIOException.printStackTrace();
        Log.e("VideoCaptureAndroid", "startCapture failed", localIOException);
        if (this.camera != null)
        {
          Exchanger localExchanger = new Exchanger();
          stopCaptureOnCameraThread(localExchanger);
          exchange(localExchanger, Boolean.valueOf(false));
        }
        exchange(paramExchanger, Boolean.valueOf(false));
        return;
      }
      this.dummySurfaceTexture = new SurfaceTexture(42);
      this.camera.setPreviewTexture(this.dummySurfaceTexture);
      continue;
      label436:
      this.camera.addCallbackBuffer(new byte[paramInt2]);
      paramInt1 += 1;
    }
  }
  
  private boolean stopCapture()
  {
    try
    {
      if (result == null)
      {
        System.out.println("new Exchanger<Boolean>() ");
        result = new Exchanger();
      }
      mShortPool.execute(new Runnable()
      {
        public void run()
        {
          VideoCaptureAndroid.this.stopCaptureOnCameraThread(VideoCaptureAndroid.result);
        }
      });
      boolean bool = ((Boolean)exchange(result, Boolean.valueOf(false))).booleanValue();
      return bool;
    }
    finally {}
  }
  
  /* Error */
  private void stopCaptureOnCameraThread(Exchanger<Boolean> paramExchanger)
  {
    // Byte code:
    //   0: ldc 28
    //   2: ldc_w 413
    //   5: invokestatic 294	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   8: pop
    //   9: aload_0
    //   10: getfield 157	org/webrtc/videoengine/VideoCaptureAndroid:camera	Landroid/hardware/Camera;
    //   13: ifnonnull +14 -> 27
    //   16: new 186	java/lang/RuntimeException
    //   19: dup
    //   20: ldc_w 415
    //   23: invokespecial 416	java/lang/RuntimeException:<init>	(Ljava/lang/String;)V
    //   26: athrow
    //   27: aload_0
    //   28: getfield 308	org/webrtc/videoengine/VideoCaptureAndroid:task	Ljava/util/TimerTask;
    //   31: ifnull +16 -> 47
    //   34: aload_0
    //   35: getfield 308	org/webrtc/videoengine/VideoCaptureAndroid:task	Ljava/util/TimerTask;
    //   38: invokevirtual 421	java/util/TimerTask:cancel	()Z
    //   41: pop
    //   42: aload_0
    //   43: aconst_null
    //   44: putfield 308	org/webrtc/videoengine/VideoCaptureAndroid:task	Ljava/util/TimerTask;
    //   47: aload_0
    //   48: getfield 303	org/webrtc/videoengine/VideoCaptureAndroid:timer	Ljava/util/Timer;
    //   51: ifnull +15 -> 66
    //   54: aload_0
    //   55: getfield 303	org/webrtc/videoengine/VideoCaptureAndroid:timer	Ljava/util/Timer;
    //   58: invokevirtual 423	java/util/Timer:cancel	()V
    //   61: aload_0
    //   62: aconst_null
    //   63: putfield 303	org/webrtc/videoengine/VideoCaptureAndroid:timer	Ljava/util/Timer;
    //   66: aload_0
    //   67: getfield 157	org/webrtc/videoengine/VideoCaptureAndroid:camera	Landroid/hardware/Camera;
    //   70: invokevirtual 426	android/hardware/Camera:stopPreview	()V
    //   73: aload_0
    //   74: getfield 157	org/webrtc/videoengine/VideoCaptureAndroid:camera	Landroid/hardware/Camera;
    //   77: aconst_null
    //   78: invokevirtual 372	android/hardware/Camera:setPreviewCallbackWithBuffer	(Landroid/hardware/Camera$PreviewCallback;)V
    //   81: getstatic 232	org/webrtc/videoengine/VideoCaptureAndroid:localPreview	Landroid/view/SurfaceHolder;
    //   84: ifnull +42 -> 126
    //   87: getstatic 232	org/webrtc/videoengine/VideoCaptureAndroid:localPreview	Landroid/view/SurfaceHolder;
    //   90: aload_0
    //   91: invokeinterface 429 2 0
    //   96: aload_0
    //   97: getfield 157	org/webrtc/videoengine/VideoCaptureAndroid:camera	Landroid/hardware/Camera;
    //   100: aconst_null
    //   101: invokevirtual 237	android/hardware/Camera:setPreviewDisplay	(Landroid/view/SurfaceHolder;)V
    //   104: aload_0
    //   105: getfield 157	org/webrtc/videoengine/VideoCaptureAndroid:camera	Landroid/hardware/Camera;
    //   108: invokevirtual 432	android/hardware/Camera:release	()V
    //   111: aload_0
    //   112: aconst_null
    //   113: putfield 157	org/webrtc/videoengine/VideoCaptureAndroid:camera	Landroid/hardware/Camera;
    //   116: aload_1
    //   117: iconst_1
    //   118: invokestatic 277	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   121: invokestatic 147	org/webrtc/videoengine/VideoCaptureAndroid:exchange	(Ljava/util/concurrent/Exchanger;Ljava/lang/Object;)Ljava/lang/Object;
    //   124: pop
    //   125: return
    //   126: aload_0
    //   127: getfield 157	org/webrtc/videoengine/VideoCaptureAndroid:camera	Landroid/hardware/Camera;
    //   130: aconst_null
    //   131: invokevirtual 402	android/hardware/Camera:setPreviewTexture	(Landroid/graphics/SurfaceTexture;)V
    //   134: goto -30 -> 104
    //   137: astore_2
    //   138: ldc 28
    //   140: ldc_w 434
    //   143: aload_2
    //   144: invokestatic 392	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   147: pop
    //   148: aload_1
    //   149: iconst_0
    //   150: invokestatic 277	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   153: invokestatic 147	org/webrtc/videoengine/VideoCaptureAndroid:exchange	(Ljava/util/concurrent/Exchanger;Ljava/lang/Object;)Ljava/lang/Object;
    //   156: pop
    //   157: return
    //   158: astore_2
    //   159: goto -21 -> 138
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	162	0	this	VideoCaptureAndroid
    //   0	162	1	paramExchanger	Exchanger<Boolean>
    //   137	7	2	localIOException	IOException
    //   158	1	2	localRuntimeException	RuntimeException
    // Exception table:
    //   from	to	target	type
    //   27	47	137	java/io/IOException
    //   47	66	137	java/io/IOException
    //   66	104	137	java/io/IOException
    //   104	125	137	java/io/IOException
    //   126	134	137	java/io/IOException
    //   27	47	158	java/lang/RuntimeException
    //   47	66	158	java/lang/RuntimeException
    //   66	104	158	java/lang/RuntimeException
    //   104	125	158	java/lang/RuntimeException
    //   126	134	158	java/lang/RuntimeException
  }
  
  public void onPreviewFrame(byte[] paramArrayOfByte, Camera paramCamera)
  {
    for (;;)
    {
      try
      {
        Camera localCamera = this.camera;
        if (localCamera == null) {
          return;
        }
        if (this.camera != paramCamera) {
          throw new RuntimeException("Unexpected camera in callback!");
        }
      }
      finally {}
      ProvideCameraFrame(paramArrayOfByte, paramArrayOfByte.length, this.native_capturer);
      this.camera.addCallbackBuffer(paramArrayOfByte);
    }
  }
  
  public void surfaceChanged(SurfaceHolder paramSurfaceHolder, int paramInt1, int paramInt2, int paramInt3)
  {
    try
    {
      Log.d("VideoCaptureAndroid", "VideoCaptureAndroid::surfaceChanged ignored: " + paramInt1 + ": " + paramInt2 + "x" + paramInt3);
      return;
    }
    finally
    {
      paramSurfaceHolder = finally;
      throw paramSurfaceHolder;
    }
  }
  
  public void surfaceCreated(final SurfaceHolder paramSurfaceHolder)
  {
    try
    {
      Log.d("VideoCaptureAndroid", "VideoCaptureAndroid::surfaceCreated");
      final Object localObject = this.camera;
      if (localObject == null) {}
      do
      {
        return;
        localObject = new Exchanger();
        this.cameraThreadHandler.post(new Runnable()
        {
          public void run()
          {
            VideoCaptureAndroid.this.setPreviewDisplayOnCameraThread(paramSurfaceHolder, localObject);
          }
        });
        paramSurfaceHolder = (IOException)exchange((Exchanger)localObject, null);
      } while (paramSurfaceHolder == null);
      throw new RuntimeException(paramSurfaceHolder);
    }
    finally {}
  }
  
  public void surfaceDestroyed(final SurfaceHolder paramSurfaceHolder)
  {
    try
    {
      Log.d("VideoCaptureAndroid", "VideoCaptureAndroid::surfaceDestroyed");
      paramSurfaceHolder = this.camera;
      if (paramSurfaceHolder == null) {}
      do
      {
        return;
        paramSurfaceHolder = new Exchanger();
        this.cameraThreadHandler.post(new Runnable()
        {
          public void run()
          {
            VideoCaptureAndroid.this.setPreviewDisplayOnCameraThread(null, paramSurfaceHolder);
          }
        });
        paramSurfaceHolder = (IOException)exchange(paramSurfaceHolder, null);
      } while (paramSurfaceHolder == null);
      throw new RuntimeException(paramSurfaceHolder);
    }
    finally {}
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\webrtc\videoengine\VideoCaptureAndroid.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
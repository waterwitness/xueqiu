package org.webrtc.videoengine;

import android.app.ActivityManager;
import android.content.Context;
import android.content.pm.ConfigurationInfo;
import android.opengl.GLSurfaceView;
import android.opengl.GLSurfaceView.Renderer;
import android.view.SurfaceHolder;
import com.pingan.a.a.e;
import java.util.concurrent.locks.ReentrantLock;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;

public class ViEAndroidGLES20
  extends GLSurfaceView
  implements GLSurfaceView.Renderer
{
  private static final boolean DEBUG = false;
  private static String TAG = "ViEAndroidGLES20";
  private ReentrantLock nativeFunctionLock = new ReentrantLock();
  private boolean nativeFunctionsRegisted = false;
  private long nativeObject = 0L;
  private boolean openGLCreated = false;
  private boolean surfaceCreated = false;
  private int viewHeight = 0;
  private int viewWidth = 0;
  
  public ViEAndroidGLES20(Context paramContext)
  {
    super(paramContext);
    init(false, 0, 0);
  }
  
  public ViEAndroidGLES20(Context paramContext, boolean paramBoolean, int paramInt1, int paramInt2)
  {
    super(paramContext);
    init(paramBoolean, paramInt1, paramInt2);
  }
  
  private native int CreateOpenGLNative(long paramLong, int paramInt1, int paramInt2);
  
  private native void DrawNative(long paramLong);
  
  public static boolean IsSupported(Context paramContext)
  {
    return ((ActivityManager)paramContext.getSystemService("activity")).getDeviceConfigurationInfo().reqGlEsVersion >= 131072;
  }
  
  public static boolean UseOpenGL2(Object paramObject)
  {
    return ViEAndroidGLES20.class.isInstance(paramObject);
  }
  
  private static void checkEglError(String paramString, EGL10 paramEGL10)
  {
    for (;;)
    {
      int i = paramEGL10.eglGetError();
      if (i == 12288) {
        return;
      }
      e.d(TAG, String.format("%s: EGL error: 0x%x", new Object[] { paramString, Integer.valueOf(i) }));
    }
  }
  
  private void init(boolean paramBoolean, int paramInt1, int paramInt2)
  {
    if (paramBoolean) {
      getHolder().setFormat(-3);
    }
    setEGLContextFactory(new ViEAndroidGLES20.ContextFactory(null));
    if (paramBoolean) {}
    for (ViEAndroidGLES20.ConfigChooser localConfigChooser = new ViEAndroidGLES20.ConfigChooser(8, 8, 8, 8, paramInt1, paramInt2);; localConfigChooser = new ViEAndroidGLES20.ConfigChooser(5, 6, 5, 0, paramInt1, paramInt2))
    {
      setEGLConfigChooser(localConfigChooser);
      setRenderer(this);
      setRenderMode(0);
      return;
    }
  }
  
  public void DeRegisterNativeObject()
  {
    this.nativeFunctionLock.lock();
    this.nativeFunctionsRegisted = false;
    this.openGLCreated = false;
    this.nativeObject = 0L;
    this.nativeFunctionLock.unlock();
  }
  
  public void ReDraw()
  {
    if (this.surfaceCreated) {
      requestRender();
    }
  }
  
  public void RegisterNativeObject(long paramLong)
  {
    this.nativeFunctionLock.lock();
    this.nativeObject = paramLong;
    this.nativeFunctionsRegisted = true;
    this.nativeFunctionLock.unlock();
  }
  
  public void onDrawFrame(GL10 paramGL10)
  {
    this.nativeFunctionLock.lock();
    if ((!this.nativeFunctionsRegisted) || (!this.surfaceCreated)) {
      this.nativeFunctionLock.unlock();
    }
    do
    {
      return;
      if (this.openGLCreated) {
        break;
      }
      e.c(TAG, "OpenGL onDrawFrame::CreateOpenGLNative::viewWidth=" + this.viewWidth + ", viewHeight=" + this.viewHeight);
    } while (CreateOpenGLNative(this.nativeObject, this.viewWidth, this.viewHeight) != 0);
    this.openGLCreated = true;
    DrawNative(this.nativeObject);
    this.nativeFunctionLock.unlock();
  }
  
  public void onSurfaceChanged(GL10 paramGL10, int paramInt1, int paramInt2)
  {
    this.surfaceCreated = true;
    this.viewWidth = paramInt1;
    this.viewHeight = paramInt2;
    e.c(TAG, "OpenGL onSurfaceChanged::viewWidth=" + this.viewWidth + ", viewHeight=" + this.viewHeight);
    this.nativeFunctionLock.lock();
    if ((this.nativeFunctionsRegisted) && (CreateOpenGLNative(this.nativeObject, paramInt1, paramInt2) == 0)) {
      this.openGLCreated = true;
    }
    this.nativeFunctionLock.unlock();
  }
  
  public void onSurfaceCreated(GL10 paramGL10, EGLConfig paramEGLConfig) {}
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\webrtc\videoengine\ViEAndroidGLES20.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
package com.kwlopen.sdk.activity;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.res.AssetManager;
import android.graphics.Rect;
import android.hardware.Camera;
import android.hardware.Camera.Area;
import android.hardware.Camera.AutoFocusCallback;
import android.hardware.Camera.CameraInfo;
import android.hardware.Camera.Parameters;
import android.hardware.Camera.Size;
import android.media.MediaRecorder;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.util.SparseIntArray;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.b.a.a.d;
import com.b.a.a.f;
import java.io.File;
import java.io.IOException;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;
import java.util.Timer;
import java.util.TimerTask;

public class CaptureVideo
  extends Activity
  implements View.OnClickListener, View.OnTouchListener
{
  private static final int PLAY_AREA = 7;
  private int FrameRate;
  private int HResolution;
  private int VResolution;
  private ImageView backBtn;
  public Button btnStartPlay;
  private Button btnStopRecord;
  private Button btnVideoButton;
  private Camera camera;
  private Camera.Parameters cameraParams;
  private Context context;
  private String fileName;
  private List<Integer> fps;
  Handler handler = new Handler()
  {
    public void handleMessage(Message paramAnonymousMessage)
    {
      if (paramAnonymousMessage.what == 1)
      {
        if (CaptureVideo.this.second == 2) {
          CaptureVideo.this.btnStopRecord.setVisibility(0);
        }
        if (CaptureVideo.this.second > CaptureVideo.this.limit) {
          CaptureVideo.this.stopVideo();
        }
        CaptureVideo.this.timerTextView.setText(CaptureVideo.this.paserTime(CaptureVideo.this.second));
      }
    }
  };
  private SparseIntArray heightArray = new SparseIntArray();
  private boolean isTaking;
  private boolean isVideoAuto = true;
  private boolean isVideoSizeSupport = true;
  private ImageView kuangkuangImageView;
  private Intent lastIntent;
  private FrameLayout layout;
  private int limit = 30;
  private MediaRecorder mediaRecorder;
  private int minute = 0;
  private Camera.AutoFocusCallback myAutoFocusCallback = null;
  private String path;
  private boolean perm = true;
  private CameraPreview preview;
  private RelativeLayout recordBtnlayout;
  private FrameLayout recordVideoFrameLayout;
  private LinearLayout repeatLayout;
  private int second = 0;
  private int sizeIndex = 0;
  private LinearLayout timer;
  private Timer timerCount;
  public TextView timerTextView;
  private LinearLayout uploadLayout;
  private LinearLayout uploadVideoLayout;
  private RelativeLayout userReadLayout;
  private TextView userReadTextView;
  private String vercode;
  private FrameLayout videoLogicFrameLayout;
  private FrameLayout videoPlayFrameLayout;
  private SparseIntArray widthArray = new SparseIntArray();
  
  @SuppressLint({"NewApi"})
  private int FindBackCamera()
  {
    Camera.CameraInfo localCameraInfo = new Camera.CameraInfo();
    int j = Camera.getNumberOfCameras();
    int i = 0;
    while (i < j)
    {
      Camera.getCameraInfo(i, localCameraInfo);
      if (localCameraInfo.facing == 0) {
        return i;
      }
      i += 1;
    }
    return -1;
  }
  
  @SuppressLint({"NewApi"})
  private int FindFrontCamera()
  {
    Camera.CameraInfo localCameraInfo = new Camera.CameraInfo();
    int j = Camera.getNumberOfCameras();
    int i = 0;
    while (i < j)
    {
      Camera.getCameraInfo(i, localCameraInfo);
      if (localCameraInfo.facing == 1) {
        return i;
      }
      i += 1;
    }
    return -1;
  }
  
  private void cancelTimer()
  {
    if (this.timerCount != null)
    {
      this.timerCount.cancel();
      this.timerCount = null;
    }
  }
  
  public static String getSDPath()
  {
    File localFile = null;
    if (Environment.getExternalStorageState().equals("mounted")) {
      localFile = Environment.getExternalStorageDirectory();
    }
    return localFile.toString();
  }
  
  @SuppressLint({"NewApi"})
  private void initCamera()
  {
    for (;;)
    {
      try
      {
        this.timer.setVisibility(8);
        this.timerTextView.setText("00:00");
        int j = FindFrontCamera();
        int i = j;
        if (j == -1) {
          i = FindBackCamera();
        }
        if (i == -1) {
          try
          {
            this.camera = Camera.open();
            this.preview = new CameraPreview(this, this.camera);
            this.preview.setFocusable(false);
            this.preview.setEnabled(false);
            this.cameraParams = this.camera.getParameters();
            List localList = this.cameraParams.getSupportedPreviewSizes();
            if ((localList == null) || (localList.size() <= 0)) {
              break;
            }
            i = 0;
            if (i >= localList.size()) {
              break label286;
            }
            Log.e("width--->" + ((Camera.Size)localList.get(i)).width, "&&&height--->" + ((Camera.Size)localList.get(i)).height);
            this.widthArray.put(i, ((Camera.Size)localList.get(i)).width);
            this.heightArray.put(i, ((Camera.Size)localList.get(i)).height);
            i += 1;
            continue;
          }
          catch (RuntimeException localRuntimeException)
          {
            this.camera = Camera.open(Camera.getNumberOfCameras() - 1);
            System.out.println("open()方法有问题");
            continue;
          }
        }
        this.camera = Camera.open(i);
      }
      catch (Exception localException)
      {
        this.perm = false;
        localException.printStackTrace();
        return;
      }
    }
    this.isVideoSizeSupport = false;
    label286:
    this.cameraParams.set("orientation", "portrait");
    this.camera.setDisplayOrientation(90);
    this.camera.setParameters(this.cameraParams);
    this.fps = this.cameraParams.getSupportedPreviewFrameRates();
    try
    {
      this.camera.setPreviewDisplay(this.preview.getHolder());
      this.layout.addView(this.preview);
      this.layout.setOnTouchListener(this);
      return;
    }
    catch (IOException localIOException)
    {
      for (;;)
      {
        localIOException.printStackTrace();
      }
    }
  }
  
  private void initView()
  {
    this.vercode = getIntent().getStringExtra("vercode");
    this.HResolution = Integer.parseInt(getProperties(this, "HResolution"));
    this.VResolution = Integer.parseInt(getProperties(this, "VResolution"));
    this.FrameRate = Integer.parseInt(getProperties(this, "FrameRate"));
    this.layout = ((FrameLayout)findViewById(f.a(this, "take_video_layout")));
    this.btnVideoButton = ((Button)findViewById(f.a(this, "arc_hf_video_start")));
    this.btnStopRecord = ((Button)findViewById(f.a(this, "arc_hf_video_stop")));
    this.timer = ((LinearLayout)findViewById(f.a(this, "arc_hf_video_timer")));
    this.timerTextView = ((TextView)findViewById(f.a(this, "arc_hf_video_timer_tv")));
    this.videoPlayFrameLayout = ((FrameLayout)findViewById(f.a(this, "video_play_framelayout")));
    this.videoLogicFrameLayout = ((FrameLayout)findViewById(f.a(this, "video_logic_framelayout")));
    this.userReadLayout = ((RelativeLayout)findViewById(f.a(this, "user_read_layout")));
    this.recordBtnlayout = ((RelativeLayout)findViewById(f.a(this, "record_btn_layout")));
    this.userReadTextView = ((TextView)findViewById(f.a(this, "user_read_textview")));
    this.kuangkuangImageView = ((ImageView)findViewById(f.a(this, "kuangkuang")));
    this.backBtn = ((ImageView)findViewById(f.a(this, "back_btn")));
    this.userReadTextView.setText(this.vercode);
    this.timer.setVisibility(8);
    this.btnStopRecord.setOnClickListener(this);
    this.btnVideoButton.setOnClickListener(this);
    this.backBtn.setOnClickListener(this);
    initCamera();
  }
  
  private void showDialog()
  {
    new AlertDialog.Builder(this).setTitle("退出").setMessage("确定退出视频录制吗？").setPositiveButton("确定", new DialogInterface.OnClickListener()
    {
      public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        if (CaptureVideo.this.mediaRecorder != null)
        {
          CaptureVideo.this.mediaRecorder.stop();
          CaptureVideo.this.cancelTimer();
        }
        CaptureVideo.access$402(CaptureVideo.this, null);
        CaptureVideo.this.finish();
      }
    }).setNegativeButton("取消", new DialogInterface.OnClickListener()
    {
      public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        paramAnonymousDialogInterface.cancel();
      }
    }).show();
  }
  
  /* Error */
  @SuppressLint({"NewApi"})
  private void startCamera()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 109	com/kwlopen/sdk/activity/CaptureVideo:perm	Z
    //   4: ifne +22 -> 26
    //   7: aload_0
    //   8: getfield 487	com/kwlopen/sdk/activity/CaptureVideo:context	Landroid/content/Context;
    //   11: aload_0
    //   12: ldc_w 489
    //   15: invokestatic 492	com/b/a/a/f:c	(Landroid/content/Context;Ljava/lang/String;)I
    //   18: iconst_0
    //   19: invokestatic 498	android/widget/Toast:makeText	(Landroid/content/Context;II)Landroid/widget/Toast;
    //   22: invokevirtual 500	android/widget/Toast:show	()V
    //   25: return
    //   26: aload_0
    //   27: getfield 403	com/kwlopen/sdk/activity/CaptureVideo:btnVideoButton	Landroid/widget/Button;
    //   30: bipush 8
    //   32: invokevirtual 501	android/widget/Button:setVisibility	(I)V
    //   35: aload_0
    //   36: iconst_0
    //   37: putfield 99	com/kwlopen/sdk/activity/CaptureVideo:second	I
    //   40: aload_0
    //   41: iconst_0
    //   42: putfield 97	com/kwlopen/sdk/activity/CaptureVideo:minute	I
    //   45: aload_0
    //   46: getfield 225	com/kwlopen/sdk/activity/CaptureVideo:camera	Landroid/hardware/Camera;
    //   49: invokevirtual 504	android/hardware/Camera:startPreview	()V
    //   52: aload_0
    //   53: getfield 225	com/kwlopen/sdk/activity/CaptureVideo:camera	Landroid/hardware/Camera;
    //   56: invokevirtual 507	android/hardware/Camera:unlock	()V
    //   59: aload_0
    //   60: new 509	android/media/MediaRecorder
    //   63: dup
    //   64: invokespecial 510	android/media/MediaRecorder:<init>	()V
    //   67: putfield 153	com/kwlopen/sdk/activity/CaptureVideo:mediaRecorder	Landroid/media/MediaRecorder;
    //   70: aload_0
    //   71: getfield 153	com/kwlopen/sdk/activity/CaptureVideo:mediaRecorder	Landroid/media/MediaRecorder;
    //   74: aload_0
    //   75: getfield 225	com/kwlopen/sdk/activity/CaptureVideo:camera	Landroid/hardware/Camera;
    //   78: invokevirtual 514	android/media/MediaRecorder:setCamera	(Landroid/hardware/Camera;)V
    //   81: aload_0
    //   82: getfield 153	com/kwlopen/sdk/activity/CaptureVideo:mediaRecorder	Landroid/media/MediaRecorder;
    //   85: iconst_1
    //   86: invokevirtual 517	android/media/MediaRecorder:setAudioSource	(I)V
    //   89: aload_0
    //   90: getfield 153	com/kwlopen/sdk/activity/CaptureVideo:mediaRecorder	Landroid/media/MediaRecorder;
    //   93: iconst_1
    //   94: invokevirtual 520	android/media/MediaRecorder:setVideoSource	(I)V
    //   97: aload_0
    //   98: getfield 153	com/kwlopen/sdk/activity/CaptureVideo:mediaRecorder	Landroid/media/MediaRecorder;
    //   101: iconst_0
    //   102: invokevirtual 523	android/media/MediaRecorder:setOutputFormat	(I)V
    //   105: aload_0
    //   106: getfield 153	com/kwlopen/sdk/activity/CaptureVideo:mediaRecorder	Landroid/media/MediaRecorder;
    //   109: iconst_3
    //   110: invokevirtual 526	android/media/MediaRecorder:setAudioEncoder	(I)V
    //   113: aload_0
    //   114: getfield 153	com/kwlopen/sdk/activity/CaptureVideo:mediaRecorder	Landroid/media/MediaRecorder;
    //   117: iconst_2
    //   118: invokevirtual 529	android/media/MediaRecorder:setVideoEncoder	(I)V
    //   121: aload_0
    //   122: getfield 153	com/kwlopen/sdk/activity/CaptureVideo:mediaRecorder	Landroid/media/MediaRecorder;
    //   125: sipush 270
    //   128: invokevirtual 532	android/media/MediaRecorder:setOrientationHint	(I)V
    //   131: aload_0
    //   132: getfield 153	com/kwlopen/sdk/activity/CaptureVideo:mediaRecorder	Landroid/media/MediaRecorder;
    //   135: aload_0
    //   136: getfield 379	com/kwlopen/sdk/activity/CaptureVideo:HResolution	I
    //   139: aload_0
    //   140: getfield 382	com/kwlopen/sdk/activity/CaptureVideo:VResolution	I
    //   143: invokevirtual 535	android/media/MediaRecorder:setVideoSize	(II)V
    //   146: aload_0
    //   147: getfield 153	com/kwlopen/sdk/activity/CaptureVideo:mediaRecorder	Landroid/media/MediaRecorder;
    //   150: ldc_w 536
    //   153: invokevirtual 539	android/media/MediaRecorder:setVideoEncodingBitRate	(I)V
    //   156: aload_0
    //   157: getfield 153	com/kwlopen/sdk/activity/CaptureVideo:mediaRecorder	Landroid/media/MediaRecorder;
    //   160: new 258	java/lang/StringBuilder
    //   163: dup
    //   164: invokespecial 540	java/lang/StringBuilder:<init>	()V
    //   167: aload_0
    //   168: getfield 542	com/kwlopen/sdk/activity/CaptureVideo:path	Ljava/lang/String;
    //   171: invokevirtual 545	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   174: aload_0
    //   175: getfield 547	com/kwlopen/sdk/activity/CaptureVideo:fileName	Ljava/lang/String;
    //   178: invokevirtual 545	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   181: invokevirtual 277	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   184: invokevirtual 550	android/media/MediaRecorder:setOutputFile	(Ljava/lang/String;)V
    //   187: aload_0
    //   188: getfield 153	com/kwlopen/sdk/activity/CaptureVideo:mediaRecorder	Landroid/media/MediaRecorder;
    //   191: aload_0
    //   192: getfield 232	com/kwlopen/sdk/activity/CaptureVideo:preview	Lcom/kwlopen/sdk/activity/CameraPreview;
    //   195: invokevirtual 335	com/kwlopen/sdk/activity/CameraPreview:getHolder	()Landroid/view/SurfaceHolder;
    //   198: invokeinterface 556 1 0
    //   203: invokevirtual 559	android/media/MediaRecorder:setPreviewDisplay	(Landroid/view/Surface;)V
    //   206: aload_0
    //   207: getfield 153	com/kwlopen/sdk/activity/CaptureVideo:mediaRecorder	Landroid/media/MediaRecorder;
    //   210: aload_0
    //   211: getfield 107	com/kwlopen/sdk/activity/CaptureVideo:limit	I
    //   214: sipush 10000
    //   217: imul
    //   218: invokevirtual 562	android/media/MediaRecorder:setMaxDuration	(I)V
    //   221: aload_0
    //   222: getfield 153	com/kwlopen/sdk/activity/CaptureVideo:mediaRecorder	Landroid/media/MediaRecorder;
    //   225: invokevirtual 565	android/media/MediaRecorder:prepare	()V
    //   228: aload_0
    //   229: getfield 199	com/kwlopen/sdk/activity/CaptureVideo:timer	Landroid/widget/LinearLayout;
    //   232: iconst_0
    //   233: invokevirtual 205	android/widget/LinearLayout:setVisibility	(I)V
    //   236: aload_0
    //   237: getfield 153	com/kwlopen/sdk/activity/CaptureVideo:mediaRecorder	Landroid/media/MediaRecorder;
    //   240: invokevirtual 568	android/media/MediaRecorder:start	()V
    //   243: aload_0
    //   244: invokespecial 571	com/kwlopen/sdk/activity/CaptureVideo:startTimer	()V
    //   247: aload_0
    //   248: ldc_w 573
    //   251: iconst_0
    //   252: invokestatic 576	android/widget/Toast:makeText	(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    //   255: invokevirtual 500	android/widget/Toast:show	()V
    //   258: return
    //   259: astore_1
    //   260: aload_0
    //   261: invokevirtual 579	com/kwlopen/sdk/activity/CaptureVideo:finish	()V
    //   264: aload_0
    //   265: ldc_w 581
    //   268: iconst_0
    //   269: invokestatic 576	android/widget/Toast:makeText	(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    //   272: invokevirtual 500	android/widget/Toast:show	()V
    //   275: aload_1
    //   276: invokevirtual 582	java/lang/IllegalStateException:printStackTrace	()V
    //   279: return
    //   280: astore_1
    //   281: aload_1
    //   282: invokevirtual 582	java/lang/IllegalStateException:printStackTrace	()V
    //   285: goto -49 -> 236
    //   288: astore_1
    //   289: aload_1
    //   290: invokevirtual 352	java/io/IOException:printStackTrace	()V
    //   293: goto -57 -> 236
    //   296: astore_1
    //   297: aload_1
    //   298: invokevirtual 311	java/lang/Exception:printStackTrace	()V
    //   301: goto -65 -> 236
    //   304: astore_1
    //   305: aload_0
    //   306: invokevirtual 579	com/kwlopen/sdk/activity/CaptureVideo:finish	()V
    //   309: aload_1
    //   310: invokevirtual 311	java/lang/Exception:printStackTrace	()V
    //   313: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	314	0	this	CaptureVideo
    //   259	17	1	localIllegalStateException1	IllegalStateException
    //   280	2	1	localIllegalStateException2	IllegalStateException
    //   288	2	1	localIOException	IOException
    //   296	2	1	localException1	Exception
    //   304	6	1	localException2	Exception
    // Exception table:
    //   from	to	target	type
    //   236	258	259	java/lang/IllegalStateException
    //   221	236	280	java/lang/IllegalStateException
    //   221	236	288	java/io/IOException
    //   221	236	296	java/lang/Exception
    //   236	258	304	java/lang/Exception
  }
  
  private void startTimer()
  {
    cancelTimer();
    this.second = 0;
    this.timerCount = new Timer();
    this.timerCount.schedule(new TimerTask()
    {
      public void run()
      {
        CaptureVideo.access$008(CaptureVideo.this);
        Message localMessage = new Message();
        localMessage.what = 1;
        CaptureVideo.this.handler.sendMessage(localMessage);
      }
    }, 1000L, 1000L);
  }
  
  private void stopRecord()
  {
    cancelTimer();
    try
    {
      this.mediaRecorder.setOnErrorListener(null);
      this.mediaRecorder.stop();
      this.mediaRecorder.release();
      this.mediaRecorder = null;
      this.camera.stopPreview();
      this.camera.lock();
      this.camera.release();
      this.camera = null;
      this.layout.removeView(this.preview);
      this.preview = null;
      Toast.makeText(this, "录制完成，已保存", 0).show();
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
  
  private void stopVideo()
  {
    stopRecord();
    Intent localIntent = new Intent();
    localIntent.putExtra("videoPath", this.path + this.fileName);
    localIntent.setClass(this, VideoPlayActivity.class);
    startActivityForResult(localIntent, 7);
  }
  
  @SuppressLint({"NewApi"})
  private void submitFocusAreaRect(Rect paramRect)
  {
    Camera.Parameters localParameters = this.camera.getParameters();
    if ((localParameters == null) || (localParameters.getMaxNumFocusAreas() == 0)) {
      return;
    }
    Rect localRect = new Rect();
    localRect.set(paramRect.left * 2000 / this.preview.getWidth() - 1000, paramRect.top * 2000 / this.preview.getHeight() - 1000, paramRect.right * 2000 / this.preview.getWidth() - 1000, paramRect.bottom * 2000 / this.preview.getHeight() - 1000);
    paramRect = new ArrayList();
    paramRect.add(new Camera.Area(localRect, 1000));
    localParameters.setFocusMode("auto");
    localParameters.setFocusAreas(paramRect);
    try
    {
      this.camera.setParameters(localParameters);
      this.camera.autoFocus(this.myAutoFocusCallback);
      return;
    }
    catch (Exception paramRect)
    {
      paramRect.printStackTrace();
    }
  }
  
  public String format(int paramInt)
  {
    String str2 = String.valueOf(paramInt);
    String str1 = str2;
    if (str2.length() == 1) {
      str1 = "0" + str2;
    }
    return str1;
  }
  
  public String getProperties(Context paramContext, String paramString)
  {
    Object localObject = null;
    Properties localProperties = new Properties();
    try
    {
      localProperties.load(paramContext.getAssets().open("property.properties"));
      paramContext = localProperties.getProperty(paramString);
      return paramContext.trim();
    }
    catch (Exception paramContext)
    {
      for (;;)
      {
        paramContext.printStackTrace();
        paramContext = (Context)localObject;
      }
    }
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    d.b("onActivityResult cordovaOlugin");
    if ((paramInt2 == -1) && (paramInt1 == 7))
    {
      paramIntent = paramIntent.getStringExtra("type");
      if (!"1".equals(paramIntent)) {
        break label91;
      }
      this.lastIntent.putExtra("videoPath", this.path + this.fileName);
      setResult(-1, this.lastIntent);
      finish();
    }
    label91:
    do
    {
      return;
      if ("2".equals(paramIntent))
      {
        this.btnVideoButton.setVisibility(0);
        this.btnStopRecord.setVisibility(8);
        this.timer.setVisibility(8);
        initCamera();
        return;
      }
    } while (!"3".equals(paramIntent));
    finish();
  }
  
  public void onClick(View paramView)
  {
    if (paramView.getId() == f.a(this, "arc_hf_video_start")) {
      startCamera();
    }
    do
    {
      do
      {
        return;
        if (paramView.getId() == f.a(this, "arc_hf_video_stop"))
        {
          stopVideo();
          return;
        }
      } while (paramView.getId() == f.a(this, "start_play_btn"));
      if (paramView.getId() == f.a(this, "upload_record_layout"))
      {
        finish();
        return;
      }
    } while (paramView.getId() != f.a(this, "back_btn"));
    showDialog();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    setContentView(f.f(this, "kwlopen_capture_video"));
    this.context = this;
    this.path = (getSDPath() + "/");
    this.fileName = "video.mp4";
    initView();
    this.lastIntent = getIntent();
  }
  
  protected void onDestroy()
  {
    super.onDestroy();
    if (this.mediaRecorder != null) {
      this.mediaRecorder.release();
    }
    if (this.camera != null)
    {
      this.camera.lock();
      this.camera.release();
    }
    cancelTimer();
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
    {
      showDialog();
      return true;
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
  
  protected void onPause()
  {
    super.onPause();
    if (this.mediaRecorder != null)
    {
      stopRecord();
      Intent localIntent = new Intent();
      localIntent.putExtra("videoPath", this.path + this.fileName);
      localIntent.setClass(this, VideoPlayActivity.class);
      startActivityForResult(localIntent, 7);
    }
  }
  
  protected void onResume()
  {
    super.onResume();
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
  }
  
  protected void onStart()
  {
    super.onStart();
  }
  
  protected void onStop()
  {
    super.onStop();
  }
  
  @SuppressLint({"NewApi"})
  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    if ((paramMotionEvent.getAction() == 1) && (this.camera != null) && (this.isVideoAuto))
    {
      float f1 = paramMotionEvent.getX();
      float f2 = paramMotionEvent.getY();
      float f3 = paramMotionEvent.getTouchMajor();
      float f4 = paramMotionEvent.getTouchMinor();
      submitFocusAreaRect(new Rect((int)(f1 - f3 / 2.0F), (int)(f2 - f4 / 2.0F), (int)(f1 + f3 / 2.0F), (int)(f2 + f4 / 2.0F)));
    }
    return false;
  }
  
  public String paserTime(int paramInt)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    int i;
    if (paramInt / 3600 < 10)
    {
      new StringBuilder("0").append(paramInt / 3600);
      i = paramInt % 3600 / 60;
      if (i >= 10) {
        break label148;
      }
      str = "0" + i + ":";
      label79:
      localStringBuffer.append(str);
      paramInt = paramInt % 3600 % 60;
      if (paramInt >= 10) {
        break label173;
      }
    }
    label148:
    label173:
    for (String str = "0" + paramInt;; str = String.valueOf(paramInt))
    {
      localStringBuffer.append(str);
      return localStringBuffer.toString();
      new StringBuilder().append(paramInt / 3600);
      break;
      str = i + ":";
      break label79;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\kwlopen\sdk\activity\CaptureVideo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
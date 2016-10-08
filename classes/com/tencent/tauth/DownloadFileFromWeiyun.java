package com.tencent.tauth;

import android.os.Environment;
import android.os.Handler;
import android.os.Looper;
import java.io.File;

public class DownloadFileFromWeiyun
{
  private static final int DOWNLOAD_GETPERMISSION_SUCCESS = 0;
  private static final String DOWNLOAD_MUSIC_URL = "https://graph.qq.com/weiyun/download_music";
  private static final String DOWNLOAD_PIC_URL = "https://graph.qq.com/weiyun/download_photo";
  private static final int DOWNLOAD_STATUS_ERROR = 3;
  private static final int DOWNLOAD_STATUS_PROGRESS = 2;
  private static final int DOWNLOAD_STATUS_SUCCESS = 1;
  private static final String DOWNLOAD_THUMB_URL = "https://graph.qq.com/weiyun/get_photo_thumb";
  private static final String DOWNLOAD_VIDEO_URL = "https://graph.qq.com/weiyun/download_video";
  private static final String oauth_consumer_key = "222222";
  private int MAX_ERROR_TIMES = 10;
  private int current_actiontype;
  private String dir;
  private String dl_cookie_name;
  private String dl_cookie_value;
  private String dl_encrypt_url;
  private String dl_svr_host;
  private int dl_svr_port;
  private String dl_thumb_size;
  private boolean isOriginal;
  private String mFileid;
  private String mFilename;
  private long mFilesize;
  private Handler mHandler = new a(this, Looper.getMainLooper());
  private IDownloadFileFromWeiyunStatus mListener;
  private String mRequestUrl;
  private Tencent mTencent;
  private String mThumb;
  
  public DownloadFileFromWeiyun(Tencent paramTencent, String paramString1, int paramInt1, int paramInt2, String paramString2, String paramString3, IDownloadFileFromWeiyunStatus paramIDownloadFileFromWeiyunStatus)
  {
    this.mFileid = paramString1;
    this.mListener = paramIDownloadFileFromWeiyunStatus;
    this.mFilesize = paramInt2;
    this.mFilename = paramString3;
    this.isOriginal = true;
    this.mTencent = paramTencent;
    this.dir = (Environment.getExternalStorageDirectory() + "/" + paramString2);
    paramTencent = new File(this.dir);
    if (!paramTencent.exists()) {
      paramTencent.mkdirs();
    }
    this.current_actiontype = paramInt1;
    switch (this.current_actiontype)
    {
    case 1003: 
    default: 
      return;
    case 1001: 
      this.mRequestUrl = "https://graph.qq.com/weiyun/download_photo";
      return;
    case 1002: 
      this.mRequestUrl = "https://graph.qq.com/weiyun/download_music";
      return;
    }
    this.mRequestUrl = "https://graph.qq.com/weiyun/download_video";
  }
  
  public DownloadFileFromWeiyun(Tencent paramTencent, String paramString1, String paramString2, String paramString3, String paramString4, IDownloadFileFromWeiyunStatus paramIDownloadFileFromWeiyunStatus)
  {
    this.mFileid = paramString1;
    this.mThumb = paramString2;
    this.mListener = paramIDownloadFileFromWeiyunStatus;
    this.mFilename = ("thumb__" + paramString4);
    this.mTencent = paramTencent;
    this.isOriginal = false;
    this.dir = (Environment.getExternalStorageDirectory() + "/" + paramString3);
    paramTencent = new File(this.dir);
    if (!paramTencent.exists()) {
      paramTencent.mkdirs();
    }
    this.current_actiontype = 1001;
    this.mRequestUrl = "https://graph.qq.com/weiyun/get_photo_thumb";
  }
  
  private void doDownload()
  {
    new c(this).start();
  }
  
  private void getDownloadPermission()
  {
    new b(this).start();
  }
  
  public void start()
  {
    if (new File(this.dir, this.mFilename).exists())
    {
      this.mListener.onDownloadSuccess(this.dir + "/" + this.mFilename);
      return;
    }
    this.mListener.onPrepareStart();
    getDownloadPermission();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\tauth\DownloadFileFromWeiyun.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
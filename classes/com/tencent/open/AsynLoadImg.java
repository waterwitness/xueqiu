package com.tencent.open;

import android.app.Activity;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.BitmapFactory;
import android.os.Environment;
import android.os.Handler;
import android.util.Log;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;

public class AsynLoadImg
{
  private static String e;
  Activity a;
  private String b = "share_qq_";
  private String c;
  private AsynLoadImgBack d;
  private long f;
  private Handler g;
  private Runnable h = new s(this);
  
  public AsynLoadImg(Activity paramActivity)
  {
    this.a = paramActivity;
    this.g = new t(this, paramActivity.getMainLooper());
  }
  
  public static Bitmap a(String paramString)
  {
    Log.v("AsynLoadImg", "getbitmap:" + paramString);
    try
    {
      Object localObject = (HttpURLConnection)new URL(paramString).openConnection();
      ((HttpURLConnection)localObject).setDoInput(true);
      ((HttpURLConnection)localObject).connect();
      localObject = ((HttpURLConnection)localObject).getInputStream();
      Bitmap localBitmap = BitmapFactory.decodeStream((InputStream)localObject);
      ((InputStream)localObject).close();
      Log.v("AsynLoadImg", "image download finished." + paramString);
      return localBitmap;
    }
    catch (IOException paramString)
    {
      paramString.printStackTrace();
      Log.v("AsynLoadImg", "getbitmap bmp fail---");
    }
    return null;
  }
  
  public void a(String paramString, AsynLoadImgBack paramAsynLoadImgBack)
  {
    Log.v("AsynLoadImg", "--save---");
    if ((paramString == null) || (paramString.equals("")))
    {
      paramAsynLoadImgBack.saved(1, null);
      return;
    }
    if (!Util.b())
    {
      paramAsynLoadImgBack.saved(2, null);
      return;
    }
    e = Environment.getExternalStorageDirectory() + "/tmp/";
    this.f = System.currentTimeMillis();
    this.c = paramString;
    this.d = paramAsynLoadImgBack;
    new Thread(this.h).start();
  }
  
  public boolean a(Bitmap paramBitmap, String paramString)
  {
    String str = e;
    try
    {
      File localFile = new File(str);
      if (!localFile.exists()) {
        localFile.mkdir();
      }
      str = str + paramString;
      Log.v("AsynLoadImg", "saveFile:" + paramString);
      paramString = new BufferedOutputStream(new FileOutputStream(new File(str)));
      paramBitmap.compress(Bitmap.CompressFormat.JPEG, 80, paramString);
      paramString.flush();
      paramString.close();
      return true;
    }
    catch (IOException paramBitmap)
    {
      paramBitmap.printStackTrace();
      Log.v("AsynLoadImg", "saveFile bmp fail---");
    }
    return false;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\open\AsynLoadImg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
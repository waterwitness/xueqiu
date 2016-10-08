package com.tencent.record.debug;

import android.content.SharedPreferences;
import android.content.SharedPreferences.OnSharedPreferenceChangeListener;
import android.os.Environment;
import com.tencent.record.info.Const.Debug;
import com.tencent.record.info.Global;
import com.tencent.record.info.StorageDash;
import com.tencent.record.info.StorageInfo;
import java.io.File;

public class WnsTracer
  implements SharedPreferences.OnSharedPreferenceChangeListener, TraceLevel
{
  protected static final FileTracerConfig b;
  protected static final FileTracerConfig c;
  private volatile boolean a = true;
  protected FileTracer d;
  private volatile boolean e = true;
  private volatile boolean f = true;
  
  static
  {
    File localFile = c();
    b = new FileTracerConfig(localFile, 24, 262144, 8192, "OpenSDK.Client.File.Tracer", 10000L, 10, ".app.log", 604800000L);
    c = new FileTracerConfig(localFile, 24, 262144, 8192, "OpenSDK.File.Tracer", 10000L, 10, ".OpenSDK.log", 604800000L);
  }
  
  public static File c()
  {
    int j = 0;
    String str = Const.Debug.a + File.separator + Global.b();
    StorageInfo localStorageInfo = StorageDash.b();
    int i = j;
    if (localStorageInfo != null)
    {
      i = j;
      if (localStorageInfo.c() > 8388608L) {
        i = 1;
      }
    }
    if (i != 0) {
      return new File(Environment.getExternalStorageDirectory(), str);
    }
    return new File(Global.c(), str);
  }
  
  public void a(int paramInt, String paramString1, String paramString2, Throwable paramThrowable)
  {
    if (d())
    {
      if (!e()) {
        break label40;
      }
      if (this.d != null) {
        break label22;
      }
    }
    label22:
    label40:
    while (!f())
    {
      return;
      this.d.b(paramInt, Thread.currentThread(), System.currentTimeMillis(), paramString1, paramString2, paramThrowable);
    }
    LogcatTracer.a.b(paramInt, Thread.currentThread(), System.currentTimeMillis(), paramString1, paramString2, paramThrowable);
  }
  
  public void b()
  {
    if (this.d != null)
    {
      this.d.a();
      this.d.b();
    }
  }
  
  public final boolean d()
  {
    return this.a;
  }
  
  public final boolean e()
  {
    return this.e;
  }
  
  public final boolean f()
  {
    return this.f;
  }
  
  public void onSharedPreferenceChanged(SharedPreferences paramSharedPreferences, String paramString)
  {
    if ("debug.file.tracelevel".equals(paramString))
    {
      int i = paramSharedPreferences.getInt("debug.file.tracelevel", 63);
      a(8, "WnsTracer", "File Trace Level Changed = " + i, null);
      this.d.a(i);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\record\debug\WnsTracer.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
package com.xueqiu.android.base;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.AssetManager;
import com.android.volley.z;
import com.google.gson.Gson;
import com.xueqiu.android.base.storage.prefs.DefaultPrefs;
import com.xueqiu.android.base.util.m;
import com.xueqiu.android.base.util.v;
import com.xueqiu.android.common.model.ClientInfo;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.charset.Charset;

public final class f
{
  boolean a = false;
  public boolean b = false;
  public ClientInfo c;
  
  private f()
  {
    b.a();
    Context localContext = b.d();
    b(localContext);
    if (((this.c.getUmengKey().equals("4f60972b527015454c000010")) && (("8.5".contains("dev")) || ("8.5".contains("feature")))) || ("release".equalsIgnoreCase("isolate"))) {
      this.a = true;
    }
    for (;;)
    {
      v.a = this.a;
      z.a("SnowBall");
      z.b = v.a;
      boolean bool1 = bool2;
      try
      {
        if (!DefaultPrefs.getBoolean("developer_mode", false, localContext)) {
          if (("release".equalsIgnoreCase("release")) || ("release".equalsIgnoreCase("rc"))) {
            break label145;
          }
        }
        label145:
        for (bool1 = bool2;; bool1 = false)
        {
          this.b = bool1;
          return;
          this.a = false;
          break;
        }
        return;
      }
      catch (Exception localException)
      {
        this.b = false;
      }
    }
  }
  
  public static String a(Context paramContext)
  {
    try
    {
      paramContext = paramContext.getPackageManager().getPackageInfo(paramContext.getPackageName(), 0).versionName;
      return paramContext;
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
      paramContext.printStackTrace();
    }
    return null;
  }
  
  private void b(Context paramContext)
  {
    Object localObject = null;
    Context localContext = null;
    for (;;)
    {
      try
      {
        paramContext = paramContext.getAssets().open("info.json");
        localContext = paramContext;
        localObject = paramContext;
        BufferedReader localBufferedReader = new BufferedReader(new InputStreamReader(paramContext, Charset.forName("UTF-8")));
        localContext = paramContext;
        localObject = paramContext;
        this.c = ((ClientInfo)m.a().fromJson(localBufferedReader, ClientInfo.class));
        localContext = paramContext;
        localObject = paramContext;
        localBufferedReader.close();
      }
      catch (IOException paramContext)
      {
        localObject = localContext;
        paramContext.printStackTrace();
        if (localContext == null) {
          continue;
        }
        try
        {
          localContext.close();
          return;
        }
        catch (IOException paramContext)
        {
          paramContext.printStackTrace();
          return;
        }
      }
      finally
      {
        if (localObject == null) {
          break label116;
        }
      }
      try
      {
        paramContext.close();
        return;
      }
      catch (IOException paramContext)
      {
        paramContext.printStackTrace();
        return;
      }
    }
    try
    {
      ((InputStream)localObject).close();
      label116:
      throw paramContext;
    }
    catch (IOException localIOException)
    {
      for (;;)
      {
        localIOException.printStackTrace();
      }
    }
  }
  
  public final ClientInfo a()
  {
    if (this.c == null)
    {
      b.a();
      b(b.d());
    }
    return this.c;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\base\f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
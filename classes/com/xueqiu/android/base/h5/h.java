package com.xueqiu.android.base.h5;

import android.content.Context;
import android.content.res.AssetManager;
import com.xueqiu.android.base.b;
import com.xueqiu.android.base.util.v;
import com.xueqiu.android.common.widget.SNBWebView;
import java.io.File;
import java.io.IOException;
import java.net.URLDecoder;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

public final class h
  implements g
{
  protected String a;
  protected final Map<String, String> b = new ConcurrentHashMap();
  
  public h(String paramString)
  {
    this.a = paramString;
    b();
  }
  
  private void b()
  {
    try
    {
      b.a();
      String[] arrayOfString = b.d().getAssets().list("h5/modules" + File.separatorChar + this.a);
      int j = arrayOfString.length;
      int i = 0;
      while (i < j)
      {
        String str = arrayOfString[i];
        if (str.endsWith(".html")) {
          this.b.put(URLDecoder.decode(str, "UTF-8"), str);
        }
        i += 1;
      }
      return;
    }
    catch (IOException localIOException)
    {
      v.d("H5BackupProcessor", "initPathMap failed" + this.a);
    }
  }
  
  public static boolean b(String paramString)
  {
    boolean bool2 = false;
    try
    {
      b.a();
      String[] arrayOfString = b.d().getAssets().list("h5/modules");
      int j = arrayOfString.length;
      int i = 0;
      for (;;)
      {
        boolean bool1 = bool2;
        if (i < j)
        {
          bool1 = arrayOfString[i].equals(paramString);
          if (bool1) {
            bool1 = true;
          }
        }
        else
        {
          return bool1;
        }
        i += 1;
      }
      return false;
    }
    catch (IOException paramString)
    {
      paramString.printStackTrace();
    }
  }
  
  public final String a()
  {
    return "file:///android_asset/h5/modules" + File.separatorChar + this.a;
  }
  
  public final boolean a(String paramString)
  {
    return this.b.containsKey(paramString);
  }
  
  public final void display(SNBWebView paramSNBWebView, o paramo, l paraml, String paramString)
  {
    paramo = paramString;
    if (paramString.startsWith("/")) {
      paramo = paramString.substring(1);
    }
    paraml = "";
    paramString = paramo;
    if (paramo.contains("?"))
    {
      paramString = paramo.split("\\?");
      paraml = paramo.substring(paramString[0].length());
      paramString = paramString[0];
    }
    paramo = paramString.substring(this.a.length(), paramString.length());
    if (paramo.length() <= 1) {}
    for (paramo = "index";; paramo = paramo.substring(1))
    {
      paramSNBWebView.loadUrl(String.format("file:///android_asset/h5/modules/%s/%s.html%s", new Object[] { this.a, paramo, paraml }));
      return;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\base\h5\h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
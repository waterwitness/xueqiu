package com.xueqiu.android.base.h5;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.AssetManager;
import android.preference.PreferenceManager;
import com.xueqiu.android.base.b;
import com.xueqiu.android.base.r;
import com.xueqiu.android.base.util.v;
import com.xueqiu.android.common.widget.SNBWebView;
import java.io.File;
import java.io.IOException;
import java.net.URLDecoder;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

public final class i
  implements g
{
  protected String a;
  protected final Map<String, String> b = new ConcurrentHashMap();
  private String c;
  
  public i(String paramString)
  {
    this.a = paramString;
    b();
    b.a();
    Object localObject = PreferenceManager.getDefaultSharedPreferences(b.d());
    boolean bool = ((SharedPreferences)localObject).getBoolean(r.d(2131165661), false);
    paramString = ((SharedPreferences)localObject).getString(r.d(2131165662), "xueqiu.com");
    localObject = ((SharedPreferences)localObject).getString(r.d(2131165663), "80");
    this.c = (paramString + ":" + (String)localObject);
    if (bool)
    {
      this.c = ("https://" + this.c);
      return;
    }
    this.c = ("http://" + this.c);
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
      v.d("H5ProcessorDebugImpl", "initPathMap failed" + this.a);
    }
  }
  
  public final String a()
  {
    return this.c + File.separatorChar + this.a;
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
      paramSNBWebView.loadUrl(String.format(this.c + "/%s/%s%s", new Object[] { this.a, paramo, paraml }));
      return;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\base\h5\i.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
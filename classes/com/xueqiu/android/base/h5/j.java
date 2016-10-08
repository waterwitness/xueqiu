package com.xueqiu.android.base.h5;

import com.xueqiu.android.base.util.v;
import com.xueqiu.android.common.widget.SNBWebView;
import java.io.File;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

public final class j
  implements g
{
  protected String a;
  protected String b;
  protected final Map<String, String> c = new ConcurrentHashMap();
  
  public j(String paramString1, String paramString2)
  {
    this.a = paramString1;
    this.b = paramString2;
    b();
  }
  
  private void b()
  {
    Object localObject = new File(this.a);
    if ((((File)localObject).exists()) && (((File)localObject).isDirectory()))
    {
      localObject = ((File)localObject).list();
      int j = localObject.length;
      int i = 0;
      for (;;)
      {
        if (i < j)
        {
          String str = localObject[i];
          if (str.endsWith(".html")) {}
          try
          {
            this.c.put(URLDecoder.decode(str, "UTF-8"), str);
            i += 1;
          }
          catch (UnsupportedEncodingException localUnsupportedEncodingException)
          {
            for (;;)
            {
              v.d("H5Processor", "decode url failed: " + str);
            }
          }
        }
      }
    }
  }
  
  public final String a()
  {
    return this.a;
  }
  
  public final boolean a(String paramString)
  {
    return this.c.containsKey(paramString);
  }
  
  public final void display(SNBWebView paramSNBWebView, o paramo, l paraml, String paramString)
  {
    if (!paramString.startsWith("https://xueqiu.com"))
    {
      paraml = paramString;
      if (!paramString.startsWith("http://xueqiu.com")) {}
    }
    else
    {
      paraml = paramString.substring(paramString.indexOf("/", paramString.indexOf("xueqiu.com")));
    }
    paramo = paraml;
    if (paraml.startsWith("/")) {
      paramo = paraml.substring(1);
    }
    paraml = "";
    paramString = paramo;
    if (paramo.contains("?"))
    {
      paramString = paramo.split("\\?");
      paraml = paramo.substring(paramString[0].length());
      paramString = paramString[0];
    }
    paramo = paramString.substring(this.b.length(), paramString.length());
    if (paramo.length() <= 1) {}
    for (paramo = "index";; paramo = paramo.substring(1))
    {
      paramSNBWebView.loadUrl(String.format("file://%s/%s.html%s", new Object[] { this.a, paramo, paraml }));
      return;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\base\h5\j.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
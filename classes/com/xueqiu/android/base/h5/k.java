package com.xueqiu.android.base.h5;

import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import com.xueqiu.android.base.b;
import com.xueqiu.android.base.f;
import com.xueqiu.android.base.r;
import java.io.File;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

public final class k
{
  private String a;
  private final Map<String, g> b = new ConcurrentHashMap();
  
  public k(String paramString)
  {
    this.a = paramString;
    refresh();
  }
  
  public final g find(String paramString)
  {
    boolean bool = false;
    if (!paramString.startsWith("https://xueqiu.com"))
    {
      localObject = paramString;
      if (!paramString.startsWith("http://xueqiu.com")) {}
    }
    else
    {
      localObject = paramString.substring(paramString.indexOf("/", paramString.indexOf("xueqiu.com")));
    }
    paramString = (String)localObject;
    if (((String)localObject).startsWith("/")) {
      paramString = ((String)localObject).substring(1);
    }
    Object localObject = paramString.split("\\?")[0].split("/");
    paramString = localObject[0];
    if (com.xueqiu.android.base.g.a().b)
    {
      b.a();
      bool = PreferenceManager.getDefaultSharedPreferences(b.d()).getBoolean(r.d(2131165660), false);
    }
    if (bool) {
      paramString = new i(paramString);
    }
    String str;
    do
    {
      do
      {
        return paramString;
        if (localObject.length > 2) {
          return null;
        }
        str = localObject[(localObject.length - 1)];
        if ((this.b.isEmpty()) && (h.b(paramString))) {
          return new h(paramString);
        }
        if (!this.b.containsKey(paramString)) {
          break label243;
        }
        localObject = (g)this.b.get(paramString);
        if (str.length() != 0) {
          break;
        }
        paramString = (String)localObject;
      } while (((g)localObject).a("index.html"));
      paramString = (String)localObject;
    } while (((g)localObject).a(str + ".html"));
    label243:
    return null;
  }
  
  public final void refresh()
  {
    this.b.clear();
    File[] arrayOfFile = new File(this.a).listFiles();
    if ((arrayOfFile != null) && (arrayOfFile.length > 0))
    {
      int i = 0;
      for (;;)
      {
        if (i < arrayOfFile.length)
        {
          File localFile = arrayOfFile[i];
          if (localFile.isDirectory()) {}
          try
          {
            String str = URLDecoder.decode(localFile.getName(), "UTF-8");
            this.b.put(str, new j(localFile.getAbsolutePath(), str));
            i += 1;
          }
          catch (UnsupportedEncodingException localUnsupportedEncodingException)
          {
            for (;;)
            {
              localUnsupportedEncodingException.printStackTrace();
            }
          }
        }
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\base\h5\k.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
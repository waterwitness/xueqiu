package org.apache.cordova;

import android.net.Uri;
import java.net.MalformedURLException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

final class ad
{
  public Pattern a;
  public Pattern b;
  public Integer c;
  public Pattern d;
  
  public ad(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    if (paramString1 != null) {}
    for (;;)
    {
      try
      {
        if ("*".equals(paramString1))
        {
          this.a = null;
          if ("*".equals(paramString2))
          {
            this.b = null;
            if ((paramString3 != null) && (!"*".equals(paramString3))) {
              break label162;
            }
            this.c = null;
            if ((paramString4 != null) && (!"/*".equals(paramString4))) {
              break;
            }
            this.d = null;
          }
        }
        else
        {
          this.a = Pattern.compile(a(paramString1, false), 2);
          continue;
        }
        if (!paramString2.startsWith("*.")) {
          break label146;
        }
      }
      catch (NumberFormatException paramString1)
      {
        throw new MalformedURLException("Port must be a number");
      }
      this.b = Pattern.compile("([a-z0-9.-]*\\.)?" + a(paramString2.substring(2), false), 2);
      continue;
      label146:
      this.b = Pattern.compile(a(paramString2, false), 2);
      continue;
      label162:
      this.c = Integer.valueOf(Integer.parseInt(paramString3, 10));
    }
    this.d = Pattern.compile(a(paramString4, true));
  }
  
  private static String a(String paramString, boolean paramBoolean)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    int i = 0;
    if (i < paramString.length())
    {
      char c1 = paramString.charAt(i);
      if ((c1 == '*') && (paramBoolean)) {
        localStringBuilder.append(".");
      }
      for (;;)
      {
        localStringBuilder.append(c1);
        i += 1;
        break;
        if ("\\.[]{}()^$?+|".indexOf(c1) >= 0) {
          localStringBuilder.append('\\');
        }
      }
    }
    return localStringBuilder.toString();
  }
  
  public final boolean a(Uri paramUri)
  {
    boolean bool2 = false;
    try
    {
      boolean bool1;
      if (this.a != null)
      {
        bool1 = bool2;
        if (!this.a.matcher(paramUri.getScheme()).matches()) {}
      }
      else if (this.b != null)
      {
        bool1 = bool2;
        if (!this.b.matcher(paramUri.getHost()).matches()) {}
      }
      else if (this.c != null)
      {
        bool1 = bool2;
        if (!this.c.equals(Integer.valueOf(paramUri.getPort()))) {}
      }
      else if (this.d != null)
      {
        boolean bool3 = this.d.matcher(paramUri.getPath()).matches();
        bool1 = bool2;
        if (!bool3) {}
      }
      else
      {
        bool1 = true;
      }
      return bool1;
    }
    catch (Exception paramUri)
    {
      o.a("Whitelist", paramUri.toString());
    }
    return false;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\cordova\ad.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
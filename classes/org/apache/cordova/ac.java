package org.apache.cordova;

import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class ac
{
  ArrayList<ad> a = new ArrayList();
  
  public final void a(String paramString)
  {
    if (this.a != null) {}
    for (;;)
    {
      Object localObject;
      String str4;
      String str3;
      try
      {
        if (paramString.compareTo("*") == 0)
        {
          o.a("Whitelist", "Unlimited access to network resources");
          this.a = null;
          return;
        }
        localObject = Pattern.compile("^((\\*|[A-Za-z-]+)://)?(\\*|((\\*\\.)?[^*/:]+))?(:(\\d+))?(/.*)?").matcher(paramString);
        if (!((Matcher)localObject).matches()) {
          break label191;
        }
        str4 = ((Matcher)localObject).group(2);
        str3 = ((Matcher)localObject).group(3);
        if ("file".equals(str4)) {
          break label192;
        }
        String str1 = str3;
        if ("content".equals(str4)) {
          break label192;
        }
        str3 = ((Matcher)localObject).group(7);
        localObject = ((Matcher)localObject).group(8);
        if (str4 == null)
        {
          this.a.add(new ad("http", str1, str3, (String)localObject));
          this.a.add(new ad("https", str1, str3, (String)localObject));
          return;
        }
      }
      catch (Exception localException)
      {
        o.a("Whitelist", "Failed to add origin %s", new Object[] { paramString });
        return;
      }
      this.a.add(new ad(str4, localException, str3, (String)localObject));
      label191:
      return;
      label192:
      String str2 = str3;
      if (str3 == null) {
        str2 = "*";
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\cordova\ac.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
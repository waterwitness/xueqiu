package com.b.a.a;

import java.text.SimpleDateFormat;
import java.util.regex.Pattern;

public final class g
{
  private static final Pattern a = Pattern.compile("\\w+([-+.]\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*");
  private static final Pattern b = Pattern.compile("^[a-zA-Z][a-zA-Z0-9_]*$");
  private static final ThreadLocal<SimpleDateFormat> c = new ThreadLocal() {};
  private static final ThreadLocal<SimpleDateFormat> d = new ThreadLocal() {};
  
  public static boolean a(String paramString)
  {
    boolean bool2 = false;
    boolean bool1;
    if ((paramString == null) || ("".equals(paramString)))
    {
      bool1 = true;
      return bool1;
    }
    int i = 0;
    for (;;)
    {
      if (i >= paramString.length()) {
        return true;
      }
      int j = paramString.charAt(i);
      if ((j != 32) && (j != 9) && (j != 13))
      {
        bool1 = bool2;
        if (j != 10) {
          break;
        }
      }
      i += 1;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\b\a\a\g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
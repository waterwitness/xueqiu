package com.xueqiu.android.base;

import com.xueqiu.android.common.q;

public final class v
{
  public static boolean a(String paramString)
  {
    if ((!paramString.startsWith("http://xueqiu.com/")) && (!paramString.startsWith("http://www.xueqiu.com/")) && (!paramString.startsWith("https://xueqiu.com/")) && (!paramString.startsWith("https://www.xueqiu.com/")))
    {
      if (!paramString.startsWith(String.format("https://%s/)", new Object[] { "xueqiu.yun.pingan.com" }))) {}
    }
    else if (!paramString.startsWith(q.a)) {
      return true;
    }
    return false;
  }
  
  public static String b(String paramString)
  {
    return String.format("%s%s", new Object[] { "https://xueqiu.com", paramString });
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\base\v.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
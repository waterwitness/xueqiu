package com.f.a.a.a;

public final class h
{
  public static boolean a(String paramString)
  {
    return (paramString == null) || (paramString.length() <= 0);
  }
  
  public static int b(String paramString)
  {
    int j = 0;
    if (paramString.length() > 0)
    {
      paramString = paramString.toCharArray();
      int i = 0;
      for (;;)
      {
        k = i;
        if (j >= paramString.length) {
          break;
        }
        i = i * 31 + paramString[j];
        j += 1;
      }
    }
    int k = 0;
    return k;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\f\a\a\a\h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
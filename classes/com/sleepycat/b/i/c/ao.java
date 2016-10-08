package com.sleepycat.b.i.c;

import com.sleepycat.b.b.b;

public class ao
  extends b
{
  private static final String f = ao.class.getName();
  
  public ao(String paramString1, String paramString2)
  {
    super(paramString1, paramString2, false, true);
  }
  
  public final void a(String paramString)
  {
    if (Boolean.getBoolean("je.rep.skipNodenameValidation")) {}
    for (;;)
    {
      return;
      if ((paramString == null) || (paramString.length() == 0)) {
        throw new IllegalArgumentException(f + ": a value is required");
      }
      paramString = paramString.toCharArray();
      int k = paramString.length;
      int i = 0;
      while (i < k)
      {
        char c = paramString[i];
        if ((Character.isLetterOrDigit(c)) || (c == '-') || (c == '_') || (c == '.')) {}
        for (int j = 1; j == 0; j = 0) {
          throw new IllegalArgumentException(f + ": " + this.a + ", must consist of letters, digits, hyphen, underscore, period.");
        }
        i += 1;
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\c\ao.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
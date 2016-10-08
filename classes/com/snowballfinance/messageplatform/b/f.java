package com.snowballfinance.messageplatform.b;

public final class f
  implements Comparable<f>
{
  private int a = 0;
  private int b = 0;
  private int c = 0;
  private String d;
  private String e;
  
  private f(String paramString)
  {
    if ((paramString == null) || (paramString.trim().length() <= 0)) {}
    for (int i = 1; i != 0; i = 0) {
      throw new IllegalArgumentException("version");
    }
    String[] arrayOfString = paramString.split("\\.");
    g localg;
    if (arrayOfString.length > 0)
    {
      localg = new g(this, (byte)0);
      a(localg, arrayOfString[0]);
      this.a = localg.b;
      this.d = localg.a.toString();
    }
    if (arrayOfString.length > 1)
    {
      localg = new g(this, (byte)0);
      a(localg, arrayOfString[1]);
      this.b = localg.b;
      this.d = localg.a.toString();
    }
    if (arrayOfString.length > 2)
    {
      localg = new g(this, (byte)0);
      a(localg, arrayOfString[2]);
      this.c = localg.b;
      this.d = localg.a.toString();
    }
    if (arrayOfString.length > 3) {
      this.d = arrayOfString[3];
    }
    this.e = paramString;
  }
  
  public static final f a(String paramString)
  {
    return new f(paramString);
  }
  
  private static void a(g paramg, String paramString)
  {
    int j = 1;
    if ((paramString == null) || (paramString.trim().length() <= 0)) {
      i = 0;
    }
    while (i != 0)
    {
      paramg.b = Integer.parseInt(paramString);
      return;
      i = 0;
      for (;;)
      {
        if (i >= paramString.length()) {
          break label65;
        }
        if (!Character.isDigit(paramString.charAt(i)))
        {
          i = 0;
          break;
        }
        i += 1;
      }
      label65:
      i = 1;
    }
    int i = 0;
    label72:
    char c1;
    if (i < paramString.length())
    {
      c1 = paramString.charAt(i);
      if ((j == 0) || (!Character.isDigit(c1))) {
        break label142;
      }
      paramg.b *= (int)Math.pow(10.0D, i);
      int k = paramg.b;
      paramg.b = (Character.digit(c1, 10) + k);
    }
    for (;;)
    {
      i += 1;
      break label72;
      break;
      label142:
      paramg.a.append(c1);
      j = 0;
    }
  }
  
  public final int a(f paramf)
  {
    if (this.a == paramf.a)
    {
      if (this.b == paramf.b)
      {
        if (this.c == paramf.c) {
          return 0;
        }
        return this.c - paramf.c;
      }
      return this.b - paramf.b;
    }
    return this.a - paramf.a;
  }
  
  public final boolean equals(Object paramObject)
  {
    if ((paramObject instanceof f)) {
      return a((f)paramObject) == 0;
    }
    if ((paramObject instanceof String)) {
      return paramObject.equals(paramObject);
    }
    throw new IllegalArgumentException();
  }
  
  public final String toString()
  {
    return this.e;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\snowballfinance\messageplatform\b\f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
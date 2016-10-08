package com.sleepycat.b.i.c.b;

abstract class an
  extends Exception
{
  final int a;
  final int b;
  
  an(String paramString, int paramInt)
  {
    super(paramString);
    this.a = paramInt;
    this.b = 1000;
  }
  
  public String getMessage()
  {
    return "Failed after retries: " + this.a + " with retry interval: " + this.b + "ms.";
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\c\b\an.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
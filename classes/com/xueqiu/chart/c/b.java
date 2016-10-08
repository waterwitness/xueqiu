package com.xueqiu.chart.c;

public final class b
  implements a
{
  float[] a = { 0.01F, 0.025F, 0.05F, 0.1F, 0.25F, 0.5F, 1.0F, 2.5F, 5.0F, 10.0F, 25.0F, 50.0F, 100.0F, 250.0F, 500.0F, 1000.0F, 2500.0F, 5000.0F, 10000.0F, 25000.0F, 50000.0F, 100000.0F, 500000.0F, 1000000.0F };
  
  public final float a(float paramFloat)
  {
    float[] arrayOfFloat = this.a;
    int j = arrayOfFloat.length;
    int i = 0;
    while (i < j)
    {
      float f = arrayOfFloat[i];
      if (f >= paramFloat) {
        return f;
      }
      i += 1;
    }
    return 0.0F;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\chart\c\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
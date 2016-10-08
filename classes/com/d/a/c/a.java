package com.d.a.c;

import android.opengl.GLES10;
import com.d.a.b.a.f;
import com.d.a.b.a.i;

public final class a
{
  private static f a;
  
  static
  {
    int[] arrayOfInt = new int[1];
    GLES10.glGetIntegerv(3379, arrayOfInt, 0);
    int i = Math.max(arrayOfInt[0], 2048);
    a = new f(i, i);
  }
  
  public static int a(f paramf)
  {
    int i = paramf.a;
    int j = paramf.b;
    int k = a.a;
    int m = a.b;
    return Math.max((int)Math.ceil(i / k), (int)Math.ceil(j / m));
  }
  
  public static int a(f paramf1, f paramf2, int paramInt, boolean paramBoolean)
  {
    int j = 1;
    int k = paramf1.a;
    int m = paramf1.b;
    int n = paramf2.a;
    int i1 = paramf2.b;
    switch (1.a[(paramInt - 1)])
    {
    default: 
      paramInt = 1;
      if (paramInt <= 0) {
        paramInt = j;
      }
      break;
    }
    for (;;)
    {
      int i = a.a;
      j = a.b;
      for (;;)
      {
        if ((k / paramInt <= i) && (m / paramInt <= j)) {
          break label256;
        }
        if (paramBoolean)
        {
          paramInt *= 2;
          continue;
          int i2;
          int i3;
          if (paramBoolean)
          {
            i2 = k / 2;
            i3 = m / 2;
            i = 1;
            for (;;)
            {
              if (i2 / i <= n)
              {
                paramInt = i;
                if (i3 / i <= i1) {
                  break;
                }
              }
              i *= 2;
            }
          }
          paramInt = Math.max(k / n, m / i1);
          break;
          if (paramBoolean)
          {
            i2 = k / 2;
            i3 = m / 2;
            i = 1;
            for (;;)
            {
              paramInt = i;
              if (i2 / i <= n) {
                break;
              }
              paramInt = i;
              if (i3 / i <= i1) {
                break;
              }
              i *= 2;
            }
          }
          paramInt = Math.min(k / n, m / i1);
          break;
        }
        paramInt += 1;
      }
      label256:
      return paramInt;
    }
  }
  
  public static f a(com.d.a.b.e.a parama, f paramf)
  {
    int j = parama.a();
    int i = j;
    if (j <= 0) {
      i = paramf.a;
    }
    int k = parama.b();
    j = k;
    if (k <= 0) {
      j = paramf.b;
    }
    return new f(i, j);
  }
  
  public static float b(f paramf1, f paramf2, int paramInt, boolean paramBoolean)
  {
    int k = paramf1.a;
    int m = paramf1.b;
    int i = paramf2.a;
    int j = paramf2.b;
    float f1 = k / i;
    float f2 = m / j;
    if (((paramInt == i.a) && (f1 >= f2)) || ((paramInt == i.b) && (f1 < f2)))
    {
      j = (int)(m / f1);
      paramInt = i;
      i = paramInt;
    }
    for (;;)
    {
      f2 = 1.0F;
      if ((paramBoolean) || (i >= k) || (j >= m))
      {
        f1 = f2;
        if (paramBoolean)
        {
          f1 = f2;
          if (i != k)
          {
            f1 = f2;
            if (j == m) {}
          }
        }
      }
      else
      {
        f1 = i / k;
      }
      return f1;
      i = (int)(k / f2);
      paramInt = j;
      j = paramInt;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\d\a\c\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
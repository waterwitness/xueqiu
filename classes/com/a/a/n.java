package com.a.a;

final class n
{
  private o a;
  
  public n(o paramo)
  {
    this.a = paramo;
  }
  
  private static boolean b(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    return (paramInt1 >= 0) && (paramInt1 < paramInt3) && (paramInt2 >= 0) && (paramInt2 < paramInt4);
  }
  
  public final void a(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i = 1;
    this.a.a(paramInt3, paramInt4);
    int j = 1;
    int k = 1;
    for (;;)
    {
      if (i < paramInt2 * paramInt1) {
        m = 0;
      }
      int n;
      while (m < k)
      {
        n = paramInt3 + j;
        paramInt3 = i;
        if (b(n, paramInt4, paramInt1, paramInt2))
        {
          paramInt3 = i + 1;
          if (!this.a.a(n, paramInt4)) {
            return;
          }
        }
        m += 1;
        i = paramInt3;
        paramInt3 = n;
      }
      int m = 0;
      for (;;)
      {
        if (m >= k) {
          break label168;
        }
        n = paramInt4 + j;
        paramInt4 = i;
        if (b(paramInt3, n, paramInt1, paramInt2))
        {
          paramInt4 = i + 1;
          if (!this.a.a(paramInt3, n)) {
            break;
          }
        }
        m += 1;
        i = paramInt4;
        paramInt4 = n;
      }
      label168:
      k += 1;
      j *= -1;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\a\a\n.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
package org.apache.a.b;

public final class k
{
  private static int a = Integer.MAX_VALUE;
  
  public static void a(h paramh, byte paramByte)
  {
    a(paramh, paramByte, a);
  }
  
  private static void a(h paramh, byte paramByte, int paramInt)
  {
    byte b2 = 0;
    byte b3 = 0;
    byte b1 = 0;
    if (paramInt <= 0) {
      throw new org.apache.a.g("Maximum skip depth exceeded");
    }
    switch (paramByte)
    {
    }
    for (;;)
    {
      return;
      paramh.j();
      return;
      paramh.k();
      return;
      paramh.l();
      return;
      paramh.m();
      return;
      paramh.n();
      return;
      paramh.o();
      return;
      paramh.q();
      return;
      paramh.d();
      for (;;)
      {
        localObject = paramh.f();
        if (((e)localObject).b == 0) {
          break;
        }
        a(paramh, ((e)localObject).b, paramInt - 1);
      }
      paramh.e();
      return;
      Object localObject = paramh.g();
      paramByte = b1;
      while (paramByte < ((g)localObject).c)
      {
        a(paramh, ((g)localObject).a, paramInt - 1);
        a(paramh, ((g)localObject).b, paramInt - 1);
        paramByte += 1;
      }
      continue;
      localObject = paramh.i();
      paramByte = b2;
      while (paramByte < ((l)localObject).b)
      {
        a(paramh, ((l)localObject).a, paramInt - 1);
        paramByte += 1;
      }
      continue;
      localObject = paramh.h();
      paramByte = b3;
      while (paramByte < ((f)localObject).b)
      {
        a(paramh, ((f)localObject).a, paramInt - 1);
        paramByte += 1;
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\a\b\k.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
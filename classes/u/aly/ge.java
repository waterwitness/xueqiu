package u.aly;

public final class ge
{
  private static int a = Integer.MAX_VALUE;
  
  public static void a(ga paramga, byte paramByte)
  {
    a(paramga, paramByte, a);
  }
  
  private static void a(ga paramga, byte paramByte, int paramInt)
  {
    byte b2 = 0;
    byte b3 = 0;
    byte b1 = 0;
    if (paramInt <= 0) {
      throw new ff("Maximum skip depth exceeded");
    }
    switch (paramByte)
    {
    }
    for (;;)
    {
      return;
      paramga.j();
      return;
      paramga.k();
      return;
      paramga.l();
      return;
      paramga.m();
      return;
      paramga.n();
      return;
      paramga.o();
      return;
      paramga.q();
      return;
      paramga.d();
      for (;;)
      {
        localObject = paramga.f();
        if (((fx)localObject).b == 0) {
          break;
        }
        a(paramga, ((fx)localObject).b, paramInt - 1);
      }
      paramga.e();
      return;
      Object localObject = paramga.g();
      paramByte = b1;
      while (paramByte < ((fz)localObject).c)
      {
        a(paramga, ((fz)localObject).a, paramInt - 1);
        a(paramga, ((fz)localObject).b, paramInt - 1);
        paramByte += 1;
      }
      continue;
      localObject = paramga.i();
      paramByte = b2;
      while (paramByte < ((gf)localObject).b)
      {
        a(paramga, ((gf)localObject).a, paramInt - 1);
        paramByte += 1;
      }
      continue;
      localObject = paramga.h();
      paramByte = b3;
      while (paramByte < ((fy)localObject).b)
      {
        a(paramga, ((fy)localObject).a, paramInt - 1);
        paramByte += 1;
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\u\aly\ge.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
package com.sleepycat.b.i.g.a;

import com.sleepycat.b.ao;
import com.sleepycat.b.av;
import com.sleepycat.b.e;
import com.sleepycat.b.m;
import com.sleepycat.b.p.b;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public final class h
{
  static MessageDigest a = null;
  
  static
  {
    try
    {
      a = MessageDigest.getInstance("MD5");
      return;
    }
    catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
    {
      localNoSuchAlgorithmException.printStackTrace();
    }
  }
  
  public static a a(int paramInt1, e parame, int paramInt2)
  {
    m localm1 = new m();
    m localm2 = new m();
    b localb = new b();
    a.reset();
    a locala = new a(paramInt1);
    int i = 0;
    int j = 0;
    paramInt1 = 0;
    while ((paramInt1 < paramInt2) && (parame.c(localm1, localm2, ao.a) == av.a))
    {
      if (paramInt1 == 0)
      {
        locala.c = localm1.a;
        locala.d = localm2.a;
      }
      localb.reset();
      localb.update(localm1.a, 0, localm1.a.length);
      localb.update(localm2.a, 0, localm2.a.length);
      j += (int)localb.getValue();
      i += j;
      a.update(localm1.a);
      a.update(localm2.a);
      paramInt1 += 1;
    }
    long l = j;
    locala.e = (i << 32 | l & 0xFFFFFFFF);
    locala.f = a.digest();
    locala.b = paramInt1;
    return locala;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\g\a\h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
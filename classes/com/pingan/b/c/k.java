package com.pingan.b.c;

import com.pingan.b.a.i;
import com.pingan.b.a.m;
import com.pingan.b.a.n;
import java.io.File;
import java.util.HashMap;
import java.util.Map;

public final class k
{
  private final a a;
  private final com.pingan.b.a.f b;
  
  public k()
  {
    this(new b().a());
  }
  
  public k(a parama)
  {
    this.a = parama;
    this.b = new com.pingan.b.a.f(parama.h, new n(), parama.c, parama.k, parama.l, parama.n);
  }
  
  public final void a(String paramString1, String paramString2, final String paramString3, String paramString4, final h paramh, l paraml)
  {
    File localFile = new File(paramString1);
    paramString1 = null;
    if ((paramString4 == null) || (paramString4.equals(""))) {
      paramString1 = "no token";
    }
    if (paramString1 != null) {
      com.pingan.b.d.a.a(new Runnable()
      {
        public final void run()
        {
          k.this.a(paramString3, this.c, null);
        }
      });
    }
    j localj;
    for (int i = 1;; i = 0)
    {
      if (i == 0)
      {
        localj = j.a(paramString4);
        if (localj != null) {
          break;
        }
        com.pingan.b.d.a.a(new Runnable()
        {
          public final void run()
          {
            paramh.a(paramString3, this.c, null);
          }
        });
      }
      return;
    }
    if (localFile.length() <= this.a.j)
    {
      paramString1 = this.b;
      paramString4 = this.a;
      HashMap localHashMap = new HashMap();
      i locali = new i();
      if (paramString3 != null) {}
      for (locali.d = paramString3;; locali.d = "?")
      {
        localHashMap.put("token", localj.a);
        localHashMap.putAll(paraml.a);
        c.1 local1 = new c.1(paraml, paramString3);
        locali.a = null;
        locali.b = localFile;
        locali.c = localHashMap;
        paramh = new c.2(paraml, paramString3, paramh, localj, paramString4, paramString1, paramString2, locali, local1);
        paramString1.a(c.a(paramString4.a, paramString2, paramString3), locali, local1, paramh, paraml.c, false);
        return;
      }
    }
    com.pingan.b.d.a.a(new f(this.b, this.a, localFile, paramString2, paramString3, localj, paramh, paraml));
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\pingan\b\c\k.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
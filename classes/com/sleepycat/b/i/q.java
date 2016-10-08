package com.sleepycat.b.i;

import com.sleepycat.b.bn;
import com.sleepycat.b.i.c.aj;
import com.sleepycat.b.j.d;
import com.sleepycat.b.j.e;
import com.sleepycat.b.j.f;
import com.sleepycat.b.p.ai;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;

public final class q
  extends d
{
  private f c = null;
  
  public q(aj paramaj)
  {
    super(paramaj);
  }
  
  private static v a(Map<String, ai> paramMap1, Map<String, ai> paramMap2)
  {
    v localv = new v();
    paramMap1 = paramMap1.values().iterator();
    while (paramMap1.hasNext())
    {
      ai localai = (ai)paramMap1.next();
      if (paramMap2 != null) {
        localv.a(localai.b((ai)paramMap2.get(localai.a)));
      } else {
        localv.a(localai.a(false));
      }
    }
    return localv;
  }
  
  public final v a(bn parambn, Integer paramInteger)
  {
    e locale;
    try
    {
      locale = (e)this.a.get(paramInteger);
      if (locale == null) {
        throw com.sleepycat.b.aa.c("Internal error stat context is not registered");
      }
    }
    finally {}
    paramInteger = (aj)this.b;
    Object localObject1 = paramInteger.am;
    if (localObject1 == null) {}
    for (paramInteger = null; paramInteger == null; paramInteger = new v(paramInteger.am.i, parambn))
    {
      parambn = null;
      return parambn;
    }
    localObject1 = paramInteger.b();
    Object localObject2 = locale.b;
    if (this.c == null) {
      this.c = new f(this, (Map)localObject1);
    }
    if (localObject2 != null) {
      paramInteger = a((Map)localObject1, (Map)localObject2);
    }
    for (;;)
    {
      if (parambn.c)
      {
        parambn = this.a.values().iterator();
        while (parambn.hasNext())
        {
          localObject2 = (e)parambn.next();
          if (((e)localObject2).b != null) {
            this.c.a(((e)localObject2).b, (Map)localObject1);
          }
        }
        parambn = this.a.values().iterator();
        while (parambn.hasNext())
        {
          localObject2 = (e)parambn.next();
          if (localObject2 == locale) {
            ((e)localObject2).b = null;
          } else if (((e)localObject2).b == null) {
            ((e)localObject2).b = a((Map)localObject1);
          } else {
            ((e)localObject2).b = a(((e)localObject2).b, (Map)localObject1).b();
          }
        }
      }
      parambn = paramInteger;
      break;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\q.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
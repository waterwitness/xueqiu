package com.sleepycat.b.i.b;

import com.sleepycat.b.i.c.au;
import com.sleepycat.b.i.c.az;
import com.sleepycat.b.i.c.b.aa;
import com.sleepycat.b.i.c.t;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

final class al
{
  int a = Integer.MIN_VALUE;
  int b = Integer.MAX_VALUE;
  boolean c = false;
  private final Set<au> d;
  private final d e;
  
  public al(d paramd, Set<au> paramSet)
  {
    this.d = paramSet;
    this.e = paramd;
    a();
  }
  
  private void a()
  {
    Object localObject1 = new HashMap();
    Object localObject2 = this.d.iterator();
    while (((Iterator)localObject2).hasNext())
    {
      Object localObject3 = (au)((Iterator)localObject2).next();
      if (((au)localObject3).a().a() == this.e.j.g)
      {
        localObject3 = (ac)((au)localObject3).a();
        if (((ac)localObject3).f < this.b) {
          this.b = ((ac)localObject3).f;
        }
        if (!((Map)localObject1).containsKey(Integer.valueOf(((ac)localObject3).f))) {
          ((Map)localObject1).put(Integer.valueOf(((ac)localObject3).f), Integer.valueOf(1));
        } else {
          ((Map)localObject1).put(Integer.valueOf(((ac)localObject3).f), Integer.valueOf(((Integer)((Map)localObject1).get(Integer.valueOf(((ac)localObject3).f))).intValue() + 1));
        }
      }
    }
    if (((Map)localObject1).size() == 1) {
      this.c = true;
    }
    int i;
    do
    {
      do
      {
        return;
        while (this.e.c == null) {}
        i = this.e.c.m.h();
        localObject1 = ((Map)localObject1).entrySet().iterator();
      } while (!((Iterator)localObject1).hasNext());
      localObject2 = (Map.Entry)((Iterator)localObject1).next();
    } while (((Integer)((Map.Entry)localObject2).getValue()).intValue() <= i / 2);
    this.a = ((Integer)((Map.Entry)localObject2).getKey()).intValue();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\b\al.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
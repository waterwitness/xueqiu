package com.sleepycat.b.l;

import com.sleepycat.b.c.ad;
import com.sleepycat.b.c.i;
import com.sleepycat.b.d.b;

public abstract class k<ARRAY_BASE_TYPE, REP_ENUM_TYPE, ELEMENT_TYPE>
{
  public abstract REP_ENUM_TYPE a();
  
  public abstract ELEMENT_TYPE a(int paramInt);
  
  public abstract ARRAY_BASE_TYPE a(int paramInt1, int paramInt2, int paramInt3, j paramj);
  
  public abstract ARRAY_BASE_TYPE a(int paramInt, ELEMENT_TYPE paramELEMENT_TYPE, j paramj);
  
  public abstract ARRAY_BASE_TYPE a(j paramj);
  
  public final void a(k<ARRAY_BASE_TYPE, REP_ENUM_TYPE, ELEMENT_TYPE> paramk, j paramj)
  {
    if (paramj == null) {
      return;
    }
    paramj.b(paramk.b() - b());
    a(false, paramj);
    paramk.a(true, paramj);
  }
  
  abstract void a(boolean paramBoolean, b paramb);
  
  final void a(boolean paramBoolean, j paramj)
  {
    if (!paramj.l) {
      return;
    }
    a(paramBoolean, paramj.i.c.A);
  }
  
  public abstract long b();
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\l\k.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
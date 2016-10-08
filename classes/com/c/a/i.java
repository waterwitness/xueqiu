package com.c.a;

import java.util.ArrayList;

final class i
  implements Cloneable
{
  public a a;
  public ArrayList<g> b = null;
  public ArrayList<g> c = null;
  public ArrayList<i> d = null;
  public ArrayList<i> e = null;
  public boolean f = false;
  
  public i(a parama)
  {
    this.a = parama;
  }
  
  public final i a()
  {
    try
    {
      i locali = (i)super.clone();
      locali.a = this.a.b();
      return locali;
    }
    catch (CloneNotSupportedException localCloneNotSupportedException)
    {
      throw new AssertionError();
    }
  }
  
  public final void a(g paramg)
  {
    if (this.b == null)
    {
      this.b = new ArrayList();
      this.d = new ArrayList();
    }
    this.b.add(paramg);
    if (!this.d.contains(paramg.a)) {
      this.d.add(paramg.a);
    }
    paramg = paramg.a;
    if (paramg.e == null) {
      paramg.e = new ArrayList();
    }
    paramg.e.add(this);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\c\a\i.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
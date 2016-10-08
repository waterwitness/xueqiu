package com.c.a;

import java.util.ArrayList;

final class h
  implements b
{
  private d a;
  private i b;
  private int c;
  
  public h(d paramd, i parami, int paramInt)
  {
    this.a = paramd;
    this.b = parami;
    this.c = paramInt;
  }
  
  private void c(a parama)
  {
    if (this.a.b) {
      return;
    }
    int j = this.b.c.size();
    int i = 0;
    label25:
    g localg;
    if (i < j)
    {
      localg = (g)this.b.c.get(i);
      if ((localg.b == this.c) && (localg.a.a == parama)) {
        parama.b(this);
      }
    }
    for (parama = localg;; parama = null)
    {
      this.b.c.remove(parama);
      if (this.b.c.size() != 0) {
        break;
      }
      this.b.a.a();
      d.a(this.a).add(this.b.a);
      return;
      i += 1;
      break label25;
    }
  }
  
  public final void a(a parama)
  {
    if (this.c == 1) {
      c(parama);
    }
  }
  
  public final void b(a parama)
  {
    if (this.c == 0) {
      c(parama);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\c\a\h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
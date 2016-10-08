package com.c.a;

import java.util.ArrayList;
import java.util.HashMap;

final class e
  implements b
{
  private d b;
  
  e(d paramd1, d paramd2)
  {
    this.b = paramd2;
  }
  
  public final void a(a parama)
  {
    parama.b(this);
    d.a(this.a).remove(parama);
    ((i)d.b(this.b).get(parama)).f = true;
    int j;
    if (!this.a.b)
    {
      parama = d.c(this.b);
      j = parama.size();
      i = 0;
      if (i >= j) {
        break label161;
      }
      if (((i)parama.get(i)).f) {}
    }
    label161:
    for (int i = 0;; i = 1)
    {
      if (i != 0)
      {
        if (this.a.a != null)
        {
          parama = (ArrayList)this.a.a.clone();
          j = parama.size();
          i = 0;
          for (;;)
          {
            if (i < j)
            {
              ((b)parama.get(i)).a(this.b);
              i += 1;
              continue;
              i += 1;
              break;
            }
          }
        }
        d.d(this.b);
      }
      return;
    }
  }
  
  public final void b(a parama) {}
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\c\a\e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
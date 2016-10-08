package com.c.a;

import java.util.ArrayList;
import java.util.HashMap;

public final class f
{
  i a;
  
  f(d paramd, a parama)
  {
    this.a = ((i)d.b(paramd).get(parama));
    if (this.a == null)
    {
      this.a = new i(parama);
      d.b(paramd).put(parama, this.a);
      d.e(paramd).add(this.a);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\c\a\f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
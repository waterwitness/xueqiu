package com.android.volley.toolbox;

import android.graphics.Bitmap;
import com.android.volley.n;
import com.android.volley.y;
import java.util.LinkedList;

final class k
{
  Bitmap a;
  y b;
  final LinkedList<m> c = new LinkedList();
  private final n<?> e;
  
  public k(n<?> paramn, m paramm)
  {
    this.e = paramm;
    Object localObject;
    this.c.add(localObject);
  }
  
  public final boolean a(m paramm)
  {
    this.c.remove(paramm);
    if (this.c.size() == 0)
    {
      this.e.h = true;
      return true;
    }
    return false;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\android\volley\toolbox\k.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
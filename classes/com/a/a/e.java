package com.a.a;

import android.graphics.RectF;
import com.a.a.c.a;
import com.a.a.d.c;
import java.util.Iterator;
import java.util.PriorityQueue;
import java.util.Vector;

final class e
{
  PriorityQueue<a> a = new PriorityQueue(c.a, new f(this));
  PriorityQueue<a> b = new PriorityQueue(c.a, new f(this));
  Vector<a> c = new Vector();
  
  public final boolean a(int paramInt1, int paramInt2, RectF paramRectF)
  {
    paramRectF = new a(paramInt1, paramInt2, null, paramRectF, true, 0);
    Iterator localIterator = this.c.iterator();
    while (localIterator.hasNext()) {
      if (((a)localIterator.next()).equals(paramRectF)) {
        return true;
      }
    }
    return false;
  }
  
  final a find(PriorityQueue<a> paramPriorityQueue, a parama)
  {
    paramPriorityQueue = paramPriorityQueue.iterator();
    while (paramPriorityQueue.hasNext())
    {
      a locala = (a)paramPriorityQueue.next();
      if (locala.equals(parama)) {
        return locala;
      }
    }
    return null;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\a\a\e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
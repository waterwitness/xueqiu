package com.android.volley.toolbox;

import android.graphics.Bitmap;
import android.os.Handler;
import com.android.volley.p;
import com.android.volley.s;
import com.android.volley.t;
import com.android.volley.y;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;

public final class j
{
  final p a;
  final l b;
  final HashMap<String, k> c;
  final HashMap<String, k> d;
  Runnable e;
  private int f;
  private final Handler g;
  
  final void a(String paramString, k paramk)
  {
    this.d.put(paramString, paramk);
    if (this.e == null)
    {
      this.e = new Runnable()
      {
        public final void run()
        {
          Iterator localIterator1 = j.this.d.values().iterator();
          while (localIterator1.hasNext())
          {
            k localk = (k)localIterator1.next();
            Iterator localIterator2 = localk.c.iterator();
            while (localIterator2.hasNext())
            {
              m localm = (m)localIterator2.next();
              if (localm.b != null) {
                if (localk.b == null)
                {
                  localm.a = localk.a;
                  localm.b.a(localm, false);
                }
                else
                {
                  localm.b.a(localk.b);
                }
              }
            }
          }
          j.this.d.clear();
          j.this.e = null;
        }
      };
      this.g.postDelayed(this.e, this.f);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\android\volley\toolbox\j.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
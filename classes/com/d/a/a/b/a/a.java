package com.d.a.a.b.a;

import android.graphics.Bitmap;
import com.d.a.a.b.c;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;

public final class a
  implements c
{
  private final c a;
  private final Comparator<String> b;
  
  public a(c paramc, Comparator<String> paramComparator)
  {
    this.a = paramc;
    this.b = paramComparator;
  }
  
  private boolean a(String paramString, Bitmap paramBitmap)
  {
    for (;;)
    {
      synchronized (this.a)
      {
        Iterator localIterator = this.a.a().iterator();
        if (localIterator.hasNext())
        {
          str = (String)localIterator.next();
          if (this.b.compare(paramString, str) != 0) {
            continue;
          }
          if (str != null) {
            this.a.a(str);
          }
          return this.a.a(paramString, paramBitmap);
        }
      }
      String str = null;
    }
  }
  
  public final Collection<String> a()
  {
    return this.a.a();
  }
  
  public final void b()
  {
    this.a.b();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\d\a\a\b\a\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
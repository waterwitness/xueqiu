package com.d.a.a.b;

import android.graphics.Bitmap;
import com.d.a.c.d;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

public abstract class b
  extends a
{
  private final int a;
  private final AtomicInteger b;
  private final List<Bitmap> c = Collections.synchronizedList(new LinkedList());
  
  public b(int paramInt)
  {
    this.a = paramInt;
    this.b = new AtomicInteger();
    if (paramInt > 16777216) {
      d.c("You set too large memory cache size (more than %1$d Mb)", new Object[] { Integer.valueOf(16) });
    }
  }
  
  public boolean a(String paramString, Bitmap paramBitmap)
  {
    boolean bool = false;
    int j = b(paramBitmap);
    int k = this.a;
    int i = this.b.get();
    if (j < k)
    {
      while (i + j > k)
      {
        Bitmap localBitmap = c();
        if (this.c.remove(localBitmap)) {
          i = this.b.addAndGet(-b(localBitmap));
        }
      }
      this.c.add(paramBitmap);
      this.b.addAndGet(j);
      bool = true;
    }
    super.a(paramString, paramBitmap);
    return bool;
  }
  
  public abstract int b(Bitmap paramBitmap);
  
  public Bitmap b(String paramString)
  {
    Bitmap localBitmap = super.a(paramString);
    if ((localBitmap != null) && (this.c.remove(localBitmap))) {
      this.b.addAndGet(-b(localBitmap));
    }
    return super.b(paramString);
  }
  
  public void b()
  {
    this.c.clear();
    this.b.set(0);
    super.b();
  }
  
  public abstract Bitmap c();
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\d\a\a\b\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
package com.d.a.a.b.a;

import android.graphics.Bitmap;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public final class b
  extends com.d.a.a.b.b
{
  private final Map<String, Bitmap> a = Collections.synchronizedMap(new LinkedHashMap(10, 1.1F, true));
  
  public b(int paramInt)
  {
    super(paramInt);
  }
  
  public final Bitmap a(String paramString)
  {
    this.a.get(paramString);
    return super.a(paramString);
  }
  
  protected final Reference<Bitmap> a(Bitmap paramBitmap)
  {
    return new WeakReference(paramBitmap);
  }
  
  public final boolean a(String paramString, Bitmap paramBitmap)
  {
    if (super.a(paramString, paramBitmap))
    {
      this.a.put(paramString, paramBitmap);
      return true;
    }
    return false;
  }
  
  protected final int b(Bitmap paramBitmap)
  {
    return paramBitmap.getRowBytes() * paramBitmap.getHeight();
  }
  
  public final Bitmap b(String paramString)
  {
    this.a.remove(paramString);
    return super.b(paramString);
  }
  
  public final void b()
  {
    this.a.clear();
    super.b();
  }
  
  protected final Bitmap c()
  {
    Bitmap localBitmap = null;
    synchronized (this.a)
    {
      Iterator localIterator = this.a.entrySet().iterator();
      if (localIterator.hasNext())
      {
        localBitmap = (Bitmap)((Map.Entry)localIterator.next()).getValue();
        localIterator.remove();
      }
      return localBitmap;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\d\a\a\b\a\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
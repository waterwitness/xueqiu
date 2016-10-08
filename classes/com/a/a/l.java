package com.a.a;

import android.graphics.Bitmap;
import android.graphics.RectF;
import android.os.AsyncTask;
import java.util.ArrayList;
import java.util.List;
import org.vudroid.a.a.c;

final class l
  extends AsyncTask<Void, com.a.a.c.a, Void>
{
  List<m> a;
  private org.vudroid.a.a b;
  private i c;
  
  public l(i parami)
  {
    this.c = parami;
    this.a = new ArrayList();
  }
  
  private com.a.a.c.a a(m paramm)
  {
    this.b = this.c.getDecodeService();
    Object localObject = this.b.a(paramm.d);
    if (localObject == null) {
      return null;
    }
    synchronized (this.b.getClass())
    {
      localObject = ((c)localObject).a(Math.round(paramm.a), Math.round(paramm.b), paramm.c);
      return new com.a.a.c.a(paramm.e, paramm.d, (Bitmap)localObject, paramm.c, paramm.f, paramm.g);
    }
  }
  
  private boolean a()
  {
    try
    {
      synchronized (this.a)
      {
        this.a.wait();
        return true;
      }
      return false;
    }
    catch (InterruptedException localInterruptedException) {}
  }
  
  public final void a(int paramInt1, int paramInt2, float paramFloat1, float paramFloat2, RectF arg5, boolean paramBoolean, int paramInt3)
  {
    ??? = new m(this, paramFloat1, paramFloat2, ???, paramInt1, paramInt2, paramBoolean, paramInt3);
    this.a.add(???);
    synchronized (this.a)
    {
      this.a.notify();
      return;
    }
  }
  
  protected final void onPreExecute() {}
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\a\a\l.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
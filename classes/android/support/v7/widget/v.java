package android.support.v7.widget;

import java.util.ArrayList;

public abstract class v
{
  private ArrayList<Object> a = new ArrayList();
  w h = null;
  long i = 120L;
  long j = 120L;
  long k = 250L;
  long l = 250L;
  boolean m = false;
  
  public abstract void a();
  
  public abstract boolean a(ao paramao);
  
  public abstract boolean a(ao paramao, int paramInt1, int paramInt2, int paramInt3, int paramInt4);
  
  public abstract boolean a(ao paramao1, ao paramao2, int paramInt1, int paramInt2, int paramInt3, int paramInt4);
  
  public abstract boolean b();
  
  public abstract boolean b(ao paramao);
  
  public abstract void c(ao paramao);
  
  public abstract void d();
  
  public final void d(ao paramao)
  {
    if (this.h != null) {
      this.h.a(paramao);
    }
  }
  
  public final void e()
  {
    int i1 = this.a.size();
    int n = 0;
    while (n < i1)
    {
      this.a.get(n);
      n += 1;
    }
    this.a.clear();
  }
  
  public final void e(ao paramao)
  {
    if (this.h != null) {
      this.h.c(paramao);
    }
  }
  
  public final void f(ao paramao)
  {
    if (this.h != null) {
      this.h.b(paramao);
    }
  }
  
  public final void g(ao paramao)
  {
    if (this.h != null) {
      this.h.d(paramao);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v7\widget\v.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
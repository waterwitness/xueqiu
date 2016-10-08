package android.support.v7.widget;

final class x
  implements w
{
  private x(RecyclerView paramRecyclerView) {}
  
  public final void a(ao paramao)
  {
    paramao.a(true);
    if ((!RecyclerView.e(this.a, paramao.a)) && (paramao.n())) {
      this.a.removeDetachedView(paramao.a, false);
    }
  }
  
  public final void b(ao paramao)
  {
    paramao.a(true);
    if (paramao.p()) {
      RecyclerView.e(this.a, paramao.a);
    }
  }
  
  public final void c(ao paramao)
  {
    paramao.a(true);
    if (paramao.p()) {
      RecyclerView.e(this.a, paramao.a);
    }
  }
  
  public final void d(ao paramao)
  {
    paramao.a(true);
    if ((paramao.g != null) && (paramao.h == null))
    {
      paramao.g = null;
      paramao.a(-65, paramao.i);
    }
    paramao.h = null;
    if (paramao.p()) {
      RecyclerView.e(this.a, paramao.a);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v7\widget\x.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
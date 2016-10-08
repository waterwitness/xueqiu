package android.support.v7.widget;

final class ah
  extends u
{
  private ah(RecyclerView paramRecyclerView) {}
  
  public final void a()
  {
    this.a.a(null);
    if (RecyclerView.g(this.a).b)
    {
      this.a.n.h = true;
      RecyclerView.m(this.a);
    }
    for (;;)
    {
      if (!this.a.b.d()) {
        this.a.requestLayout();
      }
      return;
      this.a.n.h = true;
      RecyclerView.m(this.a);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v7\widget\ah.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
package android.support.v7.internal.widget;

final class t
  implements Runnable
{
  private t(o paramo) {}
  
  public final void run()
  {
    if (this.a.v)
    {
      if (this.a.c() != null) {
        this.a.post(this);
      }
      return;
    }
    o.b(this.a);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v7\internal\widget\t.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
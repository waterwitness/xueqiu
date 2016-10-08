package android.support.v7.widget;

import android.view.View;

public abstract class r
{
  protected final aa a;
  int b = Integer.MIN_VALUE;
  
  private r(aa paramaa)
  {
    this.a = paramaa;
  }
  
  public final int a()
  {
    if (Integer.MIN_VALUE == this.b) {
      return 0;
    }
    return e() - this.b;
  }
  
  public abstract int a(View paramView);
  
  public abstract void a(int paramInt);
  
  public abstract int b();
  
  public abstract int b(View paramView);
  
  public abstract int c();
  
  public abstract int c(View paramView);
  
  public abstract int d();
  
  public abstract int d(View paramView);
  
  public abstract int e();
  
  public abstract int f();
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v7\widget\r.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
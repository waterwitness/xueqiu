package android.support.v4.view.a;

import android.os.Build.VERSION;

public final class ac
{
  public static final af a = new ah();
  public final Object b;
  
  static
  {
    if (Build.VERSION.SDK_INT >= 16)
    {
      a = new ag();
      return;
    }
    if (Build.VERSION.SDK_INT >= 15)
    {
      a = new ae();
      return;
    }
    if (Build.VERSION.SDK_INT >= 14)
    {
      a = new ad();
      return;
    }
  }
  
  public ac(Object paramObject)
  {
    this.b = paramObject;
  }
  
  public static ac a()
  {
    return new ac(a.a());
  }
  
  public final void a(int paramInt)
  {
    a.b(this.b, paramInt);
  }
  
  public final void a(boolean paramBoolean)
  {
    a.a(this.b, paramBoolean);
  }
  
  public final void b(int paramInt)
  {
    a.a(this.b, paramInt);
  }
  
  public final void c(int paramInt)
  {
    a.e(this.b, paramInt);
  }
  
  public final boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      do
      {
        return true;
        if (paramObject == null) {
          return false;
        }
        if (getClass() != paramObject.getClass()) {
          return false;
        }
        paramObject = (ac)paramObject;
        if (this.b != null) {
          break;
        }
      } while (((ac)paramObject).b == null);
      return false;
    } while (this.b.equals(((ac)paramObject).b));
    return false;
  }
  
  public final int hashCode()
  {
    if (this.b == null) {
      return 0;
    }
    return this.b.hashCode();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v4\view\a\ac.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
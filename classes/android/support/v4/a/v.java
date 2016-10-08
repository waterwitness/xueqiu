package android.support.v4.a;

import android.os.Parcelable;
import android.support.v4.view.bd;
import android.view.View;
import android.view.ViewGroup;

public abstract class v
  extends bd
{
  private final q b;
  private ac c = null;
  private i d = null;
  
  public v(q paramq)
  {
    this.b = paramq;
  }
  
  private static String a(int paramInt, long paramLong)
  {
    return "android:switcher:" + paramInt + ":" + paramLong;
  }
  
  public final Parcelable a()
  {
    return null;
  }
  
  public abstract i a(int paramInt);
  
  public Object a(ViewGroup paramViewGroup, int paramInt)
  {
    if (this.c == null) {
      this.c = this.b.a();
    }
    long l = paramInt;
    Object localObject = a(paramViewGroup.getId(), l);
    localObject = this.b.a((String)localObject);
    if (localObject != null) {
      this.c.f((i)localObject);
    }
    for (paramViewGroup = (ViewGroup)localObject;; paramViewGroup = (ViewGroup)localObject)
    {
      if (paramViewGroup != this.d)
      {
        paramViewGroup.d(false);
        paramViewGroup.e(false);
      }
      return paramViewGroup;
      localObject = a(paramInt);
      this.c.a(paramViewGroup.getId(), (i)localObject, a(paramViewGroup.getId(), l));
    }
  }
  
  public final void a(ViewGroup paramViewGroup)
  {
    if (this.c != null)
    {
      this.c.e();
      this.c = null;
      this.b.b();
    }
  }
  
  public final void a(ViewGroup paramViewGroup, int paramInt, Object paramObject)
  {
    if (this.c == null) {
      this.c = this.b.a();
    }
    this.c.e((i)paramObject);
  }
  
  public final boolean a(View paramView, Object paramObject)
  {
    return ((i)paramObject).T == paramView;
  }
  
  public final void b(ViewGroup paramViewGroup, int paramInt, Object paramObject)
  {
    paramViewGroup = (i)paramObject;
    if (paramViewGroup != this.d)
    {
      if (this.d != null)
      {
        this.d.d(false);
        this.d.e(false);
      }
      if (paramViewGroup != null)
      {
        paramViewGroup.d(true);
        paramViewGroup.e(true);
      }
      this.d = paramViewGroup;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v4\a\v.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
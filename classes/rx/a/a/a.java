package rx.a.a;

import android.app.Activity;
import android.app.Fragment;
import android.os.Build.VERSION;
import android.support.v4.a.i;
import rx.c.f;

public final class a
{
  public static final boolean a;
  private static final f<Activity, Boolean> b = new f() {};
  private static final f<Fragment, Boolean> c = new f() {};
  private static final f<i, Boolean> d = new f() {};
  
  static
  {
    boolean bool = false;
    try
    {
      Class.forName("android.support.v4.a.i");
      bool = true;
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
      for (;;) {}
    }
    a = bool;
  }
  
  public static <T> rx.a<T> a(Activity paramActivity, rx.a<T> parama)
  {
    rx.a.c.a.a();
    return parama.a(rx.a.d.a.a()).a(new b(paramActivity, b));
  }
  
  public static <T> rx.a<T> a(Object paramObject, rx.a<T> parama)
  {
    rx.a.c.a.a();
    parama = parama.a(rx.a.d.a.a());
    if ((a) && ((paramObject instanceof i))) {
      return parama.a(new b((i)paramObject, d));
    }
    if ((Build.VERSION.SDK_INT >= 11) && ((paramObject instanceof Fragment))) {
      return parama.a(new b((Fragment)paramObject, c));
    }
    throw new IllegalArgumentException("Target fragment is neither a native nor support library Fragment");
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\rx\a\a\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
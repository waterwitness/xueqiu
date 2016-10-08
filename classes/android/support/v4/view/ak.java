package android.support.v4.view;

import android.os.Build.VERSION;
import android.support.v4.c.a.b;
import android.util.Log;
import android.view.MenuItem;
import android.view.View;

public final class ak
{
  static final ao a = new al();
  
  static
  {
    int i = Build.VERSION.SDK_INT;
    if (i >= 14)
    {
      a = new an();
      return;
    }
    if (i >= 11)
    {
      a = new am();
      return;
    }
  }
  
  public static MenuItem a(MenuItem paramMenuItem, ap paramap)
  {
    if ((paramMenuItem instanceof b)) {
      return ((b)paramMenuItem).a(paramap);
    }
    return a.a(paramMenuItem, paramap);
  }
  
  public static MenuItem a(MenuItem paramMenuItem, j paramj)
  {
    if ((paramMenuItem instanceof b)) {
      return ((b)paramMenuItem).a(paramj);
    }
    Log.w("MenuItemCompat", "setActionProvider: item does not implement SupportMenuItem; ignoring");
    return paramMenuItem;
  }
  
  public static MenuItem a(MenuItem paramMenuItem, View paramView)
  {
    if ((paramMenuItem instanceof b)) {
      return ((b)paramMenuItem).setActionView(paramView);
    }
    return a.a(paramMenuItem, paramView);
  }
  
  public static View a(MenuItem paramMenuItem)
  {
    if ((paramMenuItem instanceof b)) {
      return ((b)paramMenuItem).getActionView();
    }
    return a.a(paramMenuItem);
  }
  
  public static void a(MenuItem paramMenuItem, int paramInt)
  {
    if ((paramMenuItem instanceof b))
    {
      ((b)paramMenuItem).setShowAsAction(paramInt);
      return;
    }
    a.a(paramMenuItem, paramInt);
  }
  
  public static MenuItem b(MenuItem paramMenuItem, int paramInt)
  {
    if ((paramMenuItem instanceof b)) {
      return ((b)paramMenuItem).setActionView(paramInt);
    }
    return a.b(paramMenuItem, paramInt);
  }
  
  public static boolean b(MenuItem paramMenuItem)
  {
    if ((paramMenuItem instanceof b)) {
      return ((b)paramMenuItem).expandActionView();
    }
    return a.b(paramMenuItem);
  }
  
  public static boolean c(MenuItem paramMenuItem)
  {
    if ((paramMenuItem instanceof b)) {
      return ((b)paramMenuItem).collapseActionView();
    }
    return a.c(paramMenuItem);
  }
  
  public static boolean d(MenuItem paramMenuItem)
  {
    if ((paramMenuItem instanceof b)) {
      return ((b)paramMenuItem).isActionViewExpanded();
    }
    return a.d(paramMenuItem);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v4\view\ak.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
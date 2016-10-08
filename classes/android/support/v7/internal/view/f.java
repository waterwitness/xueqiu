package android.support.v7.internal.view;

import android.content.Context;
import android.support.v4.view.ak;
import android.support.v4.view.j;
import android.support.v7.internal.view.menu.t;
import android.support.v7.internal.view.menu.u;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;

final class f
{
  Menu a;
  int b;
  int c;
  int d;
  int e;
  boolean f;
  boolean g;
  boolean h;
  int i;
  int j;
  CharSequence k;
  CharSequence l;
  int m;
  char n;
  char o;
  int p;
  boolean q;
  boolean r;
  boolean s;
  int t;
  int u;
  String v;
  String w;
  String x;
  j y;
  
  public f(d paramd, Menu paramMenu)
  {
    this.a = paramMenu;
    a();
  }
  
  static char a(String paramString)
  {
    if (paramString == null) {
      return '\000';
    }
    return paramString.charAt(0);
  }
  
  final <T> T a(String paramString, Class<?>[] paramArrayOfClass, Object[] paramArrayOfObject)
  {
    try
    {
      paramArrayOfClass = d.a(this.z).getClassLoader().loadClass(paramString).getConstructor(paramArrayOfClass).newInstance(paramArrayOfObject);
      return paramArrayOfClass;
    }
    catch (Exception paramArrayOfClass)
    {
      Log.w("SupportMenuInflater", "Cannot instantiate class: " + paramString, paramArrayOfClass);
    }
    return null;
  }
  
  public final void a()
  {
    this.b = 0;
    this.c = 0;
    this.d = 0;
    this.e = 0;
    this.f = true;
    this.g = true;
  }
  
  final void a(MenuItem paramMenuItem)
  {
    int i1 = 1;
    Object localObject = paramMenuItem.setChecked(this.q).setVisible(this.r).setEnabled(this.s);
    if (this.p > 0) {}
    for (boolean bool = true;; bool = false)
    {
      ((MenuItem)localObject).setCheckable(bool).setTitleCondensed(this.l).setIcon(this.m).setAlphabeticShortcut(this.n).setNumericShortcut(this.o);
      if (this.t >= 0) {
        ak.a(paramMenuItem, this.t);
      }
      if (this.x == null) {
        break label162;
      }
      if (!d.a(this.z).isRestricted()) {
        break;
      }
      throw new IllegalStateException("The android:onClick attribute cannot be used within a restricted context");
    }
    paramMenuItem.setOnMenuItemClickListener(new e(d.b(this.z), this.x));
    label162:
    if (this.p >= 2)
    {
      if ((paramMenuItem instanceof t)) {
        ((t)paramMenuItem).a(true);
      }
    }
    else
    {
      if (this.v == null) {
        break label356;
      }
      ak.a(paramMenuItem, (View)a(this.v, d.a(), d.c(this.z)));
    }
    for (;;)
    {
      if (this.u > 0)
      {
        if (i1 != 0) {
          break label344;
        }
        ak.b(paramMenuItem, this.u);
      }
      for (;;)
      {
        if (this.y != null) {
          ak.a(paramMenuItem, this.y);
        }
        return;
        if (!(paramMenuItem instanceof u)) {
          break;
        }
        localObject = (u)paramMenuItem;
        try
        {
          if (((u)localObject).d == null) {
            ((u)localObject).d = ((MenuItem)((u)localObject).c).getClass().getDeclaredMethod("setExclusiveCheckable", new Class[] { Boolean.TYPE });
          }
          ((u)localObject).d.invoke(((u)localObject).c, new Object[] { Boolean.valueOf(true) });
        }
        catch (Exception localException)
        {
          Log.w("MenuItemWrapper", "Error while calling setExclusiveCheckable", localException);
        }
        break;
        label344:
        Log.w("SupportMenuInflater", "Ignoring attribute 'itemActionViewLayout'. Action view already specified.");
      }
      label356:
      i1 = 0;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v7\internal\view\f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
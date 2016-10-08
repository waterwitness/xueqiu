package android.support.v4.view.a;

import android.graphics.Rect;
import android.os.Build.VERSION;
import android.view.View;

public final class f
{
  public static final k a = new p();
  public final Object b;
  
  static
  {
    if (Build.VERSION.SDK_INT >= 22)
    {
      a = new i();
      return;
    }
    if (Build.VERSION.SDK_INT >= 21)
    {
      a = new h();
      return;
    }
    if (Build.VERSION.SDK_INT >= 19)
    {
      a = new o();
      return;
    }
    if (Build.VERSION.SDK_INT >= 18)
    {
      a = new n();
      return;
    }
    if (Build.VERSION.SDK_INT >= 17)
    {
      a = new m();
      return;
    }
    if (Build.VERSION.SDK_INT >= 16)
    {
      a = new l();
      return;
    }
    if (Build.VERSION.SDK_INT >= 14)
    {
      a = new j();
      return;
    }
  }
  
  public f(Object paramObject)
  {
    this.b = paramObject;
  }
  
  public static f a(f paramf)
  {
    paramf = a.a(paramf.b);
    if (paramf != null) {
      return new f(paramf);
    }
    return null;
  }
  
  public final int a()
  {
    return a.b(this.b);
  }
  
  public final void a(int paramInt)
  {
    a.a(this.b, paramInt);
  }
  
  public final void a(Rect paramRect)
  {
    a.a(this.b, paramRect);
  }
  
  public final void a(View paramView)
  {
    a.c(this.b, paramView);
  }
  
  public final void a(CharSequence paramCharSequence)
  {
    a.c(this.b, paramCharSequence);
  }
  
  public final void a(Object paramObject)
  {
    a.b(this.b, ((q)paramObject).a);
  }
  
  public final void a(boolean paramBoolean)
  {
    a.c(this.b, paramBoolean);
  }
  
  public final boolean a(g paramg)
  {
    return a.a(this.b, g.a(paramg));
  }
  
  public final void b(Rect paramRect)
  {
    a.c(this.b, paramRect);
  }
  
  public final void b(View paramView)
  {
    a.a(this.b, paramView);
  }
  
  public final void b(CharSequence paramCharSequence)
  {
    a.a(this.b, paramCharSequence);
  }
  
  public final void b(Object paramObject)
  {
    a.c(this.b, ((r)paramObject).a);
  }
  
  public final void b(boolean paramBoolean)
  {
    a.d(this.b, paramBoolean);
  }
  
  public final boolean b()
  {
    return a.k(this.b);
  }
  
  public final void c(Rect paramRect)
  {
    a.b(this.b, paramRect);
  }
  
  public final void c(View paramView)
  {
    a.b(this.b, paramView);
  }
  
  public final void c(CharSequence paramCharSequence)
  {
    a.b(this.b, paramCharSequence);
  }
  
  public final void c(boolean paramBoolean)
  {
    a.h(this.b, paramBoolean);
  }
  
  public final boolean c()
  {
    return a.l(this.b);
  }
  
  public final void d(Rect paramRect)
  {
    a.d(this.b, paramRect);
  }
  
  public final void d(boolean paramBoolean)
  {
    a.i(this.b, paramBoolean);
  }
  
  public final boolean d()
  {
    return a.s(this.b);
  }
  
  public final void e(boolean paramBoolean)
  {
    a.g(this.b, paramBoolean);
  }
  
  public final boolean e()
  {
    return a.t(this.b);
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
        paramObject = (f)paramObject;
        if (this.b != null) {
          break;
        }
      } while (((f)paramObject).b == null);
      return false;
    } while (this.b.equals(((f)paramObject).b));
    return false;
  }
  
  public final void f(boolean paramBoolean)
  {
    a.a(this.b, paramBoolean);
  }
  
  public final boolean f()
  {
    return a.p(this.b);
  }
  
  public final void g(boolean paramBoolean)
  {
    a.e(this.b, paramBoolean);
  }
  
  public final boolean g()
  {
    return a.i(this.b);
  }
  
  public final void h(boolean paramBoolean)
  {
    a.b(this.b, paramBoolean);
  }
  
  public final boolean h()
  {
    return a.m(this.b);
  }
  
  public final int hashCode()
  {
    if (this.b == null) {
      return 0;
    }
    return this.b.hashCode();
  }
  
  public final void i(boolean paramBoolean)
  {
    a.f(this.b, paramBoolean);
  }
  
  public final boolean i()
  {
    return a.j(this.b);
  }
  
  public final CharSequence j()
  {
    return a.e(this.b);
  }
  
  public final CharSequence k()
  {
    return a.c(this.b);
  }
  
  public final CharSequence l()
  {
    return a.d(this.b);
  }
  
  public final void m()
  {
    a.q(this.b);
  }
  
  public final boolean refresh()
  {
    return a.refresh(this.b);
  }
  
  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(super.toString());
    Object localObject = new Rect();
    a((Rect)localObject);
    localStringBuilder.append("; boundsInParent: " + localObject);
    c((Rect)localObject);
    localStringBuilder.append("; boundsInScreen: " + localObject);
    localStringBuilder.append("; packageName: ").append(j());
    localStringBuilder.append("; className: ").append(k());
    localStringBuilder.append("; text: ").append(a.f(this.b));
    localStringBuilder.append("; contentDescription: ").append(l());
    localStringBuilder.append("; viewId: ").append(a.u(this.b));
    localStringBuilder.append("; checkable: ").append(a.g(this.b));
    localStringBuilder.append("; checked: ").append(a.h(this.b));
    localStringBuilder.append("; focusable: ").append(b());
    localStringBuilder.append("; focused: ").append(c());
    localStringBuilder.append("; selected: ").append(f());
    localStringBuilder.append("; clickable: ").append(g());
    localStringBuilder.append("; longClickable: ").append(h());
    localStringBuilder.append("; enabled: ").append(i());
    localStringBuilder.append("; password: ").append(a.n(this.b));
    localStringBuilder.append("; scrollable: " + a.o(this.b));
    localStringBuilder.append("; [");
    int i = a();
    if (i != 0)
    {
      int j = 1 << Integer.numberOfTrailingZeros(i);
      i = (j ^ 0xFFFFFFFF) & i;
      switch (j)
      {
      default: 
        localObject = "ACTION_UNKNOWN";
      }
      for (;;)
      {
        localStringBuilder.append((String)localObject);
        if (i != 0) {
          localStringBuilder.append(", ");
        }
        break;
        localObject = "ACTION_FOCUS";
        continue;
        localObject = "ACTION_CLEAR_FOCUS";
        continue;
        localObject = "ACTION_SELECT";
        continue;
        localObject = "ACTION_CLEAR_SELECTION";
        continue;
        localObject = "ACTION_CLICK";
        continue;
        localObject = "ACTION_LONG_CLICK";
        continue;
        localObject = "ACTION_ACCESSIBILITY_FOCUS";
        continue;
        localObject = "ACTION_CLEAR_ACCESSIBILITY_FOCUS";
        continue;
        localObject = "ACTION_NEXT_AT_MOVEMENT_GRANULARITY";
        continue;
        localObject = "ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY";
        continue;
        localObject = "ACTION_NEXT_HTML_ELEMENT";
        continue;
        localObject = "ACTION_PREVIOUS_HTML_ELEMENT";
        continue;
        localObject = "ACTION_SCROLL_FORWARD";
        continue;
        localObject = "ACTION_SCROLL_BACKWARD";
        continue;
        localObject = "ACTION_CUT";
        continue;
        localObject = "ACTION_COPY";
        continue;
        localObject = "ACTION_PASTE";
        continue;
        localObject = "ACTION_SET_SELECTION";
      }
    }
    localStringBuilder.append("]");
    return localStringBuilder.toString();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v4\view\a\f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
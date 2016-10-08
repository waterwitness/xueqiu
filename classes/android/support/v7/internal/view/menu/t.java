package android.support.v7.internal.view.menu;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.support.v4.c.a.b;
import android.support.v4.view.ap;
import android.support.v4.view.j;
import android.support.v4.view.l;
import android.util.Log;
import android.view.ActionProvider;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.MenuItem;
import android.view.MenuItem.OnActionExpandListener;
import android.view.MenuItem.OnMenuItemClickListener;
import android.view.SubMenu;
import android.view.View;
import android.view.ViewDebug.CapturedViewProperty;
import java.util.ArrayList;

public final class t
  implements b
{
  static String g;
  static String h;
  static String i;
  static String j;
  final int a;
  char b;
  p c;
  int d = 0;
  j e;
  ContextMenu.ContextMenuInfo f;
  private final int k;
  private final int l;
  private final int m;
  private CharSequence n;
  private CharSequence o;
  private Intent p;
  private char q;
  private Drawable r;
  private int s = 0;
  private aj t;
  private Runnable u;
  private MenuItem.OnMenuItemClickListener v;
  private int w = 16;
  private View x;
  private ap y;
  private boolean z = false;
  
  t(p paramp, int paramInt1, int paramInt2, int paramInt3, int paramInt4, CharSequence paramCharSequence, int paramInt5)
  {
    this.c = paramp;
    this.k = paramInt2;
    this.l = paramInt1;
    this.m = paramInt3;
    this.a = paramInt4;
    this.n = paramCharSequence;
    this.d = paramInt5;
  }
  
  private b a(View paramView)
  {
    this.x = paramView;
    this.e = null;
    if ((paramView != null) && (paramView.getId() == -1) && (this.k > 0)) {
      paramView.setId(this.k);
    }
    this.c.f();
    return this;
  }
  
  private void e(boolean paramBoolean)
  {
    int i2 = this.w;
    int i3 = this.w;
    if (paramBoolean) {}
    for (int i1 = 2;; i1 = 0)
    {
      this.w = (i1 | i3 & 0xFFFFFFFD);
      if (i2 != this.w) {
        this.c.b(false);
      }
      return;
    }
  }
  
  public final b a(ap paramap)
  {
    this.y = paramap;
    return this;
  }
  
  public final b a(j paramj)
  {
    if (this.e == paramj) {}
    do
    {
      return this;
      this.x = null;
      if (this.e != null) {
        this.e.a(null);
      }
      this.e = paramj;
      this.c.b(true);
    } while (paramj == null);
    paramj.a(new l() {});
    return this;
  }
  
  final CharSequence a(ag paramag)
  {
    if ((paramag != null) && (paramag.a())) {
      return getTitleCondensed();
    }
    return getTitle();
  }
  
  final void a(aj paramaj)
  {
    this.t = paramaj;
    paramaj.setHeaderTitle(getTitle());
  }
  
  public final void a(boolean paramBoolean)
  {
    int i2 = this.w;
    if (paramBoolean) {}
    for (int i1 = 4;; i1 = 0)
    {
      this.w = (i1 | i2 & 0xFFFFFFFB);
      return;
    }
  }
  
  public final boolean a()
  {
    if ((this.v != null) && (this.v.onMenuItemClick(this))) {}
    while (this.c.a(this.c.j(), this)) {
      return true;
    }
    if (this.u != null)
    {
      this.u.run();
      return true;
    }
    if (this.p != null) {
      try
      {
        this.c.a.startActivity(this.p);
        return true;
      }
      catch (ActivityNotFoundException localActivityNotFoundException)
      {
        Log.e("MenuItemImpl", "Can't find activity to handle intent; ignoring", localActivityNotFoundException);
      }
    }
    return false;
  }
  
  final boolean b()
  {
    return (this.c.c()) && (this.b != 0);
  }
  
  final boolean b(boolean paramBoolean)
  {
    boolean bool = false;
    int i2 = this.w;
    int i3 = this.w;
    if (paramBoolean) {}
    for (int i1 = 0;; i1 = 8)
    {
      this.w = (i1 | i3 & 0xFFFFFFF7);
      paramBoolean = bool;
      if (i2 != this.w) {
        paramBoolean = true;
      }
      return paramBoolean;
    }
  }
  
  public final void c(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      this.w |= 0x20;
      return;
    }
    this.w &= 0xFFFFFFDF;
  }
  
  public final boolean c()
  {
    return (this.w & 0x4) != 0;
  }
  
  public final boolean collapseActionView()
  {
    if ((this.d & 0x8) == 0) {
      return false;
    }
    if (this.x == null) {
      return true;
    }
    if (this.y != null) {
      this.y.b(this);
    }
    return this.c.b(this);
  }
  
  public final void d(boolean paramBoolean)
  {
    this.z = paramBoolean;
    this.c.b(false);
  }
  
  public final boolean d()
  {
    return (this.w & 0x20) == 32;
  }
  
  public final boolean e()
  {
    return (this.d & 0x1) == 1;
  }
  
  public final boolean expandActionView()
  {
    if (((this.d & 0x8) == 0) || (this.x == null)) {
      return false;
    }
    if (this.y != null) {
      this.y.a(this);
    }
    return this.c.a(this);
  }
  
  public final boolean f()
  {
    return (this.d & 0x2) == 2;
  }
  
  public final boolean g()
  {
    return ((this.d & 0x8) != 0) && (this.x != null);
  }
  
  public final ActionProvider getActionProvider()
  {
    throw new UnsupportedOperationException("Implementation should use getSupportActionProvider!");
  }
  
  public final View getActionView()
  {
    if (this.x != null) {
      return this.x;
    }
    if (this.e != null)
    {
      this.x = this.e.c();
      return this.x;
    }
    return null;
  }
  
  public final char getAlphabeticShortcut()
  {
    return this.b;
  }
  
  public final int getGroupId()
  {
    return this.l;
  }
  
  public final Drawable getIcon()
  {
    if (this.r != null) {
      return this.r;
    }
    if (this.s != 0)
    {
      Drawable localDrawable = this.c.b.getDrawable(this.s);
      this.s = 0;
      this.r = localDrawable;
      return localDrawable;
    }
    return null;
  }
  
  public final Intent getIntent()
  {
    return this.p;
  }
  
  @ViewDebug.CapturedViewProperty
  public final int getItemId()
  {
    return this.k;
  }
  
  public final ContextMenu.ContextMenuInfo getMenuInfo()
  {
    return this.f;
  }
  
  public final char getNumericShortcut()
  {
    return this.q;
  }
  
  public final int getOrder()
  {
    return this.m;
  }
  
  public final SubMenu getSubMenu()
  {
    return this.t;
  }
  
  @ViewDebug.CapturedViewProperty
  public final CharSequence getTitle()
  {
    return this.n;
  }
  
  public final CharSequence getTitleCondensed()
  {
    if (this.o != null) {
      return this.o;
    }
    return this.n;
  }
  
  public final boolean hasSubMenu()
  {
    return this.t != null;
  }
  
  public final boolean isActionViewExpanded()
  {
    return this.z;
  }
  
  public final boolean isCheckable()
  {
    return (this.w & 0x1) == 1;
  }
  
  public final boolean isChecked()
  {
    return (this.w & 0x2) == 2;
  }
  
  public final boolean isEnabled()
  {
    return (this.w & 0x10) != 0;
  }
  
  public final boolean isVisible()
  {
    return (this.w & 0x8) == 0;
  }
  
  public final MenuItem setActionProvider(ActionProvider paramActionProvider)
  {
    throw new UnsupportedOperationException("Implementation should use setSupportActionProvider!");
  }
  
  public final MenuItem setAlphabeticShortcut(char paramChar)
  {
    if (this.b == paramChar) {
      return this;
    }
    this.b = Character.toLowerCase(paramChar);
    this.c.b(false);
    return this;
  }
  
  public final MenuItem setCheckable(boolean paramBoolean)
  {
    int i2 = this.w;
    int i3 = this.w;
    if (paramBoolean) {}
    for (int i1 = 1;; i1 = 0)
    {
      this.w = (i1 | i3 & 0xFFFFFFFE);
      if (i2 != this.w) {
        this.c.b(false);
      }
      return this;
    }
  }
  
  public final MenuItem setChecked(boolean paramBoolean)
  {
    if ((this.w & 0x4) != 0)
    {
      p localp = this.c;
      int i2 = getGroupId();
      int i3 = localp.d.size();
      int i1 = 0;
      if (i1 < i3)
      {
        t localt = (t)localp.d.get(i1);
        if ((localt.getGroupId() == i2) && (localt.c()) && (localt.isCheckable())) {
          if (localt != this) {
            break label98;
          }
        }
        label98:
        for (paramBoolean = true;; paramBoolean = false)
        {
          localt.e(paramBoolean);
          i1 += 1;
          break;
        }
      }
    }
    else
    {
      e(paramBoolean);
    }
    return this;
  }
  
  public final MenuItem setEnabled(boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (this.w |= 0x10;; this.w &= 0xFFFFFFEF)
    {
      this.c.b(false);
      return this;
    }
  }
  
  public final MenuItem setIcon(int paramInt)
  {
    this.r = null;
    this.s = paramInt;
    this.c.b(false);
    return this;
  }
  
  public final MenuItem setIcon(Drawable paramDrawable)
  {
    this.s = 0;
    this.r = paramDrawable;
    this.c.b(false);
    return this;
  }
  
  public final MenuItem setIntent(Intent paramIntent)
  {
    this.p = paramIntent;
    return this;
  }
  
  public final MenuItem setNumericShortcut(char paramChar)
  {
    if (this.q == paramChar) {
      return this;
    }
    this.q = paramChar;
    this.c.b(false);
    return this;
  }
  
  public final MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener paramOnActionExpandListener)
  {
    throw new UnsupportedOperationException("Implementation should use setSupportOnActionExpandListener!");
  }
  
  public final MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener paramOnMenuItemClickListener)
  {
    this.v = paramOnMenuItemClickListener;
    return this;
  }
  
  public final MenuItem setShortcut(char paramChar1, char paramChar2)
  {
    this.q = paramChar1;
    this.b = Character.toLowerCase(paramChar2);
    this.c.b(false);
    return this;
  }
  
  public final void setShowAsAction(int paramInt)
  {
    switch (paramInt & 0x3)
    {
    default: 
      throw new IllegalArgumentException("SHOW_AS_ACTION_ALWAYS, SHOW_AS_ACTION_IF_ROOM, and SHOW_AS_ACTION_NEVER are mutually exclusive.");
    }
    this.d = paramInt;
    this.c.f();
  }
  
  public final MenuItem setTitle(int paramInt)
  {
    return setTitle(this.c.a.getString(paramInt));
  }
  
  public final MenuItem setTitle(CharSequence paramCharSequence)
  {
    this.n = paramCharSequence;
    this.c.b(false);
    if (this.t != null) {
      this.t.setHeaderTitle(paramCharSequence);
    }
    return this;
  }
  
  public final MenuItem setTitleCondensed(CharSequence paramCharSequence)
  {
    this.o = paramCharSequence;
    this.c.b(false);
    return this;
  }
  
  public final MenuItem setVisible(boolean paramBoolean)
  {
    if (b(paramBoolean))
    {
      p localp = this.c;
      localp.e = true;
      localp.b(true);
    }
    return this;
  }
  
  public final String toString()
  {
    return this.n.toString();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v7\internal\view\menu\t.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
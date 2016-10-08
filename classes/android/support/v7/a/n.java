package android.support.v7.a;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.res.Resources.Theme;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.support.v4.a.ac;
import android.support.v4.a.q;
import android.support.v7.internal.widget.ActionBarContainer;
import android.support.v7.internal.widget.ActionBarContextView;
import android.support.v7.internal.widget.ActionBarOverlayLayout;
import android.support.v7.internal.widget.ActionBarView;
import android.support.v7.internal.widget.ScrollingTabContainerView;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import java.util.ArrayList;

class n
  extends a
{
  Context a;
  final Handler b = new Handler();
  boolean c;
  private Context d;
  private f e;
  private ActionBarOverlayLayout f;
  private ActionBarContainer g;
  private ViewGroup h;
  private ActionBarView i;
  private ActionBarContextView j;
  private ActionBarContainer k;
  private ScrollingTabContainerView l;
  private ArrayList<o> m = new ArrayList();
  private o n;
  private int o = -1;
  private boolean p;
  private ArrayList<Object> q = new ArrayList();
  private int r;
  private boolean s;
  private int t = 0;
  private boolean u;
  private boolean v;
  private boolean w = true;
  private boolean x;
  private b y;
  
  public n(f paramf, b paramb)
  {
    this.e = paramf;
    this.a = paramf;
    this.y = paramb;
    paramf = this.e;
    this.f = ((ActionBarOverlayLayout)paramf.findViewById(android.support.v7.b.f.action_bar_overlay_layout));
    if (this.f != null) {
      this.f.setActionBar(this);
    }
    this.i = ((ActionBarView)paramf.findViewById(android.support.v7.b.f.action_bar));
    this.j = ((ActionBarContextView)paramf.findViewById(android.support.v7.b.f.action_context_bar));
    this.g = ((ActionBarContainer)paramf.findViewById(android.support.v7.b.f.action_bar_container));
    this.h = ((ViewGroup)paramf.findViewById(android.support.v7.b.f.top_action_bar));
    if (this.h == null) {
      this.h = this.g;
    }
    this.k = ((ActionBarContainer)paramf.findViewById(android.support.v7.b.f.split_action_bar));
    if ((this.i == null) || (this.j == null) || (this.g == null)) {
      throw new IllegalStateException(getClass().getSimpleName() + " can only be used with a compatible window decor layout");
    }
    this.i.setContextView(this.j);
    int i1;
    if (this.i.i())
    {
      i1 = 1;
      this.r = i1;
      if ((this.i.getDisplayOptions() & 0x4) == 0) {
        break label363;
      }
      i1 = 1;
      label285:
      if (i1 != 0) {
        this.p = true;
      }
      paramf = android.support.v7.internal.view.a.a(this.a);
      if (paramf.a.getApplicationInfo().targetSdkVersion >= 14) {
        break label368;
      }
    }
    label363:
    label368:
    for (int i2 = 1;; i2 = 0)
    {
      if ((i2 != 0) || (i1 != 0)) {
        bool = true;
      }
      e(bool);
      f(paramf.a());
      a(this.e.getTitle());
      return;
      i1 = 0;
      break;
      i1 = 0;
      break label285;
    }
  }
  
  private void a(int paramInt1, int paramInt2)
  {
    int i1 = this.i.getDisplayOptions();
    if ((paramInt2 & 0x4) != 0) {
      this.p = true;
    }
    this.i.setDisplayOptions(i1 & (paramInt2 ^ 0xFFFFFFFF) | paramInt1 & paramInt2);
  }
  
  public final View a()
  {
    return this.i.getCustomNavigationView();
  }
  
  public final void a(int paramInt)
  {
    a(LayoutInflater.from(e()).inflate(paramInt, this.i, false));
  }
  
  public final void a(Drawable paramDrawable)
  {
    this.g.setPrimaryBackground(paramDrawable);
  }
  
  public final void a(e parame)
  {
    int i1 = -1;
    if (this.i.getNavigationMode() != 2)
    {
      if (parame != null) {
        i1 = parame.a();
      }
      this.o = i1;
    }
    for (;;)
    {
      return;
      ac localac = this.e.c().a().c();
      if (this.n == parame) {
        if (this.n != null) {
          this.l.a(parame.a());
        }
      }
      while (!localac.f())
      {
        localac.d();
        return;
        ScrollingTabContainerView localScrollingTabContainerView = this.l;
        if (parame != null) {
          i1 = parame.a();
        }
        localScrollingTabContainerView.setTabSelected(i1);
        this.n = ((o)parame);
      }
    }
  }
  
  public final void a(View paramView)
  {
    this.i.setCustomNavigationView(paramView);
  }
  
  public final void a(View paramView, c paramc)
  {
    paramView.setLayoutParams(paramc);
    this.i.setCustomNavigationView(paramView);
  }
  
  public final void a(CharSequence paramCharSequence)
  {
    this.i.setTitle(paramCharSequence);
  }
  
  public final void a(boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (int i1 = 2;; i1 = 0)
    {
      a(i1, 2);
      return;
    }
  }
  
  public final int b()
  {
    return this.i.getDisplayOptions();
  }
  
  public final void b(int paramInt)
  {
    a(this.a.getString(paramInt));
  }
  
  public final void b(Drawable paramDrawable)
  {
    this.g.setStackedBackground(paramDrawable);
  }
  
  public final void b(CharSequence paramCharSequence)
  {
    this.i.setSubtitle(paramCharSequence);
  }
  
  public final void b(boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (int i1 = 4;; i1 = 0)
    {
      a(i1, 4);
      return;
    }
  }
  
  public final int c()
  {
    return this.g.getHeight();
  }
  
  public final void c(int paramInt)
  {
    if ((paramInt & 0x4) != 0) {
      this.p = true;
    }
    this.i.setDisplayOptions(paramInt);
  }
  
  public final void c(Drawable paramDrawable)
  {
    this.g.setSplitBackground(paramDrawable);
  }
  
  public final void c(boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (int i1 = 8;; i1 = 0)
    {
      a(i1, 8);
      return;
    }
  }
  
  public void d()
  {
    if (!this.u)
    {
      this.u = true;
      f();
    }
  }
  
  public final void d(int paramInt)
  {
    label52:
    Object localObject;
    switch (this.i.getNavigationMode())
    {
    default: 
      this.i.setNavigationMode(paramInt);
      switch (paramInt)
      {
      default: 
        localObject = this.i;
        if ((paramInt != 2) || (this.s)) {}
        break;
      }
      break;
    }
    for (boolean bool = true;; bool = false)
    {
      ((ActionBarView)localObject).setCollapsable(bool);
      return;
      int i1;
      switch (this.i.getNavigationMode())
      {
      default: 
        i1 = -1;
      }
      for (;;)
      {
        this.o = i1;
        a(null);
        this.l.setVisibility(8);
        break;
        if (this.n != null)
        {
          i1 = this.n.a;
        }
        else
        {
          i1 = -1;
          continue;
          i1 = this.i.getDropdownSelectedPosition();
        }
      }
      if (this.l == null)
      {
        localObject = new ScrollingTabContainerView(this.a);
        if (this.s)
        {
          ((ScrollingTabContainerView)localObject).setVisibility(0);
          this.i.setEmbeddedTabView((ScrollingTabContainerView)localObject);
          this.l = ((ScrollingTabContainerView)localObject);
        }
      }
      else
      {
        this.l.setVisibility(0);
        if (this.o == -1) {
          break label52;
        }
        i1 = this.o;
      }
      switch (this.i.getNavigationMode())
      {
      default: 
        throw new IllegalStateException("setSelectedNavigationIndex not valid for current navigation mode");
        if (this.i.getNavigationMode() == 2) {
          ((ScrollingTabContainerView)localObject).setVisibility(0);
        }
        for (;;)
        {
          this.g.setTabContainer((ScrollingTabContainerView)localObject);
          break;
          ((ScrollingTabContainerView)localObject).setVisibility(8);
        }
      case 2: 
        a((e)this.m.get(i1));
      }
      for (;;)
      {
        this.o = -1;
        break;
        this.i.setDropdownSelectedPosition(i1);
      }
    }
  }
  
  public final void d(boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (int i1 = 16;; i1 = 0)
    {
      a(i1, 16);
      return;
    }
  }
  
  public final Context e()
  {
    int i1;
    if (this.d == null)
    {
      TypedValue localTypedValue = new TypedValue();
      this.a.getTheme().resolveAttribute(android.support.v7.b.c.actionBarWidgetTheme, localTypedValue, true);
      i1 = localTypedValue.resourceId;
      if (i1 == 0) {
        break label61;
      }
    }
    label61:
    for (this.d = new ContextThemeWrapper(this.a, i1);; this.d = this.a) {
      return this.d;
    }
  }
  
  public final void e(int paramInt)
  {
    this.i.setHomeAsUpIndicator(paramInt);
  }
  
  public final void e(boolean paramBoolean)
  {
    this.i.setHomeButtonEnabled(paramBoolean);
  }
  
  final void f()
  {
    int i3 = 1;
    int i2 = 1;
    boolean bool1 = this.u;
    boolean bool2 = this.v;
    label78:
    Animation localAnimation;
    if ((!this.c) && ((bool1) || (bool2)))
    {
      i1 = 0;
      if (i1 == 0) {
        break label168;
      }
      if (!this.w)
      {
        this.w = true;
        this.h.clearAnimation();
        if (this.h.getVisibility() != 0)
        {
          if (!g()) {
            break label163;
          }
          i1 = i2;
          if (i1 != 0)
          {
            localAnimation = AnimationUtils.loadAnimation(this.a, android.support.v7.b.b.abc_slide_in_top);
            this.h.startAnimation(localAnimation);
          }
          this.h.setVisibility(0);
          if ((this.k != null) && (this.k.getVisibility() != 0))
          {
            if (i1 != 0)
            {
              localAnimation = AnimationUtils.loadAnimation(this.a, android.support.v7.b.b.abc_slide_in_bottom);
              this.k.startAnimation(localAnimation);
            }
            this.k.setVisibility(0);
          }
        }
      }
    }
    label163:
    label168:
    do
    {
      do
      {
        return;
        i1 = 1;
        break;
        i1 = 0;
        break label78;
      } while (!this.w);
      this.w = false;
      this.h.clearAnimation();
    } while (this.h.getVisibility() == 8);
    if (g()) {}
    for (int i1 = i3;; i1 = 0)
    {
      if (i1 != 0)
      {
        localAnimation = AnimationUtils.loadAnimation(this.a, android.support.v7.b.b.abc_slide_out_top);
        this.h.startAnimation(localAnimation);
      }
      this.h.setVisibility(8);
      if ((this.k == null) || (this.k.getVisibility() == 8)) {
        break;
      }
      if (i1 != 0)
      {
        localAnimation = AnimationUtils.loadAnimation(this.a, android.support.v7.b.b.abc_slide_out_bottom);
        this.k.startAnimation(localAnimation);
      }
      this.k.setVisibility(8);
      return;
    }
  }
  
  final void f(boolean paramBoolean)
  {
    boolean bool = true;
    this.s = paramBoolean;
    int i1;
    label47:
    label66:
    ActionBarView localActionBarView;
    if (!this.s)
    {
      this.i.setEmbeddedTabView(null);
      this.g.setTabContainer(this.l);
      if (this.i.getNavigationMode() != 2) {
        break label113;
      }
      i1 = 1;
      if (this.l != null)
      {
        if (i1 == 0) {
          break label118;
        }
        this.l.setVisibility(0);
      }
      localActionBarView = this.i;
      if ((this.s) || (i1 == 0)) {
        break label130;
      }
    }
    label113:
    label118:
    label130:
    for (paramBoolean = bool;; paramBoolean = false)
    {
      localActionBarView.setCollapsable(paramBoolean);
      return;
      this.g.setTabContainer(null);
      this.i.setEmbeddedTabView(this.l);
      break;
      i1 = 0;
      break label47;
      this.l.setVisibility(8);
      break label66;
    }
  }
  
  public final void g(boolean paramBoolean)
  {
    this.x = paramBoolean;
    if (!paramBoolean)
    {
      this.h.clearAnimation();
      if (this.k != null) {
        this.k.clearAnimation();
      }
    }
  }
  
  boolean g()
  {
    return this.x;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v7\a\n.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
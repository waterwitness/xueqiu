package android.support.v7.internal.widget;

import android.app.Activity;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.ConstantState;
import android.os.Build.VERSION;
import android.os.Parcelable;
import android.support.v7.b.h;
import android.support.v7.b.i;
import android.support.v7.b.k;
import android.support.v7.internal.view.menu.ActionMenuView;
import android.support.v7.internal.view.menu.ae;
import android.support.v7.internal.view.menu.p;
import android.support.v7.internal.view.menu.t;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewParent;
import android.view.Window.Callback;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.SpinnerAdapter;
import android.widget.TextView;

public class ActionBarView
  extends a
{
  private View A;
  private ac B;
  private ac C;
  private int D;
  private int E;
  private int F;
  private int G;
  private int H;
  private int I;
  private boolean J;
  private boolean K;
  private boolean L;
  private p M;
  private ActionBarContextView N;
  private android.support.v7.internal.view.menu.a O;
  private SpinnerAdapter P;
  private android.support.v7.a.d Q;
  private Runnable R;
  private final s S = new s() {};
  private final View.OnClickListener T = new View.OnClickListener()
  {
    public final void onClick(View paramAnonymousView)
    {
      paramAnonymousView = ActionBarView.a(ActionBarView.this).b;
      if (paramAnonymousView != null) {
        paramAnonymousView.collapseActionView();
      }
    }
  };
  private final View.OnClickListener U = new View.OnClickListener()
  {
    public final void onClick(View paramAnonymousView)
    {
      ActionBarView.this.j.onMenuItemSelected(0, ActionBarView.b(ActionBarView.this));
    }
  };
  boolean g;
  public e h;
  View i;
  Window.Callback j;
  private int k;
  private int l = -1;
  private CharSequence m;
  private CharSequence n;
  private Drawable o;
  private Drawable p;
  private Context q;
  private ActionBarView.HomeView r;
  private ActionBarView.HomeView s;
  private LinearLayout t;
  private TextView u;
  private TextView v;
  private View w;
  private ag x;
  private LinearLayout y;
  private ScrollingTabContainerView z;
  
  public ActionBarView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    this.q = paramContext;
    setBackgroundResource(0);
    paramAttributeSet = paramContext.obtainStyledAttributes(paramAttributeSet, k.ActionBar, android.support.v7.b.c.actionBarStyle, 0);
    Object localObject = paramContext.getApplicationInfo();
    PackageManager localPackageManager = paramContext.getPackageManager();
    this.k = paramAttributeSet.getInt(2, 0);
    this.m = paramAttributeSet.getText(1);
    this.n = paramAttributeSet.getText(4);
    this.p = paramAttributeSet.getDrawable(8);
    if ((this.p != null) || (Build.VERSION.SDK_INT < 9) || ((paramContext instanceof Activity))) {}
    try
    {
      this.p = localPackageManager.getActivityLogo(((Activity)paramContext).getComponentName());
      if (this.p == null) {
        this.p = ((ApplicationInfo)localObject).loadLogo(localPackageManager);
      }
      this.o = paramAttributeSet.getDrawable(7);
      if (this.o == null) {
        if (!(paramContext instanceof Activity)) {}
      }
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException1)
    {
      try
      {
        this.o = localPackageManager.getActivityIcon(((Activity)paramContext).getComponentName());
        if (this.o == null) {
          this.o = ((ApplicationInfo)localObject).loadIcon(localPackageManager);
        }
        localObject = LayoutInflater.from(paramContext);
        int i1 = paramAttributeSet.getResourceId(14, h.abc_action_bar_home);
        this.r = ((ActionBarView.HomeView)((LayoutInflater)localObject).inflate(i1, this, false));
        this.s = ((ActionBarView.HomeView)((LayoutInflater)localObject).inflate(i1, this, false));
        this.s.a(true);
        this.s.setOnClickListener(this.T);
        this.s.setContentDescription(getResources().getText(i.abc_action_bar_up_description));
        this.F = paramAttributeSet.getResourceId(5, 0);
        this.G = paramAttributeSet.getResourceId(6, 0);
        this.H = paramAttributeSet.getResourceId(15, 0);
        this.I = paramAttributeSet.getResourceId(16, 0);
        this.D = paramAttributeSet.getDimensionPixelOffset(17, 0);
        this.E = paramAttributeSet.getDimensionPixelOffset(18, 0);
        setDisplayOptions(paramAttributeSet.getInt(3, 0));
        i1 = paramAttributeSet.getResourceId(13, 0);
        if (i1 != 0)
        {
          this.A = ((LayoutInflater)localObject).inflate(i1, this, false);
          this.k = 0;
          setDisplayOptions(this.l | 0x10);
        }
        this.f = paramAttributeSet.getLayoutDimension(0, 0);
        paramAttributeSet.recycle();
        this.O = new android.support.v7.internal.view.menu.a(paramContext, this.m);
        this.r.setOnClickListener(this.U);
        this.r.setClickable(true);
        this.r.setFocusable(true);
        return;
        localNameNotFoundException1 = localNameNotFoundException1;
        Log.e("ActionBarView", "Activity component name not found!", localNameNotFoundException1);
      }
      catch (PackageManager.NameNotFoundException localNameNotFoundException2)
      {
        for (;;)
        {
          Log.e("ActionBarView", "Activity component name not found!", localNameNotFoundException2);
        }
      }
    }
  }
  
  private void a(p paramp)
  {
    if (paramp != null)
    {
      paramp.a(this.b);
      paramp.a(this.h);
    }
    for (;;)
    {
      this.b.b(true);
      this.h.b(true);
      return;
      this.b.a(this.q, null);
      this.h.a(this.q, null);
    }
  }
  
  private void j()
  {
    boolean bool = true;
    int i2;
    int i3;
    label202:
    Object localObject;
    int i1;
    if (this.t == null)
    {
      this.t = ((LinearLayout)LayoutInflater.from(getContext()).inflate(h.abc_action_bar_title_item, this, false));
      this.u = ((TextView)this.t.findViewById(android.support.v7.b.f.action_bar_title));
      this.v = ((TextView)this.t.findViewById(android.support.v7.b.f.action_bar_subtitle));
      this.w = this.t.findViewById(android.support.v7.b.f.up);
      this.t.setOnClickListener(this.U);
      if (this.F != 0) {
        this.u.setTextAppearance(this.q, this.F);
      }
      if (this.m != null) {
        this.u.setText(this.m);
      }
      if (this.G != 0) {
        this.v.setTextAppearance(this.q, this.G);
      }
      if (this.n != null)
      {
        this.v.setText(this.n);
        this.v.setVisibility(0);
      }
      if ((this.l & 0x4) == 0) {
        break label288;
      }
      i2 = 1;
      if ((this.l & 0x2) == 0) {
        break label293;
      }
      i3 = 1;
      localObject = this.w;
      if (i3 != 0) {
        break label304;
      }
      if (i2 == 0) {
        break label299;
      }
      i1 = 0;
      label218:
      ((View)localObject).setVisibility(i1);
      localObject = this.t;
      if ((i2 == 0) || (i3 != 0)) {
        break label310;
      }
    }
    for (;;)
    {
      ((LinearLayout)localObject).setEnabled(bool);
      addView(this.t);
      if ((this.i != null) || ((TextUtils.isEmpty(this.m)) && (TextUtils.isEmpty(this.n)))) {
        this.t.setVisibility(8);
      }
      return;
      label288:
      i2 = 0;
      break;
      label293:
      i3 = 0;
      break label202;
      label299:
      i1 = 4;
      break label218;
      label304:
      i1 = 8;
      break label218;
      label310:
      bool = false;
    }
  }
  
  private void setTitleImpl(CharSequence paramCharSequence)
  {
    int i2 = 0;
    this.m = paramCharSequence;
    LinearLayout localLinearLayout;
    if (this.u != null)
    {
      this.u.setText(paramCharSequence);
      if ((this.i != null) || ((this.l & 0x8) == 0) || ((TextUtils.isEmpty(this.m)) && (TextUtils.isEmpty(this.n)))) {
        break label96;
      }
      i1 = 1;
      localLinearLayout = this.t;
      if (i1 == 0) {
        break label101;
      }
    }
    label96:
    label101:
    for (int i1 = i2;; i1 = 8)
    {
      localLinearLayout.setVisibility(i1);
      if (this.O != null) {
        this.O.setTitle(paramCharSequence);
      }
      return;
      i1 = 0;
      break;
    }
  }
  
  public final void a(android.support.v4.c.a.a parama, ae paramae)
  {
    if (parama == this.M) {
      return;
    }
    if (this.M != null)
    {
      this.M.b(this.b);
      this.M.b(this.h);
    }
    Object localObject = (p)parama;
    this.M = ((p)localObject);
    if (this.a != null)
    {
      parama = (ViewGroup)this.a.getParent();
      if (parama != null) {
        parama.removeView(this.a);
      }
    }
    if (this.b == null)
    {
      this.b = new android.support.v7.internal.view.menu.c(this.q);
      this.b.m = paramae;
      this.b.o = android.support.v7.b.f.action_menu_presenter;
      this.h = new e(this, (byte)0);
    }
    paramae = new ViewGroup.LayoutParams(-2, -1);
    if (!this.d)
    {
      this.b.b = getResources().getBoolean(android.support.v7.b.d.abc_action_bar_expanded_action_views_exclusive);
      a((p)localObject);
      parama = (ActionMenuView)this.b.a(this);
      parama.a = ((p)localObject);
      localObject = (ViewGroup)parama.getParent();
      if ((localObject != null) && (localObject != this)) {
        ((ViewGroup)localObject).removeView(parama);
      }
      addView(parama, paramae);
    }
    for (;;)
    {
      this.a = parama;
      return;
      this.b.b = false;
      this.b.a(getContext().getResources().getDisplayMetrics().widthPixels);
      this.b.b();
      paramae.width = -1;
      a((p)localObject);
      parama = (ActionMenuView)this.b.a(this);
      if (this.c != null)
      {
        localObject = (ViewGroup)parama.getParent();
        if ((localObject != null) && (localObject != this.c)) {
          ((ViewGroup)localObject).removeView(parama);
        }
        parama.setVisibility(getAnimatedVisibility());
        this.c.addView(parama, paramae);
      }
      else
      {
        parama.setLayoutParams(paramae);
      }
    }
  }
  
  public final void g()
  {
    this.B = new ac(this.q, this.H);
    this.B.setId(android.support.v7.b.f.progress_horizontal);
    this.B.setMax(10000);
    this.B.setVisibility(8);
    addView(this.B);
  }
  
  protected ViewGroup.LayoutParams generateDefaultLayoutParams()
  {
    return new android.support.v7.a.c();
  }
  
  public ViewGroup.LayoutParams generateLayoutParams(AttributeSet paramAttributeSet)
  {
    return new android.support.v7.a.c(getContext(), paramAttributeSet);
  }
  
  public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    ViewGroup.LayoutParams localLayoutParams = paramLayoutParams;
    if (paramLayoutParams == null) {
      localLayoutParams = generateDefaultLayoutParams();
    }
    return localLayoutParams;
  }
  
  public View getCustomNavigationView()
  {
    return this.A;
  }
  
  public int getDisplayOptions()
  {
    return this.l;
  }
  
  public SpinnerAdapter getDropdownAdapter()
  {
    return this.P;
  }
  
  public int getDropdownSelectedPosition()
  {
    return this.x.w;
  }
  
  public int getNavigationMode()
  {
    return this.k;
  }
  
  public CharSequence getSubtitle()
  {
    return this.n;
  }
  
  public CharSequence getTitle()
  {
    return this.m;
  }
  
  public final void h()
  {
    this.C = new ac(this.q, this.I);
    this.C.setId(android.support.v7.b.f.progress_circular);
    this.C.setVisibility(8);
    addView(this.C);
  }
  
  public final boolean i()
  {
    return this.d;
  }
  
  protected void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    this.u = null;
    this.v = null;
    this.w = null;
    if ((this.t != null) && (this.t.getParent() == this)) {
      removeView(this.t);
    }
    this.t = null;
    if ((this.l & 0x8) != 0) {
      j();
    }
    if ((this.z != null) && (this.K))
    {
      paramConfiguration = this.z.getLayoutParams();
      if (paramConfiguration != null)
      {
        paramConfiguration.width = -2;
        paramConfiguration.height = -1;
      }
      this.z.setAllowCollapse(true);
    }
    if (this.B != null)
    {
      removeView(this.B);
      g();
    }
    if (this.C != null)
    {
      removeView(this.C);
      h();
    }
  }
  
  public void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    removeCallbacks(this.R);
    if (this.b != null)
    {
      this.b.d();
      this.b.f();
    }
  }
  
  protected void onFinishInflate()
  {
    super.onFinishInflate();
    addView(this.r);
    if ((this.A != null) && ((this.l & 0x10) != 0))
    {
      ViewParent localViewParent = this.A.getParent();
      if (localViewParent != this)
      {
        if ((localViewParent instanceof ViewGroup)) {
          ((ViewGroup)localViewParent).removeView(this.A);
        }
        addView(this.A);
      }
    }
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i1 = getPaddingLeft();
    int i3 = getPaddingTop();
    int i4 = paramInt4 - paramInt2 - getPaddingTop() - getPaddingBottom();
    if (i4 <= 0) {
      return;
    }
    Object localObject1;
    if (this.i != null)
    {
      localObject1 = this.s;
      label47:
      if (((ActionBarView.HomeView)localObject1).getVisibility() == 8) {
        break label881;
      }
      paramInt2 = ((ActionBarView.HomeView)localObject1).a();
    }
    label126:
    label183:
    label186:
    label301:
    label328:
    label340:
    label421:
    label458:
    label596:
    label733:
    label739:
    label855:
    label858:
    label872:
    label881:
    for (paramInt4 = a((View)localObject1, i1 + paramInt2, i3, i4) + paramInt2 + i1;; paramInt4 = i1)
    {
      i1 = paramInt4;
      int i2;
      if (this.i == null)
      {
        if ((this.t == null) || (this.t.getVisibility() == 8) || ((this.l & 0x8) == 0)) {
          break label596;
        }
        i2 = 1;
        paramInt2 = paramInt4;
        if (i2 != 0) {
          paramInt2 = paramInt4 + a(this.t, paramInt4, i3, i4);
        }
      }
      switch (this.k)
      {
      default: 
        i1 = paramInt2;
        paramInt2 = i1;
        paramInt3 = paramInt3 - paramInt1 - getPaddingRight();
        paramInt1 = paramInt3;
        if (this.a != null)
        {
          paramInt1 = paramInt3;
          if (this.a.getParent() == this)
          {
            b(this.a, paramInt3, i3, i4);
            paramInt1 = paramInt3 - this.a.getMeasuredWidth();
          }
        }
        if ((this.C != null) && (this.C.getVisibility() != 8))
        {
          b(this.C, paramInt1, i3, i4);
          paramInt1 -= this.C.getMeasuredWidth();
        }
        break;
      }
      for (;;)
      {
        if (this.i != null) {
          localObject1 = this.i;
        }
        for (;;)
        {
          Object localObject2;
          if (localObject1 != null)
          {
            localObject2 = ((View)localObject1).getLayoutParams();
            if (!(localObject2 instanceof android.support.v7.a.c)) {
              break label733;
            }
            localObject2 = (android.support.v7.a.c)localObject2;
            if (localObject2 == null) {
              break label739;
            }
            paramInt3 = ((android.support.v7.a.c)localObject2).a;
            i3 = ((View)localObject1).getMeasuredWidth();
            if (localObject2 == null) {
              break label858;
            }
            i4 = ((android.support.v7.a.c)localObject2).leftMargin;
            i2 = ((android.support.v7.a.c)localObject2).rightMargin;
            i1 = ((android.support.v7.a.c)localObject2).topMargin;
            paramInt4 = ((android.support.v7.a.c)localObject2).bottomMargin;
            i2 = paramInt1 - i2;
          }
          for (paramInt1 = paramInt2 + i4;; paramInt1 = paramInt2)
          {
            paramInt2 = paramInt3 & 0x7;
            if (paramInt2 == 1)
            {
              i4 = (getWidth() - i3) / 2;
              if (i4 < paramInt1) {
                paramInt2 = 3;
              }
            }
            for (;;)
            {
              switch (paramInt2)
              {
              case 2: 
              case 4: 
              default: 
                paramInt1 = 0;
              case 3: 
                paramInt2 = paramInt3 & 0x70;
                if (paramInt3 == -1) {
                  paramInt2 = 16;
                }
                paramInt3 = 0;
                switch (paramInt2)
                {
                default: 
                  paramInt2 = paramInt3;
                }
                break;
              }
              for (;;)
              {
                ((View)localObject1).layout(paramInt1, paramInt2, ((View)localObject1).getMeasuredWidth() + paramInt1, ((View)localObject1).getMeasuredHeight() + paramInt2);
                if (this.B == null) {
                  break;
                }
                this.B.bringToFront();
                paramInt1 = this.B.getMeasuredHeight() / 2;
                this.B.layout(this.D, -paramInt1, this.D + this.B.getMeasuredWidth(), paramInt1);
                return;
                localObject1 = this.r;
                break label47;
                i2 = 0;
                break label126;
                break label186;
                i1 = paramInt2;
                if (this.y == null) {
                  break label183;
                }
                paramInt4 = paramInt2;
                if (i2 != 0) {
                  paramInt4 = paramInt2 + this.E;
                }
                paramInt2 = paramInt4 + (a(this.y, paramInt4, i3, i4) + this.E);
                break label186;
                i1 = paramInt2;
                if (this.z == null) {
                  break label183;
                }
                paramInt4 = paramInt2;
                if (i2 != 0) {
                  paramInt4 = paramInt2 + this.E;
                }
                paramInt2 = paramInt4 + (a(this.z, paramInt4, i3, i4) + this.E);
                break label186;
                if (((this.l & 0x10) == 0) || (this.A == null)) {
                  break label872;
                }
                localObject1 = this.A;
                break label301;
                localObject2 = null;
                break label328;
                paramInt3 = 19;
                break label340;
                if (i4 + i3 > i2) {
                  paramInt2 = 5;
                }
                break label421;
                if (paramInt3 != -1) {
                  break label855;
                }
                paramInt2 = 3;
                break label421;
                paramInt1 = (getWidth() - i3) / 2;
                break label458;
                paramInt1 = i2 - i3;
                break label458;
                paramInt2 = getPaddingTop();
                paramInt2 = (getHeight() - getPaddingBottom() - paramInt2 - ((View)localObject1).getMeasuredHeight()) / 2;
                continue;
                paramInt2 = getPaddingTop() + i1;
                continue;
                paramInt2 = getHeight() - getPaddingBottom() - ((View)localObject1).getMeasuredHeight() - paramInt4;
              }
            }
            i2 = paramInt1;
            i1 = 0;
            paramInt4 = 0;
          }
          localObject1 = null;
        }
      }
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int i9 = getChildCount();
    int i2;
    int i1;
    Object localObject1;
    int i3;
    if (this.L)
    {
      i2 = 0;
      i1 = 0;
      while (i1 < i9)
      {
        localObject1 = getChildAt(i1);
        i3 = i2;
        if (((View)localObject1).getVisibility() != 8) {
          if (localObject1 == this.a)
          {
            i3 = i2;
            if (this.a.getChildCount() == 0) {}
          }
          else
          {
            i3 = i2 + 1;
          }
        }
        i1 += 1;
        i2 = i3;
      }
      if (i2 == 0)
      {
        setMeasuredDimension(0, 0);
        this.g = true;
        return;
      }
    }
    this.g = false;
    if (View.MeasureSpec.getMode(paramInt1) != 1073741824) {
      throw new IllegalStateException(getClass().getSimpleName() + " can only be used with android:layout_width=\"MATCH_PARENT\" (or fill_parent)");
    }
    if (View.MeasureSpec.getMode(paramInt2) != Integer.MIN_VALUE) {
      throw new IllegalStateException(getClass().getSimpleName() + " can only be used with android:layout_height=\"wrap_content\"");
    }
    int i10 = View.MeasureSpec.getSize(paramInt1);
    label216:
    int i11;
    int i8;
    int i5;
    int i4;
    label278:
    Object localObject2;
    if (this.f > 0)
    {
      i3 = this.f;
      i11 = getPaddingTop() + getPaddingBottom();
      paramInt1 = getPaddingLeft();
      paramInt2 = getPaddingRight();
      i8 = i3 - i11;
      i5 = View.MeasureSpec.makeMeasureSpec(i8, Integer.MIN_VALUE);
      paramInt2 = i10 - paramInt1 - paramInt2;
      i4 = paramInt2 / 2;
      if (this.i == null) {
        break label901;
      }
      localObject1 = this.s;
      if (((ActionBarView.HomeView)localObject1).getVisibility() == 8) {
        break label1295;
      }
      localObject2 = ((ActionBarView.HomeView)localObject1).getLayoutParams();
      if (((ViewGroup.LayoutParams)localObject2).width >= 0) {
        break label909;
      }
      paramInt1 = View.MeasureSpec.makeMeasureSpec(paramInt2, Integer.MIN_VALUE);
      label309:
      ((ActionBarView.HomeView)localObject1).measure(paramInt1, View.MeasureSpec.makeMeasureSpec(i8, 1073741824));
      paramInt1 = ((ActionBarView.HomeView)localObject1).getMeasuredWidth();
      paramInt1 = ((ActionBarView.HomeView)localObject1).a() + paramInt1;
      paramInt2 = Math.max(0, paramInt2 - paramInt1);
    }
    label503:
    label536:
    label556:
    label588:
    label651:
    label701:
    label720:
    label743:
    label857:
    label901:
    label909:
    label1157:
    label1163:
    label1171:
    label1179:
    label1185:
    label1280:
    label1283:
    label1290:
    label1295:
    for (paramInt1 = Math.max(0, paramInt2 - paramInt1);; paramInt1 = i4)
    {
      i2 = paramInt2;
      i1 = i4;
      if (this.a != null)
      {
        i2 = paramInt2;
        i1 = i4;
        if (this.a.getParent() == this)
        {
          i2 = a(this.a, paramInt2, i5);
          i1 = Math.max(0, i4 - this.a.getMeasuredWidth());
        }
      }
      paramInt2 = i2;
      i4 = i1;
      if (this.C != null)
      {
        paramInt2 = i2;
        i4 = i1;
        if (this.C.getVisibility() != 8)
        {
          paramInt2 = a(this.C, i2, i5);
          i4 = Math.max(0, i1 - this.C.getMeasuredWidth());
        }
      }
      if ((this.t != null) && (this.t.getVisibility() != 8) && ((this.l & 0x8) != 0))
      {
        i1 = 1;
        if (this.i == null) {}
        switch (this.k)
        {
        default: 
          i2 = paramInt1;
          paramInt1 = paramInt2;
          paramInt2 = i2;
          if (this.i != null) {
            localObject1 = this.i;
          }
          break;
        }
      }
      for (;;)
      {
        i2 = paramInt1;
        int i6;
        int i7;
        int i12;
        if (localObject1 != null)
        {
          ViewGroup.LayoutParams localLayoutParams = generateLayoutParams(((View)localObject1).getLayoutParams());
          if (!(localLayoutParams instanceof android.support.v7.a.c)) {
            break label1157;
          }
          localObject2 = (android.support.v7.a.c)localLayoutParams;
          i2 = 0;
          i6 = 0;
          if (localObject2 != null)
          {
            i2 = ((android.support.v7.a.c)localObject2).leftMargin;
            i2 = ((android.support.v7.a.c)localObject2).rightMargin + i2;
            i6 = ((android.support.v7.a.c)localObject2).topMargin + ((android.support.v7.a.c)localObject2).bottomMargin;
          }
          if ((this.f <= 0) || (localLayoutParams.height == -2)) {
            break label1163;
          }
          i5 = 1073741824;
          i7 = i8;
          if (localLayoutParams.height >= 0) {
            i7 = Math.min(localLayoutParams.height, i8);
          }
          i12 = Math.max(0, i7 - i6);
          if (localLayoutParams.width == -2) {
            break label1171;
          }
          i6 = 1073741824;
          if (localLayoutParams.width < 0) {
            break label1179;
          }
          i7 = Math.min(localLayoutParams.width, paramInt1);
          i8 = Math.max(0, i7 - i2);
          if (localObject2 == null) {
            break label1185;
          }
          i7 = ((android.support.v7.a.c)localObject2).a;
          if (((i7 & 0x7) != 1) || (localLayoutParams.width != -1)) {
            break label1283;
          }
        }
        for (i4 = Math.min(paramInt2, i4) * 2;; i4 = i8)
        {
          ((View)localObject1).measure(View.MeasureSpec.makeMeasureSpec(i4, i6), View.MeasureSpec.makeMeasureSpec(i12, i5));
          i2 = paramInt1 - (((View)localObject1).getMeasuredWidth() + i2);
          if ((this.i == null) && (i1 != 0))
          {
            a(this.t, i2, View.MeasureSpec.makeMeasureSpec(this.f, 1073741824));
            Math.max(0, paramInt2 - this.t.getMeasuredWidth());
          }
          if (this.f <= 0)
          {
            paramInt1 = 0;
            paramInt2 = 0;
            if (paramInt2 < i9)
            {
              i1 = getChildAt(paramInt2).getMeasuredHeight() + i11;
              if (i1 <= paramInt1) {
                break label1280;
              }
              paramInt1 = i1;
            }
          }
          for (;;)
          {
            paramInt2 += 1;
            break label857;
            i3 = View.MeasureSpec.getSize(paramInt2);
            break label216;
            localObject1 = this.r;
            break label278;
            paramInt1 = View.MeasureSpec.makeMeasureSpec(((ViewGroup.LayoutParams)localObject2).width, 1073741824);
            break label309;
            i1 = 0;
            break label503;
            if (this.y == null) {
              break label536;
            }
            if (i1 != 0) {}
            for (i2 = this.E * 2;; i2 = this.E)
            {
              paramInt2 = Math.max(0, paramInt2 - i2);
              i2 = Math.max(0, paramInt1 - i2);
              this.y.measure(View.MeasureSpec.makeMeasureSpec(paramInt2, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(i8, 1073741824));
              i5 = this.y.getMeasuredWidth();
              paramInt1 = Math.max(0, paramInt2 - i5);
              paramInt2 = Math.max(0, i2 - i5);
              break;
            }
            if (this.z == null) {
              break label536;
            }
            if (i1 != 0) {}
            for (i2 = this.E * 2;; i2 = this.E)
            {
              paramInt2 = Math.max(0, paramInt2 - i2);
              i2 = Math.max(0, paramInt1 - i2);
              this.z.measure(View.MeasureSpec.makeMeasureSpec(paramInt2, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(i8, 1073741824));
              i5 = this.z.getMeasuredWidth();
              paramInt1 = Math.max(0, paramInt2 - i5);
              paramInt2 = Math.max(0, i2 - i5);
              break;
            }
            if (((this.l & 0x10) == 0) || (this.A == null)) {
              break label1290;
            }
            localObject1 = this.A;
            break label556;
            localObject2 = null;
            break label588;
            i5 = Integer.MIN_VALUE;
            break label651;
            i6 = Integer.MIN_VALUE;
            break label701;
            i7 = paramInt1;
            break label720;
            i7 = 19;
            break label743;
            setMeasuredDimension(i10, paramInt1);
            for (;;)
            {
              if (this.N != null) {
                this.N.setContentHeight(getMeasuredHeight());
              }
              if ((this.B == null) || (this.B.getVisibility() == 8)) {
                break;
              }
              this.B.measure(View.MeasureSpec.makeMeasureSpec(i10 - this.D * 2, 1073741824), View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), Integer.MIN_VALUE));
              return;
              setMeasuredDimension(i10, i3);
            }
          }
        }
        localObject1 = null;
      }
    }
  }
  
  public void onRestoreInstanceState(Parcelable paramParcelable)
  {
    paramParcelable = (f)paramParcelable;
    super.onRestoreInstanceState(paramParcelable.getSuperState());
    if ((paramParcelable.a != 0) && (this.h != null) && (this.M != null))
    {
      android.support.v4.c.a.b localb = (android.support.v4.c.a.b)this.M.findItem(paramParcelable.a);
      if (localb != null) {
        localb.expandActionView();
      }
    }
    if (paramParcelable.b) {
      super.b();
    }
  }
  
  public Parcelable onSaveInstanceState()
  {
    f localf = new f(super.onSaveInstanceState());
    if ((this.h != null) && (this.h.b != null)) {
      localf.a = this.h.b.getItemId();
    }
    localf.b = super.d();
    return localf;
  }
  
  public void setCallback(android.support.v7.a.d paramd)
  {
    this.Q = paramd;
  }
  
  public void setCollapsable(boolean paramBoolean)
  {
    this.L = paramBoolean;
  }
  
  public void setContextView(ActionBarContextView paramActionBarContextView)
  {
    this.N = paramActionBarContextView;
  }
  
  public void setCustomNavigationView(View paramView)
  {
    if ((this.l & 0x10) != 0) {}
    for (int i1 = 1;; i1 = 0)
    {
      if ((this.A != null) && (i1 != 0)) {
        removeView(this.A);
      }
      this.A = paramView;
      if ((this.A != null) && (i1 != 0)) {
        addView(this.A);
      }
      return;
    }
  }
  
  public void setDisplayOptions(int paramInt)
  {
    int i5 = 8;
    int i2 = -1;
    boolean bool2 = true;
    int i3;
    label40:
    int i1;
    label55:
    boolean bool1;
    label80:
    label122:
    Object localObject;
    label137:
    label161:
    int i4;
    if (this.l == -1)
    {
      this.l = paramInt;
      if ((i2 & 0x1F) == 0) {
        break label378;
      }
      if ((paramInt & 0x2) == 0) {
        break label305;
      }
      i3 = 1;
      if ((i3 == 0) || (this.i != null)) {
        break label311;
      }
      i1 = 0;
      this.r.setVisibility(i1);
      if ((i2 & 0x4) != 0)
      {
        if ((paramInt & 0x4) == 0) {
          break label318;
        }
        bool1 = true;
        this.r.a(bool1);
        if (bool1) {
          setHomeButtonEnabled(true);
        }
      }
      if ((i2 & 0x1) != 0)
      {
        if ((this.p == null) || ((paramInt & 0x1) == 0)) {
          break label324;
        }
        i1 = 1;
        ActionBarView.HomeView localHomeView = this.r;
        if (i1 == 0) {
          break label330;
        }
        localObject = this.p;
        localHomeView.a((Drawable)localObject);
      }
      if ((i2 & 0x8) != 0)
      {
        if ((paramInt & 0x8) == 0) {
          break label338;
        }
        j();
      }
      if ((this.t != null) && ((i2 & 0x6) != 0))
      {
        if ((this.l & 0x4) == 0) {
          break label349;
        }
        i4 = 1;
        label188:
        localObject = this.w;
        i1 = i5;
        if (i3 == 0)
        {
          if (i4 == 0) {
            break label355;
          }
          i1 = 0;
        }
        label210:
        ((View)localObject).setVisibility(i1);
        localObject = this.t;
        if ((i3 != 0) || (i4 == 0)) {
          break label361;
        }
        bool1 = bool2;
        label235:
        ((LinearLayout)localObject).setEnabled(bool1);
      }
      if (((i2 & 0x10) != 0) && (this.A != null))
      {
        if ((paramInt & 0x10) == 0) {
          break label367;
        }
        addView(this.A);
      }
      label271:
      requestLayout();
    }
    for (;;)
    {
      if (this.r.isEnabled()) {
        break label385;
      }
      this.r.setContentDescription(null);
      return;
      i2 = this.l ^ paramInt;
      break;
      label305:
      i3 = 0;
      break label40;
      label311:
      i1 = 8;
      break label55;
      label318:
      bool1 = false;
      break label80;
      label324:
      i1 = 0;
      break label122;
      label330:
      localObject = this.o;
      break label137;
      label338:
      removeView(this.t);
      break label161;
      label349:
      i4 = 0;
      break label188;
      label355:
      i1 = 4;
      break label210;
      label361:
      bool1 = false;
      break label235;
      label367:
      removeView(this.A);
      break label271;
      label378:
      invalidate();
    }
    label385:
    if ((paramInt & 0x4) != 0)
    {
      this.r.setContentDescription(this.q.getResources().getText(i.abc_action_bar_up_description));
      return;
    }
    this.r.setContentDescription(this.q.getResources().getText(i.abc_action_bar_home_description));
  }
  
  public void setDropdownAdapter(SpinnerAdapter paramSpinnerAdapter)
  {
    this.P = paramSpinnerAdapter;
    if (this.x != null) {
      this.x.a(paramSpinnerAdapter);
    }
  }
  
  public void setDropdownSelectedPosition(int paramInt)
  {
    this.x.a(paramInt);
  }
  
  public void setEmbeddedTabView(ScrollingTabContainerView paramScrollingTabContainerView)
  {
    if (this.z != null) {
      removeView(this.z);
    }
    this.z = paramScrollingTabContainerView;
    if (paramScrollingTabContainerView != null) {}
    for (boolean bool = true;; bool = false)
    {
      this.K = bool;
      if ((this.K) && (this.k == 2))
      {
        addView(this.z);
        ViewGroup.LayoutParams localLayoutParams = this.z.getLayoutParams();
        localLayoutParams.width = -2;
        localLayoutParams.height = -1;
        paramScrollingTabContainerView.setAllowCollapse(true);
      }
      return;
    }
  }
  
  public void setHomeAsUpIndicator(int paramInt)
  {
    this.r.a(paramInt);
  }
  
  public void setHomeAsUpIndicator(Drawable paramDrawable)
  {
    ActionBarView.HomeView localHomeView = this.r;
    ImageView localImageView = localHomeView.a;
    if (paramDrawable != null) {}
    for (;;)
    {
      localImageView.setImageDrawable(paramDrawable);
      localHomeView.b = 0;
      return;
      paramDrawable = localHomeView.c;
    }
  }
  
  public void setHomeButtonEnabled(boolean paramBoolean)
  {
    this.r.setEnabled(paramBoolean);
    this.r.setFocusable(paramBoolean);
    if (!paramBoolean)
    {
      this.r.setContentDescription(null);
      return;
    }
    if ((this.l & 0x4) != 0)
    {
      this.r.setContentDescription(this.q.getResources().getText(i.abc_action_bar_up_description));
      return;
    }
    this.r.setContentDescription(this.q.getResources().getText(i.abc_action_bar_home_description));
  }
  
  public void setIcon(int paramInt)
  {
    setIcon(this.q.getResources().getDrawable(paramInt));
  }
  
  public void setIcon(Drawable paramDrawable)
  {
    this.o = paramDrawable;
    if ((paramDrawable != null) && (((this.l & 0x1) == 0) || (this.p == null))) {
      this.r.a(paramDrawable);
    }
    if (this.i != null) {
      this.s.a(this.o.getConstantState().newDrawable(getResources()));
    }
  }
  
  public void setLogo(int paramInt)
  {
    setLogo(this.q.getResources().getDrawable(paramInt));
  }
  
  public void setLogo(Drawable paramDrawable)
  {
    this.p = paramDrawable;
    if ((paramDrawable != null) && ((this.l & 0x1) != 0)) {
      this.r.a(paramDrawable);
    }
  }
  
  public void setNavigationMode(int paramInt)
  {
    int i1 = this.k;
    if (paramInt != i1) {
      switch (i1)
      {
      default: 
        switch (paramInt)
        {
        }
        break;
      }
    }
    for (;;)
    {
      this.k = paramInt;
      requestLayout();
      return;
      if (this.y == null) {
        break;
      }
      removeView(this.y);
      break;
      if ((this.z == null) || (!this.K)) {
        break;
      }
      removeView(this.z);
      break;
      if (this.x == null)
      {
        this.x = new ag(this.q, android.support.v7.b.c.actionDropDownStyle);
        this.y = ((LinearLayout)LayoutInflater.from(this.q).inflate(h.abc_action_bar_view_list_nav_layout, null));
        LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-2, -1);
        localLayoutParams.gravity = 17;
        this.y.addView(this.x, localLayoutParams);
      }
      if (this.x.a != this.P) {
        this.x.a(this.P);
      }
      this.x.t = this.S;
      addView(this.y);
      continue;
      if ((this.z != null) && (this.K)) {
        addView(this.z);
      }
    }
  }
  
  public void setSplitActionBar(boolean paramBoolean)
  {
    int i1;
    if (this.d != paramBoolean)
    {
      Object localObject;
      if (this.a != null)
      {
        localObject = (ViewGroup)this.a.getParent();
        if (localObject != null) {
          ((ViewGroup)localObject).removeView(this.a);
        }
        if (!paramBoolean) {
          break label135;
        }
        if (this.c != null) {
          this.c.addView(this.a);
        }
        this.a.getLayoutParams().width = -1;
        this.a.requestLayout();
      }
      if (this.c != null)
      {
        localObject = this.c;
        if (!paramBoolean) {
          break label158;
        }
        i1 = 0;
        label96:
        ((ActionBarContainer)localObject).setVisibility(i1);
      }
      if (this.b != null)
      {
        if (paramBoolean) {
          break label164;
        }
        this.b.b = getResources().getBoolean(android.support.v7.b.d.abc_action_bar_expanded_action_views_exclusive);
      }
    }
    for (;;)
    {
      super.setSplitActionBar(paramBoolean);
      return;
      label135:
      addView(this.a);
      this.a.getLayoutParams().width = -2;
      break;
      label158:
      i1 = 8;
      break label96;
      label164:
      this.b.b = false;
      this.b.a(getContext().getResources().getDisplayMetrics().widthPixels);
      this.b.b();
    }
  }
  
  public void setSubtitle(CharSequence paramCharSequence)
  {
    int i2 = 0;
    this.n = paramCharSequence;
    if (this.v != null)
    {
      this.v.setText(paramCharSequence);
      TextView localTextView = this.v;
      if (paramCharSequence == null) {
        break label96;
      }
      i1 = 0;
      localTextView.setVisibility(i1);
      if ((this.i != null) || ((this.l & 0x8) == 0) || ((TextUtils.isEmpty(this.m)) && (TextUtils.isEmpty(this.n)))) {
        break label102;
      }
      i1 = 1;
      label78:
      paramCharSequence = this.t;
      if (i1 == 0) {
        break label107;
      }
    }
    label96:
    label102:
    label107:
    for (int i1 = i2;; i1 = 8)
    {
      paramCharSequence.setVisibility(i1);
      return;
      i1 = 8;
      break;
      i1 = 0;
      break label78;
    }
  }
  
  public void setTitle(CharSequence paramCharSequence)
  {
    this.J = true;
    setTitleImpl(paramCharSequence);
  }
  
  public void setWindowCallback(Window.Callback paramCallback)
  {
    this.j = paramCallback;
  }
  
  public void setWindowTitle(CharSequence paramCharSequence)
  {
    if (!this.J) {
      setTitleImpl(paramCharSequence);
    }
  }
  
  public boolean shouldDelayChildPressedState()
  {
    return false;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v7\internal\widget\ActionBarView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
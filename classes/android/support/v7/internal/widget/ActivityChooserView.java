package android.support.v7.internal.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.drawable.Drawable;
import android.support.v4.view.j;
import android.support.v7.b.e;
import android.support.v7.b.f;
import android.support.v7.b.h;
import android.support.v7.b.i;
import android.support.v7.b.k;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.PopupWindow.OnDismissListener;

public class ActivityChooserView
  extends ViewGroup
{
  j a;
  private final m b;
  private final n c;
  private final LinearLayout d;
  private final Drawable e;
  private final FrameLayout f;
  private final ImageView g;
  private final FrameLayout h;
  private final ImageView i;
  private final int j;
  private final DataSetObserver k = new DataSetObserver()
  {
    public final void onChanged()
    {
      super.onChanged();
      ActivityChooserView.a(ActivityChooserView.this).notifyDataSetChanged();
    }
    
    public final void onInvalidated()
    {
      super.onInvalidated();
      ActivityChooserView.a(ActivityChooserView.this).notifyDataSetInvalidated();
    }
  };
  private final ViewTreeObserver.OnGlobalLayoutListener l = new ViewTreeObserver.OnGlobalLayoutListener()
  {
    public final void onGlobalLayout()
    {
      if (ActivityChooserView.this.b())
      {
        if (ActivityChooserView.this.isShown()) {
          break label31;
        }
        ActivityChooserView.b(ActivityChooserView.this).c();
      }
      label31:
      do
      {
        return;
        ActivityChooserView.b(ActivityChooserView.this).b();
      } while (ActivityChooserView.this.a == null);
      ActivityChooserView.this.a.a(true);
    }
  };
  private ListPopupWindow m;
  private PopupWindow.OnDismissListener n;
  private boolean o;
  private int p = 4;
  private boolean q;
  private int r;
  
  public ActivityChooserView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    paramAttributeSet = paramContext.obtainStyledAttributes(paramAttributeSet, k.ActivityChooserView, paramInt, 0);
    this.p = paramAttributeSet.getInt(0, 4);
    Drawable localDrawable = paramAttributeSet.getDrawable(1);
    paramAttributeSet.recycle();
    LayoutInflater.from(getContext()).inflate(h.abc_activity_chooser_view, this, true);
    this.c = new n(this, (byte)0);
    this.d = ((LinearLayout)findViewById(f.activity_chooser_view_content));
    this.e = this.d.getBackground();
    this.h = ((FrameLayout)findViewById(f.default_activity_button));
    this.h.setOnClickListener(this.c);
    this.h.setOnLongClickListener(this.c);
    this.i = ((ImageView)this.h.findViewById(f.image));
    this.f = ((FrameLayout)findViewById(f.expand_activities_button));
    this.f.setOnClickListener(this.c);
    this.g = ((ImageView)this.f.findViewById(f.image));
    this.g.setImageDrawable(localDrawable);
    this.b = new m(this, (byte)0);
    this.b.registerDataSetObserver(new DataSetObserver()
    {
      public final void onChanged()
      {
        super.onChanged();
        ActivityChooserView.c(ActivityChooserView.this);
      }
    });
    paramContext = paramContext.getResources();
    this.j = Math.max(paramContext.getDisplayMetrics().widthPixels / 2, paramContext.getDimensionPixelSize(e.abc_config_prefDialogWidth));
  }
  
  private void a(int paramInt)
  {
    if (this.b.a == null) {
      throw new IllegalStateException("No data model. Did you call #setDataModel?");
    }
    getViewTreeObserver().addOnGlobalLayoutListener(this.l);
    boolean bool;
    int i1;
    label63:
    label95:
    ListPopupWindow localListPopupWindow;
    if (this.h.getVisibility() == 0)
    {
      bool = true;
      int i2 = this.b.a.a();
      if (!bool) {
        break label193;
      }
      i1 = 1;
      if ((paramInt == Integer.MAX_VALUE) || (i2 <= i1 + paramInt)) {
        break label198;
      }
      this.b.a(true);
      this.b.a(paramInt - 1);
      localListPopupWindow = getListPopupWindow();
      if (!localListPopupWindow.a.isShowing())
      {
        if ((!this.o) && (bool)) {
          break label217;
        }
        this.b.a(true, bool);
      }
    }
    for (;;)
    {
      localListPopupWindow.b(Math.min(this.b.a(), this.j));
      localListPopupWindow.b();
      if (this.a != null) {
        this.a.a(true);
      }
      localListPopupWindow.b.setContentDescription(getContext().getString(i.abc_activitychooserview_choose_application));
      return;
      bool = false;
      break;
      label193:
      i1 = 0;
      break label63;
      label198:
      this.b.a(false);
      this.b.a(paramInt);
      break label95;
      label217:
      this.b.a(false, false);
    }
  }
  
  private ListPopupWindow getListPopupWindow()
  {
    if (this.m == null)
    {
      this.m = new ListPopupWindow(getContext());
      this.m.a(this.b);
      this.m.g = this;
      this.m.a();
      this.m.h = this.c;
      this.m.a(this.c);
    }
    return this.m;
  }
  
  public final boolean a()
  {
    if (getListPopupWindow().a.isShowing())
    {
      getListPopupWindow().c();
      ViewTreeObserver localViewTreeObserver = getViewTreeObserver();
      if (localViewTreeObserver.isAlive()) {
        localViewTreeObserver.removeGlobalOnLayoutListener(this.l);
      }
    }
    return true;
  }
  
  public final boolean b()
  {
    return getListPopupWindow().a.isShowing();
  }
  
  public g getDataModel()
  {
    return this.b.a;
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    g localg = this.b.a;
    if (localg != null) {
      localg.registerObserver(this.k);
    }
    this.q = true;
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    Object localObject = this.b.a;
    if (localObject != null) {
      ((g)localObject).unregisterObserver(this.k);
    }
    localObject = getViewTreeObserver();
    if (((ViewTreeObserver)localObject).isAlive()) {
      ((ViewTreeObserver)localObject).removeGlobalOnLayoutListener(this.l);
    }
    if (b()) {
      a();
    }
    this.q = false;
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.d.layout(0, 0, paramInt3 - paramInt1, paramInt4 - paramInt2);
    if (!b()) {
      a();
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    LinearLayout localLinearLayout = this.d;
    int i1 = paramInt2;
    if (this.h.getVisibility() != 0) {
      i1 = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(paramInt2), 1073741824);
    }
    measureChild(localLinearLayout, paramInt1, i1);
    setMeasuredDimension(localLinearLayout.getMeasuredWidth(), localLinearLayout.getMeasuredHeight());
  }
  
  public void setActivityChooserModel(g paramg)
  {
    m localm = this.b;
    g localg = localm.c.b.a;
    if ((localg != null) && (localm.c.isShown())) {
      localg.unregisterObserver(localm.c.k);
    }
    localm.a = paramg;
    if ((paramg != null) && (localm.c.isShown())) {
      paramg.registerObserver(localm.c.k);
    }
    localm.notifyDataSetChanged();
    if (getListPopupWindow().a.isShowing())
    {
      a();
      if ((!getListPopupWindow().a.isShowing()) && (this.q)) {}
    }
    else
    {
      return;
    }
    this.o = false;
    a(this.p);
  }
  
  public void setDefaultActionButtonContentDescription(int paramInt)
  {
    this.r = paramInt;
  }
  
  public void setExpandActivityOverflowButtonContentDescription(int paramInt)
  {
    String str = getContext().getString(paramInt);
    this.g.setContentDescription(str);
  }
  
  public void setExpandActivityOverflowButtonDrawable(Drawable paramDrawable)
  {
    this.g.setImageDrawable(paramDrawable);
  }
  
  public void setInitialActivityCount(int paramInt)
  {
    this.p = paramInt;
  }
  
  public void setOnDismissListener(PopupWindow.OnDismissListener paramOnDismissListener)
  {
    this.n = paramOnDismissListener;
  }
  
  public void setProvider(j paramj)
  {
    this.a = paramj;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v7\internal\widget\ActivityChooserView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
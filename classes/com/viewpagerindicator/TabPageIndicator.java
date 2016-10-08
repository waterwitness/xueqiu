package com.viewpagerindicator;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.support.v4.view.ViewPager;
import android.support.v4.view.bd;
import android.support.v4.view.cp;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnClickListener;
import android.view.ViewGroup.LayoutParams;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;

public class TabPageIndicator
  extends HorizontalScrollView
  implements e
{
  private static final CharSequence a = "";
  private Runnable b;
  private boolean c = true;
  private final View.OnClickListener d = new View.OnClickListener()
  {
    public final void onClick(View paramAnonymousView)
    {
      if (!TabPageIndicator.a(TabPageIndicator.this)) {
        return;
      }
      paramAnonymousView = (n)paramAnonymousView;
      TabPageIndicator.b(TabPageIndicator.this).getCurrentItem();
      int i = paramAnonymousView.b;
      TabPageIndicator.b(TabPageIndicator.this).setCurrentItem(i);
    }
  };
  private final c e;
  private ViewPager f;
  private cp g;
  private int h;
  private int i;
  private int j;
  private int k;
  private m l;
  
  public TabPageIndicator(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public TabPageIndicator(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    setHorizontalScrollBarEnabled(false);
    setOverScrollMode(2);
    paramAttributeSet = paramContext.obtainStyledAttributes(null, l.TabPageIndicator, g.vpiTabPageIndicatorStyle, 0);
    this.j = paramAttributeSet.getColor(l.TabPageIndicator_bottom_line_color, 0);
    this.k = paramAttributeSet.getDimensionPixelOffset(l.TabPageIndicator_text_horizontal_margin, 0);
    this.e = new c(paramContext, g.vpiTabPageIndicatorStyle);
    paramContext = paramAttributeSet.getDrawable(l.TabPageIndicator_container_background);
    this.e.setPadding(this.e.getPaddingLeft(), this.e.getPaddingTop(), this.e.getPaddingRight(), 1);
    c localc = this.e;
    getContext();
    Rect localRect = new Rect();
    paramContext.getPadding(localRect);
    int m = localc.getPaddingTop();
    int n = localRect.top;
    int i1 = localc.getPaddingLeft();
    int i2 = localRect.left;
    int i3 = localc.getPaddingRight();
    int i4 = localRect.right;
    int i5 = localc.getPaddingBottom();
    int i6 = localRect.bottom;
    localc.setBackgroundDrawable(paramContext);
    localc.setPadding(i1 + i2, m + n, i3 + i4, i6 + i5);
    addView(this.e, new ViewGroup.LayoutParams(-2, -1));
    paramAttributeSet.recycle();
  }
  
  public final void a()
  {
    this.e.removeAllViews();
    bd localbd = this.f.getAdapter();
    b localb = null;
    if ((localbd instanceof b)) {
      localb = (b)localbd;
    }
    int i1 = localbd.b();
    int m = 0;
    CharSequence localCharSequence;
    if (m < i1)
    {
      localCharSequence = localbd.b(m);
      if (localCharSequence != null) {
        break label199;
      }
      localCharSequence = a;
    }
    label199:
    for (;;)
    {
      if (localb != null) {}
      for (int n = localb.a();; n = 0)
      {
        n localn = new n(this, getContext());
        localn.b = m;
        localn.setFocusable(true);
        localn.setOnClickListener(this.d);
        localn.a.setText(localCharSequence);
        if (n != 0) {
          localn.a.setCompoundDrawablesWithIntrinsicBounds(n, 0, 0, 0);
        }
        this.e.addView(localn, new LinearLayout.LayoutParams(0, -1, 1.0F));
        m += 1;
        break;
        if (this.i > i1) {
          this.i = (i1 - 1);
        }
        setCurrentItem(this.i);
        requestLayout();
        return;
      }
    }
  }
  
  public final void a(int paramInt1, float paramFloat, int paramInt2)
  {
    if (this.g != null) {
      this.g.a(paramInt1, paramFloat, paramInt2);
    }
  }
  
  public final void b(int paramInt)
  {
    if (this.g != null) {
      this.g.b(paramInt);
    }
  }
  
  public final void b_(int paramInt)
  {
    setCurrentItem(paramInt);
    if (this.g != null) {
      this.g.b_(paramInt);
    }
  }
  
  public void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    if (this.b != null) {
      post(this.b);
    }
  }
  
  public void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    if (this.b != null) {
      removeCallbacks(this.b);
    }
  }
  
  public void onMeasure(int paramInt1, int paramInt2)
  {
    int m = View.MeasureSpec.getMode(paramInt1);
    boolean bool;
    if (m == 1073741824)
    {
      bool = true;
      setFillViewport(bool);
      int n = this.e.getChildCount();
      if ((n <= 1) || ((m != 1073741824) && (m != Integer.MIN_VALUE))) {
        break label124;
      }
      if (n <= 2) {
        break label111;
      }
      this.h = ((int)(View.MeasureSpec.getSize(paramInt1) * 0.4F));
    }
    for (;;)
    {
      m = getMeasuredWidth();
      super.onMeasure(paramInt1, paramInt2);
      paramInt1 = getMeasuredWidth();
      if ((bool) && (m != paramInt1)) {
        setCurrentItem(this.i);
      }
      return;
      bool = false;
      break;
      label111:
      this.h = (View.MeasureSpec.getSize(paramInt1) / 2);
      continue;
      label124:
      this.h = -1;
    }
  }
  
  public void setCurrentItem(int paramInt)
  {
    if (this.f == null) {
      throw new IllegalStateException("ViewPager has not been bound.");
    }
    this.i = paramInt;
    this.f.setCurrentItem(paramInt);
    int n = this.e.getChildCount();
    int m = 0;
    if (m < n)
    {
      final View localView = this.e.getChildAt(m);
      if (m == paramInt) {}
      for (boolean bool = true;; bool = false)
      {
        localView.setSelected(bool);
        if (bool)
        {
          localView = this.e.getChildAt(paramInt);
          if (this.b != null) {
            removeCallbacks(this.b);
          }
          this.b = new Runnable()
          {
            public final void run()
            {
              int i = localView.getLeft();
              int j = (TabPageIndicator.this.getWidth() - localView.getWidth()) / 2;
              TabPageIndicator.this.smoothScrollTo(i - j, 0);
              TabPageIndicator.c(TabPageIndicator.this);
            }
          };
          post(this.b);
        }
        m += 1;
        break;
      }
    }
  }
  
  public void setOnPageChangeListener(cp paramcp)
  {
    this.g = paramcp;
  }
  
  public void setOnTabReselectedListener(m paramm)
  {
    this.l = paramm;
  }
  
  public void setSelectEnable(boolean paramBoolean)
  {
    this.c = paramBoolean;
  }
  
  public void setViewPager(ViewPager paramViewPager)
  {
    if (this.f == paramViewPager) {
      return;
    }
    if (this.f != null) {
      this.f.setOnPageChangeListener(null);
    }
    if (paramViewPager.getAdapter() == null) {
      throw new IllegalStateException("ViewPager does not have adapter instance.");
    }
    this.f = paramViewPager;
    paramViewPager.setOnPageChangeListener(this);
    a();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\viewpagerindicator\TabPageIndicator.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
package com.xueqiu.android.common.widget;

import android.content.Context;
import android.content.res.Resources;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.GradientDrawable.Orientation;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewConfiguration;
import android.widget.AbsListView;
import android.widget.AbsListView.LayoutParams;
import android.widget.AbsListView.OnScrollListener;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.SectionIndexer;

public class PinnedSectionListView
  extends ListView
{
  AbsListView.OnScrollListener a;
  u b;
  u c;
  int d;
  private final Rect e = new Rect();
  private final PointF f = new PointF();
  private int g;
  private View h;
  private MotionEvent i;
  private GradientDrawable j;
  private int k;
  private int l;
  private final AbsListView.OnScrollListener m = new AbsListView.OnScrollListener()
  {
    public final void onScroll(AbsListView paramAnonymousAbsListView, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3)
    {
      if (PinnedSectionListView.this.a != null) {
        PinnedSectionListView.this.a.onScroll(paramAnonymousAbsListView, paramAnonymousInt1, paramAnonymousInt2, paramAnonymousInt3);
      }
      paramAnonymousAbsListView = PinnedSectionListView.this.getAdapter();
      if ((paramAnonymousAbsListView == null) || (paramAnonymousInt2 == 0)) {
        return;
      }
      if (PinnedSectionListView.a(paramAnonymousAbsListView, paramAnonymousAbsListView.getItemViewType(paramAnonymousInt1)))
      {
        if (PinnedSectionListView.this.getChildAt(0).getTop() != PinnedSectionListView.this.getPaddingTop()) {
          PinnedSectionListView.this.a(paramAnonymousInt1, paramAnonymousInt1, paramAnonymousInt2);
        }
      }
      else
      {
        paramAnonymousInt3 = PinnedSectionListView.this.a(paramAnonymousInt1);
        if (paramAnonymousInt3 >= 0)
        {
          PinnedSectionListView.this.a(paramAnonymousInt3, paramAnonymousInt1, paramAnonymousInt2);
          return;
        }
      }
      PinnedSectionListView.this.a();
    }
    
    public final void onScrollStateChanged(AbsListView paramAnonymousAbsListView, int paramAnonymousInt)
    {
      if (PinnedSectionListView.this.a != null) {
        PinnedSectionListView.this.a.onScrollStateChanged(paramAnonymousAbsListView, paramAnonymousInt);
      }
    }
  };
  private final DataSetObserver n = new DataSetObserver()
  {
    public final void onChanged()
    {
      PinnedSectionListView.this.b();
    }
    
    public final void onInvalidated()
    {
      PinnedSectionListView.this.b();
    }
  };
  
  public PinnedSectionListView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    c();
  }
  
  public PinnedSectionListView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    c();
  }
  
  private void a(boolean paramBoolean)
  {
    if (paramBoolean) {
      if (this.j == null)
      {
        this.j = new GradientDrawable(GradientDrawable.Orientation.TOP_BOTTOM, new int[] { Color.parseColor("#ffa0a0a0"), Color.parseColor("#50a0a0a0"), Color.parseColor("#00a0a0a0") });
        this.l = ((int)(8.0F * getResources().getDisplayMetrics().density));
      }
    }
    while (this.j == null) {
      return;
    }
    this.j = null;
    this.l = 0;
  }
  
  private boolean a(View paramView, float paramFloat1, float paramFloat2)
  {
    paramView.getHitRect(this.e);
    paramView = this.e;
    paramView.top += this.d;
    paramView = this.e;
    paramView.bottom += this.d + getPaddingTop();
    paramView = this.e;
    paramView.left += getPaddingLeft();
    paramView = this.e;
    paramView.right -= getPaddingRight();
    return this.e.contains((int)paramFloat1, (int)paramFloat2);
  }
  
  public static boolean a(ListAdapter paramListAdapter, int paramInt)
  {
    if ((paramListAdapter instanceof HeaderViewListAdapter)) {
      paramListAdapter = ((HeaderViewListAdapter)paramListAdapter).getWrappedAdapter();
    }
    for (;;)
    {
      return ((v)paramListAdapter).a(paramInt);
    }
  }
  
  private void c()
  {
    setOnScrollListener(this.m);
    this.g = ViewConfiguration.get(getContext()).getScaledTouchSlop();
    a(true);
  }
  
  private void d()
  {
    this.h = null;
    if (this.i != null)
    {
      this.i.recycle();
      this.i = null;
    }
  }
  
  final int a(int paramInt)
  {
    ListAdapter localListAdapter = getAdapter();
    int i1;
    if (paramInt >= localListAdapter.getCount()) {
      i1 = -1;
    }
    int i2;
    do
    {
      return i1;
      if (!(localListAdapter instanceof SectionIndexer)) {
        break;
      }
      SectionIndexer localSectionIndexer = (SectionIndexer)localListAdapter;
      i2 = localSectionIndexer.getPositionForSection(localSectionIndexer.getSectionForPosition(paramInt));
      i1 = i2;
    } while (a(localListAdapter, localListAdapter.getItemViewType(i2)));
    for (;;)
    {
      if (paramInt < 0) {
        break label95;
      }
      i1 = paramInt;
      if (a(localListAdapter, localListAdapter.getItemViewType(paramInt))) {
        break;
      }
      paramInt -= 1;
    }
    label95:
    return -1;
  }
  
  final void a()
  {
    if (this.c != null)
    {
      this.b = this.c;
      this.c = null;
    }
  }
  
  final void a(int paramInt1, int paramInt2, int paramInt3)
  {
    if (paramInt3 < 2)
    {
      a();
      return;
    }
    if ((this.c != null) && (this.c.b != paramInt1)) {
      a();
    }
    Object localObject;
    if (this.c == null)
    {
      localObject = this.b;
      this.b = null;
      if (localObject != null) {
        break label450;
      }
      localObject = new u();
    }
    label450:
    for (;;)
    {
      View localView = getAdapter().getView(paramInt1, ((u)localObject).a, this);
      AbsListView.LayoutParams localLayoutParams2 = (AbsListView.LayoutParams)localView.getLayoutParams();
      AbsListView.LayoutParams localLayoutParams1 = localLayoutParams2;
      if (localLayoutParams2 == null)
      {
        localLayoutParams1 = (AbsListView.LayoutParams)generateDefaultLayoutParams();
        localView.setLayoutParams(localLayoutParams1);
      }
      int i1 = View.MeasureSpec.getMode(localLayoutParams1.height);
      int i2 = View.MeasureSpec.getSize(localLayoutParams1.height);
      if (i1 == 0) {
        i1 = 1073741824;
      }
      for (;;)
      {
        int i3 = getHeight() - getListPaddingTop() - getListPaddingBottom();
        if (i2 > i3) {
          i2 = i3;
        }
        for (;;)
        {
          localView.measure(View.MeasureSpec.makeMeasureSpec(getWidth() - getListPaddingLeft() - getListPaddingRight(), 1073741824), View.MeasureSpec.makeMeasureSpec(i2, i1));
          localView.layout(0, 0, localView.getMeasuredWidth(), localView.getMeasuredHeight());
          this.d = 0;
          ((u)localObject).a = localView;
          ((u)localObject).b = paramInt1;
          ((u)localObject).c = getAdapter().getItemId(paramInt1);
          this.c = ((u)localObject);
          i2 = paramInt1 + 1;
          if (i2 >= getCount()) {
            break;
          }
          paramInt3 -= i2 - paramInt2;
          localObject = getAdapter();
          i1 = ((ListAdapter)localObject).getCount();
          if (getLastVisiblePosition() < i1)
          {
            paramInt1 = paramInt3;
            if (i2 + paramInt3 >= i1) {
              paramInt1 = i1 - i2;
            }
            paramInt3 = 0;
            if (paramInt3 < paramInt1)
            {
              i1 = i2 + paramInt3;
              if (a((ListAdapter)localObject, ((ListAdapter)localObject).getItemViewType(i1))) {
                paramInt1 = i1;
              }
            }
          }
          for (;;)
          {
            if (paramInt1 >= 0)
            {
              localObject = getChildAt(paramInt1 - paramInt2);
              paramInt1 = this.c.a.getBottom();
              paramInt2 = getPaddingTop();
              this.k = (((View)localObject).getTop() - (paramInt1 + paramInt2));
              if (this.k < 0)
              {
                this.d = this.k;
                return;
                paramInt3 += 1;
                break;
                paramInt1 = -1;
                continue;
              }
              this.d = 0;
              return;
            }
          }
          this.d = 0;
          this.k = Integer.MAX_VALUE;
          return;
        }
      }
    }
  }
  
  final void b()
  {
    a();
    ListAdapter localListAdapter = getAdapter();
    int i1;
    int i2;
    if ((localListAdapter != null) && (localListAdapter.getCount() > 0))
    {
      i1 = getFirstVisiblePosition();
      i2 = a(i1);
      if (i2 != -1) {}
    }
    else
    {
      return;
    }
    a(i2, i1, getLastVisiblePosition() - i1);
  }
  
  protected void dispatchDraw(Canvas paramCanvas)
  {
    super.dispatchDraw(paramCanvas);
    int i2;
    int i3;
    View localView;
    int i4;
    if (this.c != null)
    {
      i2 = getListPaddingLeft();
      i3 = getListPaddingTop();
      localView = this.c.a;
      paramCanvas.save();
      i4 = localView.getHeight();
      if (this.j != null) {
        break label186;
      }
    }
    label186:
    for (int i1 = 0;; i1 = Math.min(this.l, this.k))
    {
      paramCanvas.clipRect(i2, i3, localView.getWidth() + i2, i1 + i4 + i3);
      paramCanvas.translate(i2, this.d + i3);
      drawChild(paramCanvas, this.c.a, getDrawingTime());
      if ((this.j != null) && (this.k > 0))
      {
        this.j.setBounds(this.c.a.getLeft(), this.c.a.getBottom(), this.c.a.getRight(), this.c.a.getBottom() + this.l);
        this.j.draw(paramCanvas);
      }
      paramCanvas.restore();
      return;
    }
  }
  
  public boolean dispatchTouchEvent(MotionEvent paramMotionEvent)
  {
    float f1 = paramMotionEvent.getX();
    float f2 = paramMotionEvent.getY();
    int i1 = paramMotionEvent.getAction();
    if ((i1 == 0) && (this.h == null) && (this.c != null) && (a(this.c.a, f1, f2)))
    {
      this.h = this.c.a;
      this.f.x = f1;
      this.f.y = f2;
      this.i = MotionEvent.obtain(paramMotionEvent);
    }
    if (this.h != null)
    {
      if (a(this.h, f1, f2)) {
        this.h.dispatchTouchEvent(paramMotionEvent);
      }
      Object localObject;
      if (i1 == 1)
      {
        super.dispatchTouchEvent(paramMotionEvent);
        if (this.c != null)
        {
          paramMotionEvent = getOnItemClickListener();
          if ((paramMotionEvent != null) && (getAdapter().isEnabled(this.c.b)))
          {
            localObject = this.c.a;
            playSoundEffect(0);
            if (localObject != null) {
              ((View)localObject).sendAccessibilityEvent(1);
            }
            paramMotionEvent.onItemClick(this, (View)localObject, this.c.b, this.c.c);
          }
        }
        d();
      }
      for (;;)
      {
        return true;
        if (i1 == 3)
        {
          d();
        }
        else if ((i1 == 2) && (Math.abs(f2 - this.f.y) > this.g))
        {
          localObject = MotionEvent.obtain(paramMotionEvent);
          ((MotionEvent)localObject).setAction(3);
          this.h.dispatchTouchEvent((MotionEvent)localObject);
          ((MotionEvent)localObject).recycle();
          super.dispatchTouchEvent(this.i);
          super.dispatchTouchEvent(paramMotionEvent);
          d();
        }
      }
    }
    return super.dispatchTouchEvent(paramMotionEvent);
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    if ((this.c != null) && (paramInt3 - paramInt1 - getPaddingLeft() - getPaddingRight() != this.c.a.getWidth())) {
      b();
    }
  }
  
  public void onRestoreInstanceState(Parcelable paramParcelable)
  {
    super.onRestoreInstanceState(paramParcelable);
    post(new Runnable()
    {
      public final void run()
      {
        PinnedSectionListView.this.b();
      }
    });
  }
  
  public void setAdapter(ListAdapter paramListAdapter)
  {
    ListAdapter localListAdapter = getAdapter();
    if (localListAdapter != null) {
      localListAdapter.unregisterDataSetObserver(this.n);
    }
    if (paramListAdapter != null) {
      paramListAdapter.registerDataSetObserver(this.n);
    }
    if (localListAdapter != paramListAdapter) {
      a();
    }
    super.setAdapter(paramListAdapter);
  }
  
  public void setOnScrollListener(AbsListView.OnScrollListener paramOnScrollListener)
  {
    if (paramOnScrollListener == this.m)
    {
      super.setOnScrollListener(paramOnScrollListener);
      return;
    }
    this.a = paramOnScrollListener;
  }
  
  public void setShadowVisible(boolean paramBoolean)
  {
    a(paramBoolean);
    if (this.c != null)
    {
      View localView = this.c.a;
      invalidate(localView.getLeft(), localView.getTop(), localView.getRight(), localView.getBottom() + this.l);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\widget\PinnedSectionListView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
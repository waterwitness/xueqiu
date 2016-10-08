package se.emilsjolander.stickylistheaders;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseBooleanArray;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.BaseSavedState;
import android.view.View.MeasureSpec;
import android.view.View.OnClickListener;
import android.view.View.OnCreateContextMenuListener;
import android.view.View.OnTouchListener;
import android.view.ViewConfiguration;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.widget.AbsListView.MultiChoiceModeListener;
import android.widget.AbsListView.OnScrollListener;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.AdapterView.OnItemLongClickListener;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ListView;
import android.widget.SectionIndexer;
import java.util.List;

public class StickyListHeadersListView
  extends FrameLayout
{
  private u a;
  private View b;
  private Long c;
  private Integer d;
  private Integer e;
  private AbsListView.OnScrollListener f;
  private a g;
  private boolean h = true;
  private boolean i = true;
  private boolean j = true;
  private int k = 0;
  private int l = 0;
  private int m = 0;
  private int n = 0;
  private int o = 0;
  private float p;
  private boolean q;
  private float r = ViewConfiguration.get(getContext()).getScaledTouchSlop();
  private o s;
  private q t;
  private p u;
  private m v;
  private Drawable w;
  private int x;
  
  @TargetApi(11)
  public StickyListHeadersListView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    this.a = new u(paramContext);
    this.w = this.a.getDivider();
    this.x = this.a.getDividerHeight();
    this.a.setDivider(null);
    this.a.setDividerHeight(0);
    if (paramAttributeSet != null) {
      paramContext = paramContext.getTheme().obtainStyledAttributes(paramAttributeSet, j.StickyListHeadersListView, paramInt, 0);
    }
    for (;;)
    {
      try
      {
        paramInt = paramContext.getDimensionPixelSize(j.StickyListHeadersListView_android_padding, 0);
        this.l = paramContext.getDimensionPixelSize(j.StickyListHeadersListView_android_paddingLeft, paramInt);
        this.m = paramContext.getDimensionPixelSize(j.StickyListHeadersListView_android_paddingTop, paramInt);
        this.n = paramContext.getDimensionPixelSize(j.StickyListHeadersListView_android_paddingRight, paramInt);
        this.o = paramContext.getDimensionPixelSize(j.StickyListHeadersListView_android_paddingBottom, paramInt);
        setPadding(this.l, this.m, this.n, this.o);
        this.i = paramContext.getBoolean(j.StickyListHeadersListView_android_clipToPadding, true);
        super.setClipToPadding(true);
        this.a.setClipToPadding(this.i);
        paramInt = paramContext.getInt(j.StickyListHeadersListView_android_scrollbars, 512);
        paramAttributeSet = this.a;
        if ((paramInt & 0x200) != 0)
        {
          bool1 = true;
          paramAttributeSet.setVerticalScrollBarEnabled(bool1);
          paramAttributeSet = this.a;
          if ((paramInt & 0x100) != 0)
          {
            bool1 = bool2;
            paramAttributeSet.setHorizontalScrollBarEnabled(bool1);
            if (Build.VERSION.SDK_INT >= 9) {
              this.a.setOverScrollMode(paramContext.getInt(j.StickyListHeadersListView_android_overScrollMode, 0));
            }
            this.a.setFadingEdgeLength(paramContext.getDimensionPixelSize(j.StickyListHeadersListView_android_fadingEdgeLength, this.a.getVerticalFadingEdgeLength()));
            paramInt = paramContext.getInt(j.StickyListHeadersListView_android_requiresFadingEdge, 0);
            if (paramInt != 4096) {
              continue;
            }
            this.a.setVerticalFadingEdgeEnabled(false);
            this.a.setHorizontalFadingEdgeEnabled(true);
            this.a.setCacheColorHint(paramContext.getColor(j.StickyListHeadersListView_android_cacheColorHint, this.a.getCacheColorHint()));
            if (Build.VERSION.SDK_INT >= 11) {
              this.a.setChoiceMode(paramContext.getInt(j.StickyListHeadersListView_android_choiceMode, this.a.getChoiceMode()));
            }
            this.a.setDrawSelectorOnTop(paramContext.getBoolean(j.StickyListHeadersListView_android_drawSelectorOnTop, false));
            this.a.setFastScrollEnabled(paramContext.getBoolean(j.StickyListHeadersListView_android_fastScrollEnabled, this.a.isFastScrollEnabled()));
            if (Build.VERSION.SDK_INT >= 11) {
              this.a.setFastScrollAlwaysVisible(paramContext.getBoolean(j.StickyListHeadersListView_android_fastScrollAlwaysVisible, this.a.isFastScrollAlwaysVisible()));
            }
            this.a.setScrollBarStyle(paramContext.getInt(j.StickyListHeadersListView_android_scrollbarStyle, 0));
            if (paramContext.hasValue(j.StickyListHeadersListView_android_listSelector)) {
              this.a.setSelector(paramContext.getDrawable(j.StickyListHeadersListView_android_listSelector));
            }
            this.a.setScrollingCacheEnabled(paramContext.getBoolean(j.StickyListHeadersListView_android_scrollingCache, this.a.isScrollingCacheEnabled()));
            if (paramContext.hasValue(j.StickyListHeadersListView_android_divider)) {
              this.w = paramContext.getDrawable(j.StickyListHeadersListView_android_divider);
            }
            this.a.setStackFromBottom(paramContext.getBoolean(j.StickyListHeadersListView_android_stackFromBottom, false));
            this.x = paramContext.getDimensionPixelSize(j.StickyListHeadersListView_android_dividerHeight, this.x);
            this.a.setTranscriptMode(paramContext.getInt(j.StickyListHeadersListView_android_transcriptMode, 0));
            this.h = paramContext.getBoolean(j.StickyListHeadersListView_hasStickyHeaders, true);
            this.j = paramContext.getBoolean(j.StickyListHeadersListView_isDrawingListUnderStickyHeader, true);
            paramContext.recycle();
            this.a.a = new s(this, (byte)0);
            this.a.setOnScrollListener(new r(this, (byte)0));
            addView(this.a);
          }
        }
        else
        {
          bool1 = false;
          continue;
        }
        boolean bool1 = false;
        continue;
        if (paramInt == 8192)
        {
          this.a.setVerticalFadingEdgeEnabled(true);
          this.a.setHorizontalFadingEdgeEnabled(false);
          continue;
        }
        this.a.setVerticalFadingEdgeEnabled(false);
      }
      finally
      {
        paramContext.recycle();
      }
      this.a.setHorizontalFadingEdgeEnabled(false);
    }
  }
  
  private void a()
  {
    if (this.b != null)
    {
      removeView(this.b);
      this.b = null;
      this.c = null;
      this.d = null;
      this.e = null;
      this.a.c = 0;
      b();
    }
  }
  
  private void a(int paramInt)
  {
    if (this.g == null) {}
    for (int i1 = 0; (i1 == 0) || (!this.h); i1 = this.g.getCount()) {
      return;
    }
    int i2 = paramInt - this.a.getHeaderViewsCount();
    paramInt = i2;
    if (this.a.getChildCount() > 0)
    {
      paramInt = i2;
      if (this.a.getChildAt(0).getBottom() < c()) {
        paramInt = i2 + 1;
      }
    }
    int i3;
    if (this.a.getChildCount() != 0)
    {
      i2 = 1;
      if ((i2 == 0) || (this.a.getFirstVisiblePosition() != 0) || (this.a.getChildAt(0).getTop() < c())) {
        break label175;
      }
      i3 = 1;
      label134:
      if ((paramInt <= i1 - 1) && (paramInt >= 0)) {
        break label181;
      }
    }
    label175:
    label181:
    for (i1 = 1;; i1 = 0)
    {
      if ((i2 != 0) && (i1 == 0) && (i3 == 0)) {
        break label187;
      }
      a();
      return;
      i2 = 0;
      break;
      i3 = 0;
      break label134;
    }
    label187:
    View localView;
    if ((this.d == null) || (this.d.intValue() != paramInt))
    {
      this.d = Integer.valueOf(paramInt);
      long l1 = this.g.a(paramInt);
      if ((this.c == null) || (this.c.longValue() != l1))
      {
        this.c = Long.valueOf(l1);
        localView = this.g.a(this.d.intValue(), this.b, this);
        if (this.b != localView)
        {
          if (localView == null) {
            throw new NullPointerException("header may not be null");
          }
          if (this.b != null) {
            removeView(this.b);
          }
          this.b = localView;
          addView(this.b);
          if (this.s != null) {
            this.b.setOnClickListener(new View.OnClickListener()
            {
              public final void onClick(View paramAnonymousView)
              {
                StickyListHeadersListView.b(StickyListHeadersListView.this).intValue();
                StickyListHeadersListView.c(StickyListHeadersListView.this).longValue();
              }
            });
          }
          this.b.setClickable(true);
        }
        a(this.b);
        b(this.b);
        if (this.u != null) {
          this.c.longValue();
        }
        this.e = null;
      }
    }
    i2 = c();
    paramInt = 0;
    label436:
    u localu;
    boolean bool;
    if (paramInt < this.a.getChildCount())
    {
      localView = this.a.getChildAt(paramInt);
      if (((localView instanceof t)) && (((t)localView).a()))
      {
        i1 = 1;
        localu = this.a;
        if (localu.b != null) {
          break label535;
        }
        bool = false;
        label451:
        if ((localView.getTop() < c()) || ((i1 == 0) && (!bool))) {
          break label550;
        }
      }
    }
    for (paramInt = Math.min(localView.getTop() - this.b.getMeasuredHeight(), i2);; paramInt = i2)
    {
      setHeaderOffet(paramInt);
      if (!this.j) {
        this.a.c = (this.b.getMeasuredHeight() + this.e.intValue());
      }
      b();
      return;
      i1 = 0;
      break label436;
      label535:
      bool = localu.b.contains(localView);
      break label451;
      label550:
      paramInt += 1;
      break;
    }
  }
  
  private static void a(View paramView)
  {
    ViewGroup.LayoutParams localLayoutParams = paramView.getLayoutParams();
    if (localLayoutParams == null) {
      paramView.setLayoutParams(new FrameLayout.LayoutParams(-1, -2));
    }
    while ((localLayoutParams.height != -1) && (localLayoutParams.width != -2)) {
      return;
    }
    localLayoutParams.height = -2;
    localLayoutParams.width = -1;
    paramView.setLayoutParams(localLayoutParams);
  }
  
  private void b()
  {
    int i2 = c();
    int i3 = this.a.getChildCount();
    int i1 = 0;
    if (i1 < i3)
    {
      Object localObject = this.a.getChildAt(i1);
      View localView;
      if ((localObject instanceof t))
      {
        localObject = (t)localObject;
        if (((t)localObject).a())
        {
          localView = ((t)localObject).d;
          if (((t)localObject).getTop() >= i2) {
            break label85;
          }
          if (localView.getVisibility() != 4) {
            localView.setVisibility(4);
          }
        }
      }
      for (;;)
      {
        i1 += 1;
        break;
        label85:
        if (localView.getVisibility() != 0) {
          localView.setVisibility(0);
        }
      }
    }
  }
  
  private void b(View paramView)
  {
    if (paramView != null) {
      measureChild(paramView, View.MeasureSpec.makeMeasureSpec(getMeasuredWidth() - this.l - this.n, 1073741824), View.MeasureSpec.makeMeasureSpec(0, 0));
    }
  }
  
  private static boolean b(int paramInt)
  {
    if (Build.VERSION.SDK_INT < paramInt)
    {
      Log.e("StickyListHeaders", "Api lvl must be at least " + paramInt + " to call this method");
      return false;
    }
    return true;
  }
  
  private int c()
  {
    int i2 = this.k;
    if (this.i) {}
    for (int i1 = this.m;; i1 = 0) {
      return i1 + i2;
    }
  }
  
  @SuppressLint({"NewApi"})
  private void setHeaderOffet(int paramInt)
  {
    if ((this.e == null) || (this.e.intValue() != paramInt))
    {
      this.e = Integer.valueOf(paramInt);
      if (Build.VERSION.SDK_INT < 11) {
        break label65;
      }
      this.b.setTranslationY(this.e.intValue());
    }
    for (;;)
    {
      if (this.t != null) {
        this.e.intValue();
      }
      return;
      label65:
      ViewGroup.MarginLayoutParams localMarginLayoutParams = (ViewGroup.MarginLayoutParams)this.b.getLayoutParams();
      localMarginLayoutParams.topMargin = this.e.intValue();
      this.b.setLayoutParams(localMarginLayoutParams);
    }
  }
  
  @TargetApi(14)
  public boolean canScrollVertically(int paramInt)
  {
    return this.a.canScrollVertically(paramInt);
  }
  
  protected void dispatchDraw(Canvas paramCanvas)
  {
    if ((this.a.getVisibility() == 0) || (this.a.getAnimation() != null)) {
      drawChild(paramCanvas, this.a, 0L);
    }
  }
  
  public boolean dispatchTouchEvent(MotionEvent paramMotionEvent)
  {
    if ((paramMotionEvent.getAction() & 0xFF) == 0)
    {
      this.p = paramMotionEvent.getY();
      if ((this.b == null) || (this.p > this.b.getHeight() + this.e.intValue())) {
        break label100;
      }
    }
    label100:
    for (boolean bool = true;; bool = false)
    {
      this.q = bool;
      if (!this.q) {
        break label188;
      }
      if ((this.b == null) || (Math.abs(this.p - paramMotionEvent.getY()) > this.r)) {
        break;
      }
      return this.b.dispatchTouchEvent(paramMotionEvent);
    }
    if (this.b != null)
    {
      MotionEvent localMotionEvent = MotionEvent.obtain(paramMotionEvent);
      localMotionEvent.setAction(3);
      this.b.dispatchTouchEvent(localMotionEvent);
      localMotionEvent.recycle();
    }
    paramMotionEvent = MotionEvent.obtain(paramMotionEvent.getDownTime(), paramMotionEvent.getEventTime(), paramMotionEvent.getAction(), paramMotionEvent.getX(), this.p, paramMotionEvent.getMetaState());
    paramMotionEvent.setAction(0);
    bool = this.a.dispatchTouchEvent(paramMotionEvent);
    paramMotionEvent.recycle();
    this.q = false;
    return bool;
    label188:
    return this.a.dispatchTouchEvent(paramMotionEvent);
  }
  
  public l getAdapter()
  {
    if (this.g == null) {
      return null;
    }
    return this.g.a;
  }
  
  @Deprecated
  public boolean getAreHeadersSticky()
  {
    return this.h;
  }
  
  @TargetApi(11)
  public int getCheckedItemCount()
  {
    if (b(11)) {
      return this.a.getCheckedItemCount();
    }
    return 0;
  }
  
  @TargetApi(8)
  public long[] getCheckedItemIds()
  {
    if (b(8)) {
      return this.a.getCheckedItemIds();
    }
    return null;
  }
  
  @TargetApi(11)
  public int getCheckedItemPosition()
  {
    return this.a.getCheckedItemPosition();
  }
  
  @TargetApi(11)
  public SparseBooleanArray getCheckedItemPositions()
  {
    return this.a.getCheckedItemPositions();
  }
  
  public int getCount()
  {
    return this.a.getCount();
  }
  
  public Drawable getDivider()
  {
    return this.w;
  }
  
  public int getDividerHeight()
  {
    return this.x;
  }
  
  public View getEmptyView()
  {
    return this.a.getEmptyView();
  }
  
  public int getFirstVisiblePosition()
  {
    return this.a.getFirstVisiblePosition();
  }
  
  public int getFooterViewsCount()
  {
    return this.a.getFooterViewsCount();
  }
  
  public int getHeaderViewsCount()
  {
    return this.a.getHeaderViewsCount();
  }
  
  public int getLastVisiblePosition()
  {
    return this.a.getLastVisiblePosition();
  }
  
  public int getListChildCount()
  {
    return this.a.getChildCount();
  }
  
  @TargetApi(9)
  public int getOverScrollMode()
  {
    if (b(9)) {
      return this.a.getOverScrollMode();
    }
    return 0;
  }
  
  public int getPaddingBottom()
  {
    return this.o;
  }
  
  public int getPaddingLeft()
  {
    return this.l;
  }
  
  public int getPaddingRight()
  {
    return this.n;
  }
  
  public int getPaddingTop()
  {
    return this.m;
  }
  
  public int getScrollBarStyle()
  {
    return this.a.getScrollBarStyle();
  }
  
  public int getStickyHeaderTopOffset()
  {
    return this.k;
  }
  
  public ListView getWrappedList()
  {
    return this.a;
  }
  
  public boolean isHorizontalScrollBarEnabled()
  {
    return this.a.isHorizontalScrollBarEnabled();
  }
  
  public boolean isVerticalScrollBarEnabled()
  {
    return this.a.isVerticalScrollBarEnabled();
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.a.layout(0, 0, this.a.getMeasuredWidth(), getHeight());
    if (this.b != null)
    {
      paramInt1 = ((ViewGroup.MarginLayoutParams)this.b.getLayoutParams()).topMargin;
      this.b.layout(this.l, paramInt1, this.b.getMeasuredWidth() + this.l, this.b.getMeasuredHeight() + paramInt1);
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    b(this.b);
  }
  
  public void onRestoreInstanceState(Parcelable paramParcelable)
  {
    super.onRestoreInstanceState(View.BaseSavedState.EMPTY_STATE);
    this.a.onRestoreInstanceState(paramParcelable);
  }
  
  public Parcelable onSaveInstanceState()
  {
    if (super.onSaveInstanceState() != View.BaseSavedState.EMPTY_STATE) {
      throw new IllegalStateException("Handling non empty state of parent class is not implemented");
    }
    return this.a.onSaveInstanceState();
  }
  
  public void setAdapter(l paraml)
  {
    if (paraml == null)
    {
      if ((this.g instanceof k)) {
        ((k)this.g).c = null;
      }
      if (this.g != null) {
        this.g.a = null;
      }
      this.a.setAdapter(null);
      a();
      return;
    }
    if (this.g != null) {
      this.g.unregisterDataSetObserver(this.v);
    }
    if ((paraml instanceof SectionIndexer))
    {
      this.g = new k(getContext(), paraml);
      this.v = new m(this, (byte)0);
      this.g.registerDataSetObserver(this.v);
      if (this.s == null) {
        break label191;
      }
    }
    label191:
    for (this.g.b = new n(this, (byte)0);; this.g.b = null)
    {
      this.g.a(this.w, this.x);
      this.a.setAdapter(this.g);
      a();
      return;
      this.g = new a(getContext(), paraml);
      break;
    }
  }
  
  public void setAreHeadersSticky(boolean paramBoolean)
  {
    this.h = paramBoolean;
    if (!paramBoolean) {
      a();
    }
    for (;;)
    {
      this.a.invalidate();
      return;
      a(this.a.a());
    }
  }
  
  public void setBlockLayoutChildren(boolean paramBoolean)
  {
    this.a.d = paramBoolean;
  }
  
  @TargetApi(11)
  public void setChoiceMode(int paramInt)
  {
    this.a.setChoiceMode(paramInt);
  }
  
  public void setClipToPadding(boolean paramBoolean)
  {
    if (this.a != null) {
      this.a.setClipToPadding(paramBoolean);
    }
    this.i = paramBoolean;
  }
  
  public void setDivider(Drawable paramDrawable)
  {
    this.w = paramDrawable;
    if (this.g != null) {
      this.g.a(this.w, this.x);
    }
  }
  
  public void setDividerHeight(int paramInt)
  {
    this.x = paramInt;
    if (this.g != null) {
      this.g.a(this.w, this.x);
    }
  }
  
  public void setDrawingListUnderStickyHeader(boolean paramBoolean)
  {
    this.j = paramBoolean;
    this.a.c = 0;
  }
  
  public void setEmptyView(View paramView)
  {
    this.a.setEmptyView(paramView);
  }
  
  @TargetApi(11)
  public void setFastScrollAlwaysVisible(boolean paramBoolean)
  {
    if (b(11)) {
      this.a.setFastScrollAlwaysVisible(paramBoolean);
    }
  }
  
  public void setFastScrollEnabled(boolean paramBoolean)
  {
    this.a.setFastScrollEnabled(paramBoolean);
  }
  
  public void setHorizontalScrollBarEnabled(boolean paramBoolean)
  {
    this.a.setHorizontalScrollBarEnabled(paramBoolean);
  }
  
  @TargetApi(11)
  public void setMultiChoiceModeListener(AbsListView.MultiChoiceModeListener paramMultiChoiceModeListener)
  {
    if (b(11)) {
      this.a.setMultiChoiceModeListener(paramMultiChoiceModeListener);
    }
  }
  
  public void setOnCreateContextMenuListener(View.OnCreateContextMenuListener paramOnCreateContextMenuListener)
  {
    this.a.setOnCreateContextMenuListener(paramOnCreateContextMenuListener);
  }
  
  public void setOnHeaderClickListener(o paramo)
  {
    this.s = paramo;
    if (this.g != null)
    {
      if (this.s == null) {
        break label58;
      }
      this.g.b = new n(this, (byte)0);
      if (this.b != null) {
        this.b.setOnClickListener(new View.OnClickListener()
        {
          public final void onClick(View paramAnonymousView)
          {
            StickyListHeadersListView.b(StickyListHeadersListView.this).intValue();
            StickyListHeadersListView.c(StickyListHeadersListView.this).longValue();
          }
        });
      }
    }
    return;
    label58:
    this.g.b = null;
  }
  
  public void setOnItemClickListener(AdapterView.OnItemClickListener paramOnItemClickListener)
  {
    this.a.setOnItemClickListener(paramOnItemClickListener);
  }
  
  public void setOnItemLongClickListener(AdapterView.OnItemLongClickListener paramOnItemLongClickListener)
  {
    this.a.setOnItemLongClickListener(paramOnItemLongClickListener);
  }
  
  public void setOnScrollListener(AbsListView.OnScrollListener paramOnScrollListener)
  {
    this.f = paramOnScrollListener;
  }
  
  public void setOnStickyHeaderChangedListener(p paramp)
  {
    this.u = paramp;
  }
  
  public void setOnStickyHeaderOffsetChangedListener(q paramq)
  {
    this.t = paramq;
  }
  
  public void setOnTouchListener(final View.OnTouchListener paramOnTouchListener)
  {
    if (paramOnTouchListener != null)
    {
      this.a.setOnTouchListener(new View.OnTouchListener()
      {
        public final boolean onTouch(View paramAnonymousView, MotionEvent paramAnonymousMotionEvent)
        {
          return paramOnTouchListener.onTouch(StickyListHeadersListView.this, paramAnonymousMotionEvent);
        }
      });
      return;
    }
    this.a.setOnTouchListener(null);
  }
  
  @TargetApi(9)
  public void setOverScrollMode(int paramInt)
  {
    if ((b(9)) && (this.a != null)) {
      this.a.setOverScrollMode(paramInt);
    }
  }
  
  public void setPadding(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.l = paramInt1;
    this.m = paramInt2;
    this.n = paramInt3;
    this.o = paramInt4;
    if (this.a != null) {
      this.a.setPadding(paramInt1, paramInt2, paramInt3, paramInt4);
    }
    super.setPadding(0, 0, 0, 0);
    requestLayout();
  }
  
  public void setScrollBarStyle(int paramInt)
  {
    this.a.setScrollBarStyle(paramInt);
  }
  
  public void setSelection(int paramInt)
  {
    int i2 = 0;
    int i1;
    if (this.g != null)
    {
      i1 = Math.max(0, paramInt - getHeaderViewsCount());
      if ((i1 == 0) || (this.g.a(i1) != this.g.a(i1 - 1))) {
        i1 = 1;
      }
      while (i1 == 0)
      {
        View localView = this.g.a(paramInt, null, this.a);
        if (localView == null)
        {
          throw new NullPointerException("header may not be null");
          i1 = 0;
        }
        else
        {
          a(localView);
          b(localView);
          i1 = localView.getMeasuredHeight();
          if (!this.i) {
            break label128;
          }
        }
      }
    }
    for (;;)
    {
      this.a.setSelectionFromTop(paramInt, i1 + 0 - i2);
      return;
      i1 = 0;
      break;
      label128:
      i2 = this.m;
    }
  }
  
  public void setSelector(int paramInt)
  {
    this.a.setSelector(paramInt);
  }
  
  public void setSelector(Drawable paramDrawable)
  {
    this.a.setSelector(paramDrawable);
  }
  
  public void setStackFromBottom(boolean paramBoolean)
  {
    this.a.setStackFromBottom(paramBoolean);
  }
  
  public void setStickyHeaderTopOffset(int paramInt)
  {
    this.k = paramInt;
    a(this.a.a());
  }
  
  public void setTranscriptMode(int paramInt)
  {
    this.a.setTranscriptMode(paramInt);
  }
  
  public void setVerticalScrollBarEnabled(boolean paramBoolean)
  {
    this.a.setVerticalScrollBarEnabled(paramBoolean);
  }
  
  public boolean showContextMenu()
  {
    return this.a.showContextMenu();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\se\emilsjolander\stickylistheaders\StickyListHeadersListView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
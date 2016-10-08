package com.emilsjolander.components.stickylistheaders;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.util.AttributeSet;
import android.util.SparseBooleanArray;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnClickListener;
import android.view.ViewGroup.MarginLayoutParams;
import android.widget.AbsListView.OnScrollListener;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.FrameLayout;
import android.widget.ListView;
import android.widget.SectionIndexer;
import com.xueqiu.android.R.styleable;

public class StickyListHeadersListView
  extends FrameLayout
{
  private AdapterWrapper mAdapter;
  private boolean mAreHeadersSticky = true;
  private boolean mClippingToPadding = true;
  private StickyListHeadersListView.AdapterWrapperDataSetObserver mDataSetObserver;
  private Drawable mDivider;
  private int mDividerHeight;
  private View mHeader;
  private Long mHeaderId;
  private Integer mHeaderOffset;
  private Integer mHeaderPosition;
  private boolean mIsDrawingListUnderStickyHeader = true;
  private WrapperViewList mList;
  private StickyListHeadersListView.OnHeaderClickListener mOnHeaderClickListener;
  private AbsListView.OnScrollListener mOnScrollListenerDelegate;
  private StickyListHeadersListView.OnStickyHeaderChangedListener mOnStickyHeaderChangedListener;
  private int mPaddingBottom = 0;
  private int mPaddingLeft = 0;
  private int mPaddingRight = 0;
  private int mPaddingTop = 0;
  
  public StickyListHeadersListView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public StickyListHeadersListView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  @TargetApi(11)
  public StickyListHeadersListView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    this.mList = new WrapperViewList(paramContext);
    this.mDivider = this.mList.getDivider();
    this.mDividerHeight = this.mList.getDividerHeight();
    this.mList.setDivider(null);
    this.mList.setDividerHeight(0);
    this.mList.setLifeCycleListener(new StickyListHeadersListView.WrapperViewListLifeCycleListener(this, null));
    this.mList.setOnScrollListener(new StickyListHeadersListView.WrapperListScrollListener(this, null));
    addView(this.mList);
    if (paramAttributeSet != null) {
      paramContext = paramContext.getTheme().obtainStyledAttributes(paramAttributeSet, R.styleable.StickyListHeadersListView, 0, 0);
    }
    for (;;)
    {
      try
      {
        if (paramContext.hasValue(1))
        {
          paramInt = paramContext.getDimensionPixelSize(1, 0);
          this.mPaddingLeft = paramInt;
          this.mPaddingTop = paramInt;
          this.mPaddingRight = paramInt;
          this.mPaddingBottom = paramInt;
          setPadding(this.mPaddingLeft, this.mPaddingTop, this.mPaddingRight, this.mPaddingBottom);
          this.mClippingToPadding = paramContext.getBoolean(8, true);
          super.setClipToPadding(true);
          this.mList.setClipToPadding(this.mClippingToPadding);
          this.mList.setFadingEdgeLength(paramContext.getDimensionPixelSize(7, this.mList.getVerticalFadingEdgeLength()));
          paramInt = paramContext.getInt(21, 0);
          if (paramInt == 4096)
          {
            this.mList.setVerticalFadingEdgeEnabled(false);
            this.mList.setHorizontalFadingEdgeEnabled(true);
            this.mList.setCacheColorHint(paramContext.getColor(14, this.mList.getCacheColorHint()));
            if (Build.VERSION.SDK_INT >= 11) {
              this.mList.setChoiceMode(paramContext.getInt(17, this.mList.getChoiceMode()));
            }
            this.mList.setDrawSelectorOnTop(paramContext.getBoolean(10, false));
            this.mList.setFastScrollEnabled(paramContext.getBoolean(18, this.mList.isFastScrollEnabled()));
            this.mList.setScrollBarStyle(paramContext.getInt(0, 0));
            paramInt = paramContext.getInt(6, 2);
            if (paramInt != 0) {
              break label597;
            }
            this.mList.setHorizontalScrollBarEnabled(false);
            this.mList.setVerticalScrollBarEnabled(false);
            paramAttributeSet = paramContext.getDrawable(9);
            if (paramAttributeSet != null) {
              this.mList.setSelector(paramAttributeSet);
            }
            this.mList.setScrollingCacheEnabled(paramContext.getBoolean(12, this.mList.isScrollingCacheEnabled()));
            paramAttributeSet = paramContext.getDrawable(15);
            if (paramAttributeSet != null) {
              this.mDivider = paramAttributeSet;
            }
            this.mDividerHeight = paramContext.getDimensionPixelOffset(16, this.mDividerHeight);
            this.mAreHeadersSticky = paramContext.getBoolean(23, true);
            this.mIsDrawingListUnderStickyHeader = paramContext.getBoolean(24, true);
          }
        }
        else
        {
          this.mPaddingLeft = paramContext.getDimensionPixelSize(2, 0);
          this.mPaddingTop = paramContext.getDimensionPixelSize(3, 0);
          this.mPaddingRight = paramContext.getDimensionPixelSize(4, 0);
          this.mPaddingBottom = paramContext.getDimensionPixelSize(5, 0);
          continue;
        }
        if (paramInt != 8192) {
          break label578;
        }
      }
      finally
      {
        paramContext.recycle();
      }
      this.mList.setVerticalFadingEdgeEnabled(true);
      this.mList.setHorizontalFadingEdgeEnabled(false);
      continue;
      label578:
      this.mList.setVerticalFadingEdgeEnabled(false);
      this.mList.setHorizontalFadingEdgeEnabled(false);
      continue;
      label597:
      if (paramInt == 1) {
        this.mList.setVerticalScrollBarEnabled(false);
      } else if (paramInt == 2) {
        this.mList.setHorizontalScrollBarEnabled(false);
      }
    }
  }
  
  private void clearHeader()
  {
    if (this.mHeader != null)
    {
      removeView(this.mHeader);
      this.mHeader = null;
      this.mHeaderId = null;
      this.mHeaderPosition = null;
      this.mHeaderOffset = null;
      this.mList.setTopClippingLength(0);
      updateHeaderVisibilities();
    }
  }
  
  private int getHeaderOverlap(int paramInt)
  {
    int i = 0;
    if (!isStartOfSection(paramInt))
    {
      WrapperView localWrapperView = this.mAdapter.getView(paramInt, null, this.mList);
      measureChild(localWrapperView, View.MeasureSpec.makeMeasureSpec(getWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(0, 0));
      i = localWrapperView.getMeasuredHeight();
    }
    return i;
  }
  
  private boolean isStartOfSection(int paramInt)
  {
    return (paramInt == 0) || (this.mAdapter.getHeaderId(paramInt) == this.mAdapter.getHeaderId(paramInt - 1));
  }
  
  private void requireSdkVersion(int paramInt)
  {
    if (Build.VERSION.SDK_INT < paramInt) {
      throw new ApiLevelTooLowException(paramInt);
    }
  }
  
  @SuppressLint({"NewApi"})
  private void setHeaderOffet(int paramInt)
  {
    if ((this.mHeaderOffset == null) || (this.mHeaderOffset.intValue() != paramInt))
    {
      this.mHeaderOffset = Integer.valueOf(paramInt);
      if (Build.VERSION.SDK_INT >= 11) {
        this.mHeader.setTranslationY(this.mHeaderOffset.intValue());
      }
    }
    else
    {
      return;
    }
    ViewGroup.MarginLayoutParams localMarginLayoutParams = (ViewGroup.MarginLayoutParams)this.mHeader.getLayoutParams();
    localMarginLayoutParams.topMargin = this.mHeaderOffset.intValue();
    this.mHeader.setLayoutParams(localMarginLayoutParams);
  }
  
  private void swapHeader(View paramView)
  {
    if (this.mHeader != null) {
      removeView(this.mHeader);
    }
    this.mHeader = paramView;
    addView(this.mHeader);
    this.mHeader.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        if (StickyListHeadersListView.this.mOnHeaderClickListener != null) {
          StickyListHeadersListView.this.mOnHeaderClickListener.onHeaderClick(StickyListHeadersListView.this, StickyListHeadersListView.this.mHeader, StickyListHeadersListView.this.mHeaderPosition.intValue(), StickyListHeadersListView.this.mHeaderId.longValue(), true);
        }
      }
    });
  }
  
  private void updateHeader(int paramInt)
  {
    int m = 0;
    View localView;
    int i;
    int j;
    if ((this.mHeaderPosition == null) || (this.mHeaderPosition.intValue() != paramInt))
    {
      this.mHeaderPosition = Integer.valueOf(paramInt);
      long l = this.mAdapter.getHeaderId(paramInt);
      if ((this.mHeaderId == null) || (this.mHeaderId.longValue() != l))
      {
        this.mHeaderId = Long.valueOf(l);
        localView = this.mAdapter.getHeaderView(this.mHeaderPosition.intValue(), this.mHeader, this);
        if (this.mHeader != localView)
        {
          if (localView == null) {
            throw new NullPointerException("header may not be null");
          }
          swapHeader(localView);
        }
        i = View.MeasureSpec.makeMeasureSpec(getWidth(), 1073741824);
        j = View.MeasureSpec.makeMeasureSpec(0, 0);
        measureChild(this.mHeader, i, j);
        if (this.mOnStickyHeaderChangedListener != null) {
          this.mOnStickyHeaderChangedListener.onStickyHeaderChanged(this, localView, paramInt, this.mHeaderId.longValue());
        }
        this.mHeaderOffset = null;
      }
    }
    int n = this.mHeader.getMeasuredHeight();
    if (this.mClippingToPadding)
    {
      paramInt = this.mPaddingTop;
      i = 0;
    }
    for (;;)
    {
      j = m;
      label243:
      boolean bool;
      int i1;
      if (i < this.mList.getChildCount())
      {
        localView = this.mList.getChildAt(i);
        if ((!(localView instanceof WrapperView)) || (!((WrapperView)localView).hasHeader())) {
          break label349;
        }
        j = 1;
        bool = this.mList.containsFooterView(localView);
        i1 = localView.getTop();
        if (!this.mClippingToPadding) {
          break label355;
        }
      }
      label349:
      label355:
      for (int k = this.mPaddingTop;; k = 0)
      {
        if ((i1 < k) || ((j == 0) && (!bool))) {
          break label361;
        }
        j = Math.min(localView.getTop() - (n + paramInt), 0);
        setHeaderOffet(j);
        if (!this.mIsDrawingListUnderStickyHeader) {
          this.mList.setTopClippingLength(this.mHeader.getMeasuredHeight() + this.mHeaderOffset.intValue());
        }
        updateHeaderVisibilities();
        return;
        paramInt = 0;
        break;
        j = 0;
        break label243;
      }
      label361:
      i += 1;
    }
  }
  
  private void updateHeaderVisibilities()
  {
    int j;
    int i;
    label36:
    label48:
    View localView;
    if (this.mHeader != null)
    {
      j = this.mHeader.getMeasuredHeight();
      if (this.mHeaderOffset != null)
      {
        i = this.mHeaderOffset.intValue();
        i += j;
        int k = this.mList.getChildCount();
        j = 0;
        if (j >= k) {
          return;
        }
        Object localObject = this.mList.getChildAt(j);
        if ((localObject instanceof WrapperView))
        {
          localObject = (WrapperView)localObject;
          if (((WrapperView)localObject).hasHeader())
          {
            localView = ((WrapperView)localObject).mHeader;
            if (((WrapperView)localObject).getTop() >= i) {
              break label144;
            }
            if (localView.getVisibility() != 4) {
              localView.setVisibility(4);
            }
          }
        }
      }
    }
    for (;;)
    {
      j += 1;
      break label48;
      i = 0;
      break;
      if (this.mClippingToPadding)
      {
        i = this.mPaddingTop;
        break label36;
      }
      i = 0;
      break label36;
      label144:
      if (localView.getVisibility() != 0) {
        localView.setVisibility(0);
      }
    }
  }
  
  private void updateOrClearHeader(int paramInt)
  {
    int j = 1;
    if (this.mAdapter == null) {}
    for (int i = 0; (i == 0) || (!this.mAreHeadersSticky); i = this.mAdapter.getCount()) {
      return;
    }
    int k = paramInt - this.mList.getHeaderViewsCount();
    if ((this.mList.getFirstVisiblePosition() == 0) && (this.mList.getChildAt(0).getTop() > 0))
    {
      paramInt = 1;
      if ((k <= i - 1) && (k >= 0)) {
        break label118;
      }
      i = 1;
      label86:
      if (this.mList.getChildCount() == 0) {
        break label123;
      }
    }
    for (;;)
    {
      if ((j != 0) && (i == 0) && (paramInt == 0)) {
        break label128;
      }
      clearHeader();
      return;
      paramInt = 0;
      break;
      label118:
      i = 0;
      break label86;
      label123:
      j = 0;
    }
    label128:
    updateHeader(k);
  }
  
  public void addFooterView(View paramView)
  {
    this.mList.addFooterView(paramView);
  }
  
  public void addHeaderView(View paramView)
  {
    this.mList.addHeaderView(paramView);
  }
  
  public boolean areHeadersSticky()
  {
    return this.mAreHeadersSticky;
  }
  
  protected void dispatchDraw(Canvas paramCanvas)
  {
    drawChild(paramCanvas, this.mList, 0L);
  }
  
  public StickyListHeadersAdapter getAdapter()
  {
    if (this.mAdapter == null) {
      return null;
    }
    return this.mAdapter.mDelegate;
  }
  
  @Deprecated
  public boolean getAreHeadersSticky()
  {
    return areHeadersSticky();
  }
  
  @TargetApi(11)
  public int getCheckedItemCount()
  {
    requireSdkVersion(11);
    return this.mList.getCheckedItemCount();
  }
  
  @TargetApi(11)
  public long[] getCheckedItemIds()
  {
    requireSdkVersion(11);
    return this.mList.getCheckedItemIds();
  }
  
  @TargetApi(11)
  public int getCheckedItemPosition()
  {
    requireSdkVersion(11);
    return this.mList.getCheckedItemPosition();
  }
  
  @TargetApi(11)
  public SparseBooleanArray getCheckedItemPositions()
  {
    requireSdkVersion(11);
    return this.mList.getCheckedItemPositions();
  }
  
  public int getCount()
  {
    return this.mList.getCount();
  }
  
  public Drawable getDivider()
  {
    return this.mDivider;
  }
  
  public int getDividerHeight()
  {
    return this.mDividerHeight;
  }
  
  public View getEmptyView()
  {
    return this.mList.getEmptyView();
  }
  
  public int getFirstVisiblePosition()
  {
    return this.mList.getFirstVisiblePosition();
  }
  
  public int getFooterViewsCount()
  {
    return this.mList.getFooterViewsCount();
  }
  
  public int getHeaderViewsCount()
  {
    return this.mList.getHeaderViewsCount();
  }
  
  public Object getItemAtPosition(int paramInt)
  {
    return this.mList.getItemAtPosition(paramInt);
  }
  
  public long getItemIdAtPosition(int paramInt)
  {
    return this.mList.getItemIdAtPosition(paramInt);
  }
  
  public int getLastVisiblePosition()
  {
    return this.mList.getLastVisiblePosition();
  }
  
  public View getListChildAt(int paramInt)
  {
    return this.mList.getChildAt(paramInt);
  }
  
  public int getListChildCount()
  {
    return this.mList.getChildCount();
  }
  
  public int getPaddingBottom()
  {
    return this.mPaddingBottom;
  }
  
  public int getPaddingLeft()
  {
    return this.mPaddingLeft;
  }
  
  public int getPaddingRight()
  {
    return this.mPaddingRight;
  }
  
  public int getPaddingTop()
  {
    return this.mPaddingTop;
  }
  
  public ListView getWrappedList()
  {
    return this.mList;
  }
  
  public boolean isDrawingListUnderStickyHeader()
  {
    return this.mIsDrawingListUnderStickyHeader;
  }
  
  public boolean isIndexScrollEnabled()
  {
    return this.mList.isIndexScrollEnabled();
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.mList.layout(this.mPaddingLeft, 0, this.mList.getMeasuredWidth() + this.mPaddingLeft, getHeight());
    if (this.mHeader != null)
    {
      paramInt2 = ((ViewGroup.MarginLayoutParams)this.mHeader.getLayoutParams()).topMargin;
      if (!this.mClippingToPadding) {
        break label91;
      }
    }
    label91:
    for (paramInt1 = this.mPaddingTop;; paramInt1 = 0)
    {
      paramInt1 += paramInt2;
      this.mHeader.layout(0, paramInt1, this.mHeader.getMeasuredWidth(), this.mHeader.getMeasuredHeight() + paramInt1);
      return;
    }
  }
  
  public void removeFooterView(View paramView)
  {
    this.mList.removeFooterView(paramView);
  }
  
  public void removeHeaderView(View paramView)
  {
    this.mList.removeHeaderView(paramView);
  }
  
  public void setAdapter(StickyListHeadersAdapter paramStickyListHeadersAdapter)
  {
    if (paramStickyListHeadersAdapter == null)
    {
      this.mList.setAdapter(null);
      clearHeader();
      return;
    }
    if (this.mAdapter != null) {
      this.mAdapter.unregisterDataSetObserver(this.mDataSetObserver);
    }
    if ((paramStickyListHeadersAdapter instanceof SectionIndexer))
    {
      this.mAdapter = new SectionIndexerAdapterWrapper(getContext(), paramStickyListHeadersAdapter);
      this.mDataSetObserver = new StickyListHeadersListView.AdapterWrapperDataSetObserver(this, null);
      this.mAdapter.registerDataSetObserver(this.mDataSetObserver);
      if (this.mOnHeaderClickListener == null) {
        break label155;
      }
      this.mAdapter.setOnHeaderClickListener(new StickyListHeadersListView.AdapterWrapperHeaderClickHandler(this, null));
    }
    for (;;)
    {
      this.mAdapter.setDivider(this.mDivider, this.mDividerHeight);
      this.mList.setAdapter(this.mAdapter);
      clearHeader();
      return;
      this.mAdapter = new AdapterWrapper(getContext(), paramStickyListHeadersAdapter);
      break;
      label155:
      this.mAdapter.setOnHeaderClickListener(null);
    }
  }
  
  public void setAreHeadersSticky(boolean paramBoolean)
  {
    this.mAreHeadersSticky = paramBoolean;
    if (!paramBoolean) {
      clearHeader();
    }
    for (;;)
    {
      this.mList.invalidate();
      return;
      updateOrClearHeader(this.mList.getFixedFirstVisibleItem());
    }
  }
  
  @TargetApi(11)
  public void setChoiceMode(int paramInt)
  {
    requireSdkVersion(11);
    this.mList.setChoiceMode(paramInt);
  }
  
  public void setClipToPadding(boolean paramBoolean)
  {
    if (this.mList != null) {
      this.mList.setClipToPadding(paramBoolean);
    }
    this.mClippingToPadding = paramBoolean;
  }
  
  public void setDivider(Drawable paramDrawable)
  {
    this.mDivider = paramDrawable;
    if (this.mAdapter != null) {
      this.mAdapter.setDivider(this.mDivider, this.mDividerHeight);
    }
  }
  
  public void setDividerHeight(int paramInt)
  {
    this.mDividerHeight = paramInt;
    if (this.mAdapter != null) {
      this.mAdapter.setDivider(this.mDivider, this.mDividerHeight);
    }
  }
  
  public void setDrawingListUnderStickyHeader(boolean paramBoolean)
  {
    this.mIsDrawingListUnderStickyHeader = paramBoolean;
    this.mList.setTopClippingLength(0);
  }
  
  public void setEmptyView(View paramView)
  {
    this.mList.setEmptyView(paramView);
  }
  
  public void setFastScrollEnabled(boolean paramBoolean)
  {
    this.mList.setFastScrollEnabled(paramBoolean);
  }
  
  public void setIndexScrollEnabled(boolean paramBoolean)
  {
    this.mList.setIndexScrollEnabled(paramBoolean);
  }
  
  @TargetApi(11)
  public void setItemChecked(int paramInt, boolean paramBoolean)
  {
    requireSdkVersion(11);
    this.mList.setItemChecked(paramInt, paramBoolean);
  }
  
  public void setOnHeaderClickListener(StickyListHeadersListView.OnHeaderClickListener paramOnHeaderClickListener)
  {
    this.mOnHeaderClickListener = paramOnHeaderClickListener;
    if (this.mAdapter != null)
    {
      if (this.mOnHeaderClickListener != null) {
        this.mAdapter.setOnHeaderClickListener(new StickyListHeadersListView.AdapterWrapperHeaderClickHandler(this, null));
      }
    }
    else {
      return;
    }
    this.mAdapter.setOnHeaderClickListener(null);
  }
  
  public void setOnItemClickListener(AdapterView.OnItemClickListener paramOnItemClickListener)
  {
    this.mList.setOnItemClickListener(paramOnItemClickListener);
  }
  
  public void setOnScrollListener(AbsListView.OnScrollListener paramOnScrollListener)
  {
    this.mOnScrollListenerDelegate = paramOnScrollListener;
  }
  
  public void setOnStickyHeaderChangedListener(StickyListHeadersListView.OnStickyHeaderChangedListener paramOnStickyHeaderChangedListener)
  {
    this.mOnStickyHeaderChangedListener = paramOnStickyHeaderChangedListener;
  }
  
  public void setPadding(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.mPaddingLeft = paramInt1;
    this.mPaddingTop = paramInt2;
    this.mPaddingRight = paramInt3;
    this.mPaddingBottom = paramInt4;
    super.setPadding(paramInt1, 0, paramInt3, 0);
    if (this.mList != null) {
      this.mList.setPadding(0, paramInt2, 0, paramInt4);
    }
  }
  
  public void setSelection(int paramInt)
  {
    this.mList.setSelection(paramInt);
  }
  
  public void setSelectionAfterHeaderView()
  {
    this.mList.setSelectionAfterHeaderView();
  }
  
  public void setSelectionFromTop(int paramInt1, int paramInt2)
  {
    this.mList.setSelectionFromTop(paramInt1, paramInt2);
  }
  
  public void setSelector(int paramInt)
  {
    this.mList.setSelector(paramInt);
  }
  
  public void setSelector(Drawable paramDrawable)
  {
    this.mList.setSelector(paramDrawable);
  }
  
  @TargetApi(8)
  public void smoothScrollBy(int paramInt1, int paramInt2)
  {
    requireSdkVersion(8);
    this.mList.smoothScrollBy(paramInt1, paramInt2);
  }
  
  @TargetApi(11)
  public void smoothScrollByOffset(int paramInt)
  {
    requireSdkVersion(11);
    this.mList.smoothScrollByOffset(paramInt);
  }
  
  @TargetApi(11)
  public void smoothScrollToPosition(int paramInt)
  {
    if (Build.VERSION.SDK_INT < 11)
    {
      this.mList.smoothScrollToPosition(paramInt);
      return;
    }
    if (this.mAdapter == null) {}
    for (int i = 0;; i = getHeaderOverlap(paramInt))
    {
      this.mList.smoothScrollToPositionFromTop(paramInt, i);
      return;
    }
  }
  
  @TargetApi(8)
  public void smoothScrollToPosition(int paramInt1, int paramInt2)
  {
    requireSdkVersion(8);
    this.mList.smoothScrollToPosition(paramInt1, paramInt2);
  }
  
  @TargetApi(11)
  public void smoothScrollToPositionFromTop(int paramInt1, int paramInt2)
  {
    requireSdkVersion(11);
    if (this.mAdapter == null) {}
    for (int i = 0;; i = getHeaderOverlap(paramInt1))
    {
      this.mList.smoothScrollToPositionFromTop(paramInt1, i + paramInt2);
      return;
    }
  }
  
  @TargetApi(11)
  public void smoothScrollToPositionFromTop(int paramInt1, int paramInt2, int paramInt3)
  {
    requireSdkVersion(11);
    if (this.mAdapter == null) {}
    for (int i = 0;; i = getHeaderOverlap(paramInt1))
    {
      this.mList.smoothScrollToPositionFromTop(paramInt1, i + paramInt2, paramInt3);
      return;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\emilsjolander\components\stickylistheaders\StickyListHeadersListView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
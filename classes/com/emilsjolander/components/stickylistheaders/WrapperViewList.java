package com.emilsjolander.components.stickylistheaders;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.os.Build.VERSION;
import android.view.GestureDetector;
import android.view.GestureDetector.SimpleOnGestureListener;
import android.view.MotionEvent;
import android.view.View;
import android.widget.AbsListView;
import android.widget.ListAdapter;
import android.widget.ListView;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.List;

class WrapperViewList
  extends ListView
{
  private boolean mClippingToPadding = true;
  private List<View> mFooterViews;
  private GestureDetector mGestureDetector = null;
  private boolean mIsIndexScrollEnabled = false;
  private WrapperViewList.LifeCycleListener mLifeCycleListener;
  private IndexScroller mScroller = null;
  private Field mSelectorPositionField;
  private Rect mSelectorRect = new Rect();
  private int mTopClippingLength;
  private GestureDetector.SimpleOnGestureListener onGestureListener = new GestureDetector.SimpleOnGestureListener()
  {
    public boolean onFling(MotionEvent paramAnonymousMotionEvent1, MotionEvent paramAnonymousMotionEvent2, float paramAnonymousFloat1, float paramAnonymousFloat2)
    {
      if ((WrapperViewList.this.mIsIndexScrollEnabled) && (WrapperViewList.this.mScroller != null)) {
        WrapperViewList.this.mScroller.show();
      }
      return super.onFling(paramAnonymousMotionEvent1, paramAnonymousMotionEvent2, paramAnonymousFloat1, paramAnonymousFloat2);
    }
  };
  
  public WrapperViewList(Context paramContext)
  {
    super(paramContext);
    try
    {
      paramContext = AbsListView.class.getDeclaredField("mSelectorRect");
      paramContext.setAccessible(true);
      this.mSelectorRect = ((Rect)paramContext.get(this));
      if (Build.VERSION.SDK_INT >= 14)
      {
        this.mSelectorPositionField = AbsListView.class.getDeclaredField("mSelectorPosition");
        this.mSelectorPositionField.setAccessible(true);
      }
      return;
    }
    catch (NoSuchFieldException paramContext)
    {
      paramContext.printStackTrace();
      return;
    }
    catch (IllegalArgumentException paramContext)
    {
      paramContext.printStackTrace();
      return;
    }
    catch (IllegalAccessException paramContext)
    {
      paramContext.printStackTrace();
    }
  }
  
  private int getSelectorPosition()
  {
    int i;
    if (this.mSelectorPositionField == null)
    {
      i = 0;
      while (i < getChildCount())
      {
        if (getChildAt(i).getBottom() == this.mSelectorRect.bottom) {
          return i + getFixedFirstVisibleItem();
        }
        i += 1;
      }
    }
    try
    {
      i = this.mSelectorPositionField.getInt(this);
      return i;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      localIllegalArgumentException.printStackTrace();
      return -1;
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      for (;;)
      {
        localIllegalAccessException.printStackTrace();
      }
    }
  }
  
  private void positionSelectorRect()
  {
    if (!this.mSelectorRect.isEmpty())
    {
      int i = getSelectorPosition();
      if (i >= 0)
      {
        Object localObject = getChildAt(i - getFixedFirstVisibleItem());
        if ((localObject instanceof WrapperView))
        {
          localObject = (WrapperView)localObject;
          Rect localRect = this.mSelectorRect;
          i = ((WrapperView)localObject).getTop();
          localRect.top = (((WrapperView)localObject).mItemTop + i);
        }
      }
    }
  }
  
  public void addFooterView(View paramView)
  {
    super.addFooterView(paramView);
    if (this.mFooterViews == null) {
      this.mFooterViews = new ArrayList();
    }
    this.mFooterViews.add(paramView);
  }
  
  boolean containsFooterView(View paramView)
  {
    if (this.mFooterViews == null) {
      return false;
    }
    return this.mFooterViews.contains(paramView);
  }
  
  protected void dispatchDraw(Canvas paramCanvas)
  {
    positionSelectorRect();
    if (this.mTopClippingLength != 0)
    {
      paramCanvas.save();
      Rect localRect = paramCanvas.getClipBounds();
      localRect.top = this.mTopClippingLength;
      paramCanvas.clipRect(localRect);
      super.dispatchDraw(paramCanvas);
      paramCanvas.restore();
    }
    for (;;)
    {
      this.mLifeCycleListener.onDispatchDrawOccurred(paramCanvas);
      return;
      super.dispatchDraw(paramCanvas);
    }
  }
  
  public void draw(Canvas paramCanvas)
  {
    super.draw(paramCanvas);
    if (this.mScroller != null) {
      this.mScroller.draw(paramCanvas);
    }
  }
  
  int getFixedFirstVisibleItem()
  {
    int j = getFirstVisiblePosition();
    if (Build.VERSION.SDK_INT >= 11) {
      return j;
    }
    int i = 0;
    if (i < getChildCount()) {
      if (getChildAt(i).getBottom() >= 0) {
        i += j;
      }
    }
    for (;;)
    {
      j = i;
      if (!this.mClippingToPadding)
      {
        j = i;
        if (getPaddingTop() > 0)
        {
          j = i;
          if (i > 0)
          {
            j = i;
            if (getChildAt(0).getTop() > 0) {
              j = i - 1;
            }
          }
        }
      }
      return j;
      i += 1;
      break;
      i = j;
    }
  }
  
  boolean isIndexScrollEnabled()
  {
    return this.mIsIndexScrollEnabled;
  }
  
  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    if (this.mScroller != null) {
      this.mScroller.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    }
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    if (this.mIsIndexScrollEnabled)
    {
      if ((this.mScroller != null) && (this.mScroller.onTouchEvent(paramMotionEvent))) {
        return true;
      }
      if (this.mGestureDetector == null) {
        this.mGestureDetector = new GestureDetector(getContext(), this.onGestureListener);
      }
      this.mGestureDetector.onTouchEvent(paramMotionEvent);
    }
    return super.onTouchEvent(paramMotionEvent);
  }
  
  public boolean performItemClick(View paramView, int paramInt, long paramLong)
  {
    View localView = paramView;
    if ((paramView instanceof WrapperView)) {
      localView = ((WrapperView)paramView).mItem;
    }
    return super.performItemClick(localView, paramInt, paramLong);
  }
  
  public boolean removeFooterView(View paramView)
  {
    if (super.removeFooterView(paramView))
    {
      this.mFooterViews.remove(paramView);
      return true;
    }
    return false;
  }
  
  public void setAdapter(ListAdapter paramListAdapter)
  {
    super.setAdapter(paramListAdapter);
    if (this.mScroller != null) {
      this.mScroller.setAdapter(paramListAdapter);
    }
  }
  
  public void setClipToPadding(boolean paramBoolean)
  {
    this.mClippingToPadding = paramBoolean;
    super.setClipToPadding(paramBoolean);
  }
  
  void setIndexScrollEnabled(boolean paramBoolean)
  {
    this.mIsIndexScrollEnabled = paramBoolean;
    if (this.mIsIndexScrollEnabled) {
      if (this.mScroller == null) {
        this.mScroller = new IndexScroller(getContext(), this);
      }
    }
    while (this.mScroller == null) {
      return;
    }
    this.mScroller.hide();
  }
  
  void setLifeCycleListener(WrapperViewList.LifeCycleListener paramLifeCycleListener)
  {
    this.mLifeCycleListener = paramLifeCycleListener;
  }
  
  void setTopClippingLength(int paramInt)
  {
    this.mTopClippingLength = paramInt;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\emilsjolander\components\stickylistheaders\WrapperViewList.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
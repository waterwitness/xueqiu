package com.xueqiu.android.common.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.widget.Scroller;
import com.xueqiu.android.base.util.v;

public class MyScrollLayout
  extends ViewGroup
{
  private VelocityTracker a;
  private Scroller b;
  private int c = this.d;
  private int d = 0;
  private float e;
  private boolean f = true;
  private int g = ViewConfiguration.get(getContext()).getScaledTouchSlop();
  private int h = 0;
  private Context i;
  private s j;
  
  public MyScrollLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    this.b = new Scroller(paramContext);
    this.i = paramContext;
  }
  
  private void a(int paramInt)
  {
    paramInt = Math.max(0, Math.min(paramInt, getChildCount() - 1));
    if (getScrollX() != getWidth() * paramInt)
    {
      int k = getWidth() * paramInt - getScrollX();
      this.b.startScroll(getScrollX(), 0, k, 0, Math.abs(k) * 2);
      this.c = paramInt;
      invalidate();
    }
  }
  
  public void computeScroll()
  {
    if (this.b.computeScrollOffset())
    {
      scrollTo(this.b.getCurrX(), this.b.getCurrY());
      postInvalidate();
    }
  }
  
  public int getCurScreen()
  {
    return this.c;
  }
  
  public int getIndicatorLayoutCount()
  {
    if (this.f) {
      return getChildCount() - 1;
    }
    return getChildCount();
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    int k = paramMotionEvent.getAction();
    if ((k == 2) && (this.h != 0))
    {
      v.c("", "onInterceptTouchEvent  return true");
      return true;
    }
    float f1 = paramMotionEvent.getX();
    paramMotionEvent.getY();
    switch (k)
    {
    }
    for (;;)
    {
      if (this.h != 0) {
        Log.i("", "mTouchState != TOUCH_STATE_REST  return true");
      }
      if (this.h != 0) {
        break;
      }
      return false;
      if ((int)Math.abs(this.e - f1) > this.g)
      {
        this.h = 1;
        continue;
        this.e = f1;
        if (this.b.isFinished()) {}
        for (k = 0;; k = 1)
        {
          this.h = k;
          break;
        }
        this.h = 0;
      }
    }
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (paramBoolean)
    {
      paramInt4 = getChildCount();
      paramInt1 = 0;
      for (paramInt2 = 0; paramInt1 < paramInt4; paramInt2 = paramInt3)
      {
        View localView = getChildAt(paramInt1);
        paramInt3 = paramInt2;
        if (localView.getVisibility() != 8)
        {
          paramInt3 = localView.getMeasuredWidth();
          localView.layout(paramInt2, 0, paramInt2 + paramInt3, localView.getMeasuredHeight());
          paramInt3 = paramInt2 + paramInt3;
        }
        paramInt1 += 1;
      }
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    int m = View.MeasureSpec.getSize(paramInt1);
    View.MeasureSpec.getMode(paramInt1);
    int n = getChildCount();
    int k = 0;
    while (k < n)
    {
      getChildAt(k).measure(paramInt1, paramInt2);
      k += 1;
    }
    v.a("ScrollLayout", "moving to screen " + this.c);
    scrollTo(this.c * m, 0);
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    int k = paramMotionEvent.getAction();
    float f1 = paramMotionEvent.getX();
    paramMotionEvent.getY();
    switch (k)
    {
    default: 
      return true;
    case 0: 
      v.c("ScrollLayout", "onTouchEvent  ACTION_DOWN");
      if (this.a == null)
      {
        this.a = VelocityTracker.obtain();
        this.a.addMovement(paramMotionEvent);
      }
      if (!this.b.isFinished()) {
        this.b.abortAnimation();
      }
      this.e = f1;
      Log.i("ScrollLayout", "onTouchEvent  ACTION_DOWN mLastMotionX=" + this.e);
      return true;
    case 2: 
      int m = (int)(this.e - f1);
      if ((getScrollX() <= 0) && (m < 0)) {
        k = 0;
      }
      while (k != 0)
      {
        if (this.a != null) {
          this.a.addMovement(paramMotionEvent);
        }
        this.e = f1;
        scrollBy(m, 0);
        return true;
        if ((getScrollX() >= (getChildCount() - 1) * getWidth()) && (m > 0)) {
          k = 0;
        } else {
          k = 1;
        }
      }
    case 1: 
      if (this.a != null)
      {
        this.a.addMovement(paramMotionEvent);
        this.a.computeCurrentVelocity(1000);
      }
      break;
    }
    for (k = (int)this.a.getXVelocity();; k = 0)
    {
      if ((k > 200) && (this.c > 0))
      {
        v.a("ScrollLayout", "snap left");
        a(this.c - 1);
      }
      for (;;)
      {
        if (this.a != null)
        {
          this.a.recycle();
          this.a = null;
        }
        this.h = 0;
        return true;
        if ((k < 65336) && (this.c < getChildCount() - 1))
        {
          v.a("ScrollLayout", "snap right");
          if (this.c == getChildCount() - 2)
          {
            if (this.f)
            {
              if (this.j == null) {}
            }
            else {
              a(this.c + 1);
            }
          }
          else {
            a(this.c + 1);
          }
        }
        else
        {
          k = getWidth();
          a((getScrollX() + k / 2) / k);
        }
      }
      this.h = 0;
      return true;
    }
  }
  
  public void setIsNotifyScrollFinished(boolean paramBoolean)
  {
    this.f = paramBoolean;
  }
  
  public void setOnScrollPageChangeListener(s params)
  {
    this.j = params;
  }
  
  public void setToScreen(int paramInt)
  {
    paramInt = Math.max(0, Math.min(paramInt, getChildCount() - 1));
    this.c = paramInt;
    scrollTo(paramInt * getWidth(), 0);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\widget\MyScrollLayout.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
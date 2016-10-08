package com.xueqiu.android.common.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.support.v4.view.ViewPager;
import android.util.AttributeSet;
import android.view.MotionEvent;

public class SwitchSwipeEnableViewPager
  extends ViewPager
{
  private boolean b = true;
  
  public SwitchSwipeEnableViewPager(Context paramContext)
  {
    super(paramContext);
  }
  
  public SwitchSwipeEnableViewPager(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    try
    {
      if (this.b)
      {
        boolean bool3 = super.onInterceptTouchEvent(paramMotionEvent);
        bool1 = bool2;
        if (bool3) {
          bool1 = true;
        }
      }
      return bool1;
    }
    catch (Exception paramMotionEvent) {}
    return false;
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    try
    {
      if (this.b)
      {
        boolean bool3 = super.onTouchEvent(paramMotionEvent);
        bool1 = bool2;
        if (bool3) {
          bool1 = true;
        }
      }
      return bool1;
    }
    catch (Exception paramMotionEvent) {}
    return false;
  }
  
  public void setSwipeEnable(boolean paramBoolean)
  {
    this.b = paramBoolean;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\widget\SwitchSwipeEnableViewPager.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
package com.xueqiu.android.common.widget;

import android.content.Context;
import android.graphics.Point;
import android.support.v4.view.ViewPager;
import android.support.v4.view.cp;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.FrameLayout;

public class PagerContainer
  extends FrameLayout
  implements cp
{
  boolean a = false;
  private ViewPager b;
  private Point c = new Point();
  private Point d = new Point();
  
  public PagerContainer(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    setClipChildren(false);
    setLayerType(1, null);
  }
  
  public final void a(int paramInt1, float paramFloat, int paramInt2)
  {
    if (this.a) {
      invalidate();
    }
  }
  
  public final void b(int paramInt)
  {
    if (paramInt != 0) {}
    for (boolean bool = true;; bool = false)
    {
      this.a = bool;
      return;
    }
  }
  
  public final void b_(int paramInt) {}
  
  public ViewPager getViewPager()
  {
    return this.b;
  }
  
  protected void onFinishInflate()
  {
    try
    {
      this.b = ((ViewPager)getChildAt(0));
      this.b.setOnPageChangeListener(this);
      return;
    }
    catch (Exception localException)
    {
      throw new IllegalStateException("The root child of PagerContainer must be a ViewPager");
    }
  }
  
  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.c.x = (paramInt1 / 2);
    this.c.y = (paramInt2 / 2);
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    switch (paramMotionEvent.getAction())
    {
    }
    for (;;)
    {
      paramMotionEvent.offsetLocation(this.c.x - this.d.x, this.c.y - this.d.y);
      return this.b.dispatchTouchEvent(paramMotionEvent);
      this.d.x = ((int)paramMotionEvent.getX());
      this.d.y = ((int)paramMotionEvent.getY());
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\widget\PagerContainer.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
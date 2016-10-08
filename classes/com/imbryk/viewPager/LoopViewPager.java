package com.imbryk.viewPager;

import android.content.Context;
import android.support.v4.view.ViewPager;
import android.support.v4.view.bd;
import android.support.v4.view.cp;
import android.util.AttributeSet;
import android.view.MotionEvent;

public class LoopViewPager
  extends ViewPager
{
  cp b;
  private a c;
  private boolean d = false;
  private boolean e = true;
  private cp f = new cp()
  {
    private float b = -1.0F;
    private float c = -1.0F;
    
    public final void a(int paramAnonymousInt1, float paramAnonymousFloat, int paramAnonymousInt2)
    {
      int i = paramAnonymousInt1;
      if (LoopViewPager.a(LoopViewPager.this) != null)
      {
        i = LoopViewPager.a(LoopViewPager.this).a(paramAnonymousInt1);
        if ((paramAnonymousFloat == 0.0F) && (this.b == 0.0F) && ((paramAnonymousInt1 == 0) || (paramAnonymousInt1 == LoopViewPager.a(LoopViewPager.this).b() - 1))) {
          LoopViewPager.this.a(i, false);
        }
      }
      this.b = paramAnonymousFloat;
      if (LoopViewPager.this.b != null)
      {
        if (i != LoopViewPager.a(LoopViewPager.this).b.b() - 1) {
          LoopViewPager.this.b.a(i, paramAnonymousFloat, paramAnonymousInt2);
        }
      }
      else {
        return;
      }
      if (paramAnonymousFloat > 0.5D)
      {
        LoopViewPager.this.b.a(0, 0.0F, 0);
        return;
      }
      LoopViewPager.this.b.a(i, 0.0F, 0);
    }
    
    public final void b(int paramAnonymousInt)
    {
      if (LoopViewPager.a(LoopViewPager.this) != null)
      {
        int i = LoopViewPager.b(LoopViewPager.this);
        int j = LoopViewPager.a(LoopViewPager.this).a(i);
        if ((paramAnonymousInt == 0) && ((i == 0) || (i == LoopViewPager.a(LoopViewPager.this).b() - 1))) {
          LoopViewPager.this.a(j, false);
        }
      }
      if (LoopViewPager.this.b != null) {
        LoopViewPager.this.b.b(paramAnonymousInt);
      }
    }
    
    public final void b_(int paramAnonymousInt)
    {
      paramAnonymousInt = LoopViewPager.a(LoopViewPager.this).a(paramAnonymousInt);
      if (this.c != paramAnonymousInt)
      {
        this.c = paramAnonymousInt;
        if (LoopViewPager.this.b != null) {
          LoopViewPager.this.b.b_(paramAnonymousInt);
        }
      }
    }
  };
  
  public LoopViewPager(Context paramContext)
  {
    super(paramContext);
    g();
  }
  
  public LoopViewPager(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    g();
  }
  
  private void g()
  {
    super.setOnPageChangeListener(this.f);
  }
  
  public final void a(int paramInt, boolean paramBoolean)
  {
    super.a(paramInt + 1, paramBoolean);
  }
  
  public bd getAdapter()
  {
    if (this.c != null) {
      return this.c.b;
    }
    return this.c;
  }
  
  public int getCurrentItem()
  {
    if (this.c != null) {
      return this.c.a(super.getCurrentItem());
    }
    return 0;
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    if (!this.e) {
      return false;
    }
    return super.onInterceptTouchEvent(paramMotionEvent);
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    if (!this.e) {
      return false;
    }
    return super.onTouchEvent(paramMotionEvent);
  }
  
  public void setAdapter(bd parambd)
  {
    this.c = new a(parambd);
    this.c.c = this.d;
    super.setAdapter(this.c);
    a(0, false);
  }
  
  public void setBoundaryCaching(boolean paramBoolean)
  {
    this.d = paramBoolean;
    if (this.c != null) {
      this.c.c = paramBoolean;
    }
  }
  
  public void setCurrentItem(int paramInt)
  {
    if (getCurrentItem() != paramInt) {
      a(paramInt, true);
    }
  }
  
  public void setOnPageChangeListener(cp paramcp)
  {
    this.b = paramcp;
  }
  
  public void setSwipeEnable(boolean paramBoolean)
  {
    this.e = paramBoolean;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\imbryk\viewPager\LoopViewPager.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
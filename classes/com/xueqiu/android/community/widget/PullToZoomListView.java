package com.xueqiu.android.community.widget;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.view.WindowManager;
import android.view.animation.Interpolator;
import android.widget.AbsListView;
import android.widget.AbsListView.LayoutParams;
import android.widget.AbsListView.OnScrollListener;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import android.widget.ListView;
import com.xueqiu.android.community.TopicDetailActivity;

public class PullToZoomListView
  extends ListView
  implements AbsListView.OnScrollListener
{
  private static final Interpolator e = new Interpolator()
  {
    public final float getInterpolation(float paramAnonymousFloat)
    {
      paramAnonymousFloat -= 1.0F;
      return paramAnonymousFloat * (paramAnonymousFloat * paramAnonymousFloat * paramAnonymousFloat * paramAnonymousFloat) + 1.0F;
    }
  };
  int a = -1;
  float b = -1.0F;
  float c = -1.0F;
  float d = -1.0F;
  private FrameLayout f;
  private int g;
  private ImageView h;
  private AbsListView.OnScrollListener i;
  private a j;
  private int k;
  private int l;
  private Context m;
  private boolean n = true;
  
  public PullToZoomListView(Context paramContext)
  {
    super(paramContext);
    this.m = paramContext;
    a(paramContext);
  }
  
  public PullToZoomListView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    this.m = paramContext;
    a(paramContext);
  }
  
  private void a(int paramInt1, int paramInt2)
  {
    ViewGroup.LayoutParams localLayoutParams = this.f.getLayoutParams();
    Object localObject = localLayoutParams;
    if (localLayoutParams == null) {
      localObject = new AbsListView.LayoutParams(paramInt1, paramInt2);
    }
    ((ViewGroup.LayoutParams)localObject).width = paramInt1;
    ((ViewGroup.LayoutParams)localObject).height = paramInt2;
    this.f.setLayoutParams((ViewGroup.LayoutParams)localObject);
    this.g = paramInt2;
  }
  
  private void a(Context paramContext)
  {
    DisplayMetrics localDisplayMetrics = new DisplayMetrics();
    ((Activity)paramContext).getWindowManager().getDefaultDisplay().getMetrics(localDisplayMetrics);
    this.k = localDisplayMetrics.heightPixels;
    this.f = new FrameLayout(paramContext);
    this.h = new ImageView(paramContext);
    this.l = localDisplayMetrics.widthPixels;
    a(this.l, (int)(19.0F * (this.l / 30.0F)));
    this.f.addView(this.h);
    addHeaderView(this.f, null, false);
    this.j = new a(this);
    super.setOnScrollListener(this);
  }
  
  public final ImageView a(Bitmap paramBitmap)
  {
    a(this.l, this.l * paramBitmap.getHeight() / paramBitmap.getWidth());
    this.h.setScaleType(ImageView.ScaleType.CENTER_CROP);
    this.h.setImageBitmap(paramBitmap);
    return this.h;
  }
  
  public final void a(View paramView)
  {
    this.f.addView(paramView);
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    if (this.g == 0) {
      this.g = this.f.getHeight();
    }
  }
  
  public void onScroll(AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3)
  {
    float f1 = this.g - this.f.getBottom();
    if ((f1 >= 0.0F) && (f1 < this.g))
    {
      int i1 = (int)(f1 * 1.0D);
      this.h.scrollTo(0, -i1);
    }
    for (;;)
    {
      if (this.i != null) {
        this.i.onScroll(paramAbsListView, paramInt1, paramInt2, paramInt3);
      }
      return;
      if (this.h.getScrollY() != 0) {
        this.h.scrollTo(0, 0);
      }
    }
  }
  
  public void onScrollStateChanged(AbsListView paramAbsListView, int paramInt)
  {
    if (this.i != null) {
      this.i.onScrollStateChanged(paramAbsListView, paramInt);
    }
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    switch (paramMotionEvent.getAction() & 0xFF)
    {
    }
    for (;;)
    {
      return super.onTouchEvent(paramMotionEvent);
      if (!this.j.b) {
        this.j.b = true;
      }
      this.b = paramMotionEvent.getY();
      this.a = paramMotionEvent.getPointerId(0);
      this.d = (this.k / this.g);
      this.c = (this.f.getBottom() / this.g);
      continue;
      int i1 = paramMotionEvent.findPointerIndex(this.a);
      if (i1 != -1)
      {
        if (this.b == -1.0F) {
          this.b = paramMotionEvent.getY(i1);
        }
        Object localObject;
        if (this.f.getBottom() >= this.g)
        {
          localObject = this.f.getLayoutParams();
          float f1 = ((paramMotionEvent.getY(i1) - this.b + this.f.getBottom()) / this.g - this.c) / 2.0F + this.c;
          if ((this.c <= 1.0D) && (f1 < this.c))
          {
            ((ViewGroup.LayoutParams)localObject).height = this.g;
            this.f.setLayoutParams((ViewGroup.LayoutParams)localObject);
            this.n = true;
            return super.onTouchEvent(paramMotionEvent);
          }
          this.c = Math.min(Math.max(f1, 1.0F), this.d);
          ((ViewGroup.LayoutParams)localObject).height = ((int)(this.g * this.c));
          if (((ViewGroup.LayoutParams)localObject).height < this.k)
          {
            this.f.setLayoutParams((ViewGroup.LayoutParams)localObject);
            this.n = false;
          }
          if (this.f.getBottom() - this.g < 10) {
            this.n = true;
          }
          this.b = paramMotionEvent.getY(i1);
          return true;
        }
        this.b = paramMotionEvent.getY(i1);
        continue;
        this.a = -1;
        this.b = -1.0F;
        this.d = -1.0F;
        this.c = -1.0F;
        if (this.f.getBottom() >= this.g)
        {
          localObject = this.j;
          ((a)localObject).d = SystemClock.currentThreadTimeMillis();
          ((a)localObject).a = 200L;
          ((a)localObject).c = (((a)localObject).e.f.getBottom() / ((a)localObject).e.g);
          ((a)localObject).b = false;
          ((a)localObject).e.post((Runnable)localObject);
        }
        if ((this.m instanceof TopicDetailActivity))
        {
          ((TopicDetailActivity)this.m).p = this.n;
          this.n = true;
          continue;
          i1 = paramMotionEvent.getActionIndex();
          this.b = paramMotionEvent.getY(i1);
          this.a = paramMotionEvent.getPointerId(i1);
          continue;
          i1 = paramMotionEvent.getAction() >> 8;
          if ((paramMotionEvent.getPointerId(i1) == this.a) && (i1 != 0))
          {
            this.b = paramMotionEvent.getY(0);
            this.a = paramMotionEvent.getPointerId(0);
          }
          try
          {
            this.b = paramMotionEvent.getY(paramMotionEvent.findPointerIndex(this.a));
          }
          catch (IllegalArgumentException localIllegalArgumentException) {}
        }
      }
    }
  }
  
  public void setOnScrollListener(AbsListView.OnScrollListener paramOnScrollListener)
  {
    this.i = paramOnScrollListener;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\community\widget\PullToZoomListView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
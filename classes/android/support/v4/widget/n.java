package android.support.v4.widget;

import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;

final class n
  extends as
{
  final int a;
  ar b;
  private final Runnable d = new Runnable()
  {
    public final void run()
    {
      int k = 0;
      Object localObject2 = n.this;
      int m = ((n)localObject2).b.i;
      int i;
      Object localObject1;
      int j;
      if (((n)localObject2).a == 3)
      {
        i = 1;
        if (i == 0) {
          break label220;
        }
        localObject1 = ((n)localObject2).c.a(3);
        if (localObject1 == null) {
          break label214;
        }
        j = -((View)localObject1).getWidth();
        label53:
        j += m;
      }
      for (;;)
      {
        label60:
        if ((localObject1 != null) && (((i != 0) && (((View)localObject1).getLeft() < j)) || ((i == 0) && (((View)localObject1).getLeft() > j) && (((n)localObject2).c.a((View)localObject1) == 0))))
        {
          l locall = (l)((View)localObject1).getLayoutParams();
          ((n)localObject2).b.a((View)localObject1, j, ((View)localObject1).getTop());
          locall.c = true;
          ((n)localObject2).c.invalidate();
          ((n)localObject2).b();
          localObject1 = ((n)localObject2).c;
          if (!((DrawerLayout)localObject1).d)
          {
            long l = SystemClock.uptimeMillis();
            localObject2 = MotionEvent.obtain(l, l, 3, 0.0F, 0.0F, 0);
            j = ((DrawerLayout)localObject1).getChildCount();
            i = k;
            for (;;)
            {
              if (i < j)
              {
                ((DrawerLayout)localObject1).getChildAt(i).dispatchTouchEvent((MotionEvent)localObject2);
                i += 1;
                continue;
                i = 0;
                break;
                label214:
                j = 0;
                break label53;
                label220:
                localObject1 = ((n)localObject2).c.a(5);
                j = ((n)localObject2).c.getWidth();
                j -= m;
                break label60;
              }
            }
            ((MotionEvent)localObject2).recycle();
            ((DrawerLayout)localObject1).d = true;
          }
        }
      }
    }
  };
  
  public n(DrawerLayout paramDrawerLayout, int paramInt)
  {
    this.a = paramInt;
  }
  
  public final void a()
  {
    this.c.removeCallbacks(this.d);
  }
  
  public final void a(int paramInt)
  {
    DrawerLayout localDrawerLayout = this.c;
    View localView = this.b.k;
    int i = localDrawerLayout.a.a;
    int j = localDrawerLayout.b.a;
    l locall;
    if ((i == 1) || (j == 1))
    {
      i = 1;
      if ((localView != null) && (paramInt == 0))
      {
        locall = (l)localView.getLayoutParams();
        if (locall.b != 0.0F) {
          break label164;
        }
        locall = (l)localView.getLayoutParams();
        if (locall.d)
        {
          locall.d = false;
          localDrawerLayout.a(localView, false);
          if (localDrawerLayout.hasWindowFocus())
          {
            localView = localDrawerLayout.getRootView();
            if (localView != null) {
              localView.sendAccessibilityEvent(32);
            }
          }
        }
      }
    }
    for (;;)
    {
      if (i != localDrawerLayout.c) {
        localDrawerLayout.c = i;
      }
      return;
      if ((i == 2) || (j == 2))
      {
        i = 2;
        break;
      }
      i = 0;
      break;
      label164:
      if (locall.b == 1.0F)
      {
        locall = (l)localView.getLayoutParams();
        if (!locall.d)
        {
          locall.d = true;
          localDrawerLayout.a(localView, true);
          if (localDrawerLayout.hasWindowFocus()) {
            localDrawerLayout.sendAccessibilityEvent(32);
          }
          localView.requestFocus();
        }
      }
    }
  }
  
  public final void a(int paramInt1, int paramInt2)
  {
    if ((paramInt1 & 0x1) == 1) {}
    for (View localView = this.c.a(3);; localView = this.c.a(5))
    {
      if ((localView != null) && (this.c.a(localView) == 0)) {
        this.b.a(localView, paramInt2);
      }
      return;
    }
  }
  
  public final void a(View paramView, float paramFloat)
  {
    float f = DrawerLayout.b(paramView);
    int k = paramView.getWidth();
    int i;
    if (this.c.a(paramView, 3)) {
      if ((paramFloat > 0.0F) || ((paramFloat == 0.0F) && (f > 0.5F))) {
        i = 0;
      }
    }
    for (;;)
    {
      this.b.a(i, paramView.getTop());
      this.c.invalidate();
      return;
      i = -k;
      continue;
      int j = this.c.getWidth();
      if (paramFloat >= 0.0F)
      {
        i = j;
        if (paramFloat == 0.0F)
        {
          i = j;
          if (f <= 0.5F) {}
        }
      }
      else
      {
        i = j - k;
      }
    }
  }
  
  public final void a(View paramView, int paramInt)
  {
    int i = paramView.getWidth();
    float f;
    if (this.c.a(paramView, 3))
    {
      f = (i + paramInt) / i;
      DrawerLayout.a(paramView, f);
      if (f != 0.0F) {
        break label72;
      }
    }
    label72:
    for (paramInt = 4;; paramInt = 0)
    {
      paramView.setVisibility(paramInt);
      this.c.invalidate();
      return;
      f = (this.c.getWidth() - paramInt) / i;
      break;
    }
  }
  
  public final boolean a(View paramView)
  {
    return (DrawerLayout.d(paramView)) && (this.c.a(paramView, this.a)) && (this.c.a(paramView) == 0);
  }
  
  public final int b(View paramView, int paramInt)
  {
    if (this.c.a(paramView, 3)) {
      return Math.max(-paramView.getWidth(), Math.min(paramInt, 0));
    }
    int i = this.c.getWidth();
    return Math.max(i - paramView.getWidth(), Math.min(paramInt, i));
  }
  
  final void b()
  {
    int i = 3;
    if (this.a == 3) {
      i = 5;
    }
    View localView = this.c.a(i);
    if (localView != null) {
      this.c.e(localView);
    }
  }
  
  public final void b(View paramView)
  {
    ((l)paramView.getLayoutParams()).c = false;
    b();
  }
  
  public final int c(View paramView)
  {
    if (DrawerLayout.d(paramView)) {
      return paramView.getWidth();
    }
    return 0;
  }
  
  public final void c()
  {
    this.c.postDelayed(this.d, 160L);
  }
  
  public final int d(View paramView)
  {
    return paramView.getTop();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v4\widget\n.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
package com.xueqiu.android.view.wheel;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.view.GestureDetector;
import android.view.GestureDetector.SimpleOnGestureListener;
import android.view.MotionEvent;
import android.widget.Scroller;

public final class c
{
  d a;
  Context b;
  GestureDetector c = new GestureDetector(paramContext, this.i);
  Scroller d;
  int e;
  float f;
  boolean g;
  Handler h = new Handler()
  {
    public final void handleMessage(Message paramAnonymousMessage)
    {
      c.this.d.computeScrollOffset();
      int i = c.this.d.getCurrY();
      int j = c.this.e - i;
      c.this.e = i;
      if (j != 0) {
        c.this.a.a(j);
      }
      if (Math.abs(i - c.this.d.getFinalY()) <= 0)
      {
        c.this.d.getFinalY();
        c.this.d.forceFinished(true);
      }
      if (!c.this.d.isFinished()) {
        c.this.h.sendEmptyMessage(paramAnonymousMessage.what);
      }
      do
      {
        return;
        if (paramAnonymousMessage.what == 0)
        {
          c.this.c();
          return;
        }
        paramAnonymousMessage = c.this;
      } while (!paramAnonymousMessage.g);
      paramAnonymousMessage.a.b();
      paramAnonymousMessage.g = false;
    }
  };
  private GestureDetector.SimpleOnGestureListener i = new GestureDetector.SimpleOnGestureListener()
  {
    public final boolean onFling(MotionEvent paramAnonymousMotionEvent1, MotionEvent paramAnonymousMotionEvent2, float paramAnonymousFloat1, float paramAnonymousFloat2)
    {
      c.this.e = 0;
      c.this.d.fling(0, c.this.e, 0, (int)-paramAnonymousFloat2, 0, 0, -2147483647, Integer.MAX_VALUE);
      c.this.a(0);
      return true;
    }
    
    public final boolean onScroll(MotionEvent paramAnonymousMotionEvent1, MotionEvent paramAnonymousMotionEvent2, float paramAnonymousFloat1, float paramAnonymousFloat2)
    {
      return true;
    }
  };
  private final int j = 0;
  private final int k = 1;
  
  public c(Context paramContext, d paramd)
  {
    this.c.setIsLongpressEnabled(false);
    this.d = new Scroller(paramContext);
    this.a = paramd;
    this.b = paramContext;
  }
  
  public final void a()
  {
    this.d.forceFinished(true);
  }
  
  final void a(int paramInt)
  {
    b();
    this.h.sendEmptyMessage(paramInt);
  }
  
  final void b()
  {
    this.h.removeMessages(0);
    this.h.removeMessages(1);
  }
  
  final void c()
  {
    this.a.c();
    a(1);
  }
  
  final void d()
  {
    if (!this.g)
    {
      this.g = true;
      this.a.a();
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\view\wheel\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
package com.xueqiu.android.stockchart.view;

import android.content.Context;
import android.graphics.Canvas;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import android.view.View.OnTouchListener;
import android.widget.LinearLayout;
import com.xueqiu.android.stockchart.a.c;
import com.xueqiu.android.stockchart.a.d;

public class EventView
  extends BaseView
{
  public LinearLayout b;
  private c c;
  private com.xueqiu.android.stockchart.a.a d;
  private d e;
  private View.OnTouchListener f;
  private String g;
  private float h;
  private float i;
  private String j;
  private float k;
  private float l;
  private float m;
  private float n;
  private boolean o = false;
  private boolean p = false;
  private boolean q = false;
  private ScaleGestureDetector r;
  private float s = 1.0F;
  private Handler t = new Handler()
  {
    public final void handleMessage(Message paramAnonymousMessage)
    {
      switch (paramAnonymousMessage.what)
      {
      }
      for (;;)
      {
        super.handleMessage(paramAnonymousMessage);
        return;
        EventView.a(EventView.this);
        EventView.b(EventView.this);
        if (EventView.c(EventView.this) != null) {
          EventView.c(EventView.this).a(EventView.d(EventView.this), EventView.e(EventView.this));
        }
        EventView.this.invalidate();
      }
    }
  };
  
  public EventView(Context paramContext)
  {
    super(paramContext);
    this.r = new ScaleGestureDetector(paramContext, new a(this, (byte)0));
  }
  
  public EventView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  public float getChartStartX()
  {
    return this.h;
  }
  
  public String getChartType()
  {
    return this.g;
  }
  
  public float getChartWidth()
  {
    return this.i;
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    this.r.onTouchEvent(paramMotionEvent);
    switch (paramMotionEvent.getAction() & 0xFF)
    {
    case 4: 
    case 5: 
    default: 
      return true;
    case 0: 
      if (this.b != null) {
        this.b.requestDisallowInterceptTouchEvent(true);
      }
      this.k = paramMotionEvent.getX();
      this.l = paramMotionEvent.getY();
      this.m = this.k;
      this.n = this.l;
      this.q = false;
      this.p = true;
      if (this.d != null) {
        this.d.d(this.k, this.l);
      }
      this.t.sendEmptyMessageDelayed(1000, 200L);
      return true;
    case 1: 
    case 3: 
    case 6: 
      if ((Math.abs(this.k - this.m) < 30.0F) && (Math.abs(this.l - this.n) < 30.0F)) {
        this.p = false;
      }
      if (this.b != null) {
        this.b.requestDisallowInterceptTouchEvent(false);
      }
      this.t.removeMessages(1000);
      if ((this.p) && (this.d != null)) {
        this.d.f(paramMotionEvent.getX(), paramMotionEvent.getY());
      }
      if (this.o) {
        if (this.c != null) {
          this.c.c(paramMotionEvent.getX(), paramMotionEvent.getY());
        }
      }
      for (;;)
      {
        this.p = false;
        this.o = false;
        invalidate();
        this.k = paramMotionEvent.getX();
        this.l = paramMotionEvent.getY();
        return true;
        if ((!this.p) && (this.f != null)) {
          this.f.onTouch(this, paramMotionEvent);
        }
      }
    }
    if (this.b != null) {
      this.b.requestDisallowInterceptTouchEvent(true);
    }
    this.m = paramMotionEvent.getX();
    this.n = paramMotionEvent.getY();
    if (paramMotionEvent.getPointerCount() > 1) {
      this.p = false;
    }
    if ((!this.q) && (Math.abs(this.m - this.k) > 10.0F))
    {
      this.t.removeMessages(1000);
      this.q = true;
    }
    if ((this.o) && (this.c != null)) {
      this.c.b(this.m, this.n);
    }
    if ((this.p) && (this.d != null)) {
      this.d.e(this.m, this.n);
    }
    invalidate();
    return true;
  }
  
  public void setChartStartX(float paramFloat)
  {
    this.h = paramFloat;
  }
  
  public void setChartType(String paramString)
  {
    this.g = paramString;
  }
  
  public void setChartWidth(float paramFloat)
  {
    this.i = paramFloat;
  }
  
  public void setOnDragEventListener(com.xueqiu.android.stockchart.a.a parama)
  {
    this.d = parama;
  }
  
  public void setOnPressListener(c paramc)
  {
    this.c = paramc;
  }
  
  public void setOnScaleEventListener(d paramd)
  {
    this.e = paramd;
  }
  
  public void setOnTouchListener(View.OnTouchListener paramOnTouchListener)
  {
    this.f = paramOnTouchListener;
  }
  
  public void setType(String paramString)
  {
    this.j = paramString;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\stockchart\view\EventView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
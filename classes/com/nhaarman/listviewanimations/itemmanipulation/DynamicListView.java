package com.nhaarman.listviewanimations.itemmanipulation;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View.OnTouchListener;
import android.widget.AbsListView.OnScrollListener;
import android.widget.BaseAdapter;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.nhaarman.listviewanimations.a.c;
import com.nhaarman.listviewanimations.itemmanipulation.b.f;
import com.nhaarman.listviewanimations.itemmanipulation.dragdrop.k;
import com.nhaarman.listviewanimations.itemmanipulation.dragdrop.m;
import com.nhaarman.listviewanimations.itemmanipulation.dragdrop.n;
import java.util.Collection;

public class DynamicListView
  extends ListView
{
  @Nullable
  public com.nhaarman.listviewanimations.itemmanipulation.dragdrop.a a;
  @Nullable
  public f b;
  @Nullable
  public com.nhaarman.listviewanimations.itemmanipulation.a.a<Object> c;
  @NonNull
  private final a d = new a(this, (byte)0);
  @Nullable
  private b e;
  @Nullable
  private com.nhaarman.listviewanimations.itemmanipulation.b.a.a f;
  
  public DynamicListView(@NonNull Context paramContext, @Nullable AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, Resources.getSystem().getIdentifier("listViewStyle", "attr", "android"));
  }
  
  public DynamicListView(@NonNull Context paramContext, @Nullable AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    super.setOnScrollListener(this.d);
  }
  
  private static void a(@Nullable b paramb, @NonNull MotionEvent paramMotionEvent)
  {
    if (paramb != null)
    {
      paramMotionEvent = MotionEvent.obtain(paramMotionEvent);
      paramMotionEvent.setAction(3);
      paramb.a(paramMotionEvent);
    }
  }
  
  public int computeVerticalScrollExtent()
  {
    return super.computeVerticalScrollExtent();
  }
  
  public int computeVerticalScrollOffset()
  {
    return super.computeVerticalScrollOffset();
  }
  
  public int computeVerticalScrollRange()
  {
    return super.computeVerticalScrollRange();
  }
  
  protected void dispatchDraw(@NonNull Canvas paramCanvas)
  {
    super.dispatchDraw(paramCanvas);
    if (this.a != null)
    {
      com.nhaarman.listviewanimations.itemmanipulation.dragdrop.a locala = this.a;
      if (locala.b != null) {
        locala.b.draw(paramCanvas);
      }
    }
  }
  
  public boolean dispatchTouchEvent(@NonNull MotionEvent paramMotionEvent)
  {
    boolean bool3 = false;
    int i;
    boolean bool2;
    if (this.e == null) {
      if ((this.b instanceof com.nhaarman.listviewanimations.itemmanipulation.b.a.b))
      {
        if (!((com.nhaarman.listviewanimations.itemmanipulation.b.a.b)this.b).i.isEmpty())
        {
          i = 1;
          if (i != 0) {
            break label237;
          }
        }
      }
      else
      {
        if (this.a == null) {
          break label237;
        }
        this.a.a(paramMotionEvent);
        if (this.a.c == -1L) {
          break label225;
        }
        bool2 = true;
        label77:
        bool1 = bool2;
        if (bool2)
        {
          this.e = this.a;
          a(this.b, paramMotionEvent);
        }
      }
    }
    label225:
    label237:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      bool2 = bool1;
      if (this.e == null)
      {
        bool2 = bool1;
        if (this.b != null)
        {
          this.b.onTouch(null, paramMotionEvent);
          bool1 = this.b.d;
          bool2 = bool1;
          if (bool1)
          {
            this.e = this.b;
            a(this.a, paramMotionEvent);
            bool2 = bool1;
          }
        }
      }
      if (bool2)
      {
        MotionEvent localMotionEvent = MotionEvent.obtain(paramMotionEvent);
        localMotionEvent.setAction(3);
        super.onTouchEvent(localMotionEvent);
      }
      if (!bool2)
      {
        bool1 = bool3;
        if (!super.dispatchTouchEvent(paramMotionEvent)) {}
      }
      else
      {
        bool1 = true;
      }
      return bool1;
      i = 0;
      break;
      bool2 = false;
      break label77;
      return onTouchEvent(paramMotionEvent);
    }
  }
  
  public void fling(int paramInt)
  {
    if (this.b != null) {
      this.b.a(paramInt);
    }
  }
  
  public boolean onTouchEvent(@NonNull MotionEvent paramMotionEvent)
  {
    if (this.e != null) {
      this.e.a(paramMotionEvent);
    }
    if ((paramMotionEvent.getActionMasked() == 1) || (paramMotionEvent.getActionMasked() == 3)) {
      this.e = null;
    }
    return (this.e != null) || (super.onTouchEvent(paramMotionEvent));
  }
  
  public void setAdapter(ListAdapter paramListAdapter)
  {
    this.f = null;
    if ((paramListAdapter instanceof BaseAdapter))
    {
      for (localObject = (BaseAdapter)paramListAdapter; (localObject instanceof com.nhaarman.listviewanimations.b); localObject = ((com.nhaarman.listviewanimations.b)localObject).a) {
        if ((localObject instanceof com.nhaarman.listviewanimations.itemmanipulation.b.a.a)) {
          this.f = ((com.nhaarman.listviewanimations.itemmanipulation.b.a.a)localObject);
        }
      }
      if ((localObject instanceof c))
      {
        this.c = new com.nhaarman.listviewanimations.itemmanipulation.a.a((BaseAdapter)paramListAdapter);
        this.c.a(new com.nhaarman.listviewanimations.a.a(this));
      }
    }
    for (Object localObject = this.c;; localObject = paramListAdapter)
    {
      super.setAdapter((ListAdapter)localObject);
      if (this.a != null) {
        this.a.a(paramListAdapter);
      }
      return;
    }
  }
  
  public void setDismissableManager(@Nullable com.nhaarman.listviewanimations.itemmanipulation.b.a parama)
  {
    if (this.b != null) {
      this.b.g = parama;
    }
  }
  
  public void setDraggableManager(@NonNull k paramk)
  {
    if (this.a != null) {
      this.a.d = paramk;
    }
  }
  
  public void setMinimumAlpha(float paramFloat)
  {
    if (this.b != null) {
      this.b.c = paramFloat;
    }
  }
  
  public void setOnItemMovedListener(@Nullable n paramn)
  {
    if (this.a != null) {
      this.a.e = paramn;
    }
  }
  
  public void setOnScrollListener(AbsListView.OnScrollListener paramOnScrollListener)
  {
    this.d.a.add(paramOnScrollListener);
  }
  
  public void setOnTouchListener(View.OnTouchListener paramOnTouchListener)
  {
    if ((paramOnTouchListener instanceof f)) {
      return;
    }
    super.setOnTouchListener(paramOnTouchListener);
  }
  
  public void setScrollSpeed(float paramFloat)
  {
    if (this.a != null) {
      this.a.a.a = paramFloat;
    }
  }
  
  public void setSwipeTouchChild(int paramInt)
  {
    if (this.b != null)
    {
      f localf = this.b;
      localf.f = paramInt;
      localf.e = false;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\nhaarman\listviewanimations\itemmanipulation\DynamicListView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
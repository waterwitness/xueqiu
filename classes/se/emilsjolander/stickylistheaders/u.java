package se.emilsjolander.stickylistheaders;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.os.Build.VERSION;
import android.view.View;
import android.widget.AbsListView;
import android.widget.ListView;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.List;

final class u
  extends ListView
{
  v a;
  List<View> b;
  int c;
  boolean d = false;
  private Rect e = new Rect();
  private Field f;
  private boolean g = true;
  
  public u(Context paramContext)
  {
    super(paramContext);
    try
    {
      paramContext = AbsListView.class.getDeclaredField("mSelectorRect");
      paramContext.setAccessible(true);
      this.e = ((Rect)paramContext.get(this));
      if (Build.VERSION.SDK_INT >= 14)
      {
        this.f = AbsListView.class.getDeclaredField("mSelectorPosition");
        this.f.setAccessible(true);
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
  
  private void a(View paramView)
  {
    if (this.b == null) {
      this.b = new ArrayList();
    }
    this.b.add(paramView);
  }
  
  private int b()
  {
    int i;
    if (this.f == null)
    {
      i = 0;
      while (i < getChildCount())
      {
        if (getChildAt(i).getBottom() == this.e.bottom) {
          return i + a();
        }
        i += 1;
      }
    }
    try
    {
      i = this.f.getInt(this);
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
  
  final int a()
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
      if (!this.g)
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
  
  public final void addFooterView(View paramView)
  {
    super.addFooterView(paramView);
    a(paramView);
  }
  
  public final void addFooterView(View paramView, Object paramObject, boolean paramBoolean)
  {
    super.addFooterView(paramView, paramObject, paramBoolean);
    a(paramView);
  }
  
  protected final void dispatchDraw(Canvas paramCanvas)
  {
    Object localObject;
    if (!this.e.isEmpty())
    {
      int i = b();
      if (i >= 0)
      {
        localObject = getChildAt(i - a());
        if ((localObject instanceof t))
        {
          localObject = (t)localObject;
          Rect localRect = this.e;
          i = ((t)localObject).getTop();
          localRect.top = (((t)localObject).e + i);
        }
      }
    }
    if (this.c != 0)
    {
      paramCanvas.save();
      localObject = paramCanvas.getClipBounds();
      ((Rect)localObject).top = this.c;
      paramCanvas.clipRect((Rect)localObject);
      super.dispatchDraw(paramCanvas);
      paramCanvas.restore();
    }
    for (;;)
    {
      this.a.a(paramCanvas);
      return;
      super.dispatchDraw(paramCanvas);
    }
  }
  
  protected final void layoutChildren()
  {
    if (!this.d) {
      super.layoutChildren();
    }
  }
  
  public final boolean performItemClick(View paramView, int paramInt, long paramLong)
  {
    View localView = paramView;
    if ((paramView instanceof t)) {
      localView = ((t)paramView).a;
    }
    return super.performItemClick(localView, paramInt, paramLong);
  }
  
  public final boolean removeFooterView(View paramView)
  {
    if (super.removeFooterView(paramView))
    {
      this.b.remove(paramView);
      return true;
    }
    return false;
  }
  
  public final void setClipToPadding(boolean paramBoolean)
  {
    this.g = paramBoolean;
    super.setClipToPadding(paramBoolean);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\se\emilsjolander\stickylistheaders\u.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
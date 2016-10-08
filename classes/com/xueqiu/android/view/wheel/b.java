package com.xueqiu.android.view.wheel;

import android.view.View;
import android.widget.LinearLayout;
import com.xueqiu.android.view.wheel.a.c;
import java.util.LinkedList;
import java.util.List;

public final class b
{
  List<View> a;
  List<View> b;
  private WheelView c;
  
  public b(WheelView paramWheelView)
  {
    this.c = paramWheelView;
  }
  
  static View a(List<View> paramList)
  {
    if ((paramList != null) && (paramList.size() > 0))
    {
      View localView = (View)paramList.get(0);
      paramList.remove(0);
      return localView;
    }
    return null;
  }
  
  private static List<View> a(View paramView, List<View> paramList)
  {
    Object localObject = paramList;
    if (paramList == null) {
      localObject = new LinkedList();
    }
    ((List)localObject).add(paramView);
    return (List<View>)localObject;
  }
  
  public final int a(LinearLayout paramLinearLayout, int paramInt, a parama)
  {
    int j = 0;
    int i = paramInt;
    if (j >= paramLinearLayout.getChildCount()) {
      return i;
    }
    int k;
    label37:
    View localView;
    label97:
    int m;
    if ((paramInt >= parama.a) && (paramInt <= parama.a()))
    {
      k = 1;
      if (k != 0) {
        break label163;
      }
      localView = paramLinearLayout.getChildAt(j);
      k = this.c.getViewAdapter().a();
      if (((paramInt >= 0) && (paramInt < k)) || (this.c.a)) {
        break label147;
      }
      this.b = a(localView, this.b);
      paramLinearLayout.removeViewAt(j);
      k = j;
      m = i;
      if (j == 0)
      {
        m = i + 1;
        k = j;
      }
    }
    for (;;)
    {
      paramInt += 1;
      j = k;
      i = m;
      break;
      k = 0;
      break label37;
      label147:
      this.a = a(localView, this.a);
      break label97;
      label163:
      k = j + 1;
      m = i;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\view\wheel\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
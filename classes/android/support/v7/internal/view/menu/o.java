package android.support.v7.internal.view.menu;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import java.util.ArrayList;

public final class o
  extends BaseAdapter
{
  private int b = -1;
  
  public o(n paramn)
  {
    a();
  }
  
  private void a()
  {
    t localt = this.a.c.k;
    if (localt != null)
    {
      ArrayList localArrayList = this.a.c.i();
      int j = localArrayList.size();
      int i = 0;
      while (i < j)
      {
        if ((t)localArrayList.get(i) == localt)
        {
          this.b = i;
          return;
        }
        i += 1;
      }
    }
    this.b = -1;
  }
  
  public final t a(int paramInt)
  {
    ArrayList localArrayList = this.a.c.i();
    int i = n.a(this.a) + paramInt;
    paramInt = i;
    if (this.b >= 0)
    {
      paramInt = i;
      if (i >= this.b) {
        paramInt = i + 1;
      }
    }
    return (t)localArrayList.get(paramInt);
  }
  
  public final int getCount()
  {
    int i = this.a.c.i().size() - n.a(this.a);
    if (this.b < 0) {
      return i;
    }
    return i - 1;
  }
  
  public final long getItemId(int paramInt)
  {
    return paramInt;
  }
  
  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (paramView == null) {
      paramView = this.a.b.inflate(this.a.f, paramViewGroup, false);
    }
    for (;;)
    {
      ((ag)paramView).a(a(paramInt));
      return paramView;
    }
  }
  
  public final void notifyDataSetChanged()
  {
    a();
    super.notifyDataSetChanged();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v7\internal\view\menu\o.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
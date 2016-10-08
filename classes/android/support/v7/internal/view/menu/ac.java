package android.support.v7.internal.view.menu;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import java.util.ArrayList;

final class ac
  extends BaseAdapter
{
  private p b;
  private int c = -1;
  
  public ac(ab paramab, p paramp)
  {
    this.b = paramp;
    a();
  }
  
  private void a()
  {
    t localt = ab.c(this.a).k;
    if (localt != null)
    {
      ArrayList localArrayList = ab.c(this.a).i();
      int j = localArrayList.size();
      int i = 0;
      while (i < j)
      {
        if ((t)localArrayList.get(i) == localt)
        {
          this.c = i;
          return;
        }
        i += 1;
      }
    }
    this.c = -1;
  }
  
  public final t a(int paramInt)
  {
    if (ab.a(this.a)) {}
    for (ArrayList localArrayList = this.b.i();; localArrayList = this.b.g())
    {
      int i = paramInt;
      if (this.c >= 0)
      {
        i = paramInt;
        if (paramInt >= this.c) {
          i = paramInt + 1;
        }
      }
      return (t)localArrayList.get(i);
    }
  }
  
  public final int getCount()
  {
    if (ab.a(this.a)) {}
    for (ArrayList localArrayList = this.b.i(); this.c < 0; localArrayList = this.b.g()) {
      return localArrayList.size();
    }
    return localArrayList.size() - 1;
  }
  
  public final long getItemId(int paramInt)
  {
    return paramInt;
  }
  
  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (paramView == null) {
      paramView = ab.b(this.a).inflate(ab.b, paramViewGroup, false);
    }
    for (;;)
    {
      paramViewGroup = (ag)paramView;
      if (this.a.d) {
        ((ListMenuItemView)paramView).setForceShowIcon(true);
      }
      paramViewGroup.a(a(paramInt));
      return paramView;
    }
  }
  
  public final void notifyDataSetChanged()
  {
    a();
    super.notifyDataSetChanged();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v7\internal\view\menu\ac.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
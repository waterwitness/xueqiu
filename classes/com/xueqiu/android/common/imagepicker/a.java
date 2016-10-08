package com.xueqiu.android.common.imagepicker;

import android.content.Context;
import android.graphics.Bitmap.Config;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.d.a.b.d;
import com.d.a.b.f;
import com.xueqiu.android.base.util.n;
import com.xueqiu.android.base.util.o;
import java.util.List;

public final class a
  extends BaseAdapter
{
  List<c> a;
  private Context b;
  private int c;
  private int[] d;
  private f e;
  private d f;
  private LayoutInflater g;
  
  public a(Context paramContext, f paramf, int[] paramArrayOfInt)
  {
    this.b = paramContext;
    this.e = paramf;
    this.d = paramArrayOfInt;
    paramContext = n.a();
    paramContext.m = true;
    paramContext.b = 2130837726;
    paramContext.c = 2130837726;
    paramContext.a = 2130837726;
    paramContext = paramContext.a(Bitmap.Config.RGB_565);
    paramContext.j = com.d.a.b.a.e.e;
    this.f = paramContext.b();
    this.g = LayoutInflater.from(this.b);
    this.c = 2130903247;
  }
  
  public final void a(List<c> paramList)
  {
    try
    {
      this.a = paramList;
      notifyDataSetChanged();
      return;
    }
    finally
    {
      paramList = finally;
      throw paramList;
    }
  }
  
  public final int getCount()
  {
    if (this.a != null) {
      return this.a.size();
    }
    return 0;
  }
  
  public final Object getItem(int paramInt)
  {
    if (this.a != null) {
      return (c)this.a.get(paramInt);
    }
    return null;
  }
  
  public final long getItemId(int paramInt)
  {
    if (this.a != null) {
      return this.a.get(paramInt).hashCode();
    }
    return 0L;
  }
  
  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    View localView = paramView;
    if (paramView == null)
    {
      localView = this.g.inflate(this.c, paramViewGroup, false);
      paramView = new b(this, (byte)0);
      paramView.a = ((ImageView)localView.findViewById(this.d[0]));
      paramView.b = ((TextView)localView.findViewById(this.d[1]));
      paramView.c = ((TextView)localView.findViewById(this.d[2]));
      localView.setTag(paramView);
    }
    paramView = (c)this.a.get(paramInt);
    paramViewGroup = (b)localView.getTag();
    this.e.a(paramView.d, paramViewGroup.a, this.f, new o());
    paramViewGroup.b.setText(paramView.e);
    paramViewGroup.c.setText(paramView.f);
    return localView;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\imagepicker\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
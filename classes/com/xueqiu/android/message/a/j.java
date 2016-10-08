package com.xueqiu.android.message.a;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView.LayoutParams;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import com.xueqiu.android.base.util.ad;

public final class j
  extends BaseAdapter
{
  private Context a;
  private Drawable[] b = null;
  
  public j(Context paramContext)
  {
    this.a = paramContext;
    this.b = ad.b(this.a);
  }
  
  public final int getCount()
  {
    return this.b.length;
  }
  
  public final Object getItem(int paramInt)
  {
    return null;
  }
  
  public final long getItemId(int paramInt)
  {
    return 0L;
  }
  
  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (paramView == null)
    {
      paramView = new ImageView(this.a);
      int i = this.a.getResources().getDimensionPixelOffset(2131230801);
      paramView.setLayoutParams(new AbsListView.LayoutParams(-1, this.a.getResources().getDimensionPixelOffset(2131230800)));
      paramView.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
      paramView.setPadding(0, i, 0, i);
    }
    for (;;)
    {
      paramView.setImageDrawable(this.b[paramInt]);
      return paramView;
      paramView = (ImageView)paramView;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\message\a\j.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
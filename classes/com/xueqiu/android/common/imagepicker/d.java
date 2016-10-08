package com.xueqiu.android.common.imagepicker;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap.Config;
import android.util.TypedValue;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.BaseAdapter;
import android.widget.CheckBox;
import android.widget.ImageView;
import com.xueqiu.android.base.util.n;
import java.util.ArrayList;
import java.util.List;

public final class d
  extends BaseAdapter
{
  List<c> a;
  List<c> b;
  e c;
  int d = 9;
  private Context e;
  private int f;
  private int[] g;
  private LayoutInflater h;
  private com.d.a.b.f i;
  private com.d.a.b.d j;
  private com.d.a.b.a.f k;
  
  public d(Context paramContext, com.d.a.b.f paramf, int[] paramArrayOfInt)
  {
    this.e = paramContext;
    this.i = paramf;
    this.f = 2130903248;
    this.g = paramArrayOfInt;
    this.h = LayoutInflater.from(this.e);
    this.b = new ArrayList();
    paramContext = n.a();
    paramContext.m = true;
    paramContext.b = 2130837726;
    paramContext.c = 2130837726;
    paramContext.a = 2130837726;
    paramContext = paramContext.a(Bitmap.Config.RGB_565);
    paramContext.j = com.d.a.b.a.e.e;
    this.j = paramContext.b();
    paramContext = this.e.getResources().getDisplayMetrics();
    int m = (int)((((WindowManager)this.e.getSystemService("window")).getDefaultDisplay().getWidth() - TypedValue.applyDimension(1, 1.0F, paramContext) * 4.0F) / 3.0F);
    this.k = new com.d.a.b.a.f(m, m);
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
  
  public final View getView(int paramInt, final View paramView, final ViewGroup paramViewGroup)
  {
    View localView = paramView;
    if (paramView == null)
    {
      localView = this.h.inflate(this.f, paramViewGroup, false);
      paramView = new f(this, (byte)0);
      paramView.a = ((ImageView)localView.findViewById(this.g[0]));
      paramView.b = ((CheckBox)localView.findViewById(this.g[1]));
      localView.setTag(paramView);
      paramView.a.getLayoutParams().width = this.k.a;
      paramView.a.getLayoutParams().height = this.k.b;
    }
    paramView = (f)localView.getTag();
    paramViewGroup = (c)this.a.get(paramInt);
    this.i.a(paramViewGroup.d, paramView.a, this.j);
    paramView.b.setChecked(this.b.contains(paramViewGroup));
    paramView.a.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        if (d.a(d.this).contains(paramViewGroup))
        {
          paramView.b.setChecked(false);
          d.a(d.this).remove(paramViewGroup);
        }
        for (;;)
        {
          if (d.c(d.this) != null)
          {
            paramAnonymousView = d.c(d.this);
            paramView.b.isChecked();
            paramAnonymousView.a();
          }
          return;
          if (d.a(d.this).size() < d.b(d.this))
          {
            paramView.b.setChecked(true);
            d.a(d.this).add(paramViewGroup);
          }
          else
          {
            paramView.b.setChecked(false);
            if (d.c(d.this) != null) {
              d.c(d.this).b();
            }
          }
        }
      }
    });
    return localView;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\imagepicker\d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
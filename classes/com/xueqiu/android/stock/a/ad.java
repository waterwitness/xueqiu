package com.xueqiu.android.stock.a;

import android.app.Activity;
import android.app.Dialog;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.android.volley.y;
import com.xueqiu.android.base.b.ai;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.q;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.base.util.as;
import com.xueqiu.android.common.a.d;
import com.xueqiu.android.common.model.RequestResult;
import com.xueqiu.android.stock.model.Stock;

public final class ad
  extends d<Stock>
{
  Activity e;
  Dialog f = null;
  private boolean g = false;
  
  public ad(Activity paramActivity)
  {
    this(paramActivity, (byte)0);
  }
  
  private ad(Activity paramActivity, byte paramByte)
  {
    super(paramActivity, 2130903473);
    this.e = paramActivity;
    this.g = false;
  }
  
  private static void b(ae paramae, Stock paramStock)
  {
    if (paramStock.isHasExist())
    {
      paramae.d.setImageResource(2130837830);
      return;
    }
    paramae.d.setImageResource(2130837829);
  }
  
  protected final void b()
  {
    if ((this.f != null) && (this.f.isShowing()))
    {
      this.f.dismiss();
      this.f = null;
    }
  }
  
  public final View getView(int paramInt, final View paramView, ViewGroup paramViewGroup)
  {
    paramViewGroup = super.getView(paramInt, paramView, paramViewGroup);
    final Stock localStock;
    if (paramViewGroup.getTag() == null)
    {
      paramView = new ae();
      paramView.b = ((TextView)paramViewGroup.findViewById(2131625535));
      paramView.c = ((TextView)paramViewGroup.findViewById(2131625538));
      paramView.d = ((ImageView)paramViewGroup.findViewById(2131624458));
      paramView.a = ((ImageView)paramViewGroup.findViewById(2131625544));
      paramViewGroup.setTag(paramView);
      localStock = (Stock)getItem(paramInt);
      paramView.b.setText(localStock.getName());
      paramView.c.setText(localStock.getCode());
      b(paramView, localStock);
      if (!as.a(Integer.parseInt(localStock.getType()))) {
        break label182;
      }
      paramView.a.setVisibility(0);
      paramView.a.setImageResource(2130838560);
    }
    for (;;)
    {
      paramView.d.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          if (!ad.a(ad.this))
          {
            paramAnonymousView = new p()
            {
              public final void a(y paramAnonymous2y)
              {
                aa.a(paramAnonymous2y);
                ad.this.b();
              }
            };
            if (localStock.isHasExist()) {
              q.a().b().d(localStock.getCode(), paramAnonymousView);
            }
            for (;;)
            {
              paramAnonymousView = ad.this;
              if ((paramAnonymousView.e != null) && (!paramAnonymousView.e.isFinishing())) {
                break;
              }
              return;
              q.a().b().a(localStock.getCode(), 2, paramAnonymousView);
            }
            if (paramAnonymousView.f != null) {
              paramAnonymousView.f.dismiss();
            }
            paramAnonymousView.f = new com.xueqiu.android.common.widget.ae(paramAnonymousView.e);
            paramAnonymousView.f.show();
            return;
          }
          paramAnonymousView = localStock;
          if (!localStock.isHasExist()) {}
          for (boolean bool = true;; bool = false)
          {
            paramAnonymousView.setHasExist(bool);
            ad.this.notifyDataSetChanged();
            return;
          }
        }
      });
      return paramViewGroup;
      paramView = (ae)paramViewGroup.getTag();
      break;
      label182:
      if (as.c(Integer.parseInt(localStock.getType())))
      {
        paramView.a.setVisibility(0);
        paramView.a.setImageResource(2130838562);
      }
      else
      {
        paramView.a.setVisibility(8);
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\stock\a\ad.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
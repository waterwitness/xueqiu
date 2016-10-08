package com.xueqiu.android.trade.a;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.AbsListView.LayoutParams;
import android.widget.ImageView;
import android.widget.TextView;
import com.xueqiu.android.base.r;
import com.xueqiu.android.base.util.ar;
import com.xueqiu.android.base.util.as;
import com.xueqiu.android.base.util.au;
import com.xueqiu.android.base.util.ay;
import com.xueqiu.android.common.a.d;
import com.xueqiu.android.common.widget.v;
import com.xueqiu.android.trade.model.RepoPosition;
import com.xueqiu.android.trade.model.SectionItem;
import com.xueqiu.android.trade.model.TradePosition;
import java.util.ArrayList;

public final class m
  extends d<Object>
  implements v
{
  public ar e = null;
  public int f;
  public n g;
  private final Context h;
  private boolean i = false;
  
  public m(Context paramContext, boolean paramBoolean)
  {
    super(paramContext, 2130903552);
    this.h = paramContext;
    this.e = ar.a();
    this.i = paramBoolean;
  }
  
  private void b()
  {
    int j = 0;
    this.f = 0;
    while (j < a().size())
    {
      if ((getItem(j) instanceof SectionItem)) {
        this.f += 1;
      }
      j += 1;
    }
  }
  
  public final boolean a(int paramInt)
  {
    return paramInt == 1;
  }
  
  public final int getItemViewType(int paramInt)
  {
    if ((getItem(paramInt) instanceof SectionItem)) {
      return 1;
    }
    return 2;
  }
  
  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    Object localObject2;
    TextView localTextView;
    if ((getItem(paramInt) instanceof SectionItem))
    {
      paramInt = ((SectionItem)getItem(paramInt)).getSectionType();
      if (paramInt == 4)
      {
        paramView = LayoutInflater.from(this.c).inflate(2130903551, paramViewGroup, false);
        paramView.findViewById(2131625762).setOnClickListener(new View.OnClickListener()
        {
          public final void onClick(View paramAnonymousView)
          {
            if (m.a(m.this) != null) {
              m.a(m.this).a();
            }
          }
        });
        return paramView;
      }
      if (paramInt != 0)
      {
        paramView = LayoutInflater.from(this.c).inflate(2130903553, paramViewGroup, false);
        paramViewGroup = (TextView)paramView.findViewById(2131625737);
        localObject1 = (TextView)paramView.findViewById(2131625738);
        localObject2 = (TextView)paramView.findViewById(2131625739);
        localTextView = (TextView)paramView.findViewById(2131625740);
        if (paramInt == 2)
        {
          paramViewGroup.setText(2131166403);
          ((TextView)localObject1).setText(2131166404);
          ((TextView)localObject2).setText(2131166397);
          localTextView.setText(2131166398);
          return paramView;
        }
        if (paramInt == 1)
        {
          paramViewGroup.setText(2131166395);
          ((TextView)localObject1).setText(2131166396);
          ((TextView)localObject2).setText(2131166397);
          localTextView.setText(2131166398);
          return paramView;
        }
        if (paramInt == 3)
        {
          paramViewGroup.setText(2131166399);
          ((TextView)localObject1).setText(2131166400);
          ((TextView)localObject2).setText(2131166401);
          localTextView.setText(2131166402);
        }
        return paramView;
      }
      paramView = new View(this.h);
      paramView.setBackgroundColor(r.a(2130771999, this.h.getTheme()));
      paramView.setLayoutParams(new AbsListView.LayoutParams(-1, (int)ay.a(10.0F)));
      return paramView;
    }
    if ((getItem(paramInt) instanceof RepoPosition))
    {
      paramViewGroup = super.getView(paramInt, paramView, paramViewGroup);
      if (paramViewGroup.getTag() == null)
      {
        paramView = new o();
        paramView.a = ((TextView)paramViewGroup.findViewById(2131625666));
        paramView.b = ((TextView)paramViewGroup.findViewById(2131625668));
        paramView.c = ((TextView)paramViewGroup.findViewById(2131625669));
        paramView.d = ((TextView)paramViewGroup.findViewById(2131625670));
        paramView.e = ((TextView)paramViewGroup.findViewById(2131625671));
        paramView.f = ((TextView)paramViewGroup.findViewById(2131625672));
        paramView.g = ((TextView)paramViewGroup.findViewById(2131625673));
        paramView.h = ((TextView)paramViewGroup.findViewById(2131625674));
        paramView.i = ((ImageView)paramViewGroup.findViewById(2131625667));
        paramView.j = paramViewGroup.findViewById(2131624443);
        paramViewGroup.setTag(paramView);
        localObject1 = (RepoPosition)getItem(paramInt);
        paramView.a.setText(((RepoPosition)localObject1).getSname());
        paramView.b.setText(au.b(((RepoPosition)localObject1).getMarketValue()));
        paramView.c.setText(((RepoPosition)localObject1).getEnableDay());
        paramView.d.setText(((RepoPosition)localObject1).getRetrievableDay());
        paramView.e.setText(au.b(((RepoPosition)localObject1).getCostBalance()));
        paramView.f.setText(((RepoPosition)localObject1).getItemRate() + "%");
        if (((RepoPosition)localObject1).getItemIncome() != null)
        {
          paramView.g.setTextColor(this.e.a(Double.parseDouble(((RepoPosition)localObject1).getItemIncome())));
          paramView.g.setText(au.b(((RepoPosition)localObject1).getItemIncome()));
        }
        paramView.h.setVisibility(8);
        paramView = paramView.j;
        if (paramInt != getCount() - 1) {
          break label636;
        }
      }
      label636:
      for (paramInt = 8;; paramInt = 0)
      {
        paramView.setVisibility(paramInt);
        return paramViewGroup;
        paramView = (o)paramViewGroup.getTag();
        break;
      }
    }
    Object localObject1 = super.getView(paramInt, paramView, paramViewGroup);
    if (((View)localObject1).getTag() == null)
    {
      paramView = new o();
      paramView.a = ((TextView)((View)localObject1).findViewById(2131625666));
      paramView.b = ((TextView)((View)localObject1).findViewById(2131625668));
      paramView.c = ((TextView)((View)localObject1).findViewById(2131625669));
      paramView.d = ((TextView)((View)localObject1).findViewById(2131625670));
      paramView.e = ((TextView)((View)localObject1).findViewById(2131625671));
      paramView.f = ((TextView)((View)localObject1).findViewById(2131625672));
      paramView.g = ((TextView)((View)localObject1).findViewById(2131625673));
      paramView.h = ((TextView)((View)localObject1).findViewById(2131625674));
      paramView.i = ((ImageView)((View)localObject1).findViewById(2131625667));
      paramView.j = ((View)localObject1).findViewById(2131624443);
      ((View)localObject1).setTag(paramView);
      localObject2 = (TradePosition)getItem(paramInt);
      if (!this.i) {
        break label1100;
      }
      paramView.b.setText(((TradePosition)localObject2).getSymbol());
      paramView.d.setText(au.b(((TradePosition)localObject2).getMarketValue()));
      paramView.a.setText(((TradePosition)localObject2).getSname());
      if (((TradePosition)localObject2).getCurrentAmount() % 1.0D != 0.0D) {
        break label1160;
      }
      paramViewGroup = String.valueOf(((TradePosition)localObject2).getCurrentAmount());
      label887:
      paramView.c.setText(paramViewGroup);
      paramView.e.setText(String.valueOf(((TradePosition)localObject2).getLastPrice()));
      paramView.f.setText(String.valueOf(((TradePosition)localObject2).getCostPrice()));
      paramView.g.setTextColor(this.e.a(((TradePosition)localObject2).getIncomeBalance()));
      paramView.h.setTextColor(this.e.a(((TradePosition)localObject2).getIncomeRate()));
      double d = ((TradePosition)localObject2).getIncomeRate();
      localTextView = paramView.h;
      if (d <= 0.0D) {
        break label1172;
      }
      paramViewGroup = "+";
      label987:
      localTextView.setText(String.format("%s%.2f%%", new Object[] { paramViewGroup, Double.valueOf(d) }));
      d = ((TradePosition)localObject2).getIncomeBalance();
      paramView.g.setText(au.b(d));
      if (!as.c(((TradePosition)localObject2).getExchange())) {
        break label1179;
      }
      paramView.i.setVisibility(0);
      paramView.i.setImageResource(2130838562);
      label1062:
      paramView = paramView.j;
      if (paramInt != getCount() - 1) {
        break label1223;
      }
    }
    label1100:
    label1160:
    label1172:
    label1179:
    label1223:
    for (paramInt = 8;; paramInt = 0)
    {
      paramView.setVisibility(paramInt);
      return (View)localObject1;
      paramView = (o)((View)localObject1).getTag();
      break;
      paramView.b.setText(au.b(((TradePosition)localObject2).getMarketValue()));
      if (((TradePosition)localObject2).getEnableAmount() % 1.0D == 0.0D) {}
      for (paramViewGroup = String.valueOf(((TradePosition)localObject2).getEnableAmount());; paramViewGroup = String.valueOf(((TradePosition)localObject2).getEnableAmount()))
      {
        paramView.d.setText(paramViewGroup);
        break;
      }
      paramViewGroup = String.valueOf(((TradePosition)localObject2).getCurrentAmount());
      break label887;
      paramViewGroup = "";
      break label987;
      if (as.d(((TradePosition)localObject2).getExchange()))
      {
        paramView.i.setVisibility(0);
        paramView.i.setImageResource(2130838560);
        break label1062;
      }
      paramView.i.setVisibility(8);
      break label1062;
    }
  }
  
  public final void notifyDataSetChanged()
  {
    b();
    super.notifyDataSetChanged();
  }
  
  public final void notifyDataSetInvalidated()
  {
    b();
    super.notifyDataSetInvalidated();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\trade\a\m.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
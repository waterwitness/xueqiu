package com.xueqiu.android.tactic.a;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.xueqiu.android.base.util.ar;
import com.xueqiu.android.base.util.au;
import com.xueqiu.android.tactic.d.b;
import com.xueqiu.android.tactic.d.g;
import java.util.Locale;

public final class d
  extends com.xueqiu.android.common.a.d<b>
{
  public g e;
  private LayoutInflater f;
  
  public d(Context paramContext)
  {
    super(paramContext, 2130903506);
    this.f = LayoutInflater.from(paramContext);
  }
  
  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    View localView = paramView;
    if (paramView == null)
    {
      localView = this.f.inflate(2130903506, paramViewGroup, false);
      paramView = new e(this);
      paramView.a = localView.findViewById(2131625618);
      paramView.b = ((TextView)localView.findViewById(2131625619));
      paramView.c = ((TextView)localView.findViewById(2131625620));
      paramView.d = ((TextView)localView.findViewById(2131625621));
      paramView.e = ((TextView)localView.findViewById(2131625622));
      paramView.f = ((TextView)localView.findViewById(2131625623));
      paramView.g = ((TextView)localView.findViewById(2131625624));
      paramView.h = ((TextView)localView.findViewById(2131625625));
      localView.setTag(paramView);
    }
    paramViewGroup = (b)getItem(paramInt);
    e locale = (e)localView.getTag();
    locale.b.setText(paramViewGroup.name);
    locale.c.setText(paramViewGroup.symbol);
    if (paramViewGroup.isNew)
    {
      locale.d.setVisibility(0);
      if (paramViewGroup.flag != 2) {
        break label404;
      }
      paramView = "停牌";
      label214:
      locale.e.setText(paramView);
      locale.f.setText(String.format(Locale.CHINA, "%.2f", new Object[] { Double.valueOf(paramViewGroup.triggerPrice) }));
      if (paramViewGroup.flag != 2) {
        break label430;
      }
      paramView = "----";
    }
    for (;;)
    {
      locale.g.setText(paramView);
      locale.g.setTextColor(ar.a().a(paramViewGroup.changePercent));
      paramView = paramViewGroup.desc;
      if (paramViewGroup.replyCount > 0) {
        paramView = au.b(paramViewGroup.replyCount + "条评论", paramViewGroup.desc, "#ffb574");
      }
      locale.h.setText(paramView);
      if (paramViewGroup.statusId > 0L) {
        locale.h.setOnClickListener(new e.1(locale, paramViewGroup));
      }
      locale.a.setOnClickListener(new e.2(locale, paramViewGroup));
      return localView;
      locale.d.setVisibility(4);
      break;
      label404:
      paramView = String.format(Locale.CHINA, "%.2f", new Object[] { Double.valueOf(paramViewGroup.current) });
      break label214;
      label430:
      if (paramViewGroup.changePercent == 0.0D) {
        paramView = "0.00%";
      } else {
        paramView = String.format(Locale.CHINA, "%+.2f%%", new Object[] { Double.valueOf(paramViewGroup.changePercent * 100.0D) });
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\tactic\a\d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
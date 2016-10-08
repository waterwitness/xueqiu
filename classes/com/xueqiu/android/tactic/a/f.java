package com.xueqiu.android.tactic.a;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.xueqiu.android.base.util.au;
import com.xueqiu.android.common.a.d;
import com.xueqiu.android.tactic.d.b;

public final class f
  extends d<b>
{
  boolean e = true;
  public long f;
  private LayoutInflater g;
  
  public f(Context paramContext)
  {
    super(paramContext);
    this.g = LayoutInflater.from(paramContext);
  }
  
  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    View localView = paramView;
    if (paramView == null)
    {
      localView = this.g.inflate(2130903514, paramViewGroup, false);
      paramView = new g(this);
      paramView.a = localView.findViewById(2131625618);
      paramView.b = ((TextView)localView.findViewById(2131625619));
      paramView.c = ((TextView)localView.findViewById(2131625620));
      paramView.d = ((TextView)localView.findViewById(2131625623));
      paramView.e = ((TextView)localView.findViewById(2131625625));
      paramView.f = ((TextView)localView.findViewById(2131625633));
      localView.setTag(paramView);
    }
    paramViewGroup = (b)getItem(paramInt);
    g localg = (g)localView.getTag();
    localg.b.setText(paramViewGroup.name);
    localg.c.setText(paramViewGroup.symbol);
    localg.d.setText(String.format("%.2f", new Object[] { Double.valueOf(paramViewGroup.triggerPrice) }));
    paramView = paramViewGroup.desc;
    if (paramViewGroup.replyCount > 0) {
      paramView = au.b(paramViewGroup.replyCount + "条评论", paramViewGroup.desc, "#ffb574");
    }
    localg.e.setText(paramView);
    if (paramViewGroup.statusId > 0L) {
      localg.e.setOnClickListener(new g.1(localg, paramViewGroup));
    }
    localg.e.setText(paramView);
    localg.a.setOnClickListener(new g.2(localg, paramViewGroup));
    if (localg.g.e)
    {
      localg.f.setVisibility(0);
      localg.f.setOnClickListener(new g.3(localg, paramViewGroup));
      return localView;
    }
    localg.f.setVisibility(8);
    return localView;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\tactic\a\f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
package com.xueqiu.android.community.a;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.d.a.b.e;
import com.d.a.b.f;
import com.xueqiu.android.base.util.n;
import com.xueqiu.android.community.model.RewardCash;
import java.util.ArrayList;
import java.util.Locale;

public final class ad
  extends com.xueqiu.android.common.a.d<RewardCash>
{
  private f e = f.a();
  private com.d.a.b.d f = null;
  
  public ad(Context paramContext)
  {
    super(paramContext);
    paramContext = n.a();
    paramContext.c = 2130838664;
    paramContext.b = 2130838664;
    paramContext.a = 2130838664;
    this.f = paramContext.b();
  }
  
  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    View localView = paramView;
    if (paramView == null)
    {
      localView = LayoutInflater.from(this.c).inflate(2130903166, paramViewGroup, false);
      paramView = new ae(this);
      paramView.a = ((ImageView)localView.findViewById(2131624493));
      paramView.b = ((TextView)localView.findViewById(2131624494));
      paramView.c = ((TextView)localView.findViewById(2131624495));
      paramView.d = ((TextView)localView.findViewById(2131624496));
      localView.setTag(paramView);
    }
    paramView = (RewardCash)a().get(paramInt);
    paramViewGroup = (ae)localView.getTag();
    paramViewGroup.e.e.a(paramView.getLargeImageUrl(), paramViewGroup.a, paramViewGroup.e.f);
    paramViewGroup.b.setText(paramView.getName());
    paramViewGroup.c.setText(paramView.getDescription());
    paramViewGroup.d.setText(String.format(Locale.CHINA, "￥%.2f", new Object[] { Float.valueOf(paramView.getAmount() / 100.0F) }));
    return localView;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\community\a\ad.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
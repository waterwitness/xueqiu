package com.xueqiu.android.cube.a;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.preference.PreferenceManager;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.d.a.b.c.c;
import com.d.a.b.e;
import com.d.a.b.f;
import com.xueqiu.android.base.r;
import com.xueqiu.android.base.util.a;
import com.xueqiu.android.base.util.ay;
import com.xueqiu.android.base.util.n;
import com.xueqiu.android.base.util.o;
import com.xueqiu.android.community.model.User;
import com.xueqiu.android.cube.model.Cube;

public final class u
  extends com.xueqiu.android.common.a.d<Cube>
{
  private LayoutInflater e;
  private com.d.a.b.d f;
  private Drawable g = r.h(2130838421);
  private int h = 0;
  private Drawable i = r.h(2130838419);
  private int j = 0;
  private Drawable k = r.h(2130838420);
  
  public u(Context paramContext)
  {
    super(paramContext);
    if (PreferenceManager.getDefaultSharedPreferences(this.c).getString(this.c.getString(2131165678), this.c.getString(2131166576)).equals(this.c.getString(2131166576)))
    {
      this.g = r.h(2130838420);
      this.i = r.h(2130838421);
      this.h = 2130837993;
    }
    for (this.j = 2130837994;; this.j = 2130837992)
    {
      this.k = r.h(2130838419);
      this.e = LayoutInflater.from(paramContext);
      paramContext = n.a();
      paramContext.c = 2130838024;
      paramContext.b = 2130838024;
      paramContext.a = 2130838024;
      paramContext.q = new c((int)ay.a(40.0F));
      this.f = paramContext.b();
      return;
      this.g = r.h(2130838421);
      this.i = r.h(2130838420);
      this.h = 2130837995;
    }
  }
  
  @TargetApi(16)
  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    View localView = paramView;
    if (paramView == null)
    {
      localView = this.e.inflate(2130903300, paramViewGroup, false);
      localView.setTag(new v(this, localView));
    }
    paramViewGroup = (Cube)getItem(paramInt);
    v localv = (v)localView.getTag();
    localv.e.setText(paramViewGroup.getName());
    localv.f.setText(paramViewGroup.getOwner().getScreenName());
    double d = paramViewGroup.getGainOnLevel().doubleValue();
    TextView localTextView;
    if (d > 1000.0D)
    {
      localTextView = localv.g;
      if (d > 0.0D)
      {
        paramView = "+";
        localTextView.setText(String.format("%s%.1f%%", new Object[] { paramView, Double.valueOf(d) }));
        if (Build.VERSION.SDK_INT < 16) {
          break label380;
        }
        if (d <= 0.0D) {
          break label343;
        }
        localv.g.setBackground(this.g);
        label169:
        f.a().a(paramViewGroup.getOwner().getProfileLargeImageUrl(), localv.b, this.f, new o());
        if (paramViewGroup.getRank().intValue() >= 4) {
          break label502;
        }
        localv.a.setVisibility(0);
        localv.d.setVisibility(8);
        if (paramViewGroup.getRank().intValue() != 1) {
          break label439;
        }
        localv.a.setImageResource(2130838018);
      }
    }
    for (;;)
    {
      localv.c.setVisibility(0);
      if (paramViewGroup.getTrend().intValue() != 0) {
        break label576;
      }
      localv.c.setImageResource(2130838073);
      return localView;
      paramView = "";
      break;
      localTextView = localv.g;
      if (d > 0.0D) {}
      for (paramView = "+";; paramView = "")
      {
        localTextView.setText(String.format("%s%.2f%%", new Object[] { paramView, Double.valueOf(d) }));
        break;
      }
      label343:
      if (d < 0.0D)
      {
        localv.g.setBackground(this.i);
        break label169;
      }
      localv.g.setBackground(this.k);
      break label169;
      label380:
      if (d > 0.0D)
      {
        a.a(localv.g, this.g);
        break label169;
      }
      if (d < 0.0D)
      {
        a.a(localv.g, this.i);
        break label169;
      }
      a.a(localv.g, this.k);
      break label169;
      label439:
      if (paramViewGroup.getRank().intValue() == 2) {
        localv.a.setImageResource(2130838019);
      } else if (paramViewGroup.getRank().intValue() == 3) {
        localv.a.setImageResource(2130838017);
      } else {
        localv.a.setVisibility(8);
      }
    }
    label502:
    localv.a.setVisibility(8);
    localv.d.setVisibility(0);
    if (paramViewGroup.getRank().intValue() >= 100) {
      localv.d.setTextSize(12.0F);
    }
    for (;;)
    {
      localv.d.setText(String.valueOf(paramViewGroup.getRank()));
      break;
      localv.d.setTextSize(18.0F);
    }
    label576:
    if (paramViewGroup.getTrend().intValue() == 1)
    {
      localv.c.setImageResource(this.j);
      return localView;
    }
    if (paramViewGroup.getTrend().intValue() == 3)
    {
      localv.c.setImageResource(this.h);
      return localView;
    }
    localv.c.setVisibility(8);
    return localView;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\cube\a\u.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
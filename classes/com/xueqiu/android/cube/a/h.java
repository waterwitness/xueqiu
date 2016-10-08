package com.xueqiu.android.cube.a;

import android.content.Context;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.text.SpannableStringBuilder;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.ForegroundColorSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.xueqiu.android.base.util.a;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.base.util.ay;
import com.xueqiu.android.base.util.f;
import com.xueqiu.android.common.a.d;
import com.xueqiu.android.cube.model.Cube;
import com.xueqiu.android.cube.model.CubeCalGainType;
import com.xueqiu.android.cube.model.Market;
import com.xueqiu.android.cube.model.Style;
import java.util.List;

public final class h
  extends d<Cube>
{
  public i e;
  public boolean f = false;
  private LayoutInflater g;
  private CubeCalGainType h = CubeCalGainType.TOTAL;
  
  public h(Context paramContext)
  {
    super(paramContext);
    this.g = LayoutInflater.from(paramContext);
  }
  
  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    View localView = paramView;
    Object localObject1;
    if (paramView == null)
    {
      localView = this.g.inflate(2130903298, paramViewGroup, false);
      paramView = new j();
      paramViewGroup = this.g;
      localObject1 = this.e;
      paramView.a = localView.findViewById(2131624573);
      paramView.b = ((TextView)localView.findViewById(2131624097));
      paramView.d = ((TextView)localView.findViewById(2131624941));
      paramView.e = ((TextView)localView.findViewById(2131624854));
      paramView.c = ((ImageView)localView.findViewById(2131624427));
      paramView.f = ((TextView)localView.findViewById(2131624945));
      paramView.g = ((LinearLayout)localView.findViewById(2131624892));
      paramView.h = ((TextView)localView.findViewById(2131624942));
      paramView.i = ((i)localObject1);
      paramView.j = paramViewGroup;
      paramView.k = ((RelativeLayout)localView.findViewById(2131624965));
      paramView.l = ((TextView)localView.findViewById(2131624967));
      paramView.m = ((TextView)localView.findViewById(2131624966));
      localView.setTag(paramView);
    }
    paramViewGroup = (Cube)getItem(paramInt);
    paramView = (j)localView.getTag();
    boolean bool;
    int i;
    Object localObject2;
    Object localObject3;
    for (;;)
    {
      try
      {
        localObject1 = this.h;
        bool = this.f;
        paramView.g.removeAllViews();
        if ((paramViewGroup.getStyle() != null) && (paramViewGroup.getClosedAt() == null))
        {
          paramInt = Color.parseColor(paramViewGroup.getStyle().getColor0());
          i = Color.parseColor(paramViewGroup.getStyle().getColor1());
          localObject2 = new ShapeDrawable(new OvalShape());
          ((ShapeDrawable)localObject2).getPaint().setFlags(3);
          ((ShapeDrawable)localObject2).getPaint().setColor(new int[] { paramInt, i }[0]);
          a.a(paramView.a, (Drawable)localObject2);
          if ((paramViewGroup.getTag() == null) || (paramViewGroup.getTag().size() <= 0)) {
            break;
          }
          paramInt = 0;
          if (paramInt >= paramViewGroup.getTag().size()) {
            break;
          }
          localObject2 = (String)paramViewGroup.getTag().get(paramInt);
          localObject3 = new LinearLayout.LayoutParams(-2, -2);
          if (paramInt == 0)
          {
            i = 0;
            ((LinearLayout.LayoutParams)localObject3).setMargins(i, 0, 0, 0);
            LinearLayout localLinearLayout = paramView.g;
            TextView localTextView = (TextView)paramView.j.inflate(2130903319, paramView.g, false);
            localTextView.setText((CharSequence)localObject2);
            localLinearLayout.addView(localTextView, (ViewGroup.LayoutParams)localObject3);
            paramInt += 1;
            continue;
          }
        }
        else
        {
          paramView.a.setBackgroundResource(2130837889);
          continue;
        }
        i = (int)ay.a(paramView.a.getContext(), 5.0F);
      }
      catch (Throwable paramView)
      {
        aa.a(new Exception(paramView));
        return localView;
      }
    }
    label565:
    label583:
    double d;
    if (bool)
    {
      paramView.c.setVisibility(8);
      paramView.k.setOnClickListener(new j.2(paramView, paramViewGroup));
      paramView.b.setText(paramViewGroup.getName());
      if (paramViewGroup.getClosedAt() == null) {
        break label888;
      }
      paramView.l.setVisibility(0);
      if (!f.a(paramViewGroup.getSymbol())) {
        break label900;
      }
      paramView.m.setVisibility(0);
      if (localObject1 != CubeCalGainType.DAILY) {
        break label912;
      }
      d = paramViewGroup.getDailyGain().doubleValue();
      paramInt = 2131165395;
    }
    for (;;)
    {
      localObject1 = paramView.d;
      localObject2 = new SpannableStringBuilder();
      ((SpannableStringBuilder)localObject2).append(String.format("%.2f", new Object[] { Double.valueOf(d) }));
      if (((SpannableStringBuilder)localObject2).length() <= 5) {
        ((SpannableStringBuilder)localObject2).setSpan(new AbsoluteSizeSpan(24, true), 0, ((SpannableStringBuilder)localObject2).length() - 3, 17);
      }
      ((TextView)localObject1).setText((CharSequence)localObject2);
      paramView.e.setText(paramInt);
      localObject1 = paramView.f;
      paramInt = paramViewGroup.getFollowerCount();
      localObject2 = new SpannableStringBuilder();
      localObject3 = new ForegroundColorSpan(Color.parseColor("#666666"));
      i = ((SpannableStringBuilder)localObject2).length();
      ((SpannableStringBuilder)localObject2).append(String.valueOf(paramInt) + "人");
      ((SpannableStringBuilder)localObject2).setSpan(localObject3, i, ((SpannableStringBuilder)localObject2).length(), 17);
      ((SpannableStringBuilder)localObject2).append("关注");
      ((TextView)localObject1).setText((CharSequence)localObject2);
      paramViewGroup = Market.valueOf(paramViewGroup.getMarket().toUpperCase());
      paramView.h.setText(paramViewGroup.description());
      paramView.h.setBackgroundResource(paramViewGroup.bgResId());
      return localView;
      paramView.c.setVisibility(0);
      if (paramViewGroup.isFollowing()) {
        paramView.c.setImageResource(2130837830);
      }
      for (;;)
      {
        paramView.c.setOnClickListener(new j.1(paramView, paramViewGroup));
        break;
        paramView.c.setImageResource(2130837829);
      }
      label888:
      paramView.l.setVisibility(8);
      break label565;
      label900:
      paramView.m.setVisibility(8);
      break label583;
      label912:
      if (localObject1 == CubeCalGainType.MONTHLY)
      {
        d = paramViewGroup.getMonthlyGain().doubleValue();
        paramInt = 2131165415;
      }
      else
      {
        d = paramViewGroup.getTotalGain().doubleValue();
        paramInt = 2131165446;
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\cube\a\h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
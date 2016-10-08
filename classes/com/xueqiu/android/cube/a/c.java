package com.xueqiu.android.cube.a;

import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.ForegroundColorSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.d.a.b.d;
import com.d.a.b.f;
import com.xueqiu.android.base.util.a;
import com.xueqiu.android.base.util.as;
import com.xueqiu.android.base.util.au;
import com.xueqiu.android.base.util.ay;
import com.xueqiu.android.base.util.o;
import com.xueqiu.android.community.model.User;
import com.xueqiu.android.community.model.UserVerifyType;
import com.xueqiu.android.cube.model.Cube;
import com.xueqiu.android.cube.model.CubeCalGainType;
import com.xueqiu.android.cube.model.Market;
import com.xueqiu.android.cube.model.Style;
import java.util.List;

public final class c
{
  View a;
  TextView b;
  ImageView c;
  TextView d;
  TextView e;
  TextView f;
  ImageView g;
  TextView h;
  TextView i;
  ImageView j;
  LinearLayout k;
  RelativeLayout l;
  TextView m;
  b n;
  LayoutInflater o;
  TextView p;
  TextView q;
  d r;
  
  public static CharSequence a(double paramDouble)
  {
    SpannableStringBuilder localSpannableStringBuilder = new SpannableStringBuilder();
    localSpannableStringBuilder.append(String.format("%.2f", new Object[] { Double.valueOf(paramDouble) }));
    if (localSpannableStringBuilder.length() <= 5) {
      localSpannableStringBuilder.setSpan(new AbsoluteSizeSpan(24, true), 0, localSpannableStringBuilder.length() - 3, 17);
    }
    return localSpannableStringBuilder;
  }
  
  public static CharSequence a(String paramString)
  {
    SpannableStringBuilder localSpannableStringBuilder = new SpannableStringBuilder();
    localSpannableStringBuilder.append(" 主理");
    localSpannableStringBuilder.append("  ");
    ForegroundColorSpan localForegroundColorSpan = new ForegroundColorSpan(Color.parseColor("#666666"));
    int i1 = localSpannableStringBuilder.length();
    localSpannableStringBuilder.append(paramString).append("人");
    localSpannableStringBuilder.setSpan(localForegroundColorSpan, i1, localSpannableStringBuilder.length(), 17);
    localSpannableStringBuilder.append(" 关注");
    return localSpannableStringBuilder;
  }
  
  public final c a(View paramView, LayoutInflater paramLayoutInflater, b paramb, d paramd)
  {
    this.a = paramView.findViewById(2131624573);
    this.b = ((TextView)paramView.findViewById(2131624097));
    this.e = ((TextView)paramView.findViewById(2131624941));
    this.f = ((TextView)paramView.findViewById(2131624854));
    this.c = ((ImageView)paramView.findViewById(2131624427));
    this.d = ((TextView)paramView.findViewById(2131624943));
    this.h = ((TextView)paramView.findViewById(2131624944));
    this.g = ((ImageView)paramView.findViewById(2131624912));
    this.i = ((TextView)paramView.findViewById(2131624945));
    this.j = ((ImageView)paramView.findViewById(2131624430));
    this.k = ((LinearLayout)paramView.findViewById(2131624892));
    this.l = ((RelativeLayout)paramView.findViewById(2131624292));
    this.m = ((TextView)paramView.findViewById(2131624942));
    this.p = ((TextView)paramView.findViewById(2131624429));
    this.q = ((TextView)paramView.findViewById(2131624946));
    this.n = paramb;
    this.o = paramLayoutInflater;
    this.r = paramd;
    return this;
  }
  
  public final void a(final Cube paramCube, CubeCalGainType paramCubeCalGainType, boolean paramBoolean1, boolean paramBoolean2)
  {
    this.k.removeAllViews();
    int i1;
    int i2;
    if (paramCube.getStyle() != null)
    {
      i1 = Color.parseColor(paramCube.getStyle().getColor0());
      i2 = Color.parseColor(paramCube.getStyle().getColor1());
      localObject = new ShapeDrawable(new OvalShape());
      ((ShapeDrawable)localObject).getPaint().setFlags(3);
      ((ShapeDrawable)localObject).getPaint().setColor(new int[] { i1, i2 }[0]);
      a.a(this.a, (Drawable)localObject);
    }
    if ((paramCube.getTag() != null) && (paramCube.getTag().size() > 0))
    {
      i1 = 0;
      if (i1 < paramCube.getTag().size())
      {
        localObject = (String)paramCube.getTag().get(i1);
        LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-2, -2);
        if (i1 == 0) {}
        for (i2 = 0;; i2 = (int)ay.a(this.a.getContext(), 5.0F))
        {
          localLayoutParams.setMargins(i2, 0, 0, 0);
          LinearLayout localLinearLayout = this.k;
          TextView localTextView = (TextView)this.o.inflate(2130903319, this.k, false);
          localTextView.setText((CharSequence)localObject);
          localLinearLayout.addView(localTextView, localLayoutParams);
          i1 += 1;
          break;
        }
      }
    }
    this.b.setText(paramCube.getName());
    Object localObject = paramCube.getOwner().getProfileImageUrl();
    f.a().a((String)localObject, this.j, this.r, new o());
    double d1;
    if (paramCubeCalGainType == CubeCalGainType.DAILY)
    {
      d1 = paramCube.getDailyGain().doubleValue();
      i1 = 2131165395;
      this.e.setText(a(d1));
      this.f.setText(i1);
      this.h.setText(paramCube.getOwner().getScreenName());
      if (paramCube.getOwner().getVerifyType() != UserVerifyType.ADVISER) {
        break label581;
      }
      this.g.setVisibility(0);
      label366:
      this.i.setText(a(String.valueOf(paramCube.getFollowerCount())));
      this.l.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          if (c.this.n != null) {
            c.this.n.c(paramCube);
          }
        }
      });
      paramCubeCalGainType = Market.valueOf(paramCube.getMarket().toUpperCase());
      this.m.setText(paramCubeCalGainType.description());
      this.m.setBackgroundResource(paramCubeCalGainType.bgResId());
      if (!paramCube.isFollowing()) {
        break label593;
      }
      this.c.setImageResource(2130837830);
      label449:
      if ((!as.b(paramCube.getMarket())) || (!paramBoolean1)) {
        break label606;
      }
      this.d.setVisibility(0);
      this.c.setVisibility(8);
      this.d.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          if (c.this.n != null) {
            c.this.n.a(paramCube);
          }
        }
      });
    }
    for (;;)
    {
      if ((TextUtils.isEmpty(paramCube.getRecommendReason())) || (!paramBoolean2)) {
        break label642;
      }
      this.p.setText(paramCube.getRecommendReason());
      this.p.setVisibility(0);
      this.q.setVisibility(8);
      return;
      if (paramCubeCalGainType == CubeCalGainType.MONTHLY)
      {
        d1 = paramCube.getMonthlyGain().doubleValue();
        i1 = 2131165415;
        break;
      }
      d1 = paramCube.getTotalGain().doubleValue();
      i1 = 2131165446;
      break;
      label581:
      this.g.setVisibility(8);
      break label366;
      label593:
      this.c.setImageResource(2130837829);
      break label449;
      label606:
      this.d.setVisibility(8);
      this.c.setVisibility(0);
      this.c.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          c.this.n.b(paramCube);
        }
      });
    }
    label642:
    if ((!TextUtils.isEmpty(paramCube.getRecommendReason())) && (!paramBoolean2))
    {
      this.q.setText(au.a("点评：", paramCube.getRecommendReason(), "#ff7700"));
      this.p.setVisibility(8);
      this.q.setVisibility(0);
      return;
    }
    this.p.setVisibility(8);
    this.q.setVisibility(8);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\cube\a\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
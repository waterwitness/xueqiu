package com.xueqiu.android.stock;

import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.os.Bundle;
import android.support.v4.a.i;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.google.gson.Gson;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.xueqiu.android.base.b.a.c;
import com.xueqiu.android.base.util.m;

public final class k
  extends i
{
  private JsonObject a = null;
  private int b = 0;
  private String[] c = { "月收益", "3个月收益", "1年收益", "今年收益" };
  private ViewGroup d;
  
  private String a(JsonObject paramJsonObject, String paramString)
  {
    if ((paramJsonObject.has(paramString)) && (!paramJsonObject.get(paramString).isJsonNull())) {
      return String.format("%.2f%%", new Object[] { Double.valueOf(this.a.get(paramString).getAsDouble() * 100.0D) });
    }
    return "- -";
  }
  
  public final View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    if (this.b == PrivateFundActivity.n()) {
      this.d = ((ViewGroup)paramLayoutInflater.inflate(2130903377, paramViewGroup, false));
    }
    for (;;)
    {
      return this.d;
      if (this.b == PrivateFundActivity.o()) {
        this.d = ((ViewGroup)paramLayoutInflater.inflate(2130903378, paramViewGroup, false));
      } else {
        g().finish();
      }
    }
  }
  
  public final void a(Bundle paramBundle)
  {
    super.a(paramBundle);
    this.b = this.r.getInt(PrivateFundActivity.l(), 0);
    paramBundle = this.r.getString(PrivateFundActivity.m());
    if (!c.a(paramBundle)) {
      this.a = ((JsonObject)m.a().fromJson(paramBundle, JsonObject.class));
    }
  }
  
  public final void a(final View paramView, Bundle paramBundle)
  {
    super.a(paramView, paramBundle);
    if (this.b == PrivateFundActivity.n())
    {
      paramView = (TextView)this.d.findViewById(2131624895);
      if ((this.a != null) && (this.a.has("since_founded_growth_rate")) && (!this.a.get("since_founded_growth_rate").isJsonNull()))
      {
        paramBundle = ValueAnimator.ofFloat(new float[] { 0.0F, this.a.get("since_founded_growth_rate").getAsFloat() * 100.0F });
        paramBundle.setDuration(1000L);
        paramBundle.addUpdateListener(new ValueAnimator.AnimatorUpdateListener()
        {
          public final void onAnimationUpdate(ValueAnimator paramAnonymousValueAnimator)
          {
            paramAnonymousValueAnimator = Double.valueOf(paramAnonymousValueAnimator.getAnimatedValue().toString());
            paramView.setText(String.format("%.2f", new Object[] { paramAnonymousValueAnimator }));
          }
        });
        paramBundle.start();
      }
    }
    while (this.b != PrivateFundActivity.o()) {
      return;
    }
    int i = 0;
    label130:
    if (i < this.d.getChildCount())
    {
      paramView = (TextView)this.d.getChildAt(i).findViewById(2131625578);
      paramBundle = (TextView)this.d.getChildAt(i).findViewById(2131625579);
      paramView.setText(this.c[i]);
      if (this.a != null) {
        break label207;
      }
      paramView = "- -";
    }
    for (;;)
    {
      paramBundle.setText(paramView);
      i += 1;
      break label130;
      break;
      switch (i)
      {
      default: 
        paramView = "- -";
        break;
      case 0: 
        paramView = a(this.a, "growth_rate_month1");
        break;
      case 1: 
        paramView = a(this.a, "growth_rate_month3");
        break;
      case 2: 
        paramView = a(this.a, "growth_rate_year");
        break;
      case 3: 
        label207:
        paramView = a(this.a, "growth_rate_this_year");
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\stock\k.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
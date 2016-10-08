package com.xueqiu.android.stock.a;

import android.content.Context;
import android.text.SpannableStringBuilder;
import android.text.style.AbsoluteSizeSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.xueqiu.android.base.util.ar;
import com.xueqiu.android.common.a.d;
import com.xueqiu.android.stock.model.AHStockQuote;
import java.util.Locale;

public final class f
  extends d<AHStockQuote>
{
  private Context e = null;
  private LayoutInflater f;
  
  public f(Context paramContext)
  {
    super(paramContext);
    this.e = paramContext;
    this.f = LayoutInflater.from(paramContext);
  }
  
  private static void a(double paramDouble1, double paramDouble2, TextView paramTextView)
  {
    SpannableStringBuilder localSpannableStringBuilder = new SpannableStringBuilder();
    localSpannableStringBuilder.append(String.format(Locale.CHINA, "%.2f%n", new Object[] { Double.valueOf(paramDouble1) }));
    int i = localSpannableStringBuilder.length();
    String str2 = String.format(Locale.CHINA, "%.2f%%", new Object[] { Double.valueOf(paramDouble2) });
    String str1 = str2;
    if (paramDouble2 > 0.0D) {
      str1 = "+" + str2;
    }
    localSpannableStringBuilder.append(str1);
    localSpannableStringBuilder.setSpan(new AbsoluteSizeSpan(11, true), i, localSpannableStringBuilder.length(), 17);
    paramTextView.setText(localSpannableStringBuilder);
  }
  
  public static void a(AHStockQuote paramAHStockQuote, g paramg)
  {
    ar localar = ar.a();
    paramg.a.setText(paramAHStockQuote.getNameHk());
    a(paramAHStockQuote.getCurrentHkHkd().doubleValue(), paramAHStockQuote.getPercentHk().doubleValue(), paramg.b);
    a(paramAHStockQuote.getCurrentCn().doubleValue(), paramAHStockQuote.getPercentCn().doubleValue(), paramg.c);
    paramg.d.setText(String.format(Locale.CHINA, "%.2f%%", new Object[] { Double.valueOf(paramAHStockQuote.getPriceRatio().doubleValue() * 100.0D) }));
    paramg.b.setTextColor(localar.a(paramAHStockQuote.getPercentHk().doubleValue()));
    paramg.c.setTextColor(localar.a(paramAHStockQuote.getPercentCn().doubleValue()));
  }
  
  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    View localView;
    if (paramView != null)
    {
      localView = paramView;
      if (paramView.getTag() != null) {}
    }
    else
    {
      localView = this.f.inflate(2130903488, paramViewGroup, false);
      localView.setTag(g.a(localView));
    }
    paramView = (g)localView.getTag();
    a((AHStockQuote)getItem(paramInt), paramView);
    return localView;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\stock\a\f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
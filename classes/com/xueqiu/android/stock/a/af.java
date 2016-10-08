package com.xueqiu.android.stock.a;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.preference.PreferenceManager;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.xueqiu.android.base.util.ar;
import com.xueqiu.android.base.util.au;
import com.xueqiu.android.base.util.h;
import com.xueqiu.android.common.a.d;
import com.xueqiu.android.common.widget.AutoResizeTextView;
import com.xueqiu.android.stock.model.OldPortFolio;
import com.xueqiu.android.stockchart.f.a;
import java.text.DecimalFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Locale;

public final class af
  extends d<OldPortFolio>
{
  private Context e = null;
  private String f;
  private LayoutInflater g;
  private ar h;
  private int i;
  
  public af(Context paramContext, int paramInt)
  {
    super(paramContext);
    this.e = paramContext;
    this.h = ar.a();
    this.g = LayoutInflater.from(paramContext);
    this.i = paramInt;
    this.f = PreferenceManager.getDefaultSharedPreferences(paramContext).getString(paramContext.getString(2131165678), paramContext.getString(2131166576));
  }
  
  private static void a(int paramInt, ag paramag, OldPortFolio paramOldPortFolio, ar paramar)
  {
    switch (paramInt)
    {
    default: 
      if (paramOldPortFolio.getGrowthRateMonth1() == null)
      {
        paramag.d.setText("--");
        paramInt = paramar.a(0.0D);
      }
      break;
    }
    for (;;)
    {
      paramag.c.setTextColor(paramInt);
      paramag.d.setTextColor(paramInt);
      if (paramOldPortFolio.getUnitNetValue() != null) {
        break;
      }
      paramag.c.setText("--");
      return;
      if (paramOldPortFolio.getGrowthRateMonth1() == null)
      {
        paramag.d.setText("--");
        paramInt = paramar.a(0.0D);
      }
      else
      {
        paramag.d.setText(String.format("%.2f%%", new Object[] { Double.valueOf(paramOldPortFolio.getGrowthRateMonth1().doubleValue() * 100.0D) }));
        paramInt = paramar.a(paramOldPortFolio.getGrowthRateMonth1().doubleValue());
        continue;
        if (paramOldPortFolio.getGrowthRateMonth3() == null)
        {
          paramag.d.setText("--");
          paramInt = paramar.a(0.0D);
        }
        else
        {
          paramag.d.setText(String.format("%.2f%%", new Object[] { Double.valueOf(paramOldPortFolio.getGrowthRateMonth3().doubleValue() * 100.0D) }));
          paramInt = paramar.a(paramOldPortFolio.getGrowthRateMonth3().doubleValue());
          continue;
          if (paramOldPortFolio.getGrowthRateMonth6() == null)
          {
            paramag.d.setText("--");
            paramInt = paramar.a(0.0D);
          }
          else
          {
            paramag.d.setText(String.format("%.2f%%", new Object[] { Double.valueOf(paramOldPortFolio.getGrowthRateMonth6().doubleValue() * 100.0D) }));
            paramInt = paramar.a(paramOldPortFolio.getGrowthRateMonth6().doubleValue());
            continue;
            if (paramOldPortFolio.getGrowthRateYear() == null)
            {
              paramag.d.setText("--");
              paramInt = paramar.a(0.0D);
            }
            else
            {
              paramag.d.setText(String.format("%.2f%%", new Object[] { Double.valueOf(paramOldPortFolio.getGrowthRateYear().doubleValue() * 100.0D) }));
              paramInt = paramar.a(paramOldPortFolio.getGrowthRateYear().doubleValue());
              continue;
              paramag.d.setText(String.format("%.2f%%", new Object[] { Double.valueOf(paramOldPortFolio.getGrowthRateMonth1().doubleValue() * 100.0D) }));
              paramInt = paramar.a(paramOldPortFolio.getGrowthRateMonth3().doubleValue());
            }
          }
        }
      }
    }
    paramag.c.setText(String.format("%.4f", new Object[] { paramOldPortFolio.getUnitNetValue() }));
  }
  
  public static void a(OldPortFolio paramOldPortFolio, int paramInt, ag paramag, Context paramContext, String paramString, ar paramar)
  {
    Object localObject = paramContext.getTheme().obtainStyledAttributes(new int[] { 2130772256 });
    int j = paramContext.getResources().getColor(((TypedArray)localObject).getResourceId(0, 0));
    paramar.a = j;
    paramag.c.setTextColor(j);
    paramag.d.setTextColor(j);
    paramag.c.setVisibility(0);
    paramag.d.setVisibility(0);
    paramag.f.setVisibility(8);
    double d1;
    if ((paramag.a instanceof AutoResizeTextView))
    {
      localObject = (AutoResizeTextView)paramag.a;
      ((AutoResizeTextView)localObject).setTextSize(16.0F);
      ((AutoResizeTextView)localObject).a();
      ((AutoResizeTextView)localObject).setMinTextSize(a.a(paramContext, 12.0F));
      ((AutoResizeTextView)localObject).setText(paramOldPortFolio.getName());
      paramag.b.setText(paramOldPortFolio.getSymbol());
      localObject = new DecimalFormat("0.00");
      if ((paramInt != 1) && (paramInt != 2) && (paramInt != 21) && (paramInt != 22) && (paramInt != 11) && (paramInt != 12)) {
        break label414;
      }
      paramag.f.setVisibility(0);
      paramag.c.setVisibility(8);
      d1 = paramOldPortFolio.getChange();
      double d2 = paramOldPortFolio.getPercentage();
      if (!paramString.equals(paramContext.getString(2131166576))) {
        break label364;
      }
      if (d1 <= 0.0D) {
        break label333;
      }
      paramag.e.setImageResource(2130838504);
      label249:
      paramContext = String.format(Locale.CHINA, "%.2f%%", new Object[] { Double.valueOf(d2) });
      paramOldPortFolio = paramContext;
      if (d2 > 0.0D) {
        paramOldPortFolio = "+" + paramContext;
      }
      paramag.d.setText(paramOldPortFolio);
      paramag.d.setTextColor(paramar.a(d2));
    }
    label333:
    label364:
    label414:
    do
    {
      return;
      paramag.a.setText(paramOldPortFolio.getName());
      break;
      if (d1 < 0.0D)
      {
        paramag.e.setImageResource(2130838505);
        break label249;
      }
      paramag.e.setImageResource(2130838507);
      break label249;
      if (d1 > 0.0D)
      {
        paramag.e.setImageResource(2130838506);
        break label249;
      }
      if (d1 < 0.0D)
      {
        paramag.e.setImageResource(2130838503);
        break label249;
      }
      paramag.e.setImageResource(2130838507);
      break label249;
      if ((paramInt == 3) || (paramInt == 4) || (paramInt == 23) || (paramInt == 24) || (paramInt == 13) || (paramInt == 14) || (paramInt == 15) || (paramInt == 16) || (paramInt == 43) || (paramInt == 42) || (paramInt == 41) || (paramInt == 61) || (paramInt == 71) || (paramInt == 72) || (paramInt == 34) || (paramInt == 31) || (paramInt == 33) || (paramInt == 82) || (paramInt == 81) || (paramInt == 83) || (paramInt == 84) || (paramInt == 10) || (paramInt == 17) || (paramInt == 19) || (paramInt == 18))
      {
        paramag.f.setVisibility(8);
        paramag.c.setVisibility(0);
        d1 = paramOldPortFolio.getPercentage();
        paramag.c.setText(((DecimalFormat)localObject).format(paramOldPortFolio.getCurrent()));
        paramContext = String.format(Locale.CHINA, "%.2f%%", new Object[] { Double.valueOf(d1) });
        paramOldPortFolio = paramContext;
        if (d1 > 0.0D) {
          paramOldPortFolio = "+" + paramContext;
        }
        paramag.d.setText(paramOldPortFolio);
        paramInt = paramar.a(d1);
        paramag.c.setTextColor(paramInt);
        paramag.d.setTextColor(paramInt);
        return;
      }
      if (paramInt == 5)
      {
        d1 = paramOldPortFolio.getAmount();
        paramag.c.setText(((DecimalFormat)localObject).format(paramOldPortFolio.getCurrent()));
        paramag.d.setText(a.b(d1));
        paramInt = paramar.a(paramOldPortFolio.getPercentage());
        paramag.c.setTextColor(paramInt);
        return;
      }
      if (paramInt == 6)
      {
        d1 = paramOldPortFolio.getTurnoverRate().doubleValue();
        paramag.c.setText(((DecimalFormat)localObject).format(paramOldPortFolio.getCurrent()));
        paramag.d.setText(((DecimalFormat)localObject).format(d1) + "%");
        paramInt = paramar.a(paramOldPortFolio.getPercentage());
        paramag.c.setTextColor(paramInt);
        return;
      }
      if ((paramInt == 8) || (paramInt == 180)) {
        try
        {
          paramContext = h.b(paramOldPortFolio.getIpoTime());
          paramString = new SimpleDateFormat("yyyy.MM.dd", Locale.CHINA);
          paramag.d.setText(paramString.format(paramContext.getTime()));
          if ((paramInt == 8) && (paramOldPortFolio.getIpoPrice() != 0.0D))
          {
            paramOldPortFolio = ((DecimalFormat)localObject).format(paramOldPortFolio.getIpoPrice());
            paramag.c.setText(paramOldPortFolio);
            return;
          }
        }
        catch (ParseException paramContext)
        {
          for (;;)
          {
            paramag.d.setText("--  ");
            continue;
            if (paramInt == 180) {
              paramOldPortFolio = paramOldPortFolio.getPriceRange();
            } else {
              paramOldPortFolio = "--  ";
            }
          }
        }
      }
      if ((paramInt == 9) || (paramInt == 190))
      {
        paramag.c.setText(((DecimalFormat)localObject).format(paramOldPortFolio.getCurrent()));
        paramag.d.setText(((DecimalFormat)localObject).format(paramOldPortFolio.getIpoPrice()));
        return;
      }
      if (paramInt == 32)
      {
        paramag.c.setText(new DecimalFormat("0.0000").format(paramOldPortFolio.getCurrent()));
        if (paramOldPortFolio.getPe_ttm() != null)
        {
          paramag.d.setText(((DecimalFormat)localObject).format(Double.parseDouble(paramOldPortFolio.getPe_ttm())) + "%");
          return;
        }
        paramag.d.setText("--");
        return;
      }
      if (paramInt == 51)
      {
        paramag.c.setText(((DecimalFormat)localObject).format(paramOldPortFolio.getCurrent()));
        paramag.d.setText(au.a(paramOldPortFolio.getVolume()));
        return;
      }
      if (paramInt == 74)
      {
        a(74, paramag, paramOldPortFolio, paramar);
        return;
      }
      if (paramInt == 75)
      {
        a(75, paramag, paramOldPortFolio, paramar);
        return;
      }
      if (paramInt == 76)
      {
        a(76, paramag, paramOldPortFolio, paramar);
        return;
      }
    } while (paramInt != 77);
    a(77, paramag, paramOldPortFolio, paramar);
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
      localView = this.g.inflate(2130903494, paramViewGroup, false);
      localView.setTag(ag.a(localView));
    }
    paramView = (ag)localView.getTag();
    a((OldPortFolio)getItem(paramInt), this.i, paramView, this.e, this.f, this.h);
    return localView;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\stock\a\af.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
package com.xueqiu.android.stockchart.d;

import android.os.Bundle;
import android.support.v4.a.k;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.xueqiu.android.stockchart.a.d;
import com.xueqiu.android.stockchart.e;
import com.xueqiu.android.stockchart.e.h;
import com.xueqiu.android.stockchart.view.EventView;
import com.xueqiu.android.stockchart.view.FundChartView;
import com.xueqiu.android.stockchart.view.KlineChartView;
import com.xueqiu.android.stockchart.view.PressInfoView;
import com.xueqiu.android.stockchart.view.StockChartView;

public final class b
  extends a
{
  private TextView aN;
  private TextView aO;
  private TextView aP;
  private TextView aQ;
  private TextView aR;
  private TextView aS;
  private TextView aT;
  private TextView aU;
  private TextView aV;
  private ImageView aW;
  private int aX;
  private int aY;
  private int aZ;
  private int ba;
  private boolean bb = false;
  
  private void a(h paramh)
  {
    this.aN.setText(paramh.a);
    float f1 = paramh.e;
    float f2 = paramh.f;
    int i = this.aA.a(f2);
    String str2 = String.valueOf(f2);
    String str1 = str2;
    if (f2 > 0.0F) {
      str1 = "+" + str2;
    }
    str1 = str1 + "%";
    if (paramh == null) {}
    for (double d = 0.0D;; d = paramh.i)
    {
      str2 = com.xueqiu.android.stockchart.f.a.a(d, f1);
      this.aO.setText(String.format("%s(%s)", new Object[] { str2, str1 }));
      this.aO.setTextColor(i);
      this.aP.setText("成交量：" + com.xueqiu.android.stockchart.f.a.b(paramh.g));
      this.aQ.setText("时间：" + com.xueqiu.android.stockchart.f.a.a(paramh.h, "hh:mm"));
      return;
    }
  }
  
  public final View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    this.f = super.a(paramLayoutInflater, paramViewGroup, paramBundle);
    this.aR = ((TextView)this.f.findViewById(e.kline_type_before));
    this.aS = ((TextView)this.f.findViewById(e.kline_type_normal));
    this.aT = ((TextView)this.f.findViewById(e.kline_type_after));
    if (this.f.findViewWithTag(this.at) != null) {
      this.f.findViewWithTag(this.at).setSelected(true);
    }
    if (this.aS == null) {
      return this.f;
    }
    this.aR.setOnClickListener(this);
    this.aS.setOnClickListener(this);
    this.aT.setOnClickListener(this);
    this.aU = ((TextView)this.f.findViewById(e.kline_indicator_volume));
    this.aV = ((TextView)this.f.findViewById(e.kline_indicator_macd));
    if (this.f.findViewWithTag(this.au) != null) {
      this.f.findViewWithTag(this.au).setSelected(true);
    }
    this.aU.setOnClickListener(this);
    this.aV.setOnClickListener(this);
    this.aN = ((TextView)this.f.findViewById(e.chart_stock_name));
    this.aO = ((TextView)this.f.findViewById(e.chart_stock_price));
    this.aP = ((TextView)this.f.findViewById(e.chart_stock_volume));
    this.aQ = ((TextView)this.f.findViewById(e.chart_stock_time));
    this.aW = ((ImageView)this.f.findViewById(e.big_chart_close));
    this.aW.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        b.this.g().setRequestedOrientation(1);
      }
    });
    a(this.ao);
    this.aF.setOnScaleEventListener(new d()
    {
      public final void a()
      {
        b.a(b.this, false);
      }
      
      public final void a(float paramAnonymousFloat1, float paramAnonymousFloat2)
      {
        if (b.this.aB == null) {}
        int k;
        do
        {
          do
          {
            return;
          } while (b.this.aB.getShowOHLCMAArray() == null);
          if (!b.c(b.this))
          {
            b.a(b.this, b.this.aB.getStartIndex());
            b.b(b.this, b.this.aB.getEndIndex());
            b.c(b.this, b.this.aB.b(paramAnonymousFloat1));
            b.d(b.this, b.d(b.this) - b.e(b.this));
            b.a(b.this, true);
          }
          paramAnonymousFloat1 = b.this.aB.getOriginCandleWidth();
          b.this.aB.setCandleWidth(paramAnonymousFloat1 * paramAnonymousFloat2);
          int i = b.this.aB.getCandleCount();
          k = Math.round(i / b.f(b.this) * b.g(b.this));
          int j = b.e(b.this) + b.g(b.this) - k;
          int m = i - k + (b.e(b.this) + b.g(b.this));
          k = b.this.aB.getMaxIndex();
          i = j;
          if (m > k) {
            i = j - (m - k);
          }
          k = i;
          j = m;
          if (i < 0)
          {
            j = m - i;
            k = 0;
          }
          if ((k != b.this.aB.getStartIndex()) && (j != b.this.aB.getEndIndex()) && (k <= j))
          {
            b.this.aB.setStartIndex(k);
            b.this.aB.setEndIndex(j);
            b.this.aB.invalidate();
          }
        } while ((k != 0) || (b.this.aM));
        b.a(b.this, false);
        b.this.f(true);
      }
    });
    this.aF.setOnTouchListener(new View.OnTouchListener()
    {
      public final boolean onTouch(View paramAnonymousView, MotionEvent paramAnonymousMotionEvent)
      {
        float f2 = paramAnonymousMotionEvent.getY();
        float f1;
        if (b.this.ar.equals("kline"))
        {
          f1 = b.this.aB.getTopChartHeight();
          if ((f2 > f1) && (b.this.ar.equals("kline")) && (!a.a(b.this.aw, b.this.aq)))
          {
            if (!b.this.aB.getIndicator().equals("volume")) {
              break label148;
            }
            b.a(b.this).performClick();
          }
        }
        for (;;)
        {
          return true;
          if (b.this.ar.equals("stock"))
          {
            f1 = b.this.aA.getTopChartHeight();
            break;
          }
          f1 = b.this.aC.getTopChartHeight();
          break;
          label148:
          b.b(b.this).performClick();
        }
      }
    });
    if (this.ao != null)
    {
      if ((!this.aq.equals("1d")) || (!com.xueqiu.android.stockchart.f.a.b(this.ao.c))) {
        break label399;
      }
      this.i.setVisibility(0);
      w();
    }
    for (;;)
    {
      f(false);
      return this.f;
      label399:
      this.i.setVisibility(8);
    }
  }
  
  public final void a(float paramFloat, long paramLong)
  {
    super.a(paramFloat, paramLong);
    this.ao.c(String.valueOf(paramFloat));
    this.ao.h = String.valueOf(paramLong);
    paramFloat = (paramFloat - this.ao.d) / this.ao.d;
    this.ao.d(String.format("%.2f", new Object[] { Float.valueOf(paramFloat * 100.0F) }));
    a(this.ao);
  }
  
  public final void a(Bundle paramBundle)
  {
    super.a(paramBundle);
  }
  
  public final void onClick(View paramView)
  {
    super.onClick(paramView);
    paramView = paramView.getTag().toString();
    if ((paramView.equals("volume")) || (paramView.equals("macd")))
    {
      this.au = paramView;
      this.aU.setSelected(false);
      this.aV.setSelected(false);
      if (!paramView.equals("volume")) {
        break label271;
      }
      this.aU.setSelected(true);
    }
    for (;;)
    {
      this.aB.setIndicator(paramView);
      this.aB.invalidate();
      this.aE.invalidate();
      if (this.al != null) {
        this.al.a(this.as);
      }
      if ((paramView.equals("before")) || (paramView.equals("normal")) || (paramView.equals("after")))
      {
        this.at = paramView;
        this.aR.setSelected(false);
        this.aS.setSelected(false);
        this.aT.setSelected(false);
        if (paramView.equals("before")) {
          this.aR.setSelected(true);
        }
        if (paramView.equals("normal")) {
          this.aS.setSelected(true);
        }
        if (paramView.equals("after")) {
          this.aT.setSelected(true);
        }
        this.aB.setKlineType(this.at);
        this.aB.c();
        f(false);
        if (this.al != null) {
          this.al.a();
        }
      }
      u();
      return;
      label271:
      this.aV.setSelected(true);
    }
  }
  
  public final void q()
  {
    super.q();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\stockchart\d\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
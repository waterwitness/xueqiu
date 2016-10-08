package com.xueqiu.android.stockchart.d;

import android.os.Bundle;
import android.support.v4.a.k;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import com.xueqiu.android.stockchart.view.EventView;
import com.xueqiu.android.stockchart.view.FundChartView;
import com.xueqiu.android.stockchart.view.KlineChartView;
import com.xueqiu.android.stockchart.view.PressInfoView;
import com.xueqiu.android.stockchart.view.StockChartView;

public final class c
  extends a
{
  public final View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    this.f = super.a(paramLayoutInflater, paramViewGroup, paramBundle);
    this.aF.setOnTouchListener(new View.OnTouchListener()
    {
      public final boolean onTouch(View paramAnonymousView, MotionEvent paramAnonymousMotionEvent)
      {
        if (c.this.ao == null) {}
        label183:
        do
        {
          return true;
          float f2 = paramAnonymousMotionEvent.getY();
          paramAnonymousView = c.this.ar;
          int i = -1;
          float f1;
          switch (paramAnonymousView.hashCode())
          {
          default: 
            switch (i)
            {
            default: 
              f1 = c.this.aC.getTopChartHeight();
            }
            break;
          }
          for (;;)
          {
            if ((f2 >= f1) || (c.this.an == null)) {
              break label183;
            }
            c.this.g().setRequestedOrientation(0);
            return true;
            if (!paramAnonymousView.equals("kline")) {
              break;
            }
            i = 0;
            break;
            if (!paramAnonymousView.equals("stock")) {
              break;
            }
            i = 1;
            break;
            f1 = c.this.aB.getTopChartHeight();
            continue;
            f1 = c.this.aA.getTopChartHeight();
          }
        } while ((!c.this.ar.equals("kline")) || (a.a(c.this.aw, c.this.aq)));
        paramAnonymousMotionEvent = c.this;
        if (c.this.aB.getIndicator().equals("volume")) {}
        for (paramAnonymousView = "macd";; paramAnonymousView = "volume")
        {
          paramAnonymousMotionEvent.au = paramAnonymousView;
          c.this.aB.setIndicator(c.this.au);
          c.this.aB.invalidate();
          c.this.aE.invalidate();
          c.this.u();
          if (c.this.al == null) {
            break;
          }
          paramAnonymousView = c.this.al;
          paramAnonymousMotionEvent = c.this.as;
          c.this.au.equals("volume");
          paramAnonymousView.a(paramAnonymousMotionEvent);
          return true;
        }
      }
    });
    return this.f;
  }
  
  public final void a(Bundle paramBundle)
  {
    super.a(paramBundle);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\stockchart\d\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
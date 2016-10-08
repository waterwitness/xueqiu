package com.xueqiu.android.cube;

import android.animation.ObjectAnimator;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.animation.DecelerateInterpolator;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.xueqiu.android.base.h;
import com.xueqiu.android.base.i;
import com.xueqiu.android.common.model.SNBEvent;
import com.xueqiu.android.cube.model.StockGain;
import java.util.ArrayList;
import java.util.List;

final class q
  extends BaseAdapter
{
  double a;
  boolean b = true;
  int c = -1;
  private List<Boolean> e = new ArrayList();
  
  private q(StockGainAnalysisActivity paramStockGainAnalysisActivity) {}
  
  private static void b(r paramr, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      paramr.j.setVisibility(0);
      paramr.h.setImageDrawable(com.xueqiu.android.base.r.h(2130837626));
      return;
    }
    paramr.j.setVisibility(8);
    paramr.h.setImageDrawable(com.xueqiu.android.base.r.h(2130837615));
  }
  
  public final int getCount()
  {
    return StockGainAnalysisActivity.c(this.d).size();
  }
  
  public final Object getItem(int paramInt)
  {
    return StockGainAnalysisActivity.c(this.d).get(paramInt);
  }
  
  public final long getItemId(int paramInt)
  {
    return 0L;
  }
  
  public final View getView(final int paramInt, View paramView, final ViewGroup paramViewGroup)
  {
    View localView = paramView;
    if (paramView == null)
    {
      localView = this.d.getLayoutInflater().inflate(2130903299, paramViewGroup, false);
      localView.setTag(new r(this, localView));
    }
    if (this.e.size() <= paramInt) {
      this.e.add(paramInt, Boolean.valueOf(false));
    }
    paramView = (StockGain)StockGainAnalysisActivity.c(this.d).get(paramInt);
    paramViewGroup = (r)localView.getTag();
    paramViewGroup.a.setText(String.format("%d %s", new Object[] { Integer.valueOf(paramInt + 1), paramView.getStockName() }));
    label167:
    int i;
    if (paramView.isHolding())
    {
      paramViewGroup.c.setVisibility(0);
      if (paramView.getStockBenefit() <= 0.0D) {
        break label385;
      }
      if (StockGainAnalysisActivity.j(this.d)) {
        break label410;
      }
      paramViewGroup.d.setProgressDrawable(com.xueqiu.android.base.r.h(2130837986));
      StockGainAnalysisActivity.a(this.d, paramViewGroup.b, paramView.getStockBenefit());
      paramViewGroup.b.setText(String.format("%+.4f", new Object[] { Double.valueOf(paramView.getStockBenefit()) }));
      paramViewGroup.d.setProgress(0);
      i = (int)Math.abs(paramView.getStockBenefit() * 100.0D / this.a);
      if (this.b) {
        break label425;
      }
      paramViewGroup.d.setProgress(i);
    }
    for (;;)
    {
      paramViewGroup.e.setText(String.format("%d天", new Object[] { Integer.valueOf(paramView.getHoldingDuration()) }));
      paramViewGroup.f.setText(String.format("%.2f%%", new Object[] { Double.valueOf(paramView.getAvgPosition() * 100.0D) }));
      paramViewGroup.g.setText(String.format("%d次", new Object[] { Integer.valueOf(paramView.getTransactionTimes()) }));
      b(paramViewGroup, ((Boolean)this.e.get(paramInt)).booleanValue());
      paramViewGroup.i.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          if (((Boolean)q.a(q.this).get(paramInt)).booleanValue()) {
            q.a(q.this).set(paramInt, Boolean.valueOf(false));
          }
          for (;;)
          {
            q.a(paramViewGroup, ((Boolean)q.a(q.this).get(paramInt)).booleanValue());
            paramAnonymousView = new SNBEvent(1408, 1);
            paramAnonymousView.addProperty("symbol", StockGainAnalysisActivity.i(q.this.d));
            i.a().a(paramAnonymousView);
            return;
            q.a(q.this).set(paramInt, Boolean.valueOf(true));
          }
        }
      });
      return localView;
      paramViewGroup.c.setVisibility(8);
      break;
      label385:
      if (StockGainAnalysisActivity.j(this.d))
      {
        paramViewGroup.d.setProgressDrawable(com.xueqiu.android.base.r.h(2130837986));
        break label167;
      }
      label410:
      paramViewGroup.d.setProgressDrawable(com.xueqiu.android.base.r.h(2130838405));
      break label167;
      label425:
      ObjectAnimator localObjectAnimator = ObjectAnimator.ofInt(paramViewGroup.d, "progress", new int[] { i });
      localObjectAnimator.setDuration(500L);
      localObjectAnimator.setInterpolator(new DecelerateInterpolator());
      localObjectAnimator.start();
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\cube\q.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
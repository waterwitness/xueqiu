package com.xueqiu.android.trade.a;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Build.VERSION;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.xueqiu.android.trade.model.TrustDeed;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public final class h
  extends BaseAdapter
{
  public List<TrustDeed> a = new ArrayList();
  public i b;
  private Context c;
  private HashMap<String, String> d = new HashMap();
  private int e;
  
  public h(Context paramContext)
  {
    this.c = paramContext;
    this.d.put("BUY", "买入");
    this.d.put("SELL", "卖出");
    this.d.put("SELL_SHORT", "卖空");
    this.d.put("BUY_COVER", "补回");
    paramContext = paramContext.obtainStyledAttributes(null, new int[] { 2130772256 });
    int i = paramContext.getColor(0, -1);
    paramContext.recycle();
    this.e = i;
  }
  
  public final int getCount()
  {
    if (this.a == null) {
      return 0;
    }
    return this.a.size();
  }
  
  public final Object getItem(int paramInt)
  {
    return this.a.get(paramInt);
  }
  
  public final long getItemId(int paramInt)
  {
    return paramInt;
  }
  
  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    TrustDeed localTrustDeed;
    label79:
    label137:
    Context localContext;
    int i;
    if (paramView == null)
    {
      paramView = LayoutInflater.from(this.c).inflate(2130903533, paramViewGroup, false);
      paramViewGroup = new j(paramView);
      paramView.setTag(paramViewGroup);
      localTrustDeed = (TrustDeed)this.a.get(paramInt);
      paramViewGroup.a.setText(localTrustDeed.getSname());
      if (localTrustDeed.getOtimestamp() != 0L) {
        break label322;
      }
      paramViewGroup.b.setText("");
      paramViewGroup.d.setText(localTrustDeed.getCprice());
      if ((TextUtils.isEmpty(localTrustDeed.getOprop())) || (!localTrustDeed.getOprop().contains("MKT"))) {
        break label340;
      }
      paramViewGroup.c.setText("市价");
      paramViewGroup.e.setText(localTrustDeed.getAmount());
      paramViewGroup.f.setText(localTrustDeed.getCamount());
      paramViewGroup.g.setText(localTrustDeed.getOstatusName());
      if (!TextUtils.equals(localTrustDeed.getOstatusColor(), "blue")) {
        break label386;
      }
      TextView localTextView = paramViewGroup.g;
      localContext = this.c;
      if (Build.VERSION.SDK_INT < 23) {
        break label371;
      }
      i = localContext.getColor(2131558426);
      label215:
      localTextView.setTextColor(i);
    }
    for (;;)
    {
      paramViewGroup.h.setText((CharSequence)this.d.get(localTrustDeed.getAction()));
      paramViewGroup.i.setEnabled(localTrustDeed.isRevokeable());
      paramViewGroup.i.setTag(Integer.valueOf(paramInt));
      paramViewGroup.i.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          int i = ((Integer)paramAnonymousView.getTag()).intValue();
          if (h.a(h.this) != null) {
            h.a(h.this).a((TrustDeed)h.b(h.this).get(i));
          }
        }
      });
      if (paramInt != getCount() - 1) {
        break label400;
      }
      paramViewGroup.j.setVisibility(8);
      paramViewGroup.k.setVisibility(0);
      return paramView;
      paramViewGroup = (j)paramView.getTag();
      break;
      label322:
      paramViewGroup.b.setText(com.xueqiu.android.base.util.h.b(localTrustDeed.getOtimestamp()));
      break label79;
      label340:
      paramViewGroup.c.setText(String.format("%.3f", new Object[] { Double.valueOf(localTrustDeed.getPrice()) }));
      break label137;
      label371:
      i = localContext.getResources().getColor(2131558426);
      break label215;
      label386:
      paramViewGroup.g.setTextColor(this.e);
    }
    label400:
    paramViewGroup.j.setVisibility(0);
    paramViewGroup.k.setVisibility(8);
    return paramView;
  }
  
  public final void refresh(List<TrustDeed> paramList)
  {
    if (paramList == null) {
      return;
    }
    this.a = paramList;
    notifyDataSetChanged();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\trade\a\h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
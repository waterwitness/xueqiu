package com.xueqiu.android.cube.b;

import android.text.SpannableStringBuilder;
import android.text.style.AbsoluteSizeSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.xueqiu.android.base.util.ar;
import com.xueqiu.android.base.util.q;
import com.xueqiu.android.common.widget.AutoResizeTextView;
import com.xueqiu.android.cube.CubeCardListActivity;
import com.xueqiu.android.cube.model.Industry;
import java.util.ArrayList;
import java.util.List;

public final class b
  extends BaseAdapter
{
  List<Industry> a = null;
  private ar c = ar.a();
  
  public b(a parama) {}
  
  private static void a(c paramc, View paramView)
  {
    paramc.a = paramView;
    paramc.b = ((AutoResizeTextView)paramView.findViewById(2131624939));
    paramc.c = ((TextView)paramView.findViewById(2131624940));
  }
  
  public final int getCount()
  {
    int i;
    if (this.a == null) {
      i = 0;
    }
    int j;
    do
    {
      return i;
      j = this.a.size() / 3;
      i = j;
    } while (this.a.size() % 3 == 0);
    return j + 1;
  }
  
  public final Object getItem(int paramInt)
  {
    int i = paramInt * 3;
    ArrayList localArrayList = new ArrayList();
    paramInt = 0;
    while ((paramInt < 3) && (i + paramInt < this.a.size()))
    {
      localArrayList.add(this.a.get(i + paramInt));
      paramInt += 1;
    }
    return localArrayList;
  }
  
  public final long getItemId(int paramInt)
  {
    return 0L;
  }
  
  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    Object localObject = paramView;
    if (paramView == null)
    {
      localObject = (LinearLayout)LayoutInflater.from(paramViewGroup.getContext()).inflate(2130903295, paramViewGroup, false);
      paramView = new ArrayList(3);
      paramViewGroup = new c(this);
      a(paramViewGroup, ((LinearLayout)localObject).findViewById(2131624958));
      paramView.add(paramViewGroup);
      paramViewGroup = new c(this);
      a(paramViewGroup, ((LinearLayout)localObject).findViewById(2131624959));
      paramView.add(paramViewGroup);
      paramViewGroup = new c(this);
      a(paramViewGroup, ((LinearLayout)localObject).findViewById(2131624960));
      paramView.add(paramViewGroup);
      ((View)localObject).setTag(paramView);
    }
    paramViewGroup = (List)((View)localObject).getTag();
    List localList = (List)getItem(paramInt);
    paramInt = 0;
    if (paramInt < paramViewGroup.size())
    {
      c localc = (c)paramViewGroup.get(paramInt);
      if (paramInt < localList.size())
      {
        final Industry localIndustry = (Industry)localList.get(paramInt);
        localc.b.setText(localIndustry.getName());
        localc.b.setMinTextSize(10.0F);
        localc.b.setTextSize(2, 24.0F);
        double d = localIndustry.getAvgStockProfit().doubleValue();
        TextView localTextView = localc.c;
        SpannableStringBuilder localSpannableStringBuilder = new SpannableStringBuilder();
        paramView = "";
        if (d > 0.0D) {
          paramView = "+";
        }
        localSpannableStringBuilder.append(String.format(paramView + "%1$s%%", new Object[] { Double.valueOf(d) }));
        localSpannableStringBuilder.setSpan(new AbsoluteSizeSpan(11, true), localSpannableStringBuilder.length() - 1, localSpannableStringBuilder.length(), 17);
        localTextView.setText(localSpannableStringBuilder);
        localc.c.setTextColor(this.c.a(d));
        localc.a.setOnClickListener(new View.OnClickListener()
        {
          public final void onClick(View paramAnonymousView)
          {
            paramAnonymousView = q.a(b.this.b.f(), CubeCardListActivity.class, "extra_topic", localIndustry);
            b.this.b.a(paramAnonymousView);
          }
        });
        localc.a.setVisibility(0);
      }
      for (;;)
      {
        paramInt += 1;
        break;
        localc.a.setVisibility(4);
      }
    }
    return (View)localObject;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\cube\b\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
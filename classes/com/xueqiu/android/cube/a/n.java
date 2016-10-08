package com.xueqiu.android.cube.a;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Color;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseExpandableListAdapter;
import android.widget.ExpandableListView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.xueqiu.android.base.util.au;
import com.xueqiu.android.base.util.ay;
import com.xueqiu.android.base.util.h;
import com.xueqiu.android.cube.model.Rebalancing;
import com.xueqiu.android.cube.model.Rebalancing.Category;
import com.xueqiu.android.cube.model.Rebalancing.Status;
import com.xueqiu.android.cube.model.RebalancingHistory;
import java.util.Iterator;
import java.util.List;

public final class n
  extends BaseExpandableListAdapter
{
  public List<Rebalancing> a;
  public boolean b = false;
  public boolean c = false;
  private Context d;
  private LayoutInflater e;
  
  public n(Context paramContext)
  {
    this.d = paramContext;
    this.e = LayoutInflater.from(paramContext);
    this.a = null;
  }
  
  public final Object getChild(int paramInt1, int paramInt2)
  {
    if (!au.a(((Rebalancing)this.a.get(paramInt1)).getComment()))
    {
      if (paramInt2 == 0) {
        return ((Rebalancing)this.a.get(paramInt1)).getComment();
      }
      return ((Rebalancing)this.a.get(paramInt1)).getRebalancingHistories().get(paramInt2 - 1);
    }
    return ((Rebalancing)this.a.get(paramInt1)).getRebalancingHistories().get(paramInt2);
  }
  
  public final long getChildId(int paramInt1, int paramInt2)
  {
    return 0L;
  }
  
  public final int getChildType(int paramInt1, int paramInt2)
  {
    if ((au.a(((Rebalancing)this.a.get(paramInt1)).getComment())) || (paramInt2 > 0)) {
      return 0;
    }
    return 1;
  }
  
  public final int getChildTypeCount()
  {
    return 2;
  }
  
  public final View getChildView(int paramInt1, int paramInt2, boolean paramBoolean, View paramView, ViewGroup paramViewGroup)
  {
    Object localObject2 = (Rebalancing)this.a.get(paramInt1);
    if (paramView == null) {
      if ((au.a(((Rebalancing)localObject2).getComment())) || (paramInt2 > 0))
      {
        paramView = this.e.inflate(2130903296, paramViewGroup, false);
        paramViewGroup = new o(this);
        paramViewGroup.a = ((TextView)paramView.findViewById(2131624097));
        paramViewGroup.b = ((TextView)paramView.findViewById(2131624964));
        paramViewGroup.c = ((TextView)paramView.findViewById(2131624232));
        paramViewGroup.d = ((TextView)paramView.findViewById(2131624962));
        paramViewGroup.e = ((LinearLayout)paramView.findViewById(2131624950));
        paramView.setTag(paramViewGroup);
      }
    }
    for (;;)
    {
      if ((au.a(((Rebalancing)localObject2).getComment())) || (paramInt2 > 0))
      {
        label167:
        Object localObject1;
        o localo;
        if (au.a(((Rebalancing)localObject2).getComment()))
        {
          localObject1 = (RebalancingHistory)((Rebalancing)localObject2).getRebalancingHistories().get(paramInt2);
          localo = (o)paramView.getTag();
          localo.a.setText(((RebalancingHistory)localObject1).getStockName());
          localo.b.setText(((RebalancingHistory)localObject1).getStockSymbol());
          if ((((RebalancingHistory)localObject1).getPrevWeightAdjusted() != 0.0D) || (((RebalancingHistory)localObject1).getTargetWeight() != 0.0D)) {
            break label525;
          }
          if (!this.c) {
            break label512;
          }
          localo.c.setText(2131165250);
          label256:
          if (!this.c) {
            break label683;
          }
          localObject2 = localo.d;
          if (((RebalancingHistory)localObject1).getPrice() != null) {
            break label667;
          }
        }
        label512:
        label525:
        label667:
        for (paramViewGroup = "--.--";; paramViewGroup = Double.valueOf(((RebalancingHistory)localObject1).getPrice().doubleValue()))
        {
          ((TextView)localObject2).setText(String.format("成交价 %s", new Object[] { paramViewGroup }));
          paramViewGroup = ((RebalancingHistory)localObject1).getStockLabel();
          if ((paramViewGroup == null) || (paramViewGroup.size() <= 0)) {
            break label741;
          }
          localo.e.setVisibility(0);
          if (localo.e.getChildCount() == paramViewGroup.size()) {
            break label751;
          }
          localo.e.removeAllViews();
          paramViewGroup = paramViewGroup.iterator();
          while (paramViewGroup.hasNext())
          {
            localObject1 = (String)paramViewGroup.next();
            localObject2 = (TextView)this.e.inflate(2130903297, localo.e, false);
            ((TextView)localObject2).setText((CharSequence)localObject1);
            localo.e.addView((View)localObject2);
          }
          paramView = new TextView(paramViewGroup.getContext());
          paramView.setBackgroundResource(2130837767);
          paramInt1 = (int)ay.a(15.0F);
          int i = (int)ay.a(10.0F);
          paramView.setPadding(paramInt1, i, paramInt1, i);
          paramView.setTextSize(2, 14.0F);
          paramView.setTextColor(Color.parseColor("#666666"));
          paramView.setLineSpacing(0.0F, 1.5F);
          break;
          paramInt2 -= 1;
          break label167;
          localo.c.setText(2131165935);
          break label256;
          if (((Rebalancing)localObject2).getCategory() == Rebalancing.Category.SYS_REBALANCING)
          {
            localo.c.setText("分红送配");
            break label256;
          }
          if ((((Rebalancing)localObject2).getCategory() == Rebalancing.Category.VOL_RB) || (((Rebalancing)localObject2).getCategory() == Rebalancing.Category.USER_VOL_RB) || (((Rebalancing)localObject2).getCategory() == Rebalancing.Category.SYS_VOL_RB))
          {
            localo.c.setText(String.format("%.0f股 --> %.0f股", new Object[] { Double.valueOf(((RebalancingHistory)localObject1).getPrevVolume()), Double.valueOf(((RebalancingHistory)localObject1).getTargetVolume()) }));
            break label256;
          }
          localo.c.setText(String.format("%s%% --> %s%%", new Object[] { Double.valueOf(((RebalancingHistory)localObject1).getPrevWeightAdjusted()), Double.valueOf(((RebalancingHistory)localObject1).getTargetWeight()) }));
          break label256;
        }
        label683:
        localObject2 = localo.d;
        if (((RebalancingHistory)localObject1).getPrice() == null) {}
        for (paramViewGroup = "--.--";; paramViewGroup = Double.valueOf(((RebalancingHistory)localObject1).getPrice().doubleValue()))
        {
          ((TextView)localObject2).setText(String.format("参考成交价 %s", new Object[] { paramViewGroup }));
          break;
        }
        label741:
        localo.e.setVisibility(8);
        label751:
        return paramView;
      }
      paramViewGroup = new SpannableStringBuilder(String.format("调仓说明：%s", new Object[] { ((Rebalancing)localObject2).getComment() }));
      paramViewGroup.setSpan(new ForegroundColorSpan(Color.parseColor("#333333")), 0, 5, 17);
      ((TextView)paramView).setText(paramViewGroup);
      return paramView;
    }
  }
  
  public final int getChildrenCount(int paramInt)
  {
    Rebalancing localRebalancing = (Rebalancing)this.a.get(paramInt);
    paramInt = 0;
    if (!au.a(localRebalancing.getComment())) {
      paramInt = 1;
    }
    int i = paramInt;
    if (localRebalancing.getRebalancingHistories() != null) {
      i = paramInt + localRebalancing.getRebalancingHistories().size();
    }
    return i;
  }
  
  public final Object getGroup(int paramInt)
  {
    return this.a.get(paramInt);
  }
  
  public final int getGroupCount()
  {
    if (this.a != null) {
      return this.a.size();
    }
    return 0;
  }
  
  public final long getGroupId(int paramInt)
  {
    return 0L;
  }
  
  public final View getGroupView(int paramInt, boolean paramBoolean, View paramView, ViewGroup paramViewGroup)
  {
    View localView = paramView;
    if (paramView == null) {
      localView = this.e.inflate(2130903307, paramViewGroup, false);
    }
    paramView = (Rebalancing)this.a.get(paramInt);
    TextView localTextView = (TextView)localView.findViewById(2131624240);
    SpannableStringBuilder localSpannableStringBuilder = new SpannableStringBuilder(h.a(paramView.getUpdatedAt(), "yyyy年MM月dd日  HH:mm:ss"));
    int j;
    if (paramView.getStatus() != Rebalancing.Status.SUCCESS)
    {
      j = localSpannableStringBuilder.length();
      if (paramInt <= 0) {
        break label177;
      }
      paramView = "已取消";
      localSpannableStringBuilder.append(String.format(" (%s)", new Object[] { paramView }));
      paramView = this.d.getResources();
      if (paramInt <= 0) {
        break label188;
      }
    }
    label177:
    label188:
    for (int i = 2131558524;; i = 2131558586)
    {
      localSpannableStringBuilder.setSpan(new ForegroundColorSpan(paramView.getColor(i)), j, localSpannableStringBuilder.length(), 33);
      localTextView.setText(localSpannableStringBuilder);
      ((ExpandableListView)paramViewGroup).expandGroup(paramInt);
      return localView;
      paramView = paramView.getStatus().description();
      break;
    }
  }
  
  public final boolean hasStableIds()
  {
    return false;
  }
  
  public final boolean isChildSelectable(int paramInt1, int paramInt2)
  {
    return true;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\cube\a\n.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
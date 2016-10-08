package com.xueqiu.android.community.a;

import android.app.Activity;
import android.content.Context;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import android.widget.TextView;
import com.d.a.b.e;
import com.d.a.b.f;
import com.xueqiu.android.base.util.ay;
import com.xueqiu.android.base.util.n;
import com.xueqiu.android.base.util.o;
import com.xueqiu.android.community.model.TopicInfo;

public final class ar
  extends com.xueqiu.android.common.a.d<TopicInfo>
{
  private final Context e;
  private as f;
  
  public ar(Context paramContext)
  {
    super(paramContext);
    this.e = paramContext;
  }
  
  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    this.f = null;
    as localas;
    if (paramView == null)
    {
      this.f = new as(this);
      localas = this.f;
      paramView = LayoutInflater.from(this.e).inflate(2130903224, paramViewGroup, false);
      localas.a = ((TextView)paramView.findViewById(2131624691));
      localas.b = ((ImageView)paramView.findViewById(2131624690));
      localas.d = ((TextView)paramView.findViewById(2131624692));
      localas.c = ((ImageView)paramView.findViewById(2131624687));
      paramView.setTag(localas);
      paramViewGroup = (TopicInfo)getItem(paramInt);
      localas = this.f;
      DisplayMetrics localDisplayMetrics = new DisplayMetrics();
      ((Activity)localas.e.e).getWindowManager().getDefaultDisplay().getMetrics(localDisplayMetrics);
      if (paramViewGroup.getTopicPicRatio() == 0.0D) {
        break label516;
      }
      double d = localDisplayMetrics.widthPixels / paramViewGroup.getTopicPicRatio();
      localas.c.setMaxHeight((int)d);
      label185:
      localas.c.setScaleType(ImageView.ScaleType.CENTER_CROP);
      Object localObject = n.a();
      ((e)localObject).c = 2130838624;
      ((e)localObject).b = 2130838624;
      ((e)localObject).a = 2130838624;
      localObject = ((e)localObject).b();
      f.a().a(paramViewGroup.getTopicPic(), localas.c, (com.d.a.b.d)localObject, new o());
      if (1 == paramViewGroup.getTopicType())
      {
        localObject = n.a();
        ((e)localObject).c = 2130838624;
        ((e)localObject).b = 2130838624;
        ((e)localObject).a = 2130838624;
        localObject = ((e)localObject).b();
        f.a().a(paramViewGroup.getTopicPicHeader(), localas.b, (com.d.a.b.d)localObject, new o());
        localas.a.setVisibility(8);
        localObject = localas.b.getLayoutParams();
        ((ViewGroup.LayoutParams)localObject).width = (localDisplayMetrics.widthPixels * 5 / 21);
        ((ViewGroup.LayoutParams)localObject).height = (localDisplayMetrics.widthPixels * 5 / 21);
        localas.b.setLayoutParams((ViewGroup.LayoutParams)localObject);
      }
      if (paramViewGroup.getTopicType() == 0)
      {
        localas.b.setVisibility(8);
        if (paramViewGroup.getTopicTitle() != null)
        {
          localas.a.setText(paramViewGroup.getTopicTitle());
          if (paramViewGroup.getTopicTitle().length() <= 14) {
            break label533;
          }
          int i = (paramViewGroup.getTopicTitle().length() - 14) / 2;
          paramInt = i;
          if (i > 3) {
            paramInt = 3;
          }
          localas.a.setTextSize(20 - paramInt);
        }
      }
    }
    for (;;)
    {
      if (paramViewGroup.getTopicDescription() != null)
      {
        localas.d.setText(paramViewGroup.getTopicDescription());
        localas.d.setPadding(0, (int)ay.a(10.0F), 0, 0);
      }
      return paramView;
      this.f = ((as)paramView.getTag());
      break;
      label516:
      localas.c.setMaxHeight((int)ay.a(160.0F));
      break label185;
      label533:
      localas.a.setTextSize(20.0F);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\community\a\ar.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
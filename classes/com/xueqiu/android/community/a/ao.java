package com.xueqiu.android.community.a;

import android.content.Context;
import android.text.TextUtils;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.d.a.b.c.c;
import com.d.a.b.e;
import com.d.a.b.f;
import com.xueqiu.android.base.util.ai;
import com.xueqiu.android.base.util.ay;
import com.xueqiu.android.base.util.n;
import com.xueqiu.android.base.util.o;
import com.xueqiu.android.common.widget.SnowBallTextView;
import com.xueqiu.android.community.model.Comment;
import com.xueqiu.android.community.model.Status;
import com.xueqiu.android.community.model.User;
import java.util.List;

public final class ao
  extends com.xueqiu.android.common.a.d<Status>
{
  com.d.a.b.d e;
  com.d.a.b.d f;
  private int g = 1;
  private final Context h;
  private long i;
  private com.d.a.b.d j;
  
  public ao(Context paramContext, long paramLong)
  {
    super(paramContext);
    e locale = n.a();
    locale.c = 2130837903;
    locale.b = 2130837903;
    locale.a = 2130837903;
    this.e = locale.b();
    locale = n.a();
    locale.c = 2130838024;
    locale.b = 2130838024;
    locale.a = 2130838024;
    locale.q = new c((int)ay.a(12.0F));
    this.f = locale.b();
    locale = n.a();
    locale.b = 2130838024;
    locale.c = 2130838024;
    locale.a = 2130838024;
    locale.q = new c((int)ay.a(24.0F));
    this.j = locale.b();
    this.h = paramContext;
    this.i = paramLong;
    this.g = (((WindowManager)this.h.getSystemService("window")).getDefaultDisplay().getWidth() - (int)ay.a(24.0F));
  }
  
  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    Object localObject1;
    Object localObject2;
    if (this.i == 7L)
    {
      if (paramView == null)
      {
        paramView = new ap(this);
        localObject1 = LayoutInflater.from(this.h).inflate(2130903210, paramViewGroup, false);
        paramView.a = ((LinearLayout)((View)localObject1).findViewById(2131624634));
        paramView.b = ((LinearLayout)((View)localObject1).findViewById(2131624631));
        paramView.c = ((View)localObject1).findViewById(2131624636);
        paramView.d = ((ImageView)((View)localObject1).findViewById(2131624632));
        paramView.e = ((TextView)((View)localObject1).findViewById(2131624633));
        paramView.f = ((SnowBallTextView)((View)localObject1).findViewById(2131624635));
        paramView.g = ((ImageView)((View)localObject1).findViewById(2131624399));
        paramView.h = ((TextView)((View)localObject1).findViewById(2131624400));
        paramView.i = ((TextView)((View)localObject1).findViewById(2131624457));
        paramView.j = ((SnowBallTextView)((View)localObject1).findViewById(2131624403));
        ((View)localObject1).setTag(paramView);
        paramViewGroup = paramView;
        paramView = (Status)getItem(paramInt);
        paramViewGroup.b.setVisibility(8);
        paramViewGroup.c.setVisibility(0);
        paramViewGroup.f.setText(ai.a(paramView.getDescription(), paramViewGroup.k.h, paramViewGroup.f));
        if ((paramView.getAnswers() != null) && (paramView.getAnswers().size() > 0))
        {
          localObject2 = (Comment)paramView.getAnswers().get(0);
          paramViewGroup.j.setText(ai.a(((Comment)localObject2).getText(), paramViewGroup.k.h, paramViewGroup.f));
          if (paramView.getUser() == null) {
            break label436;
          }
          paramViewGroup.h.setVisibility(0);
          paramViewGroup.g.setVisibility(0);
          paramViewGroup.h.setText(((Comment)localObject2).getUser().getScreenName());
          f.a().a(((Comment)localObject2).getUser().getProfileImageUrl(), paramViewGroup.g, paramViewGroup.k.j);
          paramView = "";
          if (TextUtils.isEmpty(((Comment)localObject2).getUser().getVerifiedDescription())) {
            break label410;
          }
          paramView = ((Comment)localObject2).getUser().getVerifiedDescription();
        }
      }
      for (;;)
      {
        paramViewGroup.i.setText(paramView);
        return (View)localObject1;
        paramViewGroup = (ap)paramView.getTag();
        localObject1 = paramView;
        break;
        label410:
        if (!TextUtils.isEmpty(((Comment)localObject2).getUser().getDescription())) {
          paramView = ((Comment)localObject2).getUser().getDescription();
        }
      }
      label436:
      paramViewGroup.h.setVisibility(4);
      paramViewGroup.g.setVisibility(4);
      return (View)localObject1;
    }
    if (paramView == null)
    {
      localObject1 = new aq(this);
      paramView = LayoutInflater.from(this.h).inflate(2130903225, paramViewGroup, false);
      ((aq)localObject1).d = ((TextView)paramView.findViewById(2131624681));
      ((aq)localObject1).e = ((ImageView)paramView.findViewById(2131624680));
      ((aq)localObject1).a = ((ImageView)paramView.findViewById(2131624676));
      ((aq)localObject1).c = ((TextView)paramView.findViewById(2131624679));
      ((aq)localObject1).b = ((TextView)paramView.findViewById(2131624678));
      ((aq)localObject1).g = ((TextView)paramView.findViewById(2131624683));
      ((aq)localObject1).f = ((TextView)paramView.findViewById(2131624682));
      ((aq)localObject1).h = ((ImageView)paramView.findViewById(2131624677));
      paramView.setTag(localObject1);
      paramViewGroup = (ViewGroup)localObject1;
      localObject1 = (Status)getItem(paramInt);
      paramViewGroup.a.setVisibility(8);
      paramViewGroup.h.setVisibility(8);
      if (((Status)localObject1).getPicType() != 2) {
        break label912;
      }
      localObject2 = ((Status)localObject1).getTopicPicHd();
      paramViewGroup.a.setTag(localObject2);
      ViewGroup.LayoutParams localLayoutParams = paramViewGroup.a.getLayoutParams();
      localLayoutParams.height = ((int)(paramViewGroup.i.g * ((Status)localObject1).proportion()));
      paramViewGroup.a.setLayoutParams(localLayoutParams);
      f.a().a((String)localObject2, paramViewGroup.i.e, new aq.1(paramViewGroup));
      paramViewGroup.a.setVisibility(0);
      label734:
      if (!TextUtils.isEmpty(((Status)localObject1).getTopicTitle())) {
        paramViewGroup.b.setText(((Status)localObject1).getTopicTitle());
      }
      if (TextUtils.isEmpty(((Status)localObject1).getTopicDesc())) {
        break label971;
      }
      paramViewGroup.c.setText(ai.b(((Status)localObject1).getTopicDesc(), paramViewGroup.i.h));
    }
    for (;;)
    {
      if (!TextUtils.isEmpty(((Status)localObject1).getUser().getScreenName())) {
        paramViewGroup.d.setText(((Status)localObject1).getUser().getScreenName());
      }
      if (!TextUtils.isEmpty(((Status)localObject1).getUser().getProfileImageUrl()))
      {
        localObject2 = ((Status)localObject1).getUser().getProfileImageUrl();
        f.a().a((String)localObject2, paramViewGroup.e, paramViewGroup.i.f, new o());
      }
      paramViewGroup.g.setText(String.valueOf(((Status)localObject1).getCommentsCount()));
      paramViewGroup.f.setText(String.valueOf(((Status)localObject1).getRetweetsCount()));
      return paramView;
      paramViewGroup = (aq)paramView.getTag();
      break;
      label912:
      if (((Status)localObject1).getPicType() != 1) {
        break label734;
      }
      localObject2 = ((Status)localObject1).getTopicPic();
      paramViewGroup.h.setTag(localObject2);
      f.a().a((String)localObject2, paramViewGroup.i.e, new aq.2(paramViewGroup));
      paramViewGroup.h.setVisibility(0);
      break label734;
      label971:
      if (!TextUtils.isEmpty(((Status)localObject1).getDescription())) {
        paramViewGroup.c.setText(ai.b(((Status)localObject1).getDescription(), paramViewGroup.i.h));
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\community\a\ao.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
package com.xueqiu.android.message.a;

import android.content.Context;
import android.content.Intent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import com.android.volley.y;
import com.d.a.b.f;
import com.xueqiu.android.base.b.ai;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.base.util.v;
import com.xueqiu.android.common.widget.IMTextView;
import com.xueqiu.android.community.UserProfileActivity;
import com.xueqiu.android.community.model.User;
import com.xueqiu.android.message.model.Apply;

public final class k
  extends com.xueqiu.android.common.a.d<Apply>
{
  public ai e;
  private LayoutInflater f;
  private f g = f.a();
  
  public k(Context paramContext)
  {
    super(paramContext);
    this.f = LayoutInflater.from(paramContext);
  }
  
  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    View localView = paramView;
    if (paramView == null)
    {
      localView = this.f.inflate(2130903401, paramViewGroup, false);
      paramView = new l();
      paramView.a = ((ImageView)localView.findViewById(2131625312));
      paramView.b = ((TextView)localView.findViewById(2131624097));
      paramView.c = ((IMTextView)localView.findViewById(2131624457));
      paramView.d = ((Button)localView.findViewById(2131625313));
      localView.setTag(paramView);
    }
    paramViewGroup = (l)localView.getTag();
    final Apply localApply = (Apply)getItem(paramInt);
    paramViewGroup.b.setText(localApply.getScreenName());
    if ((paramViewGroup.a.getTag() == null) || (!paramViewGroup.a.getTag().equals(localApply.getLargeProfileImage())))
    {
      this.g.a(localApply.getLargeProfileImage(), paramViewGroup.a);
      paramViewGroup.a.setTag(localApply.getLargeProfileImage());
    }
    paramViewGroup.a.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        paramAnonymousView = new Intent(k.this.c, UserProfileActivity.class);
        User localUser = new User();
        localUser.setUserId(localApply.getUserId());
        paramAnonymousView.putExtra("extra_user", localUser);
        k.this.c.startActivity(paramAnonymousView);
      }
    });
    if ((localApply.getDescription() != null) && (!localApply.getDescription().trim().equals("")))
    {
      paramView = String.format("我希望加入群组“%s”，留言：“%s”", new Object[] { localApply.getGroupName(), localApply.getDescription() });
      paramViewGroup.c.setText(paramView);
      if (!localApply.isJoined()) {
        break label318;
      }
      paramViewGroup.d.setEnabled(false);
      paramViewGroup.d.setText("已通过");
    }
    for (;;)
    {
      paramViewGroup.d.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          v.a("GroupApplyAdapter", "approve : " + localApply.getId());
          if (k.a(k.this) != null)
          {
            paramAnonymousView = k.a(k.this);
            long l = localApply.getId();
            p local1 = new p()
            {
              public final void a(y paramAnonymous2y)
              {
                aa.a(paramAnonymous2y);
              }
            };
            paramAnonymousView.k.c(l, local1);
          }
        }
      });
      return localView;
      paramView = String.format("我希望加入群组“%s”", new Object[] { localApply.getGroupName() });
      break;
      label318:
      paramViewGroup.d.setText("通过");
      paramViewGroup.d.setEnabled(true);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\message\a\k.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
package com.xueqiu.android.community.a;

import android.content.Context;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.d.a.b.c.c;
import com.d.a.b.d;
import com.d.a.b.e;
import com.d.a.b.f;
import com.xueqiu.android.base.util.ay;
import com.xueqiu.android.base.util.n;
import com.xueqiu.android.base.util.o;
import com.xueqiu.android.community.model.User;
import java.util.ArrayList;
import java.util.List;

public final class bd
  extends BaseAdapter
{
  List<User> a = new ArrayList();
  private Context b;
  private d c = null;
  private f d = null;
  private be e = null;
  
  public bd(Context paramContext)
  {
    this.b = paramContext;
    this.d = f.a();
    paramContext = n.a();
    paramContext.c = 2130837771;
    paramContext.b = 2130837771;
    paramContext.a = 2130837771;
    paramContext.q = new c((int)ay.a(48.0F));
    this.c = paramContext.b();
  }
  
  public final int getCount()
  {
    return this.a.size();
  }
  
  public final Object getItem(int paramInt)
  {
    return this.a.get(paramInt);
  }
  
  public final long getItemId(int paramInt)
  {
    return 0L;
  }
  
  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    View localView = paramView;
    if (paramView == null)
    {
      localView = LayoutInflater.from(paramViewGroup.getContext()).inflate(2130903158, paramViewGroup, false);
      localView.setTag(new bf(this, localView));
    }
    final User localUser = (User)this.a.get(paramInt);
    bf localbf = (bf)localView.getTag();
    paramViewGroup = localUser.getProfileImageUrl();
    paramView = paramViewGroup;
    if (TextUtils.isEmpty(paramViewGroup)) {
      paramView = localUser.getProfileImageUrl();
    }
    this.d.a(paramView, localbf.a, this.c, new o());
    localbf.b.setText(localUser.getScreenName());
    localbf.c.setText(localUser.getRecommendReason());
    paramView = localbf.d;
    if (localUser.isFollowing()) {
      if (localUser.isFollowMe()) {
        paramInt = 2130837831;
      }
    }
    for (;;)
    {
      paramView.setImageResource(paramInt);
      localbf.d.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView) {}
      });
      return localView;
      paramInt = 2130837830;
      continue;
      paramInt = 2130837829;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\community\a\bd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
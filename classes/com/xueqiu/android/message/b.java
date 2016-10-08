package com.xueqiu.android.message;

import android.app.Activity;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.d.a.b.d;
import com.d.a.b.e;
import com.d.a.b.f;
import com.xueqiu.android.base.storage.prefs.UserLogonDataPrefs;
import com.xueqiu.android.base.u;
import com.xueqiu.android.base.util.n;
import com.xueqiu.android.base.v;
import com.xueqiu.android.common.widget.aj;
import com.xueqiu.android.common.widget.an;
import com.xueqiu.android.community.model.User;
import com.xueqiu.android.message.model.IMGroup;
import java.util.List;

public final class b
{
  public static void a(List<String> paramList, ViewGroup paramViewGroup)
  {
    f localf = f.a();
    Object localObject = n.a();
    ((e)localObject).b = 2130838665;
    ((e)localObject).a = 2130838665;
    ((e)localObject).c = 2130838665;
    localObject = ((e)localObject).b();
    int i = 0;
    if (i < paramViewGroup.getChildCount())
    {
      ImageView localImageView = (ImageView)paramViewGroup.getChildAt(i);
      if (i < paramList.size())
      {
        localf.a((String)paramList.get(i), localImageView, (d)localObject);
        localImageView.setVisibility(0);
      }
      for (;;)
      {
        i += 1;
        break;
        localImageView.setVisibility(4);
      }
    }
  }
  
  public static void publishGroup(Activity paramActivity, IMGroup paramIMGroup)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    long l = paramIMGroup.getMasterId();
    u.a();
    if (l == UserLogonDataPrefs.getLogonUserId())
    {
      localStringBuilder.append(String.format("我在雪球创建了一个%d人群组", new Object[] { Integer.valueOf(paramIMGroup.getLimitCount()) }));
      if (!paramIMGroup.isEmptyName()) {
        localStringBuilder.append(String.format("“%s”", new Object[] { paramIMGroup.getName() }));
      }
      localStringBuilder.append(String.format("，欢迎点此申请加入：http://xueqiu.com/g/%d  ", new Object[] { Long.valueOf(paramIMGroup.getId()) }));
    }
    for (;;)
    {
      an localan = new an();
      localan.c = localStringBuilder.toString();
      localan.i = 1;
      localan.d = v.b(String.format("/g/%d", new Object[] { Long.valueOf(paramIMGroup.getId()) }));
      aj.a(paramActivity, localan, null);
      return;
      localStringBuilder.append(String.format("我在雪球加入了 @%s 创建的%d人群组", new Object[] { paramIMGroup.getMaster().getScreenName(), Integer.valueOf(paramIMGroup.getLimitCount()) }));
      if (!paramIMGroup.isEmptyName()) {
        localStringBuilder.append(String.format("“%s”", new Object[] { paramIMGroup.getName() }));
      }
      localStringBuilder.append(String.format("，你也可以点此申请加入：http://xueqiu.com/g/%d  ", new Object[] { Long.valueOf(paramIMGroup.getId()) }));
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\message\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
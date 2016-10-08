package com.xueqiu.android.community;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.a.ac;
import android.support.v4.a.q;
import android.support.v7.a.a;
import android.support.v7.a.f;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import com.xueqiu.android.base.util.v;
import com.xueqiu.android.common.b;
import com.xueqiu.android.common.widget.SwitchSwipeEnableViewPager;

public class TodayTopicActivity
  extends b
{
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setTitle(2131166315);
    v.a("TodayTopic", "onCreate");
    this.i.b().b(true);
    this.i.b().a(true);
    LinearLayout localLinearLayout = new LinearLayout(this);
    localLinearLayout.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
    localLinearLayout.setId(2131623963);
    setContentView(localLinearLayout);
    if (paramBundle == null)
    {
      paramBundle = c().a();
      com.xueqiu.android.community.c.g localg = new com.xueqiu.android.community.c.g();
      int i = getIntent().getIntExtra("view_which", 0);
      Bundle localBundle = new Bundle();
      localBundle.putInt("view_which", i);
      localg.e(localBundle);
      paramBundle.a(localLinearLayout.getId(), localg, "fragment_tag");
      paramBundle.f(localg);
      paramBundle.d();
    }
  }
  
  protected final Boolean w_()
  {
    Object localObject = (com.xueqiu.android.community.c.g)c().a("fragment_tag");
    if (localObject != null)
    {
      localObject = ((com.xueqiu.android.community.c.g)localObject).a;
      if ((localObject != null) && (((SwitchSwipeEnableViewPager)localObject).getCurrentItem() == 0)) {
        return Boolean.valueOf(true);
      }
    }
    return Boolean.valueOf(false);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\community\TodayTopicActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
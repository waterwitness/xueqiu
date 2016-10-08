package com.xueqiu.android.message;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.a.ac;
import android.support.v4.a.q;
import android.view.View;
import android.widget.FrameLayout;

public class RecentTalkActivity
  extends com.xueqiu.android.common.b
{
  private View j = null;
  
  protected final void e()
  {
    com.xueqiu.android.base.b.a();
    if (com.xueqiu.android.base.b.i())
    {
      setTheme(2131361881);
      return;
    }
    super.e();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    int i2 = 0;
    super.onCreate(paramBundle);
    this.j = new FrameLayout(this);
    this.j.setId(2131623963);
    int i;
    int k;
    int m;
    int n;
    int i1;
    if (paramBundle == null)
    {
      paramBundle = getIntent().getExtras();
      if (paramBundle == null) {
        break label136;
      }
      i = paramBundle.getInt("extra_comment_count");
      k = paramBundle.getInt("extra_mention_count");
      m = paramBundle.getInt("extra_paid_mention_count");
      n = paramBundle.getInt("extra_paid_comment_count");
      i1 = paramBundle.getInt("extra_new_follower_count");
      i2 = paramBundle.getInt("extra_trade_notification_count");
    }
    for (;;)
    {
      paramBundle = c.a(i, k, m, n, i1, i2);
      c().a().a(this.j.getId(), paramBundle).d();
      setContentView(this.j);
      return;
      label136:
      i1 = 0;
      n = 0;
      m = 0;
      k = 0;
      i = 0;
    }
  }
  
  protected void onResume()
  {
    super.onResume();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\message\RecentTalkActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
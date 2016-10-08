package com.xueqiu.android.community;

import android.app.NotificationManager;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.a.ac;
import android.support.v4.a.i;
import android.support.v4.a.q;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import com.xueqiu.android.common.b;

public class MentionMeStatusActivity
  extends b
{
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    FrameLayout localFrameLayout = new FrameLayout(this);
    localFrameLayout.setId(2131623963);
    setContentView(localFrameLayout, new FrameLayout.LayoutParams(-1, -1));
    if (paramBundle == null)
    {
      paramBundle = new h();
      paramBundle.e(getIntent().getExtras());
      c().a().a(2131623963, paramBundle, "fragment_tag").d();
    }
  }
  
  protected void onResume()
  {
    super.onResume();
    ((NotificationManager)getSystemService("notification")).cancel(3);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\community\MentionMeStatusActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
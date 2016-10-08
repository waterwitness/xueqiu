package com.xueqiu.android.community;

import android.app.NotificationManager;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.a.ac;
import android.support.v4.a.i;
import android.support.v4.a.q;
import android.widget.FrameLayout;

public class CommentReceiveActivity
  extends com.xueqiu.android.common.b
{
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    FrameLayout localFrameLayout = new FrameLayout(this);
    localFrameLayout.setId(2131623963);
    if (paramBundle == null)
    {
      paramBundle = new b();
      paramBundle.e(getIntent().getExtras());
      c().a().a(localFrameLayout.getId(), paramBundle).d();
    }
    setContentView(localFrameLayout);
  }
  
  protected void onResume()
  {
    super.onResume();
    ((NotificationManager)getSystemService("notification")).cancel(1);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\community\CommentReceiveActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
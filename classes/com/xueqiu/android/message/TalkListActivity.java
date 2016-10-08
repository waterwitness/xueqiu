package com.xueqiu.android.message;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.a.ac;
import android.support.v4.a.i;
import android.support.v4.a.q;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import com.xueqiu.android.common.b;

public class TalkListActivity
  extends b
{
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    FrameLayout localFrameLayout = new FrameLayout(this);
    localFrameLayout.setId(2131623960);
    setContentView(localFrameLayout, new FrameLayout.LayoutParams(-1, -1));
    if (paramBundle == null)
    {
      paramBundle = new d();
      paramBundle.e(getIntent().getExtras());
      c().a().a(2131623960, paramBundle).d();
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\message\TalkListActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
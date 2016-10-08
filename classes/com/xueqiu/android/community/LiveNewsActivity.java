package com.xueqiu.android.community;

import android.os.Bundle;
import android.support.v4.a.ac;
import android.support.v4.a.q;
import android.widget.FrameLayout;
import com.xueqiu.android.common.b;
import com.xueqiu.android.community.c.j;

public class LiveNewsActivity
  extends b
{
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setTitle(2131166303);
    FrameLayout localFrameLayout = new FrameLayout(this);
    localFrameLayout.setId(2131623963);
    if (paramBundle == null) {
      c().a().a(localFrameLayout.getId(), j.u()).d();
    }
    setContentView(localFrameLayout);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\community\LiveNewsActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
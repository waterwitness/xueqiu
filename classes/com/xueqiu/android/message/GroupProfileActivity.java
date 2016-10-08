package com.xueqiu.android.message;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.a.ac;
import android.support.v4.a.q;
import android.support.v7.a.c;
import android.widget.FrameLayout;
import com.xueqiu.android.base.util.v;
import com.xueqiu.android.common.b;

public class GroupProfileActivity
  extends b
{
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    FrameLayout localFrameLayout = new FrameLayout(this);
    localFrameLayout.setId(1);
    setContentView(localFrameLayout, new c(-1));
    long l = getIntent().getLongExtra("extra_group_id", 0L);
    if ((paramBundle == null) && (l != 0L))
    {
      paramBundle = a.a(l);
      c().a().a(1, paramBundle).d();
    }
    while (l != 0L) {
      return;
    }
    v.a("GroupProfileActivity", "groupId not found");
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\message\GroupProfileActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
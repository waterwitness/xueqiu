package com.xueqiu.android.trade;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.a.ac;
import android.support.v4.a.q;
import android.support.v7.a.a;
import android.support.v7.a.f;
import android.support.v7.a.g;
import android.view.View;
import android.widget.FrameLayout;
import com.xueqiu.android.common.b;
import com.xueqiu.android.trade.c.e;

public class OrderActivity
  extends b
{
  private View j = null;
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.i.b().d();
    this.j = new FrameLayout(this);
    this.j.setId(2131623963);
    if (paramBundle == null)
    {
      paramBundle = e.g(getIntent().getBundleExtra("extra_arguments"));
      c().a().a(this.j.getId(), paramBundle).d();
    }
    setContentView(this.j);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\trade\OrderActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
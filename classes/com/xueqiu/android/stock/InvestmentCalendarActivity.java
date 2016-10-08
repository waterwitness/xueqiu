package com.xueqiu.android.stock;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.a.ac;
import android.support.v4.a.q;
import android.support.v7.a.a;
import android.support.v7.a.f;
import android.support.v7.a.g;
import android.view.MenuItem;
import android.widget.FrameLayout;
import com.xueqiu.android.common.b;

public class InvestmentCalendarActivity
  extends b
{
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.i.b().b(true);
    this.i.b().a(true);
    FrameLayout localFrameLayout = new FrameLayout(this);
    localFrameLayout.setId(2131623963);
    if (paramBundle == null)
    {
      paramBundle = new h();
      paramBundle.e(getIntent().getExtras());
      c().a().a(localFrameLayout.getId(), paramBundle).d();
    }
    setContentView(localFrameLayout);
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    if (paramMenuItem.getItemId() == 16908332)
    {
      onBackPressed();
      return true;
    }
    return super.onOptionsItemSelected(paramMenuItem);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\stock\InvestmentCalendarActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
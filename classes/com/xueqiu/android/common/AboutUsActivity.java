package com.xueqiu.android.common;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.a.ac;
import android.support.v4.a.q;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;

public class AboutUsActivity
  extends b
{
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    LinearLayout localLinearLayout = new LinearLayout(this);
    localLinearLayout.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
    localLinearLayout.setId(2131623963);
    setContentView(localLinearLayout);
    if (paramBundle == null)
    {
      paramBundle = new a();
      paramBundle.e(getIntent().getExtras());
      c().a().a(localLinearLayout.getId(), paramBundle).d();
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\AboutUsActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
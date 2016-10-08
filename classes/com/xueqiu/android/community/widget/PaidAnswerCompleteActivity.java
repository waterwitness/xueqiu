package com.xueqiu.android.community.widget;

import android.content.Intent;
import android.os.Bundle;
import android.support.v7.a.a;
import android.support.v7.a.f;
import android.support.v7.a.g;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.TextView;
import com.xueqiu.android.base.util.au;
import com.xueqiu.android.common.b;
import com.xueqiu.android.common.q;
import java.util.Locale;

public class PaidAnswerCompleteActivity
  extends b
  implements View.OnClickListener
{
  private TextView j;
  private TextView k;
  private TextView p;
  
  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    case 2131624526: 
    default: 
      return;
    case 2131624527: 
      q.a("http://xueqiu.com/wallet/assets", this);
    }
    finish();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    float f = 0.0F;
    super.onCreate(paramBundle);
    this.i.b().d();
    setContentView(2130903173);
    if (getIntent() != null) {
      f = getIntent().getFloatExtra("amount", 0.0F);
    }
    f /= 100.0F;
    this.j = ((TextView)findViewById(2131624527));
    this.j.setOnClickListener(this);
    this.k = ((TextView)findViewById(2131624526));
    this.k.setText(String.format(Locale.CHINA, "%s", new Object[] { au.a(Float.valueOf(f)) }));
    this.p = ((TextView)findViewById(2131624525));
    this.p.setOnClickListener(this);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\community\widget\PaidAnswerCompleteActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
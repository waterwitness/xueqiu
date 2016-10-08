package com.xueqiu.android.community;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.xueqiu.android.base.r;
import com.xueqiu.android.common.q;

public class ShareCommentResultActivity
  extends Activity
  implements View.OnClickListener
{
  private static final String a = ShareCommentResultActivity.class.getSimpleName();
  private ImageView b;
  private ImageButton c;
  private RelativeLayout d;
  
  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default: 
      return;
    case 2131624243: 
      q.a("http://xueqiu.com/wallet/balance", this);
    }
    finish();
    overridePendingTransition(0, 0);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903083);
    this.d = ((RelativeLayout)findViewById(2131624242));
    this.d.setOnClickListener(this);
    this.b = ((ImageView)findViewById(2131624243));
    this.b.setImageDrawable(r.h(2130838474));
    this.b.setOnClickListener(this);
    this.c = ((ImageButton)findViewById(2131624244));
    this.c.setOnClickListener(this);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\community\ShareCommentResultActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
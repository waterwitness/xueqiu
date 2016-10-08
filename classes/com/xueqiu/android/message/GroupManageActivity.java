package com.xueqiu.android.message;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.CheckBox;
import com.android.volley.y;
import com.xueqiu.android.base.b.ai;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.message.model.IMGroup;

public class GroupManageActivity
  extends com.xueqiu.android.common.b
{
  private IMGroup j;
  private CheckBox k;
  private CheckBox p;
  private Button q;
  
  protected void onCreate(Bundle paramBundle)
  {
    setContentView(2130903405);
    this.j = ((IMGroup)getIntent().getParcelableExtra("extra_group"));
    this.k = ((CheckBox)findViewById(2131625323));
    this.p = ((CheckBox)findViewById(2131625324));
    this.k.setChecked(this.j.isAllowInviteUser());
    this.p.setChecked(this.j.isPub());
    this.q = ((Button)findViewById(2131625325));
    this.q.setEnabled(this.j.isPub());
    final ai localai = com.xueqiu.android.base.q.a().b();
    this.p.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        localai.a(GroupManageActivity.a(GroupManageActivity.this).getId(), GroupManageActivity.b(GroupManageActivity.this).isChecked(), new p(GroupManageActivity.this)
        {
          public final void a(y paramAnonymous2y)
          {
            aa.a(paramAnonymous2y);
            GroupManageActivity.b(GroupManageActivity.this).setChecked(GroupManageActivity.a(GroupManageActivity.this).isPub());
          }
        });
      }
    });
    this.k.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        localai.b(GroupManageActivity.a(GroupManageActivity.this).getId(), GroupManageActivity.d(GroupManageActivity.this).isChecked(), new p(GroupManageActivity.this)
        {
          public final void a(y paramAnonymous2y)
          {
            aa.a(paramAnonymous2y);
            GroupManageActivity.d(GroupManageActivity.this).setChecked(GroupManageActivity.a(GroupManageActivity.this).isAllowInviteUser());
          }
        });
      }
    });
    super.onCreate(paramBundle);
  }
  
  public void publishGroup(View paramView)
  {
    b.publishGroup(this, this.j);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\message\GroupManageActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
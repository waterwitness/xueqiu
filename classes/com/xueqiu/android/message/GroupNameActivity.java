package com.xueqiu.android.message;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.view.ak;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.EditText;
import com.android.volley.y;
import com.xueqiu.android.base.b.ai;
import com.xueqiu.android.base.b.d;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.common.b;
import com.xueqiu.android.message.model.IMGroup;

public class GroupNameActivity
  extends b
{
  private EditText j;
  private IMGroup k;
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903408);
    this.j = ((EditText)findViewById(2131625327));
    this.k = ((IMGroup)getIntent().getParcelableExtra("extra_org"));
    this.j.setText(this.k.getName());
    this.j.setSelectAllOnFocus(true);
    this.j.requestFocus();
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    ak.a(paramMenu.add(0, 1, 0, "done").setIcon(2130838114), 2);
    return super.onCreateOptionsMenu(paramMenu);
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    if ((paramMenuItem.getItemId() == 1) && (!this.j.getText().toString().trim().equals("")))
    {
      ai localai = com.xueqiu.android.base.q.a().b();
      long l = this.k.getId();
      String str = this.j.getText().toString();
      p local1 = new p(this)
      {
        public final void a(y paramAnonymousy)
        {
          aa.a(paramAnonymousy);
        }
      };
      localai.k.a(l, str, local1);
    }
    return super.onOptionsItemSelected(paramMenuItem);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\message\GroupNameActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
package com.xueqiu.android.common.account;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import com.android.volley.y;
import com.xueqiu.android.base.b.ai;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.t;
import com.xueqiu.android.base.u;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.common.b;
import com.xueqiu.android.common.model.LoginResult;
import com.xueqiu.android.common.model.SNBJSONObject;

public class GetbackPasswordActivity
  extends b
{
  protected final void e()
  {
    super.e();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903065);
    setTitle("找回密码");
    findViewById(2131624120).setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(final View paramAnonymousView)
      {
        paramAnonymousView = ((EditText)GetbackPasswordActivity.this.findViewById(2131624119)).getText().toString().trim();
        final p local1;
        final ai localai;
        if (!paramAnonymousView.equals(""))
        {
          local1 = new p(GetbackPasswordActivity.this)
          {
            public final void a(y paramAnonymous2y)
            {
              GetbackPasswordActivity.this.i();
              aa.a(paramAnonymous2y);
            }
          };
          localai = com.xueqiu.android.base.q.a().b();
          if ((u.a().f != null) && (!u.a().f.equals(""))) {
            break label106;
          }
          localai.d(null, null, null, new p(GetbackPasswordActivity.this)
          {
            public final void a(y paramAnonymous2y)
            {
              GetbackPasswordActivity.this.i();
              aa.a(paramAnonymous2y);
            }
          });
        }
        for (;;)
        {
          GetbackPasswordActivity.this.h();
          return;
          label106:
          localai.f(paramAnonymousView, u.a().f, local1);
        }
      }
    });
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\account\GetbackPasswordActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
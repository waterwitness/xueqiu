package com.xueqiu.android.trade;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.a.ac;
import android.support.v4.a.q;
import android.view.View;
import android.widget.FrameLayout;
import com.xueqiu.android.base.r;
import com.xueqiu.android.base.t;
import com.xueqiu.android.base.u;
import com.xueqiu.android.common.account.LoginActivity;
import com.xueqiu.android.trade.patternlock.c;
import com.xueqiu.android.trade.patternlock.d;
import com.xueqiu.android.trade.patternlock.k;

public class SetPatternActivity
  extends com.xueqiu.android.common.b
{
  private View j = null;
  
  private void j()
  {
    k localk = k.v();
    ac localac = c().a();
    if (this.n) {
      localac.a(this.j.getId(), localk).d();
    }
  }
  
  private void logout()
  {
    new AlertDialog.Builder(this).setPositiveButton(r.d(2131165361), new DialogInterface.OnClickListener()
    {
      public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        u.a().logout();
        paramAnonymousDialogInterface = new Bundle();
        paramAnonymousDialogInterface.putByte("extra_mode", (byte)2);
        Intent localIntent = new Intent(SetPatternActivity.this, LoginActivity.class);
        localIntent.putExtras(paramAnonymousDialogInterface);
        SetPatternActivity.this.startActivity(localIntent);
        SetPatternActivity.this.finish();
      }
    }).setMessage(r.d(2131165786)).create().show();
  }
  
  public void onBackPressed()
  {
    if (d.b(this)) {}
    for (int i = 2131165212;; i = 2131165211)
    {
      new AlertDialog.Builder(this).setPositiveButton(r.d(2131165361), new DialogInterface.OnClickListener()
      {
        public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          SetPatternActivity.this.finish();
        }
      }).setNegativeButton(r.d(2131165296), null).setMessage(i).create().show();
      return;
    }
  }
  
  protected void onCreate(final Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (getIntent() != null)
    {
      if (getIntent().getIntExtra("extra_request_code", 2) == 3) {
        setTitle(2131166312);
      }
    }
    else
    {
      this.j = new FrameLayout(this);
      this.j.setId(2131623963);
      if (paramBundle == null)
      {
        if (!d.b(this)) {
          break label124;
        }
        paramBundle = com.xueqiu.android.trade.patternlock.b.v();
        final ac localac = c().a();
        localac.a(this.j.getId(), paramBundle).d();
        paramBundle.d = new c()
        {
          public final void a()
          {
            localac.b(paramBundle);
            SetPatternActivity.a(SetPatternActivity.this);
          }
          
          public final void a(boolean paramAnonymousBoolean)
          {
            if (!paramAnonymousBoolean) {
              SetPatternActivity.b(SetPatternActivity.this);
            }
          }
        };
      }
    }
    for (;;)
    {
      setContentView(this.j);
      return;
      setTitle(2131166310);
      break;
      label124:
      j();
    }
  }
  
  protected final Boolean w_()
  {
    return Boolean.valueOf(false);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\trade\SetPatternActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
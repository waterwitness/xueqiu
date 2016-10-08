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

public class ConfirmPatternActivity
  extends com.xueqiu.android.common.b
{
  private View j = null;
  
  private void logout()
  {
    new AlertDialog.Builder(this).setPositiveButton(r.d(2131165361), new DialogInterface.OnClickListener()
    {
      public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        u.a().logout();
        paramAnonymousDialogInterface = new Bundle();
        paramAnonymousDialogInterface.putByte("extra_mode", (byte)2);
        Intent localIntent = new Intent(ConfirmPatternActivity.this, LoginActivity.class);
        localIntent.putExtras(paramAnonymousDialogInterface);
        ConfirmPatternActivity.this.startActivity(localIntent);
        ConfirmPatternActivity.this.finish();
      }
    }).setMessage(r.d(2131165786)).create().show();
  }
  
  public void onBackPressed()
  {
    setResult(0);
    super.onBackPressed();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if ((getIntent() != null) && (getIntent().getIntExtra("extra_request_code", 1) == 4)) {
      setTitle(2131166302);
    }
    this.j = new FrameLayout(this);
    this.j.setId(2131623963);
    if (d.b(this))
    {
      paramBundle = com.xueqiu.android.trade.patternlock.b.v();
      c().a().a(this.j.getId(), paramBundle).d();
      paramBundle.d = new c()
      {
        public final void a()
        {
          ConfirmPatternActivity.this.setResult(-1);
          ConfirmPatternActivity.this.finish();
        }
        
        public final void a(boolean paramAnonymousBoolean)
        {
          if (!paramAnonymousBoolean) {
            ConfirmPatternActivity.a(ConfirmPatternActivity.this);
          }
        }
      };
    }
    for (;;)
    {
      setContentView(this.j);
      return;
      finish();
    }
  }
  
  protected final Boolean w_()
  {
    return Boolean.valueOf(false);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\trade\ConfirmPatternActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
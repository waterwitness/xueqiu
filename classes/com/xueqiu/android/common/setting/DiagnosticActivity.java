package com.xueqiu.android.common.setting;

import android.app.Dialog;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.a.h;
import android.support.v4.view.ak;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.TextView;
import com.xueqiu.android.base.storage.DBManager;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.common.widget.ac;
import com.xueqiu.android.community.model.User;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.TimeZone;
import rx.h.p;
import rx.i;

public class DiagnosticActivity
  extends com.xueqiu.android.common.b
{
  protected TextView j;
  protected ac k;
  
  protected void onCreate(final Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903081);
    this.j = ((TextView)findViewById(2131624240));
    this.j.setText("");
    this.k = ac.u();
    paramBundle = this.k;
    paramBundle.c = false;
    if (paramBundle.f != null) {
      paramBundle.f.setCancelable(false);
    }
    this.k.a(c(), "");
    paramBundle = DBManager.getInstance().getCurrentUser();
    new SimpleDateFormat("yyyyMMddHHmmss Z").setTimeZone(TimeZone.getTimeZone("GMT+08:00"));
    a(rx.a.a.a.a(this, rx.a.a(new rx.b() {})).f().b(p.c()).a(rx.a.d.a.a()).a(new rx.c.b()new rx.c.b {}, new rx.c.b()new rx.c.a {}, new rx.c.a()
    {
      public final void a()
      {
        if (DiagnosticActivity.this.k != null) {
          DiagnosticActivity.this.k.a(false);
        }
      }
    }));
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    ak.a(paramMenu.add(0, 1, 0, "发送").setIcon(2130838131), 2);
    return super.onCreateOptionsMenu(paramMenu);
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    Intent localIntent;
    if (paramMenuItem.getItemId() == 1)
    {
      User localUser = DBManager.getInstance().getCurrentUser();
      SimpleDateFormat localSimpleDateFormat = new SimpleDateFormat("yyyyMMddHHmmss Z");
      localSimpleDateFormat.setTimeZone(TimeZone.getTimeZone("GMT+08:00"));
      localIntent = new Intent("android.intent.action.SEND");
      localIntent.setType("message/rfc822");
      localIntent.putExtra("android.intent.extra.EMAIL", new String[] { "Android@xueqiu.com" });
      localIntent.putExtra("android.intent.extra.SUBJECT", String.format("网络检测[%d][%s]", new Object[] { Long.valueOf(localUser.getUserId()), localSimpleDateFormat.format(new Date()) }));
      localIntent.putExtra("android.intent.extra.TEXT", this.j.getText().toString());
    }
    try
    {
      startActivity(Intent.createChooser(localIntent, "发送邮件"));
      return super.onOptionsItemSelected(paramMenuItem);
    }
    catch (ActivityNotFoundException localActivityNotFoundException)
    {
      for (;;)
      {
        aa.a("没有安装邮件客户端.");
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\setting\DiagnosticActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
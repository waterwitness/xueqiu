package com.xueqiu.android.community;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.support.v4.a.ac;
import android.support.v4.a.q;
import android.support.v7.a.f;
import android.support.v7.a.g;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.TextView;
import com.xueqiu.android.base.h;
import com.xueqiu.android.base.h5.c;
import com.xueqiu.android.base.i;
import com.xueqiu.android.common.model.SNBEvent;
import java.net.URLEncoder;
import java.util.Locale;

public class CashierActivity
  extends com.xueqiu.android.common.b
{
  public boolean j = false;
  private AlertDialog k;
  private String p;
  private boolean q = false;
  private boolean r = false;
  private c s;
  private String t = "现金打赏";
  private TextView u;
  private TextView v;
  
  private static String b(String paramString)
  {
    try
    {
      String str = URLEncoder.encode(paramString, "UTF-8");
      return str;
    }
    catch (Exception localException) {}
    return paramString;
  }
  
  private void c(String paramString)
  {
    this.v.setText(paramString);
  }
  
  protected final void e()
  {
    com.xueqiu.android.base.b.a();
    if (com.xueqiu.android.base.b.i())
    {
      setTheme(2131361881);
      return;
    }
    super.e();
  }
  
  public void finish()
  {
    Object localObject = new Intent();
    ((Intent)localObject).putExtra("result_pay_state", this.q);
    setResult(-1, (Intent)localObject);
    if ((this.q) || (this.j))
    {
      super.finish();
      overridePendingTransition(2130968583, 2130968595);
      return;
    }
    if (this.k == null) {
      if (!this.r) {
        break label149;
      }
    }
    label149:
    for (localObject = "打赏";; localObject = "支付")
    {
      this.k = new AlertDialog.Builder(this).setTitle("提示").setMessage(String.format(Locale.CHINA, "要放弃本次%s吗？", new Object[] { localObject })).setPositiveButton(String.format(Locale.CHINA, "继续%s", new Object[] { localObject }), null).setNegativeButton("放弃", new DialogInterface.OnClickListener()
      {
        public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          CashierActivity.c(CashierActivity.this);
          CashierActivity.this.overridePendingTransition(2130968583, 2130968595);
          if (!CashierActivity.d(CashierActivity.this))
          {
            paramAnonymousDialogInterface = new SNBEvent(3103, 2);
            i.a().a(paramAnonymousDialogInterface);
          }
        }
      }).create();
      this.k.show();
      return;
    }
  }
  
  public void onBackPressed()
  {
    super.onBackPressed();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903075);
    this.i.b().d();
    this.u = ((TextView)findViewById(2131623940));
    this.v = ((TextView)findViewById(2131624191));
    if (getIntent() != null)
    {
      this.p = getIntent().getStringExtra("extra_type");
      if ((this.p.equals("type_reward_status")) || (this.p.equals("type_reward_comment"))) {
        this.r = true;
      }
    }
    Object localObject = getTheme().obtainStyledAttributes(new int[] { 2130772183, 2130772186 });
    long l1;
    long l2;
    String str1;
    String str2;
    String str3;
    int m;
    String str4;
    int i;
    if (!this.r)
    {
      findViewById(2131624190).setBackgroundColor(getResources().getColor(2131558535));
      this.v.setTextColor(((TypedArray)localObject).getColor(0, 0));
      this.u.setTextColor(((TypedArray)localObject).getColor(0, 0));
      ((TypedArray)localObject).recycle();
      localObject = "";
      l1 = getIntent().getLongExtra("extra_status_id", 0L);
      l2 = getIntent().getLongExtra("extra_comment_id", 0L);
      str1 = getIntent().getStringExtra("extra_mentions");
      str2 = getIntent().getStringExtra("extra_mentions_amount");
      str3 = getIntent().getStringExtra("extra_content");
      m = getIntent().getIntExtra("extra_forward", 0);
      str4 = this.p;
      i = -1;
      switch (str4.hashCode())
      {
      default: 
        label316:
        switch (i)
        {
        }
        break;
      }
    }
    for (;;)
    {
      c(this.t);
      if (paramBundle == null)
      {
        paramBundle = c().a();
        this.s = c.a((String)localObject, null, false);
        this.s.e_(false);
        paramBundle.a(2131624192, this.s);
        paramBundle.d();
      }
      findViewById(2131623940).setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          CashierActivity.this.finish();
        }
      });
      a(rx.a.b.a.b(this, new IntentFilter("com.xueqiu.android.action.paySuccess")).c(new rx.c.b() {}));
      return;
      this.v.setTextColor(((TypedArray)localObject).getColor(1, 0));
      this.u.setTextColor(((TypedArray)localObject).getColor(1, 0));
      break;
      if (!str4.equals("type_reward_status")) {
        break label316;
      }
      i = 0;
      break label316;
      if (!str4.equals("type_reward_comment")) {
        break label316;
      }
      i = 1;
      break label316;
      if (!str4.equals("type_paid_mention_status")) {
        break label316;
      }
      i = 2;
      break label316;
      if (!str4.equals("type_paid_mention_comment")) {
        break label316;
      }
      i = 3;
      break label316;
      if (!str4.equals("type_paid_mention_repost")) {
        break label316;
      }
      i = 4;
      break label316;
      localObject = String.format(Locale.CHINA, "http://xueqiu.com/c/reward?sid=%d", new Object[] { Long.valueOf(l1) });
      continue;
      localObject = String.format(Locale.CHINA, "http://xueqiu.com/c/reward?cid=%d", new Object[] { Long.valueOf(l2) });
      continue;
      localObject = String.format(Locale.CHINA, "http://xueqiu.com/c/mention?type=status&content=%s&mentions=%s&mentions_amount=%s", new Object[] { b(str3), str1, str2 });
      this.t = "向ta支付";
      continue;
      localObject = String.format(Locale.CHINA, "http://xueqiu.com/c/mention?type=comment&sid=%d&cid=%d&content=%s&mentions=%s&mentions_amount=%s&forward=%d", new Object[] { Long.valueOf(l1), Long.valueOf(l2), b(str3), str1, str2, Integer.valueOf(m) });
      this.t = "向ta支付";
      continue;
      localObject = String.format(Locale.CHINA, "http://xueqiu.com/c/mention?type=repost&sid=%d&content=%s&mentions=%s&mentions_amount=%s&forward=%d", new Object[] { Long.valueOf(l1), b(str3), str1, str2, Integer.valueOf(m) });
      this.t = "向ta支付";
    }
  }
  
  protected void onResume()
  {
    super.onResume();
    if (this.s != null) {
      this.s.z();
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\community\CashierActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
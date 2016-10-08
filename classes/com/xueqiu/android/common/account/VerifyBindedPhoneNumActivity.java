package com.xueqiu.android.common.account;

import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.TextView;
import com.android.volley.y;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.b.q;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.common.b;
import com.xueqiu.android.common.model.RequestResult;

public class VerifyBindedPhoneNumActivity
  extends b
{
  private String j = null;
  private TextView k = null;
  private Button p = null;
  private Button q = null;
  private TextView r = null;
  private TextView s = null;
  private Handler t = null;
  private int u = 0;
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903073);
    this.k = ((TextView)findViewById(2131624176));
    this.p = ((Button)findViewById(2131624178));
    this.r = ((TextView)findViewById(2131624177));
    this.q = ((Button)findViewById(2131624179));
    this.s = ((TextView)findViewById(2131624180));
    this.j = getIntent().getStringExtra("extra_phone_number");
    if ((this.j != null) && (this.j.length() == 11))
    {
      paramBundle = String.format("%s **** %s", new Object[] { this.j.substring(0, 3), this.j.substring(7, 11) });
      this.k.setText(paramBundle);
    }
    this.r.addTextChangedListener(new TextWatcher()
    {
      public final void afterTextChanged(Editable paramAnonymousEditable) {}
      
      public final void beforeTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
      
      public final void onTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3)
      {
        if (paramAnonymousCharSequence.length() == 4)
        {
          VerifyBindedPhoneNumActivity.a(VerifyBindedPhoneNumActivity.this).setEnabled(true);
          VerifyBindedPhoneNumActivity.a(VerifyBindedPhoneNumActivity.this).setBackgroundResource(2130837786);
          VerifyBindedPhoneNumActivity.a(VerifyBindedPhoneNumActivity.this).setTextColor(-1);
          return;
        }
        VerifyBindedPhoneNumActivity.a(VerifyBindedPhoneNumActivity.this).setEnabled(false);
        VerifyBindedPhoneNumActivity.a(VerifyBindedPhoneNumActivity.this).setBackgroundResource(2130837801);
        VerifyBindedPhoneNumActivity.a(VerifyBindedPhoneNumActivity.this).setTextColor(VerifyBindedPhoneNumActivity.this.getResources().getColor(2131558728));
      }
    });
    this.p.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        VerifyBindedPhoneNumActivity.b(VerifyBindedPhoneNumActivity.this);
      }
    });
    this.q.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        VerifyBindedPhoneNumActivity.c(VerifyBindedPhoneNumActivity.this);
      }
    });
    this.s.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        paramAnonymousView = new Intent("android.intent.action.SENDTO");
        paramAnonymousView.setData(Uri.parse(String.format("mailto:%s", new Object[] { VerifyBindedPhoneNumActivity.d(VerifyBindedPhoneNumActivity.this).getText() })));
        paramAnonymousView.putExtra("android.intent.extra.SUBJECT", "无法验证手机号");
        VerifyBindedPhoneNumActivity.this.startActivity(paramAnonymousView);
      }
    });
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\account\VerifyBindedPhoneNumActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
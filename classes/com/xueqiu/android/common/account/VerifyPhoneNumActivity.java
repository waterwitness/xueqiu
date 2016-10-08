package com.xueqiu.android.common.account;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Handler;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import com.android.volley.n;
import com.android.volley.y;
import com.google.gson.JsonObject;
import com.xueqiu.android.base.a.a;
import com.xueqiu.android.base.b.a.c;
import com.xueqiu.android.base.b.ai;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.b.x;
import com.xueqiu.android.base.r;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.common.b;
import com.xueqiu.android.common.model.LoginResult;
import com.xueqiu.android.common.model.OAuthRegisterInfo;
import com.xueqiu.android.common.model.RequestResult;
import com.xueqiu.android.common.widget.f;
import com.xueqiu.android.common.widget.g;
import com.xueqiu.android.community.CountryCodeSelectActivity;
import com.xueqiu.android.community.UserProfileActivity;
import com.xueqiu.android.community.model.User;
import rx.i;

public class VerifyPhoneNumActivity
  extends b
{
  private OAuthRegisterInfo A = null;
  private f B;
  private Handler C = null;
  private int D = 0;
  private int j = 1;
  private TextView k;
  private EditText p;
  private EditText q;
  private EditText r;
  private Button s;
  private EditText t;
  private x u = null;
  private boolean v = false;
  private String w = null;
  private boolean x = false;
  private String y;
  private String z = null;
  
  private void k()
  {
    com.xueqiu.android.base.q.a().b().d(null, null, null, new p(this)
    {
      public final void a(y paramAnonymousy)
      {
        aa.a(paramAnonymousy);
      }
    });
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    if ((paramInt1 == 1) && (paramInt2 == -1))
    {
      String str = paramIntent.getStringExtra("extra_country_code");
      paramIntent = paramIntent.getStringExtra("extra_country_name");
      this.k.setTag(str);
      this.k.setText(String.format("%s  +%s", new Object[] { paramIntent, str }));
    }
  }
  
  public void onBackPressed()
  {
    if (this.j == 1)
    {
      new AlertDialog.Builder(this).setTitle(getString(2131166217)).setNegativeButton(getString(2131165296), null).setPositiveButton(getString(2131165361), new DialogInterface.OnClickListener()
      {
        public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          paramAnonymousDialogInterface = new Bundle();
          paramAnonymousDialogInterface.putByte("extra_mode", (byte)2);
          Intent localIntent = new Intent(VerifyPhoneNumActivity.this, LoginActivity.class);
          localIntent.putExtras(paramAnonymousDialogInterface);
          localIntent.addFlags(131072);
          VerifyPhoneNumActivity.this.startActivity(localIntent);
          VerifyPhoneNumActivity.this.finish();
        }
      }).setMessage(getString(2131165371)).create().show();
      return;
    }
    super.onBackPressed();
  }
  
  public void onCreate(final Bundle paramBundle)
  {
    setTheme(2131361880);
    super.onCreate(paramBundle);
    setContentView(2130903074);
    this.j = getIntent().getIntExtra("extra_verify_phone_intent", 1);
    if ((this.j == 1) || (this.j == 3)) {
      setTitle(2131165253);
    }
    label86:
    label378:
    label463:
    label481:
    do
    {
      break label378;
      if (this.j == 1)
      {
        this.A = ((OAuthRegisterInfo)getIntent().getParcelableExtra("extra_oauth_register_info"));
        k();
        this.s = ((Button)findViewById(2131624186));
        this.s.setEnabled(false);
        this.k = ((TextView)findViewById(2131624183));
        this.p = ((EditText)findViewById(2131624185));
        this.q = ((EditText)findViewById(2131624173));
        this.r = ((EditText)findViewById(2131624175));
        paramBundle = getString(2131165380);
        String str = getString(2131165309);
        this.k.setTag(paramBundle);
        this.k.setText(String.format("%s  +%s", new Object[] { str, paramBundle }));
        this.p.addTextChangedListener(new TextWatcher()
        {
          public final void afterTextChanged(Editable paramAnonymousEditable) {}
          
          public final void beforeTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
          
          public final void onTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3)
          {
            if ((VerifyPhoneNumActivity.a(VerifyPhoneNumActivity.this).getTag().equals(VerifyPhoneNumActivity.this.getString(2131165380))) && (paramAnonymousCharSequence.length() != 11))
            {
              VerifyPhoneNumActivity.b(VerifyPhoneNumActivity.this).setEnabled(false);
              return;
            }
            VerifyPhoneNumActivity.b(VerifyPhoneNumActivity.this).setEnabled(true);
          }
        });
        this.s.setOnClickListener(new View.OnClickListener()
        {
          public final void onClick(View paramAnonymousView)
          {
            paramAnonymousView = "+" + VerifyPhoneNumActivity.a(VerifyPhoneNumActivity.this).getTag();
            String str = VerifyPhoneNumActivity.c(VerifyPhoneNumActivity.this).getText().toString();
            VerifyPhoneNumActivity.a(VerifyPhoneNumActivity.this, (String)VerifyPhoneNumActivity.a(VerifyPhoneNumActivity.this).getTag());
            if (c.a(str))
            {
              aa.a("请先填写手机号");
              return;
            }
            new AlertDialog.Builder(VerifyPhoneNumActivity.this).setTitle(VerifyPhoneNumActivity.this.getString(2131166217)).setNegativeButton(VerifyPhoneNumActivity.this.getString(2131165296), null).setPositiveButton(VerifyPhoneNumActivity.this.getString(2131165361), new DialogInterface.OnClickListener()
            {
              public final void onClick(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
              {
                VerifyPhoneNumActivity.a(VerifyPhoneNumActivity.this, false);
                VerifyPhoneNumActivity.d(VerifyPhoneNumActivity.this).requestFocus();
              }
            }).setMessage(VerifyPhoneNumActivity.this.getString(2131166286) + "\n" + paramAnonymousView + " " + str).create().show();
          }
        });
        findViewById(2131624182).setOnClickListener(new View.OnClickListener()
        {
          public final void onClick(View paramAnonymousView)
          {
            paramAnonymousView = new Intent();
            paramAnonymousView.setClass(VerifyPhoneNumActivity.this, CountryCodeSelectActivity.class);
            VerifyPhoneNumActivity.this.startActivityForResult(paramAnonymousView, 1);
          }
        });
        findViewById(2131624184).setOnClickListener(new View.OnClickListener()
        {
          public final void onClick(View paramAnonymousView)
          {
            VerifyPhoneNumActivity.c(VerifyPhoneNumActivity.this).requestFocus();
          }
        });
        paramBundle = (Button)findViewById(2131624154);
        if (this.j != 1) {
          break label463;
        }
        paramBundle.setText(2131165765);
      }
      for (;;)
      {
        this.t = ((EditText)findViewById(2131624177));
        this.t.addTextChangedListener(new TextWatcher()
        {
          public final void afterTextChanged(Editable paramAnonymousEditable) {}
          
          public final void beforeTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
          
          public final void onTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3)
          {
            if (paramAnonymousCharSequence.length() == 4)
            {
              if ((VerifyPhoneNumActivity.e(VerifyPhoneNumActivity.this) != null) && (!VerifyPhoneNumActivity.e(VerifyPhoneNumActivity.this).i)) {
                VerifyPhoneNumActivity.e(VerifyPhoneNumActivity.this).h = true;
              }
              VerifyPhoneNumActivity.f(VerifyPhoneNumActivity.this);
              paramBundle.setEnabled(true);
              paramBundle.setBackgroundResource(2130837786);
              paramBundle.setTextColor(-1);
              return;
            }
            VerifyPhoneNumActivity.d(VerifyPhoneNumActivity.this).setCompoundDrawablesWithIntrinsicBounds(0, 0, 0, 0);
            paramBundle.setEnabled(false);
            paramBundle.setBackgroundResource(2130837801);
            paramBundle.setTextColor(VerifyPhoneNumActivity.this.getResources().getColor(2131558524));
          }
        });
        paramBundle.setOnClickListener(new View.OnClickListener()
        {
          public final void onClick(View paramAnonymousView)
          {
            if (VerifyPhoneNumActivity.g(VerifyPhoneNumActivity.this)) {
              VerifyPhoneNumActivity.h(VerifyPhoneNumActivity.this);
            }
            do
            {
              return;
              if (VerifyPhoneNumActivity.d(VerifyPhoneNumActivity.this).getText().length() != 4)
              {
                aa.a("请输入4位数验证码");
                return;
              }
              if (VerifyPhoneNumActivity.i(VerifyPhoneNumActivity.this) != null)
              {
                aa.a(VerifyPhoneNumActivity.i(VerifyPhoneNumActivity.this));
                return;
              }
            } while ((VerifyPhoneNumActivity.e(VerifyPhoneNumActivity.this) == null) || (VerifyPhoneNumActivity.e(VerifyPhoneNumActivity.this).i));
            VerifyPhoneNumActivity.b(VerifyPhoneNumActivity.this, true);
            VerifyPhoneNumActivity.this.c_(VerifyPhoneNumActivity.this.getString(2131166049));
          }
        });
        paramBundle = (TextView)findViewById(2131624181);
        if (this.j != 1) {
          break label481;
        }
        paramBundle.setVisibility(0);
        paramBundle.setText(2131165260);
        return;
        if (this.j != 2) {
          break;
        }
        setTitle(2131165567);
        findViewById(2131624189).setVisibility(0);
        findViewById(2131624171).setVisibility(0);
        findViewById(2131624174).setVisibility(0);
        findViewById(2131624189).setOnClickListener(new View.OnClickListener()
        {
          public final void onClick(View paramAnonymousView)
          {
            paramAnonymousView = new Intent(VerifyPhoneNumActivity.this, GetbackPasswordActivity.class);
            VerifyPhoneNumActivity.this.finish();
            VerifyPhoneNumActivity.this.startActivity(paramAnonymousView);
          }
        });
        break;
        if (this.j != 2) {
          break label86;
        }
        k();
        break label86;
        if (this.j == 2) {
          paramBundle.setText(2131165567);
        }
      }
    } while (this.j != 3);
    paramBundle.setVisibility(0);
    paramBundle.setText(2131165261);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\account\VerifyPhoneNumActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
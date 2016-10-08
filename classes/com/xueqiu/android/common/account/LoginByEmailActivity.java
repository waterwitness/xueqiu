package com.xueqiu.android.common.account;

import android.content.Intent;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;
import com.android.volley.y;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.b.q;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.common.b;
import com.xueqiu.android.common.model.LoginResult;

public class LoginByEmailActivity
  extends b
{
  private EditText j;
  private EditText k;
  
  public void onCreate(Bundle paramBundle)
  {
    setTheme(2131361880);
    super.onCreate(paramBundle);
    setContentView(2130903066);
    this.j = ((EditText)findViewById(2131624123));
    this.k = ((EditText)findViewById(2131624126));
    ((ImageView)findViewById(2131624127)).setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        paramAnonymousView = new Intent(LoginByEmailActivity.this, GetbackPasswordActivity.class);
        LoginByEmailActivity.this.startActivity(paramAnonymousView);
      }
    });
    findViewById(2131624116).setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        LoginByEmailActivity.a(LoginByEmailActivity.this);
      }
    });
    this.j.setImeOptions(5);
    this.j.setImeActionLabel(getString(2131165764), 5);
    this.k.setImeOptions(2);
    this.k.setImeActionLabel(getString(2131165716), 2);
    this.k.setOnEditorActionListener(new TextView.OnEditorActionListener()
    {
      public final boolean onEditorAction(TextView paramAnonymousTextView, int paramAnonymousInt, KeyEvent paramAnonymousKeyEvent)
      {
        if ((paramAnonymousInt & 0x2) == 2)
        {
          LoginByEmailActivity.a(LoginByEmailActivity.this);
          return true;
        }
        return false;
      }
    });
    ((InputMethodManager)getSystemService("input_method")).showSoftInput(this.j, 0);
    setTitle("邮箱登录");
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\account\LoginByEmailActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
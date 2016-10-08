package com.xueqiu.android.common.account;

import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.common.b;
import com.xueqiu.android.common.model.RequestResult;
import rx.i;

public class UpdatePasswordActivity
  extends b
{
  private EditText j;
  private EditText k;
  private EditText p;
  
  public void onBackPressed()
  {
    super.onBackPressed();
  }
  
  public void onCreate(Bundle paramBundle)
  {
    setTheme(2131361880);
    super.onCreate(paramBundle);
    setContentView(2130903072);
    this.j = ((EditText)findViewById(2131624170));
    this.k = ((EditText)findViewById(2131624173));
    this.p = ((EditText)findViewById(2131624175));
    findViewById(2131624116).setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        paramAnonymousView = UpdatePasswordActivity.a(UpdatePasswordActivity.this).getText().toString().trim();
        String str1 = UpdatePasswordActivity.b(UpdatePasswordActivity.this).getText().toString().trim();
        String str2 = UpdatePasswordActivity.c(UpdatePasswordActivity.this).getText().toString().trim();
        if (paramAnonymousView.equals(""))
        {
          aa.a("旧密码不能为空");
          return;
        }
        if (str2.equals(""))
        {
          aa.a("新密码不能为空");
          return;
        }
        if (!str2.matches("(?=^.{8,16}$)(?=.*\\d)(?=.*[a-zA-Z]).*$"))
        {
          aa.a(2131166162);
          return;
        }
        if (str1.equals(""))
        {
          aa.a("确认密码不能为空");
          return;
        }
        if (!str2.equals(str1))
        {
          aa.a("两次输入的密码不一致");
          return;
        }
        UpdatePasswordActivity.d(UpdatePasswordActivity.this);
      }
    });
    findViewById(2131624168).setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        UpdatePasswordActivity.a(UpdatePasswordActivity.this).requestFocus();
      }
    });
    findViewById(2131624171).setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        UpdatePasswordActivity.c(UpdatePasswordActivity.this).requestFocus();
      }
    });
    findViewById(2131624174).setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        UpdatePasswordActivity.b(UpdatePasswordActivity.this).requestFocus();
      }
    });
    setTitle("修改密码");
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\account\UpdatePasswordActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
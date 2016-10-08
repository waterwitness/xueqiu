package com.xueqiu.android.community;

import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.TextView;
import com.android.volley.y;
import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.tencent.tauth.Tencent;
import com.tencent.tauth.TencentOpenAPI;
import com.xueqiu.android.base.b.ai;
import com.xueqiu.android.base.b.ao;
import com.xueqiu.android.base.b.ap;
import com.xueqiu.android.base.b.h;
import com.xueqiu.android.base.b.m.1;
import com.xueqiu.android.base.b.m.2;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.base.util.r;
import com.xueqiu.android.common.account.VerifyPhoneNumActivity;
import com.xueqiu.android.common.b;
import com.xueqiu.android.common.model.OAuthBindResult;
import com.xueqiu.android.common.model.RequestResult;

public class AccountBindingActivity
  extends b
{
  private View.OnClickListener A = new View.OnClickListener()
  {
    public final void onClick(View paramAnonymousView)
    {
      if (AccountBindingActivity.h(AccountBindingActivity.this) == 1) {}
      for (paramAnonymousView = AccountBindingActivity.this.getString(2131166225);; paramAnonymousView = AccountBindingActivity.this.getString(2131166224))
      {
        new AlertDialog.Builder(AccountBindingActivity.this).setMessage(paramAnonymousView).setPositiveButton(2131165361, null).show();
        return;
      }
    }
  };
  private View.OnClickListener B = new View.OnClickListener()
  {
    public final void onClick(View paramAnonymousView)
    {
      if (AccountBindingActivity.i(AccountBindingActivity.this) == 1)
      {
        paramAnonymousView = AccountBindingActivity.this.getString(2131166222);
        new AlertDialog.Builder(AccountBindingActivity.this).setMessage(paramAnonymousView).setNegativeButton(2131165296, null).setPositiveButton(2131165361, new DialogInterface.OnClickListener()
        {
          public final void onClick(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
          {
            AccountBindingActivity.a(AccountBindingActivity.this, "wc");
          }
        }).show();
        return;
      }
      if (AccountBindingActivity.i(AccountBindingActivity.this) == 2)
      {
        paramAnonymousView = AccountBindingActivity.this.getString(2131166218);
        new AlertDialog.Builder(AccountBindingActivity.this).setMessage(paramAnonymousView).setNegativeButton(2131165768, null).setPositiveButton(2131166591, new DialogInterface.OnClickListener()
        {
          public final void onClick(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
          {
            AccountBindingActivity.j(AccountBindingActivity.this);
          }
        }).show();
        return;
      }
      AccountBindingActivity.j(AccountBindingActivity.this);
    }
  };
  private SharedPreferences j = null;
  private int k = 0;
  private int p = 0;
  private int q = 0;
  private int r = 0;
  private int s = 0;
  private ap t = null;
  private com.xueqiu.android.base.b.m u = null;
  private ao v = null;
  private int w = 1;
  private View.OnClickListener x = new View.OnClickListener()
  {
    public final void onClick(View paramAnonymousView)
    {
      if (AccountBindingActivity.c(AccountBindingActivity.this) == 0)
      {
        paramAnonymousView = new Intent();
        paramAnonymousView.setClass(AccountBindingActivity.this, VerifyPhoneNumActivity.class);
        paramAnonymousView.putExtra("extra_verify_phone_intent", 3);
        AccountBindingActivity.this.startActivityForResult(paramAnonymousView, 4);
        return;
      }
      paramAnonymousView = AccountBindingActivity.this.getString(2131166220);
      new AlertDialog.Builder(AccountBindingActivity.this).setMessage(paramAnonymousView).setNegativeButton(2131165296, null).setPositiveButton(2131165361, new DialogInterface.OnClickListener()
      {
        public final void onClick(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
        {
          AccountBindingActivity.a(AccountBindingActivity.this, "phone");
        }
      }).show();
    }
  };
  private View.OnClickListener y = new View.OnClickListener()
  {
    public final void onClick(View paramAnonymousView)
    {
      if (AccountBindingActivity.d(AccountBindingActivity.this) == 1)
      {
        paramAnonymousView = AccountBindingActivity.this.getString(2131166223);
        new AlertDialog.Builder(AccountBindingActivity.this).setMessage(paramAnonymousView).setNegativeButton(2131165296, null).setPositiveButton(2131165361, new DialogInterface.OnClickListener()
        {
          public final void onClick(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
          {
            AccountBindingActivity.a(AccountBindingActivity.this, "sina");
          }
        }).show();
        return;
      }
      if (AccountBindingActivity.d(AccountBindingActivity.this) == 2)
      {
        paramAnonymousView = AccountBindingActivity.this.getString(2131166218);
        new AlertDialog.Builder(AccountBindingActivity.this).setMessage(paramAnonymousView).setNegativeButton(2131165768, null).setPositiveButton(2131166591, new DialogInterface.OnClickListener()
        {
          public final void onClick(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
          {
            AccountBindingActivity.e(AccountBindingActivity.this);
            AccountBindingActivity.b(AccountBindingActivity.this).a();
          }
        }).show();
        return;
      }
      AccountBindingActivity.e(AccountBindingActivity.this);
      AccountBindingActivity.b(AccountBindingActivity.this).a();
    }
  };
  private View.OnClickListener z = new View.OnClickListener()
  {
    public final void onClick(View paramAnonymousView)
    {
      if (AccountBindingActivity.f(AccountBindingActivity.this) == 1)
      {
        paramAnonymousView = AccountBindingActivity.this.getString(2131166221);
        new AlertDialog.Builder(AccountBindingActivity.this).setMessage(paramAnonymousView).setNegativeButton(2131165296, null).setPositiveButton(2131165361, new DialogInterface.OnClickListener()
        {
          public final void onClick(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
          {
            AccountBindingActivity.a(AccountBindingActivity.this, "qq");
          }
        }).show();
        return;
      }
      if (AccountBindingActivity.f(AccountBindingActivity.this) == 2)
      {
        paramAnonymousView = AccountBindingActivity.this.getString(2131166218);
        new AlertDialog.Builder(AccountBindingActivity.this).setMessage(paramAnonymousView).setNegativeButton(2131165768, null).setPositiveButton(2131166591, new DialogInterface.OnClickListener()
        {
          public final void onClick(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
          {
            AccountBindingActivity.g(AccountBindingActivity.this);
          }
        }).show();
        return;
      }
      AccountBindingActivity.g(AccountBindingActivity.this);
    }
  };
  
  private void a(JsonObject paramJsonObject)
  {
    Object localObject1 = (TextView)findViewById(2131624176);
    TextView localTextView1 = (TextView)findViewById(2131624200);
    TextView localTextView2 = (TextView)findViewById(2131624204);
    Object localObject2 = (TextView)findViewById(2131624208);
    TextView localTextView3 = (TextView)findViewById(2131624212);
    label126:
    int i4;
    int i;
    int i3;
    int m;
    int i2;
    int n;
    int i1;
    if (!r.a(paramJsonObject, "telephone"))
    {
      ((TextView)localObject1).setText(r.a(paramJsonObject, "telephone", null));
      this.r = 1;
      findViewById(2131624193).setEnabled(false);
      findViewById(2131624196).setVisibility(8);
      if (r.a(paramJsonObject, "email")) {
        break label331;
      }
      ((TextView)localObject2).setText(r.a(paramJsonObject, "email", null));
      this.k = 1;
      if ((this.r == 1) && (this.k == 1)) {
        findViewById(2131624193).setEnabled(true);
      }
      i4 = 0;
      i = 0;
      i3 = 0;
      m = 0;
      i2 = 0;
      n = 0;
      if (r.a(paramJsonObject, "oauthbind")) {
        break label502;
      }
      paramJsonObject = paramJsonObject.getAsJsonArray("oauthbind");
      i1 = 0;
      label189:
      i2 = n;
      i3 = m;
      i4 = i;
      if (i1 >= paramJsonObject.size()) {
        break label502;
      }
      localObject1 = paramJsonObject.get(i1).getAsJsonArray();
      localObject2 = ((JsonArray)localObject1).get(0).getAsString();
      if (!((String)localObject2).equals("sina")) {
        break label360;
      }
      if (!((JsonArray)localObject1).get(3).getAsBoolean()) {
        break label346;
      }
      localTextView1.setText(((JsonArray)localObject1).get(2).getAsString());
      this.p = 1;
      label272:
      i3 = 1;
      i2 = m;
    }
    label331:
    label346:
    label360:
    do
    {
      i1 += 1;
      m = i2;
      i = i3;
      break label189;
      ((TextView)localObject1).setText("未绑定");
      findViewById(2131624196).setVisibility(0);
      findViewById(2131624193).setEnabled(true);
      this.r = 0;
      break;
      ((TextView)localObject2).setText("未绑定");
      this.k = 0;
      break label126;
      localTextView1.setText("授权过期");
      this.p = 2;
      break label272;
      if (((String)localObject2).equals("qq"))
      {
        if (((JsonArray)localObject1).get(3).getAsBoolean()) {
          localTextView2.setText(((JsonArray)localObject1).get(2).getAsString());
        }
        for (this.q = 1;; this.q = 2)
        {
          i2 = 1;
          i3 = i;
          break;
          localTextView2.setText("授权过期");
        }
      }
      i2 = m;
      i3 = i;
    } while (!((String)localObject2).equals("wc"));
    if (((JsonArray)localObject1).get(3).getAsBoolean()) {
      localTextView3.setText(((JsonArray)localObject1).get(2).getAsString());
    }
    for (this.s = 1;; this.s = 2)
    {
      n = 1;
      i2 = m;
      i3 = i;
      break;
      localTextView3.setText("授权过期");
    }
    label502:
    if (i4 == 0)
    {
      localTextView1.setText("未绑定");
      this.p = 0;
    }
    if (i3 == 0)
    {
      localTextView2.setText("未绑定");
      this.q = 0;
    }
    if (i2 == 0)
    {
      localTextView3.setText("未绑定");
      this.s = 0;
    }
  }
  
  private void j()
  {
    h();
    com.xueqiu.android.base.q.a().b().c(new p(this)
    {
      public final void a(y paramAnonymousy)
      {
        AccountBindingActivity.this.i();
        aa.a(paramAnonymousy);
      }
    });
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    if (this.w == 2)
    {
      this.u.b.onActivityResult(paramInt1, paramInt2, paramIntent);
      return;
    }
    if (paramInt1 == 4)
    {
      j();
      return;
    }
    this.t.a(paramInt1, paramInt2, paramIntent);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    setTheme(2131361880);
    super.onCreate(paramBundle);
    setContentView(2130903076);
    this.j = PreferenceManager.getDefaultSharedPreferences(this);
    paramBundle = this.j.getString("bound_info", null);
    if (paramBundle != null) {
      a((JsonObject)com.xueqiu.android.base.util.m.a().fromJson(paramBundle, JsonObject.class));
    }
    j();
    findViewById(2131624193).setOnClickListener(this.x);
    findViewById(2131624197).setOnClickListener(this.y);
    findViewById(2131624201).setOnClickListener(this.z);
    findViewById(2131624205).setOnClickListener(this.A);
    findViewById(2131624209).setOnClickListener(this.B);
    this.t = new ap(this, new h()
    {
      public final void a()
      {
        AccountBindingActivity.this.h();
        AccountBindingActivity.b(AccountBindingActivity.this).a(new com.xueqiu.android.base.b.i()
        {
          public final void a()
          {
            AccountBindingActivity.a(AccountBindingActivity.this);
            AccountBindingActivity.this.i();
          }
        });
      }
    });
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\community\AccountBindingActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
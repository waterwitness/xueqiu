package com.xueqiu.android.common.account;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import android.provider.MediaStore.Images.Media;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.Window;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import com.android.volley.y;
import com.d.a.b.c.c;
import com.d.a.b.e;
import com.sina.weibo.sdk.auth.Oauth2AccessToken;
import com.sina.weibo.sdk.exception.WeiboException;
import com.sina.weibo.sdk.net.RequestListener;
import com.sina.weibo.sdk.openapi.UsersAPI;
import com.tencent.open.HttpStatusException;
import com.tencent.open.NetworkUnavailableException;
import com.tencent.tauth.IRequestListener;
import com.tencent.tauth.Tencent;
import com.tencent.tauth.TencentOpenAPI;
import com.tencent.tauth.bean.UserInfo;
import com.tencent.tauth.http.Callback;
import com.tencent.tauth.http.TDebug;
import com.umeng.analytics.MobclickAgent;
import com.xueqiu.android.base.b.ai;
import com.xueqiu.android.base.b.m;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.b.x;
import com.xueqiu.android.base.t;
import com.xueqiu.android.base.u;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.base.util.ad;
import com.xueqiu.android.base.util.bc;
import com.xueqiu.android.base.util.v;
import com.xueqiu.android.common.b;
import com.xueqiu.android.common.model.FileUploadResult;
import com.xueqiu.android.common.model.LoginResult;
import com.xueqiu.android.common.model.RequestResult;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.SocketTimeoutException;
import org.apache.http.conn.ConnectTimeoutException;
import org.json.JSONException;
import org.json.JSONObject;

public class RegisterCompleteUserInfoActivity
  extends b
{
  private String A = null;
  private ImageView B = null;
  private File C = null;
  private boolean D = true;
  private boolean E = false;
  private boolean F = false;
  private boolean G = false;
  private com.d.a.b.d H;
  private x I = null;
  private String j = null;
  private String k = null;
  private String p = null;
  private String q = null;
  private long r = 0L;
  private String s = null;
  private String t = null;
  private String u = null;
  private String v = null;
  private String w = null;
  private String x = null;
  private EditText y = null;
  private EditText z = null;
  
  private void a(Bitmap paramBitmap)
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    paramBitmap.compress(Bitmap.CompressFormat.JPEG, 100, localByteArrayOutputStream);
    paramBitmap = localByteArrayOutputStream.toByteArray();
    this.I = com.xueqiu.android.base.q.a().b().b(paramBitmap, "upload_profile_image.jpeg", new p(this)
    {
      public final void a(y paramAnonymousy)
      {
        aa.a(paramAnonymousy);
        RegisterCompleteUserInfoActivity.k(RegisterCompleteUserInfoActivity.this);
        RegisterCompleteUserInfoActivity.f(RegisterCompleteUserInfoActivity.this);
      }
    });
  }
  
  private void a(Uri paramUri)
  {
    Intent localIntent = new Intent("com.android.camera.action.CROP");
    localIntent.setDataAndType(paramUri, "image/*");
    localIntent.putExtra("crop", "true");
    localIntent.putExtra("aspectX", 1);
    localIntent.putExtra("aspectY", 1);
    localIntent.putExtra("outputX", 180);
    localIntent.putExtra("outputY", 180);
    localIntent.putExtra("return-data", true);
    startActivityForResult(localIntent, 3);
  }
  
  private void j()
  {
    ai localai;
    if ((this.F) && (this.E) && (this.D) && (this.G))
    {
      h();
      localai = com.xueqiu.android.base.q.a().b();
      this.u = this.z.getText().toString();
      this.v = this.y.getText().toString();
      p local7 = new p(this)
      {
        public final void a(y paramAnonymousy)
        {
          RegisterCompleteUserInfoActivity.this.i();
          aa.a(paramAnonymousy);
        }
      };
      if (this.j.equals("phone")) {
        localai.a(this.t, this.s, this.u, this.A, this.v, this.x, local7);
      }
    }
    else
    {
      return;
    }
    localai.e(this.v, this.A, new p(this)
    {
      public final void a(y paramAnonymousy)
      {
        RegisterCompleteUserInfoActivity.this.i();
        aa.a(paramAnonymousy);
      }
    });
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    switch (paramInt1)
    {
    }
    for (;;)
    {
      super.onActivityResult(paramInt1, paramInt2, paramIntent);
      return;
      if (paramIntent != null)
      {
        a(paramIntent.getData());
        continue;
        a(Uri.fromFile(new File(this.C, "snowball_temp.jpeg")));
        continue;
        if (paramIntent != null)
        {
          Object localObject = paramIntent.getExtras();
          if (localObject != null)
          {
            localObject = (Bitmap)((Bundle)localObject).getParcelable("data");
            Bitmap localBitmap = ad.a((Bitmap)localObject, getResources().getDimensionPixelOffset(2131230755));
            this.B.setImageBitmap(localBitmap);
            if (this.I != null) {
              this.I.h = true;
            }
            a((Bitmap)localObject);
          }
        }
      }
    }
  }
  
  public void onBackPressed()
  {
    new AlertDialog.Builder(this).setTitle(getString(2131166217)).setNegativeButton(getString(2131165296), null).setPositiveButton(getString(2131165361), new DialogInterface.OnClickListener()
    {
      public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        paramAnonymousDialogInterface = new Bundle();
        paramAnonymousDialogInterface.putByte("extra_mode", (byte)2);
        Intent localIntent = new Intent(RegisterCompleteUserInfoActivity.this, LoginActivity.class);
        localIntent.putExtras(paramAnonymousDialogInterface);
        localIntent.addFlags(131072);
        RegisterCompleteUserInfoActivity.this.startActivity(localIntent);
        RegisterCompleteUserInfoActivity.this.finish();
      }
    }).setMessage(getString(2131165371)).create().show();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    setTheme(2131361880);
    super.onCreate(paramBundle);
    getWindow().setSoftInputMode(18);
    setContentView(2130903069);
    setTitle(2131165927);
    this.j = getIntent().getStringExtra("extra_register_by");
    this.C = new File(Environment.getExternalStorageDirectory(), "snowball");
    this.B = ((ImageView)findViewById(2131624151));
    this.y = ((EditText)findViewById(2131624153));
    this.z = ((EditText)findViewById(2131624126));
    if (this.j.equals("phone")) {
      this.F = true;
    }
    this.B.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        RegisterCompleteUserInfoActivity.a(RegisterCompleteUserInfoActivity.this);
      }
    });
    this.k = getIntent().getStringExtra("extra_oauth_userid");
    this.r = getIntent().getLongExtra("extra_oauth_expirein", 0L);
    this.p = getIntent().getStringExtra("extra_oauth_token");
    this.w = getIntent().getStringExtra("extra_wechat_openid");
    paramBundle = new e();
    paramBundle.q = new c(getResources().getDimensionPixelSize(2131230755));
    paramBundle.b = 2130838664;
    paramBundle.a = 2130838664;
    paramBundle.c = 2130838664;
    this.H = paramBundle.b();
    paramBundle = u.a().a;
    if (!TextUtils.isEmpty(paramBundle))
    {
      this.A = paramBundle;
      this.E = true;
    }
    for (;;)
    {
      paramBundle = (Button)findViewById(2131624154);
      paramBundle.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          paramAnonymousView = RegisterCompleteUserInfoActivity.b(RegisterCompleteUserInfoActivity.this).getText().toString().trim();
          String str = RegisterCompleteUserInfoActivity.c(RegisterCompleteUserInfoActivity.this).getText().toString().trim();
          if (TextUtils.isEmpty(str))
          {
            aa.a(RegisterCompleteUserInfoActivity.this.getString(2131165785));
            return;
          }
          if (TextUtils.isEmpty(paramAnonymousView))
          {
            aa.a(2131165767);
            return;
          }
          if ((TextUtils.isEmpty(paramAnonymousView)) || (!bc.a(paramAnonymousView)))
          {
            aa.a(2131165706);
            return;
          }
          if (!str.matches("(?=^.{8,16}$)(?=.*\\d)(?=.*[a-zA-Z]).*$"))
          {
            aa.a(2131166162);
            return;
          }
          if (!RegisterCompleteUserInfoActivity.d(RegisterCompleteUserInfoActivity.this).equals("phone"))
          {
            RegisterCompleteUserInfoActivity.e(RegisterCompleteUserInfoActivity.this);
            RegisterCompleteUserInfoActivity.f(RegisterCompleteUserInfoActivity.this);
            return;
          }
          RegisterCompleteUserInfoActivity.e(RegisterCompleteUserInfoActivity.this);
          RegisterCompleteUserInfoActivity.f(RegisterCompleteUserInfoActivity.this);
        }
      });
      if (!this.j.equals("phone")) {
        break;
      }
      this.s = getIntent().getStringExtra("extra_phone_number");
      this.t = getIntent().getStringExtra("extra_area_code");
      MobclickAgent.onEvent(getApplicationContext(), "reg_userInfoInput");
      return;
      if (!TextUtils.isEmpty(u.a().f))
      {
        this.A = u.a().f;
        this.E = true;
      }
      else
      {
        com.xueqiu.android.base.q.a().b().d(null, null, null, new p(this)
        {
          public final void a(y paramAnonymousy)
          {
            aa.a(paramAnonymousy);
            RegisterCompleteUserInfoActivity.j(RegisterCompleteUserInfoActivity.this);
          }
        });
      }
    }
    Object localObject;
    if (this.j.equals("sina"))
    {
      localObject = new UsersAPI(new Oauth2AccessToken(this.p, String.valueOf(this.r)));
      v.e("CompleteUserInfoActivity", "oAuthToken = " + this.p + "in=" + this.r);
      ((UsersAPI)localObject).show(Long.parseLong(this.k), new RequestListener()
      {
        public final void onComplete(String paramAnonymousString)
        {
          try
          {
            paramAnonymousString = new JSONObject(paramAnonymousString);
            if ((paramAnonymousString.has("screen_name")) && (paramAnonymousString.has("profile_image_url")))
            {
              RegisterCompleteUserInfoActivity.a(RegisterCompleteUserInfoActivity.this, paramAnonymousString.getString("screen_name"));
              RegisterCompleteUserInfoActivity.b(RegisterCompleteUserInfoActivity.this, paramAnonymousString.getString("avatar_large"));
              RegisterCompleteUserInfoActivity.this.runOnUiThread(new Runnable()
              {
                public final void run()
                {
                  RegisterCompleteUserInfoActivity.i(RegisterCompleteUserInfoActivity.this);
                }
              });
            }
            return;
          }
          catch (JSONException paramAnonymousString)
          {
            aa.a(paramAnonymousString);
          }
        }
        
        public final void onWeiboException(WeiboException paramAnonymousWeiboException)
        {
          v.e("CompleteUserInfoActivity", "request user info failed" + paramAnonymousWeiboException.getMessage());
        }
      });
    }
    for (;;)
    {
      paramBundle.setText(2131165765);
      break;
      if (this.j.equals("qq"))
      {
        if (m.a(this)) {
          Tencent.createInstance("100229413", getApplicationContext()).requestAsync("user/get_simple_userinfo", null, "GET", new IRequestListener()
          {
            public final void onComplete(JSONObject paramAnonymousJSONObject, Object paramAnonymousObject)
            {
              try
              {
                RegisterCompleteUserInfoActivity.a(RegisterCompleteUserInfoActivity.this, paramAnonymousJSONObject.getString("nickname"));
                RegisterCompleteUserInfoActivity.b(RegisterCompleteUserInfoActivity.this, paramAnonymousJSONObject.getString("figureurl_2"));
                RegisterCompleteUserInfoActivity.this.runOnUiThread(new Runnable()
                {
                  public final void run()
                  {
                    RegisterCompleteUserInfoActivity.i(RegisterCompleteUserInfoActivity.this);
                  }
                });
                return;
              }
              catch (JSONException paramAnonymousJSONObject)
              {
                for (;;)
                {
                  paramAnonymousJSONObject.printStackTrace();
                }
              }
            }
            
            public final void onConnectTimeoutException(ConnectTimeoutException paramAnonymousConnectTimeoutException, Object paramAnonymousObject) {}
            
            public final void onHttpStatusException(HttpStatusException paramAnonymousHttpStatusException, Object paramAnonymousObject) {}
            
            public final void onIOException(IOException paramAnonymousIOException, Object paramAnonymousObject) {}
            
            public final void onJSONException(JSONException paramAnonymousJSONException, Object paramAnonymousObject) {}
            
            public final void onMalformedURLException(MalformedURLException paramAnonymousMalformedURLException, Object paramAnonymousObject) {}
            
            public final void onNetworkUnavailableException(NetworkUnavailableException paramAnonymousNetworkUnavailableException, Object paramAnonymousObject) {}
            
            public final void onSocketTimeoutException(SocketTimeoutException paramAnonymousSocketTimeoutException, Object paramAnonymousObject) {}
            
            public final void onUnknowException(Exception paramAnonymousException, Object paramAnonymousObject) {}
          }, Boolean.valueOf(false));
        } else {
          TencentOpenAPI.userInfo(this.p, "100229413", this.k, new Callback()
          {
            public final void onFail(int paramAnonymousInt, final String paramAnonymousString)
            {
              RegisterCompleteUserInfoActivity.this.runOnUiThread(new Runnable()
              {
                public final void run()
                {
                  RegisterCompleteUserInfoActivity.this.i();
                  TDebug.msg(paramAnonymousString, RegisterCompleteUserInfoActivity.this.getApplicationContext());
                }
              });
            }
            
            public final void onSuccess(final Object paramAnonymousObject)
            {
              RegisterCompleteUserInfoActivity.this.runOnUiThread(new Runnable()
              {
                public final void run()
                {
                  UserInfo localUserInfo = (UserInfo)paramAnonymousObject;
                  RegisterCompleteUserInfoActivity.a(RegisterCompleteUserInfoActivity.this, localUserInfo.getNickName());
                  RegisterCompleteUserInfoActivity.b(RegisterCompleteUserInfoActivity.this, localUserInfo.getIcon_100());
                  RegisterCompleteUserInfoActivity.i(RegisterCompleteUserInfoActivity.this);
                }
              });
            }
          });
        }
      }
      else if (this.j.equals("wc"))
      {
        localObject = this.p;
        String str = this.k;
        com.xueqiu.android.base.q.a().b().g((String)localObject, str, new p(this)
        {
          public final void a(y paramAnonymousy)
          {
            v.a("error", paramAnonymousy.getMessage());
            RegisterCompleteUserInfoActivity.this.i();
          }
        });
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\account\RegisterCompleteUserInfoActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
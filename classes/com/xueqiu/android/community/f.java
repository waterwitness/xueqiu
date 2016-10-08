package com.xueqiu.android.community;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.NotificationManager;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.a.k;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.AdapterView.OnItemLongClickListener;
import com.android.volley.n;
import com.android.volley.y;
import com.sina.weibo.sdk.api.share.BaseResponse;
import com.sina.weibo.sdk.api.share.IWeiboHandler.Response;
import com.sina.weibo.sdk.api.share.IWeiboShareAPI;
import com.sina.weibo.sdk.api.share.WeiboShareSDK;
import com.sina.weibo.sdk.auth.WeiboAuth;
import com.sina.weibo.sdk.auth.sso.SsoHandler;
import com.xueqiu.android.base.b.ai;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.b.x;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.common.a.d;
import com.xueqiu.android.common.c;
import com.xueqiu.android.common.r;
import com.xueqiu.android.common.t;
import com.xueqiu.android.common.widget.SNBPullToRefreshListView;
import com.xueqiu.android.community.a.ba;
import com.xueqiu.android.community.a.bb;
import com.xueqiu.android.community.model.User;
import java.util.ArrayList;

public final class f
  extends c
  implements t<User>
{
  public String a = "following";
  r<User> b = null;
  private ba c = null;
  private int d = 1;
  private IWeiboShareAPI e = null;
  private SsoHandler f = null;
  private WeiboAuth g = null;
  
  private x<ArrayList<User>> a(int paramInt, p<ArrayList<User>> paramp)
  {
    return com.xueqiu.android.base.q.a().b().a(paramInt, this.a, paramp);
  }
  
  public final View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    super.a(paramLayoutInflater, paramViewGroup, paramBundle);
    return paramLayoutInflater.inflate(2130903445, paramViewGroup, false);
  }
  
  public final n<ArrayList<User>> a(p<ArrayList<User>> paramp)
  {
    ((NotificationManager)g().getSystemService("notification")).cancel(4);
    this.d = 1;
    return a(this.d, paramp);
  }
  
  public final void a(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if (this.f != null) {
      this.f.authorizeCallBack(paramInt1, paramInt2, paramIntent);
    }
  }
  
  public final void a(Bundle paramBundle)
  {
    super.a(paramBundle);
    this.e = WeiboShareSDK.createWeiboAPI(g(), "669111051");
    this.e.registerApp();
    this.e.handleWeiboResponse(g().getIntent(), new IWeiboHandler.Response()
    {
      public final void onResponse(BaseResponse paramAnonymousBaseResponse)
      {
        switch (paramAnonymousBaseResponse.errCode)
        {
        default: 
          return;
        case 0: 
          aa.a("邀请成功");
          return;
        case 1: 
          aa.a("取消邀请");
          return;
        }
        aa.a("邀请失败");
      }
    });
  }
  
  public final void a(View paramView, Bundle paramBundle)
  {
    super.a(paramView, paramBundle);
    if (this.c == null)
    {
      if (!this.a.equals("unfollowing")) {
        break label151;
      }
      this.c = new ba(g(), 2130903160);
    }
    for (;;)
    {
      this.c.f = true;
      this.b = new r((SNBPullToRefreshListView)c(2131624301).findViewById(2131624301), this);
      this.b.a(this.c);
      this.b.a(new AdapterView.OnItemClickListener()
      {
        public final void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
        {
          paramAnonymousAdapterView = (User)f.a(f.this).c.getItem(paramAnonymousInt - 1);
          paramAnonymousView = new Intent(f.this.g(), UserProfileActivity.class);
          paramAnonymousView.putExtra("extra_user", paramAnonymousAdapterView);
          f.this.a(paramAnonymousView);
        }
      });
      if (this.a.equals("unfollowing")) {
        this.b.a(new AdapterView.OnItemLongClickListener()
        {
          public final boolean onItemLongClick(AdapterView<?> paramAnonymousAdapterView, final View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
          {
            paramAnonymousView = (User)f.a(f.this).c.getItem(paramAnonymousInt - 1);
            paramAnonymousAdapterView = new AlertDialog.Builder(f.this.f());
            paramAnonymousView = new DialogInterface.OnClickListener()
            {
              public final void onClick(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
              {
                switch (paramAnonymous2Int)
                {
                default: 
                  return;
                }
                f.b(f.this, paramAnonymousView);
              }
            };
            paramAnonymousAdapterView.setItems(new CharSequence[] { "删除推荐" }, paramAnonymousView).create().show();
            return true;
          }
        });
      }
      if (this.b.c.getCount() == 0) {
        this.b.a(true);
      }
      return;
      label151:
      if (this.a.equals("invite"))
      {
        this.c = new ba(g(), 2130903162);
        this.c.h = new bb()
        {
          public final void a(User paramAnonymousUser)
          {
            f.a(f.this, paramAnonymousUser);
          }
        };
      }
      else
      {
        this.c = new ba(g());
      }
    }
  }
  
  public final void a(ArrayList<User> paramArrayList, Throwable paramThrowable, boolean paramBoolean)
  {
    if (paramThrowable != null)
    {
      aa.a(paramThrowable);
      this.d -= 1;
    }
    if (!paramBoolean) {
      this.b.c();
    }
  }
  
  public final n<ArrayList<User>> b(p<ArrayList<User>> paramp)
  {
    this.d += 1;
    return a(this.d, paramp);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\community\f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
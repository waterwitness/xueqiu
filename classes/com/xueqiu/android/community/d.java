package com.xueqiu.android.community;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.a.k;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.ListView;
import com.android.volley.n;
import com.android.volley.y;
import com.google.gson.JsonObject;
import com.sina.weibo.sdk.api.share.BaseResponse;
import com.sina.weibo.sdk.api.share.IWeiboHandler.Response;
import com.sina.weibo.sdk.api.share.IWeiboShareAPI;
import com.sina.weibo.sdk.api.share.WeiboShareSDK;
import com.xueqiu.android.base.b.ai;
import com.xueqiu.android.base.b.an;
import com.xueqiu.android.base.b.ap;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.b.x;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.common.c;
import com.xueqiu.android.common.model.OAuthBindResult;
import com.xueqiu.android.common.r;
import com.xueqiu.android.common.t;
import com.xueqiu.android.common.widget.SNBPullToRefreshListView;
import com.xueqiu.android.common.widget.aj;
import com.xueqiu.android.community.a.ba;
import com.xueqiu.android.community.model.IndustryOfUser;
import com.xueqiu.android.community.model.User;
import com.xueqiu.android.message.TalkSearchActivity;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class d
  extends c
  implements t<User>
{
  private r<User> a = null;
  private IWeiboShareAPI ak = null;
  private LinearLayout al;
  private int b = -1;
  private int c = 1;
  private SparseArray<ArrayList<User>> d = new SparseArray();
  private SparseArray<Integer> e = new SparseArray();
  private e f = null;
  private int g = 0;
  private ap h = null;
  
  private x<ArrayList<User>> a(int paramInt, p<ArrayList<User>> paramp)
  {
    ai localai = com.xueqiu.android.base.q.a().b();
    if (this.b == -1) {
      return localai.h.b(paramInt, paramp);
    }
    if (this.b == -2)
    {
      paramInt = this.a.c.getCount();
      return localai.h.c(paramInt, paramp);
    }
    if (this.b == -3) {
      return localai.a(paramInt, "unfollowing", paramp);
    }
    int i = this.b;
    return localai.h.a(i, paramInt, paramp);
  }
  
  private void u()
  {
    ba localba = (ba)this.a.c;
    localba.f = false;
    localba.g = null;
    this.a.c(false);
    if (this.d.indexOfKey(this.b) >= 0)
    {
      this.a.a((ArrayList)this.d.get(this.b));
      return;
    }
    this.a.c.a(null);
    this.a.a();
    this.a.a(true);
  }
  
  public final View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    super.a(paramLayoutInflater, paramViewGroup, paramBundle);
    a("添加球友");
    return paramLayoutInflater.inflate(2130903152, paramViewGroup, false);
  }
  
  public final n<ArrayList<User>> a(p<ArrayList<User>> paramp)
  {
    this.c = 1;
    return a(this.c, paramp);
  }
  
  public final void a(Bundle paramBundle)
  {
    super.a(paramBundle);
    if (g() != null) {
      this.h = FindPeopleActivity.b((FindPeopleActivity)g());
    }
    if (aj.a(f(), "com.sina.weibo"))
    {
      this.ak = WeiboShareSDK.createWeiboAPI(g(), "669111051");
      this.ak.registerApp();
      this.ak.handleWeiboResponse(g().getIntent(), new IWeiboHandler.Response()
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
  }
  
  public final void a(View paramView, Bundle paramBundle)
  {
    super.a(paramView, paramBundle);
    this.al = ((LinearLayout)c(2131624432));
    this.al.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        d.this.a(new Intent(d.this.f(), TalkSearchActivity.class), 2130968592, 2130968584);
      }
    });
    paramView = new ba(g(), 2130903160);
    this.a = new r((SNBPullToRefreshListView)c(2131624301), this);
    this.a.a(paramView);
    this.a.a(new AdapterView.OnItemClickListener()
    {
      public final void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
      {
        paramAnonymousAdapterView = (User)d.b(d.this).c.getItem(paramAnonymousInt - 1);
        paramAnonymousView = new Intent(d.this.g(), UserProfileActivity.class);
        paramAnonymousView.putExtra("extra_user", paramAnonymousAdapterView);
        d.this.a(paramAnonymousView);
      }
    });
    paramView = (ListView)c(2131624433);
    this.f = new e(this, g());
    paramView.setAdapter(this.f);
    paramBundle = new ArrayList();
    IndustryOfUser localIndustryOfUser = new IndustryOfUser();
    localIndustryOfUser.setId(-1);
    localIndustryOfUser.setName(a(2131166590));
    paramBundle.add(localIndustryOfUser);
    this.f.a(paramBundle);
    paramView.setOnItemClickListener(new AdapterView.OnItemClickListener()
    {
      public final void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
      {
        if (d.c(d.this).e == paramAnonymousInt) {
          return;
        }
        d.c(d.this).e = paramAnonymousInt;
        d.c(d.this).notifyDataSetChanged();
        paramAnonymousAdapterView = (IndustryOfUser)d.c(d.this).a().get(paramAnonymousInt);
        paramAnonymousInt = d.d(d.this);
        d.f(d.this).put(paramAnonymousInt, Integer.valueOf(d.e(d.this)));
        d.a(d.this, paramAnonymousAdapterView.getId());
        if (d.f(d.this).indexOfKey(d.d(d.this)) >= 0) {
          d.b(d.this, ((Integer)d.f(d.this).get(d.d(d.this))).intValue());
        }
        d.b(d.this).d().setSelection(0);
        d.b(d.this).b(true);
        paramAnonymousAdapterView = (ba)d.b(d.this).c;
        if (d.d(d.this) == -3)
        {
          d.g(d.this);
          return;
        }
        d.h(d.this).setVisibility(8);
        d.i(d.this).setVisibility(0);
        if (d.d(d.this) == -2)
        {
          paramAnonymousAdapterView.f = true;
          paramAnonymousAdapterView.g = null;
          d.b(d.this).c(true);
        }
        while (d.j(d.this).indexOfKey(d.d(d.this)) >= 0)
        {
          d.b(d.this).a((ArrayList)d.j(d.this).get(d.d(d.this)));
          return;
          if (d.d(d.this) == -1)
          {
            paramAnonymousAdapterView.f = false;
            d.b(d.this).c(true);
          }
          else
          {
            paramAnonymousAdapterView.f = false;
            paramAnonymousAdapterView.g = null;
            d.b(d.this).c(false);
          }
        }
        d.b(d.this).c.a(null);
        d.b(d.this).a();
        d.b(d.this).a(true);
      }
    });
    paramView = x();
    paramBundle = new p(this)
    {
      public final void a(y paramAnonymousy)
      {
        d.this.a(null, paramAnonymousy);
      }
    };
    paramView.h.b(paramBundle);
    if ((g() instanceof FindPeopleActivity)) {
      y();
    }
    this.a.a(true);
  }
  
  public final void a(ArrayList<User> paramArrayList, Throwable paramThrowable, boolean paramBoolean)
  {
    if (g() == null) {
      return;
    }
    if (paramArrayList == null)
    {
      aa.a(paramThrowable);
      paramArrayList = new ArrayList();
    }
    for (;;)
    {
      if ((paramArrayList.size() > 0) && (!paramBoolean)) {
        this.a.c();
      }
      if (this.d.indexOfKey(this.b) < 0) {
        break label180;
      }
      paramThrowable = (ArrayList)this.d.get(this.b);
      if (this.b != -2) {
        break;
      }
      Iterator localIterator1 = paramArrayList.iterator();
      for (;;)
      {
        if (!localIterator1.hasNext()) {
          break label166;
        }
        User localUser = (User)localIterator1.next();
        Iterator localIterator2 = paramThrowable.iterator();
        if (localIterator2.hasNext())
        {
          if (!((User)localIterator2.next()).getScreenName().equals(localUser.getScreenName())) {
            break;
          }
          localIterator1.remove();
        }
      }
      paramArrayList.size();
    }
    label166:
    paramThrowable.addAll(new ArrayList(paramArrayList));
    return;
    label180:
    paramArrayList = new ArrayList(paramArrayList);
    this.d.put(this.b, paramArrayList);
  }
  
  public final void a(List<IndustryOfUser> paramList, Exception paramException)
  {
    if (this.T == null) {
      return;
    }
    z();
    if (paramList == null)
    {
      aa.a(paramException);
      return;
    }
    this.f.a().addAll(paramList);
    this.f.notifyDataSetChanged();
  }
  
  public final n<ArrayList<User>> b(p<ArrayList<User>> paramp)
  {
    this.c += 1;
    return a(this.c, paramp);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\community\d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
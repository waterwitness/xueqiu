package com.xueqiu.android.trade.d;

import android.app.AlertDialog.Builder;
import android.content.Context;
import android.text.TextUtils;
import com.android.volley.y;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.google.gson.reflect.TypeToken;
import com.xueqiu.android.base.a.a;
import com.xueqiu.android.base.b.ai;
import com.xueqiu.android.base.b.am;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.t;
import com.xueqiu.android.base.u;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.base.util.v;
import com.xueqiu.android.common.b;
import com.xueqiu.android.trade.b.k;
import com.xueqiu.android.trade.b.l;
import com.xueqiu.android.trade.d;
import com.xueqiu.android.trade.model.BrokerAccountToken;
import com.xueqiu.android.trade.model.RepoPosition;
import com.xueqiu.android.trade.model.TradeAccount;
import com.xueqiu.android.trade.model.TradePosition;
import com.xueqiu.android.trade.model.Transaction;
import com.xueqiu.android.trade.model.TrustDeed;
import java.util.ArrayList;

public final class g
  implements k
{
  l a;
  TradeAccount b;
  Context c;
  String d;
  String e;
  private final int f = 20;
  
  public g(l paraml, TradeAccount paramTradeAccount)
  {
    this.a = paraml;
    this.b = paramTradeAccount;
  }
  
  public final void a() {}
  
  final void a(a parama, TradeAccount paramTradeAccount, final int paramInt, final Object paramObject)
  {
    com.xueqiu.android.trade.c.a(parama.errorCode, paramTradeAccount, (b)((com.xueqiu.android.common.c)this.a).g(), new d()
    {
      public final void a()
      {
        switch (paramInt)
        {
        default: 
          return;
        case 1: 
          g.this.a((TrustDeed)paramObject);
          return;
        case 4: 
          g.this.a((String)paramObject);
          return;
        case 3: 
          g.this.c();
          return;
        }
        g.this.b((String)paramObject);
      }
      
      public final void b() {}
    }).a(parama);
  }
  
  public final void a(TradeAccount paramTradeAccount)
  {
    this.b = paramTradeAccount;
  }
  
  public final void a(final TrustDeed paramTrustDeed)
  {
    if (this.b == null) {
      return;
    }
    String str1 = u.a().a(this.b.getAid()).getWriteToken();
    ai localai = com.xueqiu.android.base.q.a().b();
    String str2 = this.b.getAid();
    String str3 = paramTrustDeed.getOid();
    String str4 = this.b.getTid();
    String str5 = paramTrustDeed.getEtype();
    paramTrustDeed = new p((com.xueqiu.android.common.c)this.a)
    {
      public final void a(y paramAnonymousy)
      {
        ((com.xueqiu.android.common.c)g.this.a).z();
        if ((paramAnonymousy instanceof a))
        {
          paramAnonymousy = (a)paramAnonymousy;
          if (com.xueqiu.android.trade.c.a(paramAnonymousy.errorCode))
          {
            localObject = com.xueqiu.android.trade.g.a(paramAnonymousy.data);
            g.this.a(paramAnonymousy, (TradeAccount)localObject, 1, paramTrustDeed);
            return;
          }
          if (!TextUtils.equals("70004", paramAnonymousy.errorCode)) {
            g.this.a("");
          }
          Object localObject = g.this.c;
          if ("70004".equals(paramAnonymousy.errorCode))
          {
            localObject = new AlertDialog.Builder((Context)localObject, 2131361925);
            ((AlertDialog.Builder)localObject).setTitle(2131166411);
            ((AlertDialog.Builder)localObject).setMessage(paramAnonymousy.getMessage());
            ((AlertDialog.Builder)localObject).setCancelable(true);
            ((AlertDialog.Builder)localObject).setPositiveButton(2131165361, new com.xueqiu.android.trade.g.2());
            ((AlertDialog.Builder)localObject).show();
            return;
          }
          aa.a(paramAnonymousy);
          return;
        }
        aa.a("撤单出错");
        v.d("TradeHistory", "queryTransactionGJGLList error:" + paramAnonymousy.getMessage());
      }
    };
    localai.m.a(str2, str3, str4, str1, str5, paramTrustDeed);
  }
  
  public final void a(final String paramString)
  {
    if (this.b == null)
    {
      this.a.a(new ArrayList(), false);
      return;
    }
    ai localai = com.xueqiu.android.base.q.a().b();
    String str1 = this.b.getAid();
    String str2 = this.b.getTid();
    p local2 = new p((com.xueqiu.android.common.c)this.a)
    {
      public final void a(y paramAnonymousy)
      {
        v.d("TradeHistory", "queryTrustDeedList error:" + paramAnonymousy.getMessage());
        g.this.a.c();
        aa.a(paramAnonymousy);
      }
    };
    localai.m.a(str1, str2, paramString, local2);
  }
  
  public final void b() {}
  
  public final void b(final String paramString)
  {
    if (this.b == null)
    {
      this.a.b(new ArrayList(), false);
      return;
    }
    ai localai = com.xueqiu.android.base.q.a().b();
    String str1 = this.b.getAid();
    String str2 = this.b.getTid();
    p local3 = new p((com.xueqiu.android.common.c)this.a)
    {
      public final void a(y paramAnonymousy)
      {
        v.d("TradeHistory", "queryTransactionList error:" + paramAnonymousy.getMessage());
        aa.a(paramAnonymousy);
        g.this.a.c();
      }
    };
    localai.m.b(str1, str2, paramString, local3);
  }
  
  public final void c()
  {
    if (this.b == null)
    {
      this.a.a(new ArrayList());
      return;
    }
    com.xueqiu.android.base.q.a().b().i(this.b.getAid(), this.b.getTid(), new p((com.xueqiu.android.common.c)this.a)
    {
      public final void a(y paramAnonymousy)
      {
        v.d("TradeHistory", "queryPositionList error:" + paramAnonymousy.getMessage());
        aa.a(paramAnonymousy);
        g.this.a.c();
      }
    });
  }
  
  public final boolean d()
  {
    return !TextUtils.isEmpty(this.d);
  }
  
  public final boolean e()
  {
    return !TextUtils.isEmpty(this.e);
  }
  
  public final String f()
  {
    return this.d;
  }
  
  public final String g()
  {
    return this.e;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\trade\d\g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
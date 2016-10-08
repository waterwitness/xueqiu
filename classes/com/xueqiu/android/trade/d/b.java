package com.xueqiu.android.trade.d;

import android.content.Intent;
import android.text.TextUtils;
import com.android.volley.y;
import com.google.gson.Gson;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.b.q;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.base.util.m;
import com.xueqiu.android.common.widget.f;
import com.xueqiu.android.trade.c.e;
import com.xueqiu.android.trade.g;
import com.xueqiu.android.trade.model.OrderSheet;
import com.xueqiu.android.trade.model.TradeAccount;
import java.util.List;
import java.util.Map;

final class b
  extends p<List<OrderSheet>>
{
  private c b;
  
  public b(a parama, q paramq, c paramc)
  {
    super(paramq);
    this.b = paramc;
  }
  
  public final void a(y paramy)
  {
    if ((paramy instanceof com.xueqiu.android.base.a.a))
    {
      if (!this.a.g) {
        this.a.a.z();
      }
      Object localObject2 = (com.xueqiu.android.base.a.a)paramy;
      if ((com.xueqiu.android.trade.c.a(((com.xueqiu.android.base.a.a)localObject2).errorCode)) && (((com.xueqiu.android.base.a.a)localObject2).data != null))
      {
        paramy = g.a(((com.xueqiu.android.base.a.a)localObject2).data);
        a.a(this.a, ((com.xueqiu.android.base.a.a)localObject2).errorCode, paramy, this.b);
      }
      String str;
      do
      {
        do
        {
          return;
          if ("70001".equals(((com.xueqiu.android.base.a.a)localObject2).errorCode))
          {
            android.support.v4.content.r.a(this.a.c).a(new Intent("com.xueqiu.android.action.updateBrokerList"));
            return;
          }
          if ("70105".equals(((com.xueqiu.android.base.a.a)localObject2).errorCode))
          {
            paramy = this.a;
            localObject1 = f.a(paramy.c, new a.10(paramy)).a("提示").b("您未做指定交易，是否进行指定交易。");
            ((f)localObject1).g = 17;
            paramy.y = ((f)localObject1).c(paramy.c.getString(2131165296)).d("下单指定");
            paramy.y.show();
            return;
          }
          if (!"70017".equals(((com.xueqiu.android.base.a.a)localObject2).errorCode)) {
            break;
          }
          paramy = this.a;
        } while (((com.xueqiu.android.base.a.a)localObject2).data == null);
        localObject1 = ((com.xueqiu.android.base.a.a)localObject2).getMessage();
        str = com.xueqiu.android.base.util.r.a(((com.xueqiu.android.base.a.a)localObject2).data, "callback_path", null);
      } while (!((com.xueqiu.android.base.a.a)localObject2).data.has("params"));
      localObject2 = ((com.xueqiu.android.base.a.a)localObject2).data.get("params");
      localObject2 = (Map)m.a().fromJson((JsonElement)localObject2, new a.5(paramy).getType());
      ((Map)localObject2).put("tid", paramy.i.getTid());
      Object localObject1 = f.a(paramy.c, new a.6(paramy, (Map)localObject2, str)).a("注意").b((String)localObject1);
      ((f)localObject1).g = 17;
      paramy.y = ((f)localObject1).c(paramy.c.getString(2131165296)).d(paramy.c.getString(2131165361));
      paramy.y.show();
      return;
      if (("70000".equals(((com.xueqiu.android.base.a.a)localObject2).errorCode)) || ("70007".equals(((com.xueqiu.android.base.a.a)localObject2).errorCode)) || ("70010".equals(((com.xueqiu.android.base.a.a)localObject2).errorCode)) || ("79014".equals(((com.xueqiu.android.base.a.a)localObject2).errorCode)))
      {
        this.a.b.a(4, ((com.xueqiu.android.base.a.a)localObject2).getMessage());
        return;
      }
      if ("70018".equals(((com.xueqiu.android.base.a.a)localObject2).errorCode))
      {
        a.a(this.a, (com.xueqiu.android.base.a.a)localObject2);
        return;
      }
      if (("70114".equals(((com.xueqiu.android.base.a.a)localObject2).errorCode)) && (TextUtils.equals(this.a.i.getTid(), "PAMID")))
      {
        paramy = this.a;
        localObject1 = f.a(paramy.c, new a.11(paramy)).a("提示").b("您尚未开通创业板权限，请开通后再试。");
        ((f)localObject1).g = 17;
        paramy.y = ((f)localObject1).c(paramy.c.getString(2131165296)).d("创业板转签");
        paramy.y.show();
        return;
      }
      this.a.b.a(3, ((com.xueqiu.android.base.a.a)localObject2).getMessage());
      return;
    }
    aa.a(paramy);
    this.a.b.a(4, null);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\trade\d\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
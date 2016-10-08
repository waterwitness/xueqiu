package com.xueqiu.android.trade.d;

import android.content.Context;
import android.os.Handler;
import com.snowballfinance.messageplatform.a.y;
import com.xueqiu.android.base.util.as;
import com.xueqiu.android.base.util.at;
import com.xueqiu.android.message.client.MessageService;
import com.xueqiu.android.stock.model.StockQuote;
import com.xueqiu.android.trade.b.f;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import rx.a;

final class e
  implements Runnable
{
  private e(d paramd) {}
  
  public final void run()
  {
    Object localObject1 = this.a;
    boolean bool;
    if (((d)localObject1).d == null)
    {
      bool = false;
      if (!bool) {
        break label266;
      }
      localObject1 = this.a.a.p();
      if ((localObject1 != null) && (((MessageService)localObject1).a())) {
        break label176;
      }
      d.a(this.a);
    }
    label51:
    label176:
    label266:
    for (int i = 1000;; i = 120000)
    {
      localObject1 = this.a;
      ((d)localObject1).b.removeCallbacks(((d)localObject1).e);
      ((d)localObject1).b.postDelayed(((d)localObject1).e, i);
      return;
      Object localObject2 = as.a(((d)localObject1).d);
      if (((at)localObject2).c.equals("bitcoin"))
      {
        bool = true;
        break;
      }
      if (((at)localObject2).b.equals(((d)localObject1).c.getString(2131165733)))
      {
        bool = as.c();
        break;
      }
      if (((at)localObject2).b.equals(((d)localObject1).c.getString(2131165735)))
      {
        bool = as.a();
        break;
      }
      bool = as.b();
      break;
      localObject1 = this.a;
      localObject2 = this.a.d.getSymbol();
      ArrayList localArrayList = new ArrayList();
      localArrayList.add(localObject2);
      ((d)localObject1).a.p().a(y.a(localArrayList, false)).a(1L, TimeUnit.SECONDS).c(new d.5((d)localObject1)).a(new d.3((d)localObject1), new d.4((d)localObject1));
      break label51;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\trade\d\e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
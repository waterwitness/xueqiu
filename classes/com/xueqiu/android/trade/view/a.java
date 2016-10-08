package com.xueqiu.android.trade.view;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListView;
import com.xueqiu.android.base.storage.prefs.UserPrefs;
import com.xueqiu.android.common.widget.f;
import com.xueqiu.android.common.widget.g;
import com.xueqiu.android.trade.model.TradeAccount;
import java.util.ArrayList;

public final class a
{
  TradeAccount a;
  final ArrayList<TradeAccount> b;
  final b c;
  public f d;
  private final com.xueqiu.android.common.b e;
  
  public a(com.xueqiu.android.common.b paramb, TradeAccount paramTradeAccount, ArrayList<TradeAccount> paramArrayList, b paramb1)
  {
    this.e = paramb;
    this.a = paramTradeAccount;
    this.b = paramArrayList;
    this.c = paramb1;
  }
  
  public final void a()
  {
    ListView localListView = new ListView(this.e);
    com.xueqiu.android.trade.a.a locala = new com.xueqiu.android.trade.a.a(this.e, this.a);
    locala.a(this.b);
    localListView.setAdapter(locala);
    this.d = f.a(this.e, new g()
    {
      public final void a(f paramAnonymousf, int paramAnonymousInt)
      {
        a.this.c.a(a.this.a);
      }
    }).a("选择券商").a(localListView).a(true);
    this.d.show();
    localListView.setOnItemClickListener(new AdapterView.OnItemClickListener()
    {
      public final void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
      {
        UserPrefs.setCurrentTradeAccountTid(((TradeAccount)a.this.b.get(paramAnonymousInt)).getTid());
        a.this.d.dismiss();
        a.this.c.a((TradeAccount)a.this.b.get(paramAnonymousInt));
      }
    });
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\trade\view\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
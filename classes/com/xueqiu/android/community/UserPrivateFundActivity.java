package com.xueqiu.android.community;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListView;
import com.xueqiu.android.base.b.ai;
import com.xueqiu.android.base.b.t;
import com.xueqiu.android.community.a.m;
import com.xueqiu.android.community.model.SimpleFund;
import com.xueqiu.android.community.model.User;
import com.xueqiu.android.stock.model.StockQuote;
import java.util.ArrayList;
import java.util.Locale;
import rx.a;

public class UserPrivateFundActivity
  extends com.xueqiu.android.common.b
{
  private User j;
  private ListView k;
  private m p;
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903126);
    this.j = ((User)getIntent().getParcelableExtra("extra_user"));
    this.k = ((ListView)findViewById(2131624369));
    this.p = new m(this);
    this.k.setAdapter(this.p);
    this.k.setOnItemClickListener(new AdapterView.OnItemClickListener()
    {
      public final void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
      {
        paramAnonymousAdapterView = (SimpleFund)UserPrivateFundActivity.a(UserPrivateFundActivity.this).a().get(paramAnonymousInt);
        paramAnonymousAdapterView = com.xueqiu.android.base.util.q.a(UserPrivateFundActivity.this, new StockQuote(paramAnonymousAdapterView.getSymbol()));
        UserPrivateFundActivity.this.startActivity(paramAnonymousAdapterView);
      }
    });
    setTitle(String.format(Locale.CHINA, "%s的私募基金", new Object[] { this.j.getScreenName() }));
    paramBundle = new t(this);
    com.xueqiu.android.base.q.a().b().l(this.j.getUserId(), paramBundle);
    paramBundle.a(this).c(new rx.c.b() {});
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\community\UserPrivateFundActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
package com.xueqiu.android.tactic.c;

import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.a.i;
import android.support.v4.a.k;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ListView;
import android.widget.TextView;
import com.android.volley.y;
import com.xueqiu.android.base.b.ai;
import com.xueqiu.android.base.b.al;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.b.q;
import com.xueqiu.android.common.c;
import com.xueqiu.android.tactic.TacticDetailActivity;
import com.xueqiu.android.tactic.a.f;
import com.xueqiu.android.tactic.d.g;

public class b
  extends c
{
  private ListView a;
  private f b;
  private View c;
  private TextView d;
  private TextView e;
  private long f;
  private com.xueqiu.android.tactic.d.h g;
  
  private void refresh()
  {
    if ((this.g == null) || (this.g.product == null)) {
      return;
    }
    this.d.setText(this.g.product.title);
    this.e.setText(com.xueqiu.android.base.util.h.a(this.g.createdAt, "yyyy-MM-dd HH:mm"));
    this.b.f = this.g.product.id;
    this.b.a(this.g.stocks);
    this.b.notifyDataSetChanged();
  }
  
  public final View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    return paramLayoutInflater.inflate(2130903513, paramViewGroup, false);
  }
  
  public final void a(@Nullable Bundle paramBundle)
  {
    super.a(paramBundle);
    this.f = this.r.getLong("extra_push_id", -1L);
    this.g = ((com.xueqiu.android.tactic.d.h)this.r.getParcelable("extra_push"));
    if (this.f <= 0L) {
      g().finish();
    }
    if (this.g != null) {
      refresh();
    }
    a(a(2131166191));
  }
  
  public final void a(View paramView, @Nullable Bundle paramBundle)
  {
    super.a(paramView, paramBundle);
    this.d = ((TextView)c(2131625635));
    this.e = ((TextView)c(2131625636));
    this.a = ((ListView)c(2131625632));
    this.c = c(2131625631);
    this.b = new f(f());
    this.b.f = this.f;
    this.a.setAdapter(this.b);
    this.c.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        if ((b.a(b.this) == null) || (b.a(b.this).product == null)) {
          return;
        }
        paramAnonymousView = new Intent(b.this.g(), TacticDetailActivity.class);
        paramAnonymousView.putExtra("tactic_id", b.a(b.this).product.id);
        b.this.a(paramAnonymousView);
      }
    });
    paramView = x();
    long l = this.f;
    paramBundle = new p(this)
    {
      public final void a(y paramAnonymousy) {}
    };
    paramView.n.c(l, paramBundle);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\tactic\c\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
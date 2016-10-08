package com.xueqiu.android.tactic.a;

import android.content.Context;
import android.content.Intent;
import android.support.v7.widget.ao;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.TextView;
import com.d.a.b.f;
import com.xueqiu.android.tactic.TacticDetailActivity;
import com.xueqiu.android.tactic.TacticSubscribeActivity;
import com.xueqiu.android.tactic.d.g;
import com.xueqiu.android.tactic.d.i;
import java.util.List;

public final class j
  extends c
{
  private List<i> f;
  
  public j(List<i> paramList, Context paramContext)
  {
    super(paramContext);
    this.f = paramList;
  }
  
  public final int a()
  {
    if (this.f == null) {
      return 0;
    }
    return this.f.size();
  }
  
  public final ao a(ViewGroup paramViewGroup)
  {
    return new k(this.d.inflate(2130903509, paramViewGroup, false));
  }
  
  public final void a(ao paramao, int paramInt)
  {
    k localk = (k)paramao;
    final g localg = ((i)this.f.get(paramInt)).product;
    paramao = null;
    if (localg.imageUrl != null) {
      paramao = String.format("%s%s", new Object[] { localg.imageUrl, "!270x162.jpg" });
    }
    f.a().a(paramao, localk.m, this.e);
    localk.n.setText(localg.title);
    if (!"OFFSHELF".equals(localg.status))
    {
      localk.l.setVisibility(4);
      localk.o.setVisibility(4);
    }
    for (;;)
    {
      localk.k.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          paramAnonymousView = new Intent(j.this.c, TacticDetailActivity.class);
          paramAnonymousView.putExtra("tactic_id", localg.id);
          ((TacticSubscribeActivity)j.this.c).startActivityForResult(paramAnonymousView, 1);
        }
      });
      return;
      localk.l.setVisibility(0);
      localk.o.setVisibility(0);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\tactic\a\j.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
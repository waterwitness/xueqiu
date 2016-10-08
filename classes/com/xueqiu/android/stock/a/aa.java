package com.xueqiu.android.stock.a;

import android.content.Context;
import android.support.v7.widget.ao;
import android.support.v7.widget.s;
import android.support.v7.widget.t;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.d.a.b.f;
import com.xueqiu.android.base.h;
import com.xueqiu.android.base.i;
import com.xueqiu.android.common.model.SNBEvent;
import com.xueqiu.android.common.q;
import java.util.List;

public final class aa
  extends com.xueqiu.android.tactic.a.c
{
  private List<com.xueqiu.android.tactic.d.c> f;
  
  public aa(Context paramContext)
  {
    super(paramContext);
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
    return new ab(this.d.inflate(2130903444, paramViewGroup, false));
  }
  
  public final void a(ao paramao, int paramInt)
  {
    paramao = (ab)paramao;
    final com.xueqiu.android.tactic.d.c localc = (com.xueqiu.android.tactic.d.c)this.f.get(paramInt);
    f.a().a(localc.c, paramao.k, this.e);
    if (localc.a == 0) {
      paramao.l.setVisibility(8);
    }
    for (;;)
    {
      paramao.k.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          if (localc.a == 0)
          {
            paramAnonymousView = new SNBEvent(2800, 11);
            i.a().a(paramAnonymousView);
          }
          for (;;)
          {
            q.a(localc.d, aa.this.c);
            return;
            paramAnonymousView = new SNBEvent(2800, 12);
            i.a().a(paramAnonymousView);
          }
        }
      });
      return;
      paramao.l.setVisibility(0);
      paramao.l.setText(localc.b);
    }
  }
  
  public final void refresh(List<com.xueqiu.android.tactic.d.c> paramList)
  {
    this.f = paramList;
    this.a.a();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\stock\a\aa.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
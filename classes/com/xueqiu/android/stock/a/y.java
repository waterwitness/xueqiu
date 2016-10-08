package com.xueqiu.android.stock.a;

import android.content.Context;
import android.content.Intent;
import android.support.v7.widget.ao;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.d.a.b.f;
import com.xueqiu.android.base.h;
import com.xueqiu.android.base.i;
import com.xueqiu.android.base.util.ar;
import com.xueqiu.android.common.model.SNBEvent;
import com.xueqiu.android.tactic.TacticDetailActivity;
import com.xueqiu.android.tactic.a.c;
import com.xueqiu.android.tactic.d.g;
import java.util.List;
import java.util.Locale;

public final class y
  extends c
{
  private List<g> f;
  
  public y(Context paramContext, List<g> paramList)
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
    return new z(this.d.inflate(2130903443, paramViewGroup, false));
  }
  
  public final void a(ao paramao, int paramInt)
  {
    paramao = (z)paramao;
    final g localg = (g)this.f.get(paramInt);
    f.a().a(localg.imageUrl, paramao.k, this.e);
    paramao.l.setText(localg.title);
    String str = String.format(Locale.CHINA, "%+.2f%%", new Object[] { Double.valueOf(localg.percentage * 100.0D) });
    paramao.m.setText(str);
    paramao.m.setTextColor(ar.a().a(localg.percentage));
    paramao.k.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        paramAnonymousView = new Intent(y.this.c, TacticDetailActivity.class);
        paramAnonymousView.putExtra("tactic_id", localg.id);
        y.this.c.startActivity(paramAnonymousView);
        paramAnonymousView = new SNBEvent(2800, 3);
        paramAnonymousView.addProperty("name", localg.title);
        i.a().a(paramAnonymousView);
      }
    });
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\stock\a\y.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
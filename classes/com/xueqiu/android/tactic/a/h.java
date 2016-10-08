package com.xueqiu.android.tactic.a;

import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.support.v7.widget.ao;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.d.a.b.f;
import com.xueqiu.android.base.util.ar;
import com.xueqiu.android.common.model.SNBEvent;
import com.xueqiu.android.tactic.TacticDetailActivity;
import com.xueqiu.android.tactic.d.g;
import java.util.List;
import java.util.Locale;

public final class h
  extends c
{
  private List<g> f;
  
  public h(List<g> paramList, Context paramContext)
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
    return new i(this.d.inflate(2130903517, paramViewGroup, false));
  }
  
  public final void a(ao paramao, final int paramInt)
  {
    i locali = (i)paramao;
    final g localg = (g)this.f.get(paramInt);
    f.a().a(localg.imageUrl, locali.k, this.e);
    locali.l.setVisibility(0);
    if ("1".equals(localg.tag))
    {
      locali.l.setText("NEW");
      locali.l.setTextColor(Color.parseColor("#0077ee"));
      locali.m.setText(localg.categoryName);
      locali.n.setText(localg.title);
      paramao = "--";
      if (localg.stockCount > 0) {
        if (localg.percentage != 0.0D) {
          break label222;
        }
      }
    }
    label222:
    for (paramao = "0%";; paramao = String.format(Locale.CHINA, "%+.2f%%", new Object[] { Double.valueOf(localg.percentage * 100.0D) }))
    {
      locali.o.setTextColor(ar.a().a(localg.percentage));
      locali.o.setText(paramao);
      locali.k.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          paramAnonymousView = new Intent(h.this.c, TacticDetailActivity.class);
          paramAnonymousView.putExtra("tactic_id", localg.id);
          h.this.c.startActivity(paramAnonymousView);
          paramAnonymousView = new SNBEvent(2300, 1);
          paramAnonymousView.addProperty("product_id", String.valueOf(localg.id));
          paramAnonymousView.addProperty("product_location_id", String.valueOf(paramInt));
          paramAnonymousView.addProperty("product_label", String.valueOf(localg.tag));
          com.xueqiu.android.base.i.a().a(paramAnonymousView);
        }
      });
      return;
      if ("2".equals(localg.tag))
      {
        locali.l.setText("HOT");
        locali.l.setTextColor(Color.parseColor("#ff7700"));
        break;
      }
      locali.l.setVisibility(4);
      break;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\tactic\a\h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
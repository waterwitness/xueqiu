package com.xueqiu.android.cube;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.android.volley.y;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.xueqiu.android.base.b.ai;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.h;
import com.xueqiu.android.base.i;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.base.util.m;
import com.xueqiu.android.base.v;
import com.xueqiu.android.common.b;
import com.xueqiu.android.common.model.SNBEvent;
import com.xueqiu.android.community.model.Status;
import com.xueqiu.android.cube.model.Cube;
import java.util.ArrayList;
import java.util.Iterator;

public class CubeFlyOrderResultActivity
  extends b
{
  private ArrayList<g> j = null;
  private String k = null;
  private Cube p = null;
  
  public void onBackPressed()
  {
    super.onBackPressed();
    i.a().a(new SNBEvent(1411, 1));
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903284);
    setTitle(getString(2131165418));
    paramBundle = getIntent().getStringExtra("cube_fly_order_result");
    this.k = getIntent().getStringExtra("cube_fly_order_tid");
    this.p = ((Cube)getIntent().getParcelableExtra("cube_fly_order_cube"));
    if ((paramBundle != null) && (paramBundle.length() > 0)) {
      this.j = ((ArrayList)m.a().fromJson(paramBundle, new TypeToken() {}.getType()));
    }
    if ((this.j == null) || (this.j.size() <= 0))
    {
      finish();
      return;
    }
    paramBundle = this.j.iterator();
    do
    {
      if (!paramBundle.hasNext()) {
        break;
      }
    } while ("60000".equals(((g)paramBundle.next()).resultCode));
    for (int i = 0;; i = 1)
    {
      LinearLayout localLinearLayout = (LinearLayout)findViewById(2131624872);
      paramBundle = findViewById(2131624871);
      if (i != 0)
      {
        ((ImageView)findViewById(2131624868)).setImageResource(2130837888);
        ((TextView)findViewById(2131624870)).setText(getString(2131165408));
        localLinearLayout.setVisibility(8);
        paramBundle.setVisibility(8);
      }
      do
      {
        findViewById(2131624873).setOnClickListener(new View.OnClickListener()
        {
          public final void onClick(View paramAnonymousView)
          {
            com.xueqiu.android.common.q.a(v.b(String.format("/broker/orders?tid=%s", new Object[] { CubeFlyOrderResultActivity.a(CubeFlyOrderResultActivity.this) })), CubeFlyOrderResultActivity.this);
            if ("PAMID".equals(CubeFlyOrderResultActivity.a(CubeFlyOrderResultActivity.this))) {
              com.xueqiu.android.common.q.a(String.format("%s/broker/trade-history?tid=%s", new Object[] { "https://xueqiu.com", CubeFlyOrderResultActivity.a(CubeFlyOrderResultActivity.this) }), CubeFlyOrderResultActivity.this);
            }
            for (;;)
            {
              i.a().a(new SNBEvent(1411, 2));
              return;
              com.xueqiu.android.common.q.a(String.format("%s/broker/orders?tid=%s", new Object[] { "https://xueqiu.com", CubeFlyOrderResultActivity.a(CubeFlyOrderResultActivity.this) }), CubeFlyOrderResultActivity.this);
            }
          }
        });
        findViewById(2131624874).setOnClickListener(new View.OnClickListener()
        {
          public final void onClick(View paramAnonymousView)
          {
            CubeFlyOrderResultActivity.b(CubeFlyOrderResultActivity.this);
          }
        });
        return;
        ((ImageView)findViewById(2131624868)).setImageResource(2130837887);
        ((TextView)findViewById(2131624870)).setText(getString(2131165399));
        localLinearLayout.setVisibility(0);
        paramBundle.setVisibility(0);
      } while ((localLinearLayout == null) || (this.j.size() <= 0));
      localLinearLayout.removeAllViews();
      i = 0;
      label322:
      View localView;
      if (i < this.j.size())
      {
        localView = View.inflate(this, 2130903285, null);
        paramBundle = (g)this.j.get(i);
        if (!"BUY".equals(paramBundle.order.action)) {
          break label540;
        }
        ((TextView)localView.findViewById(2131624875)).setText("买");
        label387:
        ((TextView)localView.findViewById(2131624876)).setText(paramBundle.order.sname);
        ((TextView)localView.findViewById(2131624877)).setText(String.valueOf(paramBundle.order.price));
        ((TextView)localView.findViewById(2131624878)).setText(String.format("%s股", new Object[] { String.valueOf(paramBundle.order.amount) }));
        if (!"60000".equals(paramBundle.resultCode)) {
          break label575;
        }
      }
      label540:
      label575:
      for (paramBundle = getString(2131165777);; paramBundle = paramBundle.msg)
      {
        ((TextView)localView.findViewById(2131624879)).setText(paramBundle);
        if (i == this.j.size() - 1) {
          localView.findViewById(2131624880).setVisibility(8);
        }
        localLinearLayout.addView(localView);
        i += 1;
        break label322;
        break;
        if (!"SELL".equals(paramBundle.order.action)) {
          break label387;
        }
        ((TextView)localView.findViewById(2131624875)).setText("卖");
        break label387;
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\cube\CubeFlyOrderResultActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
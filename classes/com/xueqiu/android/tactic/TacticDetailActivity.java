package com.xueqiu.android.tactic;

import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import com.android.volley.y;
import com.google.gson.Gson;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.xueqiu.android.base.b.ai;
import com.xueqiu.android.base.b.al;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.h;
import com.xueqiu.android.base.i;
import com.xueqiu.android.base.storage.prefs.UserPrefs;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.base.util.az;
import com.xueqiu.android.base.util.m;
import com.xueqiu.android.base.util.r;
import com.xueqiu.android.common.SingleFragmentActivity;
import com.xueqiu.android.common.model.PagedList;
import com.xueqiu.android.common.model.SNBEvent;
import com.xueqiu.android.common.widget.aj;
import com.xueqiu.android.common.widget.an;
import com.xueqiu.android.common.widget.ap;
import com.xueqiu.android.common.widget.aq;
import com.xueqiu.android.community.widget.PullToZoomListView;
import com.xueqiu.android.community.widget.TransparentHeader;
import java.io.UnsupportedEncodingException;
import java.util.Map;
import org.json.JSONObject;

public class TacticDetailActivity
  extends com.xueqiu.android.common.b
{
  private TextView A;
  private TextView B;
  private TextView C;
  private TextView D;
  private TextView E;
  private ImageView F;
  private View G;
  private boolean H = true;
  private boolean I = true;
  private long j;
  private int k = 1;
  private PagedList<com.xueqiu.android.tactic.d.b> p = new PagedList();
  private com.xueqiu.android.tactic.d.g q;
  private PullToZoomListView r;
  private com.xueqiu.android.tactic.a.d s;
  private TransparentHeader t;
  private View u;
  private View v;
  private View w;
  private View x;
  private View y;
  private View z;
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903502);
    this.i.b().d();
    this.j = getIntent().getLongExtra("tactic_id", 0L);
    if (this.j <= 0L)
    {
      finish();
      return;
    }
    this.r = ((PullToZoomListView)findViewById(2131624241));
    this.w = findViewById(2131625610);
    this.z = findViewById(2131625611);
    this.s = new com.xueqiu.android.tactic.a.d(this);
    this.s.a(this.p.getList());
    this.r.setAdapter(this.s);
    paramBundle = LayoutInflater.from(this);
    this.u = paramBundle.inflate(2130903504, null, false);
    this.A = ((TextView)this.u.findViewById(2131625612));
    this.B = ((TextView)this.u.findViewById(2131625421));
    this.C = ((TextView)this.u.findViewById(2131625426));
    this.F = ((ImageView)this.u.findViewById(2131625614));
    this.G = this.u.findViewById(2131625613);
    this.G.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        paramAnonymousView = new SNBEvent(2301, 2);
        paramAnonymousView.addProperty("product_id", String.valueOf(TacticDetailActivity.a(TacticDetailActivity.this).id));
        if ("OWN".equals(TacticDetailActivity.a(TacticDetailActivity.this).owningStatus))
        {
          TacticDetailActivity.b(TacticDetailActivity.this);
          paramAnonymousView.addProperty("subscription_status", "已订");
        }
        for (;;)
        {
          i.a().a(paramAnonymousView);
          return;
          TacticDetailActivity.c(TacticDetailActivity.this);
          paramAnonymousView.addProperty("subscription_status", "未订");
        }
      }
    });
    this.v = paramBundle.inflate(2130903505, null, false);
    this.D = ((TextView)this.v.findViewById(2131625616));
    this.v.findViewById(2131625615).setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        paramAnonymousView = new Bundle();
        paramAnonymousView.putString("tactic_des_detail", TacticDetailActivity.a(TacticDetailActivity.this).detail);
        paramAnonymousView.putString("tactic_des_content", TacticDetailActivity.a(TacticDetailActivity.this).content);
        paramAnonymousView.putString("tactic_des_push_time", TacticDetailActivity.a(TacticDetailActivity.this).pushTime);
        TacticDetailActivity.this.startActivity(SingleFragmentActivity.a(TacticDetailActivity.this, com.xueqiu.android.tactic.c.a.class, paramAnonymousView));
      }
    });
    this.E = ((TextView)this.v.findViewById(2131625617));
    this.x = paramBundle.inflate(2130903503, null, false);
    this.y = LayoutInflater.from(this).inflate(2130903580, null, false);
    this.y.findViewById(2131625836).setVisibility(0);
    this.r.addFooterView(this.y);
    this.t = ((TransparentHeader)findViewById(2131625609));
    this.t.getBackButton().setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        TacticDetailActivity.this.onBackPressed();
      }
    });
    this.r.setOnScrollListener(new AbsListView.OnScrollListener()
    {
      public final void onScroll(AbsListView paramAnonymousAbsListView, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3)
      {
        if (paramAnonymousInt1 == 0)
        {
          paramAnonymousAbsListView = TacticDetailActivity.f(TacticDetailActivity.this).getChildAt(0);
          if (paramAnonymousAbsListView == null) {
            break label375;
          }
        }
        label106:
        label353:
        label365:
        label375:
        for (int i = paramAnonymousAbsListView.getBottom();; i = 0)
        {
          int j;
          if (i < TacticDetailActivity.g(TacticDetailActivity.this).getHeight())
          {
            float f = (TacticDetailActivity.g(TacticDetailActivity.this).getHeight() - i) / TacticDetailActivity.g(TacticDetailActivity.this).getHeight();
            TacticDetailActivity.g(TacticDetailActivity.this).getHeaderTitle().setAlpha(f);
            TacticDetailActivity.g(TacticDetailActivity.this).a();
            TacticDetailActivity.h(TacticDetailActivity.this).setVisibility(8);
            if (paramAnonymousInt1 == 1)
            {
              paramAnonymousAbsListView = TacticDetailActivity.f(TacticDetailActivity.this).getChildAt(1);
              if (paramAnonymousAbsListView == null) {
                break label365;
              }
              i = paramAnonymousAbsListView.getTop();
              j = paramAnonymousAbsListView.getBottom();
            }
          }
          for (;;)
          {
            com.xueqiu.android.base.util.v.a("host header position", "top:%d; bottom: %d; Nav:%d; Host:%d", new Object[] { Integer.valueOf(i), Integer.valueOf(j), Integer.valueOf(TacticDetailActivity.g(TacticDetailActivity.this).getHeight()), Integer.valueOf(TacticDetailActivity.h(TacticDetailActivity.this).getHeight()) });
            if (i <= TacticDetailActivity.g(TacticDetailActivity.this).getHeight() + TacticDetailActivity.h(TacticDetailActivity.this).getHeight()) {
              TacticDetailActivity.h(TacticDetailActivity.this).setVisibility(0);
            }
            for (;;)
            {
              if (paramAnonymousInt1 > 1) {
                TacticDetailActivity.h(TacticDetailActivity.this).setVisibility(0);
              }
              if ((paramAnonymousInt1 + paramAnonymousInt2 != paramAnonymousInt3) || (TacticDetailActivity.d(TacticDetailActivity.this))) {
                break label353;
              }
              TacticDetailActivity.i(TacticDetailActivity.this).setVisibility(0);
              return;
              TacticDetailActivity.g(TacticDetailActivity.this).getHeaderTitle().setAlpha(0.0F);
              TacticDetailActivity.g(TacticDetailActivity.this).b();
              break;
              TacticDetailActivity.g(TacticDetailActivity.this).getHeaderTitle().setAlpha(1.0F);
              TacticDetailActivity.g(TacticDetailActivity.this).a();
              i = 0;
              break label106;
              TacticDetailActivity.h(TacticDetailActivity.this).setVisibility(8);
            }
            TacticDetailActivity.i(TacticDetailActivity.this).setVisibility(4);
            return;
            j = i;
            i = 0;
          }
        }
      }
      
      public final void onScrollStateChanged(AbsListView paramAnonymousAbsListView, int paramAnonymousInt)
      {
        switch (paramAnonymousInt)
        {
        }
        do
        {
          return;
        } while ((paramAnonymousAbsListView.getLastVisiblePosition() != paramAnonymousAbsListView.getCount() - 1) || (!TacticDetailActivity.d(TacticDetailActivity.this)));
        TacticDetailActivity.a(TacticDetailActivity.this, TacticDetailActivity.e(TacticDetailActivity.this));
      }
    });
    long l = this.j;
    paramBundle = com.xueqiu.android.base.q.a().b();
    p local9 = new p(this)
    {
      public final void a(y paramAnonymousy)
      {
        aa.a(paramAnonymousy);
      }
    };
    paramBundle.n.a(l, local9);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\tactic\TacticDetailActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
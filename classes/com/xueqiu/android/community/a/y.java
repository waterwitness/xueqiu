package com.xueqiu.android.community.a;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.support.v7.widget.ao;
import android.support.v7.widget.t;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.d.a.b.c.c;
import com.d.a.b.d;
import com.d.a.b.e;
import com.d.a.b.f;
import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.reflect.TypeToken;
import com.xueqiu.android.base.b.ai;
import com.xueqiu.android.base.h;
import com.xueqiu.android.base.i;
import com.xueqiu.android.base.q;
import com.xueqiu.android.base.util.ar;
import com.xueqiu.android.base.util.ay;
import com.xueqiu.android.base.util.m;
import com.xueqiu.android.base.util.n;
import com.xueqiu.android.common.model.RequestResult;
import com.xueqiu.android.common.model.SNBEvent;
import com.xueqiu.android.common.widget.RadarChart;
import com.xueqiu.android.community.UserProfileActivity;
import com.xueqiu.android.community.model.RecommendStock;
import com.xueqiu.android.community.model.User;
import com.xueqiu.android.cube.CubeActivity;
import com.xueqiu.android.stock.StockDetailActivity;
import com.xueqiu.android.stock.model.StockQuote;
import java.util.ArrayList;
import java.util.List;

public final class y
  extends android.support.v7.widget.s<ao>
{
  Context c;
  long d = -1L;
  ai e;
  private LayoutInflater f;
  private int g;
  private JsonArray h;
  private List<Object> i = new ArrayList();
  private d j;
  private f k;
  
  public y(Context paramContext, int paramInt, JsonArray paramJsonArray)
  {
    e locale = n.a();
    locale.b = 2130838024;
    locale.c = 2130838024;
    locale.a = 2130838024;
    locale.q = new c((int)ay.a(75.0F));
    this.j = locale.b();
    this.k = f.a();
    this.e = q.a().b();
    this.c = paramContext;
    this.g = paramInt;
    this.h = paramJsonArray;
    this.f = LayoutInflater.from(paramContext);
    c();
  }
  
  private void c()
  {
    if ((this.h == null) || (this.h.size() == 0)) {}
    do
    {
      return;
      if (this.g == 1)
      {
        this.i = ((List)m.a().fromJson(this.h, new TypeToken() {}.getType()));
        return;
      }
      if (this.g == 2)
      {
        this.i = ((List)m.a().fromJson(this.h, new TypeToken() {}.getType()));
        return;
      }
    } while (this.g != 3);
    this.i = ((List)m.a().fromJson(this.h, new TypeToken() {}.getType()));
  }
  
  public final int a()
  {
    if (this.i == null) {
      return 0;
    }
    return this.i.size();
  }
  
  public final ao a(ViewGroup paramViewGroup)
  {
    if (this.g == 1) {
      return new z(this.f.inflate(2130903215, paramViewGroup, false));
    }
    if (this.g == 2) {
      return new ab(this.f.inflate(2130903217, paramViewGroup, false));
    }
    return new aa(this.f.inflate(2130903216, paramViewGroup, false));
  }
  
  public final void a(ao paramao, int paramInt)
  {
    if (this.g == 1)
    {
      localObject1 = (JsonObject)this.i.get(paramInt);
      z localz = (z)paramao;
      final JsonObject localJsonObject = ((JsonObject)localObject1).get("cube").getAsJsonObject();
      localz.n.setText(localJsonObject.get("name").getAsString());
      double d1 = localJsonObject.get("total_gain").getAsDouble();
      localz.m.setText(String.format("%+.2f%%", new Object[] { Double.valueOf(d1) }));
      Object localObject2;
      if (((JsonObject)localObject1).get("has_exist").getAsBoolean())
      {
        localz.r.setImageResource(2130837830);
        localz.o.setText(((JsonObject)localObject1).get("recommend_reason").getAsString());
        paramao = (User)m.a().fromJson(((JsonObject)localObject1).get("owner").getAsJsonObject(), User.class);
        this.k.a(paramao.getProfileImageUrl(), localz.p, this.j);
        localObject2 = localz.q;
        if (paramao.getScreenName() != null) {
          break label294;
        }
      }
      JsonArray localJsonArray;
      label294:
      for (paramao = "";; paramao = paramao.getScreenName())
      {
        ((TextView)localObject2).setText(paramao);
        paramao = ((JsonObject)localObject1).get("rank").getAsJsonObject();
        localObject2 = new ArrayList();
        localJsonArray = paramao.getAsJsonArray("sub_scores");
        paramInt = 0;
        while (paramInt < localJsonArray.size())
        {
          ((ArrayList)localObject2).add(Integer.valueOf(localJsonArray.get(paramInt).getAsJsonObject().get("score").getAsInt()));
          paramInt += 1;
        }
        localz.r.setImageResource(2130837829);
        break;
      }
      paramInt = paramao.get("level").getAsInt();
      if (paramInt == 1) {
        localz.l.setPaintColor("#ffaa00");
      }
      for (;;)
      {
        d1 = paramao.get("total_score").getAsDouble();
        double d2 = paramao.get("max_total_score").getAsDouble();
        localz.l.setDrawLabel(false);
        localz.l.setOutRadius(ay.a(45.0F));
        localz.l.setInRadius(ay.a(15.0F));
        localz.l.setSpacing(ay.a(7.5F));
        localz.l.setItemRadius(ay.a(2.0F));
        localz.l.setValueSize(ay.a(18.0F));
        localz.l.setCircleWidth(1.0F);
        localz.l.setTotalScore((int)Math.rint(d1));
        localz.l.setSubMaxScore((int)(d2 / localJsonArray.size()));
        localz.l.setScores((List)localObject2);
        com.xueqiu.android.base.b.a();
        if (com.xueqiu.android.base.b.i())
        {
          localz.l.setRadarBg(2131558601);
          localz.l.setRadarCircle(2131558603);
          localz.l.setRadarPoint(2131558605);
        }
        localz.l.invalidate();
        localz.r.setOnClickListener(new View.OnClickListener()
        {
          public final void onClick(View paramAnonymousView)
          {
            y localy = y.this;
            JsonObject localJsonObject = localObject1;
            if (localJsonObject.get("has_exist").getAsBoolean()) {}
            for (paramAnonymousView = com.xueqiu.android.base.b.s.b(localy.e, localJsonObject.get("id").getAsString());; paramAnonymousView = com.xueqiu.android.base.b.s.a(localy.e, localJsonObject.get("id").getAsString()))
            {
              paramAnonymousView.a(rx.a.d.a.a()).b(rx.h.p.c()).a(new y.5(localy, localJsonObject), new y.6(localy));
              paramAnonymousView = new SNBEvent(1100, 28);
              paramAnonymousView.addProperty("symbol", localJsonObject.get("symbol").getAsString());
              i.a().a(paramAnonymousView);
              return;
            }
          }
        });
        localz.k.setOnClickListener(new View.OnClickListener()
        {
          public final void onClick(View paramAnonymousView)
          {
            paramAnonymousView = new Intent(y.this.c, CubeActivity.class);
            paramAnonymousView.putExtra("extra_cube_symbol", localJsonObject.get("symbol").getAsString());
            y.this.c.startActivity(paramAnonymousView);
            paramAnonymousView = new SNBEvent(1100, 27);
            paramAnonymousView.addProperty("symbol", localJsonObject.get("symbol").getAsString());
            i.a().a(paramAnonymousView);
          }
        });
        return;
        if (paramInt == 2) {
          localz.l.setPaintColor("#ff7700");
        } else {
          localz.l.setPaintColor("#ff3333");
        }
      }
    }
    if (this.g == 2)
    {
      localObject1 = (User)this.i.get(paramInt);
      paramao = (ab)paramao;
      this.k.a(((User)localObject1).getProfileLargeImageUrl(), paramao.l, this.j);
      paramao.m.setText(((User)localObject1).getScreenName());
      paramao.n.setText(((User)localObject1).getRecommendReason());
      if (((User)localObject1).isFollowing()) {
        paramao.o.setImageResource(2130837830);
      }
      for (;;)
      {
        paramao.o.setOnClickListener(new View.OnClickListener()
        {
          public final void onClick(View paramAnonymousView)
          {
            paramAnonymousView = y.this;
            User localUser = localObject1;
            y.2 local2 = new y.2(paramAnonymousView, localUser);
            if (localUser.isFollowing()) {
              new AlertDialog.Builder(paramAnonymousView.c).setMessage(2131165363).setPositiveButton(2131165361, new y.3(paramAnonymousView, localUser, local2)).setNegativeButton(2131165296, null).create().show();
            }
            for (;;)
            {
              paramAnonymousView = new SNBEvent(1100, 24);
              paramAnonymousView.addProperty("user_id", String.valueOf(localObject1.getUserId()));
              i.a().a(paramAnonymousView);
              return;
              paramAnonymousView.e.i(localUser.getUserId(), local2);
            }
          }
        });
        paramao.k.setOnClickListener(new View.OnClickListener()
        {
          public final void onClick(View paramAnonymousView)
          {
            paramAnonymousView = new Intent(y.this.c, UserProfileActivity.class);
            paramAnonymousView.putExtra("extra_user", localObject1);
            y.this.c.startActivity(paramAnonymousView);
            paramAnonymousView = new SNBEvent(1100, 23);
            paramAnonymousView.addProperty("user_id", String.valueOf(localObject1.getUserId()));
            i.a().a(paramAnonymousView);
          }
        });
        return;
        paramao.o.setImageResource(2130837829);
      }
    }
    final Object localObject1 = (RecommendStock)this.i.get(paramInt);
    paramao = (aa)paramao;
    paramao.l.setBackgroundColor(ar.a().a(((RecommendStock)localObject1).getChange()));
    paramao.m.setText(String.valueOf(((RecommendStock)localObject1).getCurrent()));
    paramao.n.setText(String.format("%+.2f(%+.2f%%)", new Object[] { Double.valueOf(((RecommendStock)localObject1).getChange()), Double.valueOf(((RecommendStock)localObject1).getPercentage()) }));
    paramao.o.setText(((RecommendStock)localObject1).getName());
    paramao.p.setText(((RecommendStock)localObject1).getSymbol());
    paramao.q.setText(((RecommendStock)localObject1).getRecommendReason());
    if (((RecommendStock)localObject1).isHasExist()) {
      paramao.r.setImageResource(2130837830);
    }
    for (;;)
    {
      paramao.r.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          paramAnonymousView = y.this;
          RecommendStock localRecommendStock = localObject1;
          y.4 local4 = new y.4(paramAnonymousView, localRecommendStock);
          if (localRecommendStock.isHasExist()) {
            paramAnonymousView.e.d(localRecommendStock.getSymbol(), local4);
          }
          for (;;)
          {
            paramAnonymousView = new SNBEvent(1100, 26);
            paramAnonymousView.addProperty("symbol", localObject1.getSymbol());
            i.a().a(paramAnonymousView);
            return;
            paramAnonymousView.e.a(localRecommendStock.getSymbol(), 2, local4);
          }
        }
      });
      paramao.k.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          paramAnonymousView = new Intent(y.this.c, StockDetailActivity.class);
          paramAnonymousView.putExtra("extra_stock", new StockQuote(localObject1.getName(), localObject1.getSymbol()));
          y.this.c.startActivity(paramAnonymousView);
          paramAnonymousView = new SNBEvent(1100, 25);
          paramAnonymousView.addProperty("symbol", localObject1.getSymbol());
          i.a().a(paramAnonymousView);
        }
      });
      return;
      paramao.r.setImageResource(2130837829);
    }
  }
  
  public final void a(JsonArray paramJsonArray)
  {
    this.h = paramJsonArray;
    c();
    this.a.a();
  }
  
  public final void b()
  {
    c();
    this.a.a();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\community\a\y.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
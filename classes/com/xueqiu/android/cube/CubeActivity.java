package com.xueqiu.android.cube;

import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.Callback;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.ForegroundColorSpan;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.Button;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.ListView;
import android.widget.TextView;
import com.android.volley.y;
import com.google.gson.Gson;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.reflect.TypeToken;
import com.xueqiu.android.base.b.ai;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.storage.prefs.DefaultPrefs;
import com.xueqiu.android.base.storage.prefs.UserLogonDataPrefs;
import com.xueqiu.android.base.storage.prefs.UserPrefs;
import com.xueqiu.android.base.u;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.base.util.ag;
import com.xueqiu.android.base.util.ap;
import com.xueqiu.android.base.util.as;
import com.xueqiu.android.base.util.au;
import com.xueqiu.android.base.util.ay;
import com.xueqiu.android.base.util.l;
import com.xueqiu.android.base.util.m;
import com.xueqiu.android.base.util.o;
import com.xueqiu.android.common.GuideTutorialActivity;
import com.xueqiu.android.common.model.GuideTutorialType;
import com.xueqiu.android.common.model.RequestResult;
import com.xueqiu.android.common.model.SNBEvent;
import com.xueqiu.android.common.widget.FloatingActionMenu;
import com.xueqiu.android.common.widget.RadarChart;
import com.xueqiu.android.common.widget.SNBPullToRefreshListView;
import com.xueqiu.android.common.widget.ad;
import com.xueqiu.android.common.widget.am;
import com.xueqiu.android.common.widget.ar;
import com.xueqiu.android.community.StatusDetailActivity;
import com.xueqiu.android.community.UserProfileActivity;
import com.xueqiu.android.community.WriteStatusActivity;
import com.xueqiu.android.community.model.Status;
import com.xueqiu.android.community.model.StatusFacetCount;
import com.xueqiu.android.community.model.User;
import com.xueqiu.android.community.model.UserProp;
import com.xueqiu.android.community.model.UserVerifyType;
import com.xueqiu.android.cube.model.Contractor;
import com.xueqiu.android.cube.model.Cube;
import com.xueqiu.android.cube.model.Holding;
import com.xueqiu.android.cube.model.Market;
import com.xueqiu.android.cube.model.NavDailyList;
import com.xueqiu.android.cube.model.Performance;
import com.xueqiu.android.cube.model.Rebalancing;
import com.xueqiu.android.cube.model.Rebalancing.Category;
import com.xueqiu.android.cube.model.Rebalancing.Status;
import com.xueqiu.android.cube.model.RebalancingHistory;
import com.xueqiu.android.cube.model.SpCubeRelation;
import com.xueqiu.android.cube.model.Style;
import com.xueqiu.android.stock.model.StockQuote;
import com.xueqiu.android.trade.OrderFullActivity;
import com.xueqiu.chart.view.LineChart;
import com.xueqiu.chart.view.PieChart;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class CubeActivity
  extends com.xueqiu.android.common.b
  implements am
{
  private static final int[] au = { Color.parseColor("#AAAAAA"), Color.parseColor("#BBBBBB"), Color.parseColor("#CCCCCC"), Color.parseColor("#DDDDDD"), Color.parseColor("#EEEEEE") };
  private TextView A;
  private TextView B;
  private TextView C;
  private LinearLayout D;
  private TextView E;
  private TextView F;
  private TextView G;
  private TextView H;
  private TextView I;
  private View J;
  private ImageView K;
  private View L;
  private PieChart M;
  private TextView N;
  private TextView O;
  private View P;
  private RadarChart Q;
  private TextView R;
  private LinearLayout S;
  private ImageView T;
  private TextView U;
  private TextView V;
  private LineChart W;
  private View X;
  private TextView Y;
  private View Z;
  private View aa;
  private LinearLayout ab;
  private View ac;
  private TextView ad;
  private ImageButton ae;
  private FloatingActionMenu af;
  private LinearLayout ag;
  private LinearLayout ah;
  private Drawable ai;
  private String aj = "all";
  private boolean ak = false;
  private long al;
  private ArrayList<d> am;
  private int an;
  private int ao;
  private String ap;
  private Drawable.Callback aq;
  private Set<Integer> ar;
  private boolean as;
  private rx.j at;
  private TextView av;
  private TextView aw;
  private TextView ax;
  private View ay;
  Button j;
  Button k;
  Button p;
  int q;
  com.xueqiu.android.common.widget.aj r;
  private Cube s;
  private View t;
  private View u;
  private View v;
  private com.xueqiu.android.community.widget.i w;
  private com.xueqiu.android.community.a.ak x;
  private TextView y;
  private TextView z;
  
  public CubeActivity()
  {
    u.a();
    this.al = UserLogonDataPrefs.getLogonUserId();
    this.am = null;
    this.an = 0;
    this.aq = new Drawable.Callback()
    {
      public final void invalidateDrawable(Drawable paramAnonymousDrawable)
      {
        CubeActivity.this.i.b().a(paramAnonymousDrawable);
      }
      
      public final void scheduleDrawable(Drawable paramAnonymousDrawable, Runnable paramAnonymousRunnable, long paramAnonymousLong) {}
      
      public final void unscheduleDrawable(Drawable paramAnonymousDrawable, Runnable paramAnonymousRunnable) {}
    };
    this.ar = new HashSet();
    this.as = false;
    this.at = null;
  }
  
  private void a(int paramInt, double paramDouble)
  {
    long l = this.s.getOwner().getUserId();
    u.a();
    int i;
    if (l == UserLogonDataPrefs.getLogonUserId())
    {
      i = 1;
      if (i == 0) {
        break label172;
      }
    }
    label172:
    for (String str = getString(2131166106, new Object[] { this.s.getName(), this.s.getSymbol(), String.format("%.2f%%", new Object[] { this.s.getTotalGain() }), String.format("%.2f%%", new Object[] { Double.valueOf(paramDouble) }) });; str = getString(2131166107, new Object[] { this.s.getName(), this.s.getSymbol(), String.format("%.2f%%", new Object[] { this.s.getTotalGain() }), String.format("%.2f%%", new Object[] { Double.valueOf(paramDouble) }) }))
    {
      str = str + "\n" + this.r.b.d;
      this.r.b.c = str;
      this.r.a(paramInt);
      return;
      i = 0;
      break;
    }
  }
  
  private void a(final long paramLong)
  {
    if (this.ao == 2) {
      return;
    }
    final View localView1 = findViewById(2131624915);
    View localView2 = findViewById(2131624910);
    final Object localObject = UserPrefs.getString(this, "cube_report_read_information", "{}");
    localObject = (JsonObject)m.a().fromJson((String)localObject, JsonObject.class);
    if ((localObject == null) || (!((JsonObject)localObject).has(this.s.getSymbol())) || (((JsonObject)localObject).get(this.s.getSymbol()).getAsLong() < paramLong)) {}
    for (int i = 1;; i = 0)
    {
      long l = this.s.getOwner().getUserId();
      u.a();
      if ((l != UserLogonDataPrefs.getLogonUserId()) || (!c(this.s)) || (localView1 == null)) {
        break;
      }
      if (i != 0)
      {
        localView1.setVisibility(0);
        localView2.setVisibility(8);
        localView1.setOnClickListener(new View.OnClickListener()
        {
          public final void onClick(View paramAnonymousView)
          {
            localView1.setVisibility(8);
            CubeActivity.A(CubeActivity.this);
            if (localObject != null)
            {
              localObject.add(CubeActivity.a(CubeActivity.this).getSymbol(), (JsonElement)m.a().fromJson(String.valueOf(paramLong), JsonElement.class));
              UserPrefs.setString(CubeActivity.this, "cube_report_read_information", m.a().toJson(localObject));
              CubeActivity.a(CubeActivity.this, paramLong);
            }
            paramAnonymousView = new SNBEvent(1401, 3);
            paramAnonymousView.addProperty("symbol", CubeActivity.a(CubeActivity.this).getSymbol());
            com.xueqiu.android.base.i.a().a(paramAnonymousView);
          }
        });
        return;
      }
      localView1.setVisibility(8);
      localView2.setVisibility(0);
      localView2.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          CubeActivity.A(CubeActivity.this);
        }
      });
      return;
    }
  }
  
  private void a(long paramLong, String paramString)
  {
    if (this.ao == 1)
    {
      com.xueqiu.android.base.q.a().b().c(paramLong, paramString, new p(this)
      {
        public final void a(y paramAnonymousy)
        {
          aa.a(paramAnonymousy);
        }
      });
      return;
    }
    ai localai = com.xueqiu.android.base.q.a().b();
    p local36 = new p(this)
    {
      public final void a(y paramAnonymousy)
      {
        aa.a(paramAnonymousy);
      }
    };
    localai.l.b(paramString, as.f(paramString), local36);
  }
  
  private void a(final d paramd)
  {
    if (this.ao == 1)
    {
      ai localai = com.xueqiu.android.base.q.a().b();
      long l = this.s.getId();
      String str1 = this.s.getMarket();
      String str2 = paramd.rankParam;
      paramd = new p(this)
      {
        public final void a(y paramAnonymousy)
        {
          aa.a(paramAnonymousy);
        }
      };
      localai.l.b(l, str1, str2, paramd);
      return;
    }
    com.xueqiu.android.base.q.a().b().a(this.s.getSymbol(), this.s.getMarket(), paramd.rankParam, new p(this)
    {
      public final void a(y paramAnonymousy)
      {
        aa.a(paramAnonymousy);
      }
    });
  }
  
  private void a(Cube paramCube)
  {
    if (paramCube == null) {
      return;
    }
    this.s = paramCube;
    this.al = this.s.getOwnerId();
    b(this.s);
    j();
    if (this.s != null)
    {
      if (!c(this.s)) {
        break label170;
      }
      this.Z.setClickable(true);
      this.Z.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          if (CubeActivity.l(CubeActivity.this) == 1)
          {
            CubeActivity.m(CubeActivity.this);
            return;
          }
          CubeActivity.n(CubeActivity.this);
        }
      });
      this.Z.findViewById(2131624928).setVisibility(0);
      this.Z.findViewById(2131624927).setVisibility(0);
    }
    for (;;)
    {
      refresh();
      invalidateOptionsMenu();
      if ((this.ao != 2) || (this.s.getOwner() != null)) {
        break;
      }
      paramCube = com.xueqiu.android.base.q.a().b();
      String str = this.s.getSymbol();
      long l = this.al;
      p local20 = new p()
      {
        public final void a(y paramAnonymousy) {}
      };
      paramCube.l.a(str, l, local20);
      return;
      label170:
      this.Z.setClickable(false);
      this.Z.findViewById(2131624928).setVisibility(8);
      this.Z.findViewById(2131624927).setVisibility(8);
    }
  }
  
  private void a(Rebalancing paramRebalancing)
  {
    if ((paramRebalancing == null) || (paramRebalancing.getRebalancingHistories() == null) || (paramRebalancing.getRebalancingHistories().size() == 0))
    {
      if (this.ao == 2) {
        this.ag.addView(LayoutInflater.from(this).inflate(2130903315, this.ag, false));
      }
      return;
    }
    Iterator localIterator = paramRebalancing.getRebalancingHistories().iterator();
    label65:
    final RebalancingHistory localRebalancingHistory;
    View localView;
    Object localObject;
    label174:
    label227:
    String str;
    if (localIterator.hasNext())
    {
      localRebalancingHistory = (RebalancingHistory)localIterator.next();
      localView = LayoutInflater.from(this).inflate(2130903308, this.ag, false);
      com.xueqiu.android.base.util.v.a("CubeActivity", " has item : " + localRebalancingHistory.getStockName());
      localObject = (TextView)localView.findViewById(2131625014);
      if (localRebalancingHistory.getTargetWeight() <= localRebalancingHistory.getPrevWeightAdjusted()) {
        break label428;
      }
      ((TextView)localObject).setBackgroundResource(2130837833);
      ((TextView)localObject).setText(com.xueqiu.android.base.r.f(2131165424));
      ((TextView)localView.findViewById(2131625015)).setText(localRebalancingHistory.getStockName());
      ((TextView)localView.findViewById(2131625016)).setText(localRebalancingHistory.getStockSymbol());
      if (this.ao != 2) {
        break label448;
      }
      localObject = com.xueqiu.android.base.r.d(2131165432);
      if (localRebalancingHistory.getPrice() != null) {
        break label458;
      }
      str = "--";
      label239:
      localObject = String.format("%s%s", new Object[] { localObject, str });
      ((TextView)localView.findViewById(2131625018)).setText((CharSequence)localObject);
      if ((localRebalancingHistory.getPrevWeightAdjusted() != 0.0D) || (localRebalancingHistory.getTargetWeight() != 0.0D)) {
        break label470;
      }
      ((TextView)localView.findViewById(2131625017)).setText(2131165935);
      label310:
      if ((this.s == null) || (!as.b(this.s.getMarket()))) {
        break label628;
      }
      localView.findViewById(2131625019).setVisibility(0);
      localView.findViewById(2131625019).setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          boolean bool = false;
          if (u.a().d)
          {
            com.xueqiu.android.base.t.a(CubeActivity.this, false);
            return;
          }
          if (localRebalancingHistory.getTargetWeight() < localRebalancingHistory.getPrevWeightAdjusted()) {
            bool = true;
          }
          com.xueqiu.android.trade.g.a(CubeActivity.this, localRebalancingHistory.getStockSymbol(), bool, -1);
          paramAnonymousView = new SNBEvent(1401, 22);
          com.xueqiu.android.base.i.a().a(paramAnonymousView);
        }
      });
    }
    for (;;)
    {
      localView.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          CubeActivity.this.startActivity(com.xueqiu.android.base.util.q.a(CubeActivity.this.getBaseContext(), new StockQuote(localRebalancingHistory.getStockName(), localRebalancingHistory.getStockSymbol())));
        }
      });
      if (paramRebalancing.getRebalancingHistories().indexOf(localRebalancingHistory) == paramRebalancing.getRebalancingHistories().size() - 1) {
        localView.findViewById(2131624880).setVisibility(8);
      }
      this.ag.addView(localView);
      break label65;
      break;
      label428:
      ((TextView)localObject).setBackgroundResource(2130838464);
      ((TextView)localObject).setText(com.xueqiu.android.base.r.f(2131165425));
      break label174;
      label448:
      localObject = com.xueqiu.android.base.r.d(2131165422);
      break label227;
      label458:
      str = String.valueOf(localRebalancingHistory.getPrice());
      break label239;
      label470:
      if (paramRebalancing.getCategory() == Rebalancing.Category.SYS_REBALANCING)
      {
        ((TextView)localView.findViewById(2131625017)).setText("分红送配");
        break label310;
      }
      if ((paramRebalancing.getCategory() == Rebalancing.Category.VOL_RB) || (paramRebalancing.getCategory() == Rebalancing.Category.USER_VOL_RB) || (paramRebalancing.getCategory() == Rebalancing.Category.SYS_VOL_RB))
      {
        ((TextView)localView.findViewById(2131625017)).setText(String.format("%.0f股 --> %.0f股", new Object[] { Double.valueOf(localRebalancingHistory.getPrevVolume()), Double.valueOf(localRebalancingHistory.getTargetVolume()) }));
        break label310;
      }
      ((TextView)localView.findViewById(2131625017)).setText(String.format("%s%% --> %s%%", new Object[] { Double.valueOf(localRebalancingHistory.getPrevWeightAdjusted()), Double.valueOf(localRebalancingHistory.getTargetWeight()) }));
      break label310;
      label628:
      localView.findViewById(2131625019).setVisibility(8);
    }
  }
  
  private void a(String paramString, boolean paramBoolean)
  {
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-2, (int)ay.a(getBaseContext(), 20.0F));
    if (paramBoolean) {
      localLayoutParams.setMargins((int)ay.a(getBaseContext(), 5.0F), 0, 0, 0);
    }
    TextView localTextView = new TextView(this);
    localTextView.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
    localTextView.setTextSize(2, 12.0F);
    localTextView.setTextColor(getResources().getColor(2131558728));
    localTextView.setBackgroundResource(2130837685);
    int i = (int)getResources().getDimension(2131230777);
    localTextView.setPadding(i, 0, i, 0);
    localTextView.setGravity(17);
    localTextView.setText(paramString);
    this.D.addView(localTextView, localLayoutParams);
  }
  
  private static void b(Button paramButton, boolean paramBoolean, int paramInt)
  {
    if (paramButton == null) {
      return;
    }
    if (paramInt == 2)
    {
      if (paramBoolean)
      {
        com.xueqiu.android.base.util.a.a(paramButton, com.xueqiu.android.base.r.h(2130838250));
        paramButton.setTextColor(com.xueqiu.android.base.r.a(2131558728));
        return;
      }
      com.xueqiu.android.base.util.a.a(paramButton, com.xueqiu.android.base.r.h(2130838249));
      paramButton.setTextColor(com.xueqiu.android.base.r.a(2131558507));
      return;
    }
    if (paramInt == 1)
    {
      if (paramBoolean)
      {
        com.xueqiu.android.base.util.a.a(paramButton, com.xueqiu.android.base.r.h(2130838302));
        paramButton.setTextColor(com.xueqiu.android.base.r.a(2131558728));
        return;
      }
      com.xueqiu.android.base.util.a.a(paramButton, com.xueqiu.android.base.r.h(2130838301));
      paramButton.setTextColor(com.xueqiu.android.base.r.a(2131558507));
      return;
    }
    if (paramBoolean)
    {
      paramButton.setTextColor(com.xueqiu.android.base.r.a(2131558728));
      com.xueqiu.android.base.util.a.a(paramButton, com.xueqiu.android.base.r.h(2130838410));
      return;
    }
    com.xueqiu.android.base.util.a.a(paramButton, com.xueqiu.android.base.r.h(2130838409));
    paramButton.setTextColor(com.xueqiu.android.base.r.a(2131558507));
  }
  
  private static void b(TextView paramTextView, boolean paramBoolean)
  {
    if (paramBoolean) {
      paramTextView.setBackgroundResource(2130838463);
    }
    for (;;)
    {
      paramTextView.setPadding(5, 0, 5, 0);
      return;
      paramTextView.setBackgroundResource(2130838624);
    }
  }
  
  private void b(Cube paramCube)
  {
    int i = 0;
    Object localObject = UserPrefs.getString(this, "cube_rank_config", null);
    String str = UserPrefs.getString(this, "rank_param", null);
    if (TextUtils.isEmpty((CharSequence)localObject))
    {
      final long l = UserPrefs.getLong(this, "cube_rank_config_update", 0L);
      com.xueqiu.android.base.q.a().b().a(l, -1, "all", new p()
      {
        public final void a(y paramAnonymousy)
        {
          aa.a(paramAnonymousy);
        }
      });
    }
    for (;;)
    {
      return;
      if ((paramCube == null) || (paramCube.getMarket() == null) || (localObject == null) || (this.am != null)) {
        continue;
      }
      try
      {
        localObject = new JSONObject((String)localObject);
        if (this.ao == 2)
        {
          paramCube = ("sp_" + as.f(paramCube.getSymbol())).toLowerCase();
          label131:
          if (!((JSONObject)localObject).has(paramCube)) {
            continue;
          }
          paramCube = ((JSONObject)((JSONArray)((JSONObject)localObject).get(paramCube)).get(0)).getJSONArray("filter_values").toString();
          this.am = ((ArrayList)m.a().fromJson(paramCube, new TypeToken() {}.getType()));
          if (str == null) {}
        }
        for (;;)
        {
          if (i < this.am.size())
          {
            if (str.equals(((d)this.am.get(i)).rankParam)) {
              this.an = i;
            }
          }
          else
          {
            if ((this.am == null) || (this.am.size() <= 0)) {
              break;
            }
            a((d)this.am.get(this.an));
            return;
            paramCube = paramCube.getMarket();
            break label131;
          }
          i += 1;
        }
        return;
      }
      catch (JSONException paramCube) {}
    }
  }
  
  private void c(final int paramInt)
  {
    long l2 = System.currentTimeMillis();
    final long l1 = 0L;
    if (paramInt == 1) {
      l1 = l2 - 31536000000L;
    }
    for (;;)
    {
      localObject = new Date(l1);
      if (this.ao != 1) {
        break;
      }
      localai = com.xueqiu.android.base.q.a().b();
      str = this.s.getSymbol();
      localObject = new p(this)
      {
        public final void a(y paramAnonymousy)
        {
          com.xueqiu.android.base.util.v.b("CubeActivity", "getCubeNAVDaily failed.", paramAnonymousy);
        }
      };
      localai.l.a(str, l1, l2, (p)localObject);
      return;
      if (paramInt == 2) {
        l1 = l2 - 7776000000L;
      } else if (paramInt == 3) {
        l1 = 0L;
      }
    }
    ai localai = com.xueqiu.android.base.q.a().b();
    String str = this.s.getSymbol();
    Object localObject = new p(this)
    {
      public final void a(y paramAnonymousy)
      {
        com.xueqiu.android.base.util.v.b("CubeActivity", "getCubeNAVDaily failed.", paramAnonymousy);
      }
    };
    localai.l.a(str, as.f(str), l1, l2, (p)localObject);
  }
  
  private static boolean c(Cube paramCube)
  {
    return (paramCube != null) && (TextUtils.equals(paramCube.getMarket(), "cn"));
  }
  
  private void d(int paramInt)
  {
    this.q = paramInt;
    String str2;
    int i;
    if (this.s != null)
    {
      str1 = this.s.getSymbol();
      str2 = com.xueqiu.android.base.v.b("/p/" + str1);
      long l = this.s.getOwner().getUserId();
      u.a();
      if (l != UserLogonDataPrefs.getLogonUserId()) {
        break label193;
      }
      i = 1;
      if (i == 0) {
        break label199;
      }
    }
    label193:
    label199:
    for (String str1 = getString(2131165384, new Object[] { this.s.getName(), this.s.getSymbol(), String.format("%.2f%%", new Object[] { this.s.getTotalGain() }) });; str1 = getString(2131165427, new Object[] { this.s.getName(), this.s.getSymbol(), String.format("%.2f%%", new Object[] { this.s.getTotalGain() }) }))
    {
      str1 = str1 + str2;
      if (paramInt != 3) {
        break label257;
      }
      new AlertDialog.Builder(this).setTitle(2131166229).setNegativeButton(2131166255, null).setPositiveButton(2131166278, new DialogInterface.OnClickListener()
      {
        public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          paramAnonymousDialogInterface = String.format("$%s（%s）$", new Object[] { CubeActivity.a(CubeActivity.this).getName(), CubeActivity.a(CubeActivity.this).getSymbol() });
          CubeActivity.g().a(3, paramAnonymousDialogInterface, null, new p(CubeActivity.this)
          {
            public final void a(y paramAnonymous2y) {}
          });
        }
      }).show();
      return;
      i = 0;
      break;
    }
    label257:
    com.xueqiu.android.common.widget.an localan = new com.xueqiu.android.common.widget.an();
    localan.c = str1;
    localan.l.put("wx_content_type", str1);
    localan.l.put("wx_friend_content", str1);
    localan.k.put("wx_title", str1);
    localan.d = str2;
    localan.i = 2;
    localan.h = this.s.getSymbol();
    localan.f = BitmapFactory.decodeResource(getResources(), 2130837614);
    this.r = com.xueqiu.android.common.widget.aj.a(this, localan, this);
  }
  
  private void j()
  {
    this.af.a.removeAllViews();
    Object localObject2;
    long l;
    if (this.ao == 1)
    {
      localObject1 = getTheme().obtainStyledAttributes(new int[] { 2130772150, 2130772156, 2130772152, 2130772153 });
      if (this.s.getClosedAt() == null)
      {
        if (as.b(this.s.getMarket()))
        {
          if ((UserPrefs.getBoolean(this, GuideTutorialType.CUBE_FIRST_IN.storeKey(), true)) && (!com.xueqiu.android.base.util.i.c()))
          {
            UserPrefs.setBoolean(this, GuideTutorialType.CUBE_FIRST_IN.storeKey(), false);
            localObject2 = new Intent(this, GuideTutorialActivity.class);
            ((Intent)localObject2).putExtra("extra_which_view", GuideTutorialType.CUBE_FIRST_IN);
            ((Intent)localObject2).putExtra("extra_view_click_position", new int[] { 2131624891 });
            startActivity((Intent)localObject2);
            overridePendingTransition(2130968583, 2130968584);
          }
          this.af.a(2131623953, getString(2131166197), "", true, 2130837698);
        }
        if (this.s.getOwner() != null)
        {
          l = this.s.getOwner().getUserId();
          u.a();
          if (l != UserLogonDataPrefs.getLogonUserId())
          {
            this.af.a(2131623941, 2131165948, ((TypedArray)localObject1).getResourceId(0, 0));
            if (this.s.isFollowing()) {
              this.af.a(2131623948, 2131165585, ((TypedArray)localObject1).getResourceId(3, 0));
            }
            this.af.a(2131623957, 2131166070, ((TypedArray)localObject1).getResourceId(1, 0));
            this.af.setOnMenuItemSelectedListener(new com.xueqiu.android.common.widget.j()
            {
              public final boolean a(int paramAnonymousInt)
              {
                boolean bool = false;
                if (paramAnonymousInt == 2131623936)
                {
                  CubeActivity.q(CubeActivity.this);
                  localObject = new SNBEvent(1401, 20);
                  ((SNBEvent)localObject).addProperty("symbol", CubeActivity.a(CubeActivity.this).getSymbol());
                  com.xueqiu.android.base.i.a().a((SNBEvent)localObject);
                  bool = true;
                }
                do
                {
                  return bool;
                  if (paramAnonymousInt == 2131623941)
                  {
                    if (u.a().d) {
                      com.xueqiu.android.base.t.a(CubeActivity.this, false);
                    }
                    for (;;)
                    {
                      localObject = new SNBEvent(1401, 13);
                      ((SNBEvent)localObject).addProperty("symbol", CubeActivity.a(CubeActivity.this).getSymbol());
                      com.xueqiu.android.base.i.a().a((SNBEvent)localObject);
                      return true;
                      localObject = new Intent(CubeActivity.this, WriteStatusActivity.class);
                      if ((CubeActivity.a(CubeActivity.this).isSellFlag()) && (CubeActivity.a(CubeActivity.this).getLastBuyRbGid() > 0L)) {
                        ((Intent)localObject).putExtra("extra_module_id", "A7VMfHQzCK");
                      }
                      ((Intent)localObject).putExtra("extra_write_type", 3);
                      ((Intent)localObject).putExtra("extra_auto_add_text", String.format("$%s(%s)$ @%s ", new Object[] { CubeActivity.a(CubeActivity.this).getName(), CubeActivity.a(CubeActivity.this).getSymbol(), CubeActivity.a(CubeActivity.this).getOwner().getScreenName() }));
                      CubeActivity.this.startActivityForResult((Intent)localObject, 3);
                    }
                  }
                  if (paramAnonymousInt == 2131623957)
                  {
                    long l = CubeActivity.a(CubeActivity.this).getOwner().getUserId();
                    u.a();
                    if (l == UserLogonDataPrefs.getLogonUserId()) {}
                    for (paramAnonymousInt = 5;; paramAnonymousInt = 4)
                    {
                      CubeActivity.a(CubeActivity.this, paramAnonymousInt);
                      localObject = new SNBEvent(1401, 14);
                      ((SNBEvent)localObject).addProperty("symbol", CubeActivity.a(CubeActivity.this).getSymbol());
                      com.xueqiu.android.base.i.a().a((SNBEvent)localObject);
                      return true;
                    }
                  }
                  if (paramAnonymousInt == 2131623945)
                  {
                    CubeActivity.t(CubeActivity.this);
                    localObject = new SNBEvent(1401, 16);
                    com.xueqiu.android.base.i.a().a((SNBEvent)localObject);
                    return true;
                  }
                  if (paramAnonymousInt == 2131623948)
                  {
                    if (u.a().d) {
                      com.xueqiu.android.base.t.a(CubeActivity.this, false);
                    }
                    for (;;)
                    {
                      localObject = new SNBEvent(1401, 15);
                      ((SNBEvent)localObject).addProperty("symbol", CubeActivity.a(CubeActivity.this).getSymbol());
                      com.xueqiu.android.base.i.a().a((SNBEvent)localObject);
                      return true;
                      l.a(CubeActivity.this, 1, CubeActivity.a(CubeActivity.this).getSymbol());
                    }
                  }
                  if (paramAnonymousInt == 2131623953)
                  {
                    CubeActivity.y(CubeActivity.this);
                    localObject = new SNBEvent(1401, 21);
                    ((SNBEvent)localObject).addProperty("symbol", CubeActivity.a(CubeActivity.this).getSymbol());
                    com.xueqiu.android.base.i.a().a((SNBEvent)localObject);
                    return false;
                  }
                } while (paramAnonymousInt != 2131623940);
                CubeActivity.z(CubeActivity.this);
                Object localObject = new SNBEvent(1401, 17);
                ((SNBEvent)localObject).addProperty("symbol", CubeActivity.a(CubeActivity.this).getSymbol());
                com.xueqiu.android.base.i.a().a((SNBEvent)localObject);
                return false;
              }
            });
          }
        }
      }
    }
    while (this.s.getOwner() == null) {
      for (;;)
      {
        this.af.invalidate();
        return;
        if (as.b(this.s.getMarket()))
        {
          this.af.a(2131623936, 2131165914, ((TypedArray)localObject1).getResourceId(3, 0));
          this.af.a(2131623957, 2131166070, ((TypedArray)localObject1).getResourceId(1, 0));
          localObject1 = this.af.a(2131623952, ((TypedArray)localObject1).getResourceId(2, 0));
          if (this.s.isFollowing()) {
            ((com.xueqiu.android.common.widget.i)localObject1).a(2131623948, getString(2131165585));
          }
          ((com.xueqiu.android.common.widget.i)localObject1).a(2131623941, getString(2131165948));
          ((com.xueqiu.android.common.widget.i)localObject1).a(2131623945, getString(2131165486));
          ((com.xueqiu.android.common.widget.i)localObject1).a(2131623940, getString(2131165324));
        }
        else
        {
          this.af.a(2131623936, 2131165914, ((TypedArray)localObject1).getResourceId(3, 0));
          this.af.a(2131623957, 2131166070, ((TypedArray)localObject1).getResourceId(1, 0));
          this.af.a(2131623941, 2131165948, ((TypedArray)localObject1).getResourceId(0, 0));
          localObject1 = this.af.a(2131623952, ((TypedArray)localObject1).getResourceId(2, 0));
          if (this.s.isFollowing())
          {
            ((com.xueqiu.android.common.widget.i)localObject1).a(2131623945, getString(2131165486));
            ((com.xueqiu.android.common.widget.i)localObject1).a(2131623948, getString(2131165585));
            ((com.xueqiu.android.common.widget.i)localObject1).a(2131623940, getString(2131165324));
          }
          else
          {
            ((com.xueqiu.android.common.widget.i)localObject1).a(2131623945, getString(2131165486));
            ((com.xueqiu.android.common.widget.i)localObject1).a(2131623940, getString(2131165324));
            continue;
            this.af.a(2131623941, 2131165948, ((TypedArray)localObject1).getResourceId(0, 0));
            this.af.a(2131623957, 2131166070, ((TypedArray)localObject1).getResourceId(1, 0));
            if (this.s.getOwner() != null)
            {
              l = this.s.getOwner().getUserId();
              u.a();
              if (l == UserLogonDataPrefs.getLogonUserId()) {
                this.af.a(2131623945, 2131165486, ((TypedArray)localObject1).getResourceId(2, 0));
              }
            }
            if (this.s.isFollowing()) {
              this.af.a(2131623948, 2131165585, ((TypedArray)localObject1).getResourceId(3, 0));
            }
          }
        }
      }
    }
    Object localObject1 = getTheme().obtainStyledAttributes(new int[] { 2130772150, 2130772156, 2130772152, 2130772153 });
    if (this.s.getOwner() != null)
    {
      l = this.s.getOwner().getUserId();
      u.a();
      if (l != UserLogonDataPrefs.getLogonUserId())
      {
        this.af.a(2131623941, 2131165948, ((TypedArray)localObject1).getResourceId(0, 0));
        this.af.a(2131623957, 2131166070, ((TypedArray)localObject1).getResourceId(1, 0));
        if (this.s.isFollowing()) {
          this.af.a(2131623948, 2131165585, ((TypedArray)localObject1).getResourceId(3, 0));
        }
      }
    }
    label919:
    label929:
    label950:
    label1094:
    label1102:
    label1108:
    label1124:
    for (;;)
    {
      this.af.setOnMenuItemSelectedListener(new com.xueqiu.android.common.widget.j()
      {
        public final boolean a(int paramAnonymousInt)
        {
          boolean bool = false;
          if ((paramAnonymousInt == 2131623953) && (CubeActivity.a(CubeActivity.this).getClosedAt() == null))
          {
            CubeActivity.this.startActivity(OrderFullActivity.a(CubeActivity.this, UserPrefs.getTradeAccount(as.f(CubeActivity.a(CubeActivity.this).getSymbol())), "BUY"));
            bool = true;
          }
          do
          {
            return bool;
            if (paramAnonymousInt == 2131623941)
            {
              if (u.a().d) {
                com.xueqiu.android.base.t.a(CubeActivity.this, false);
              }
              for (;;)
              {
                return true;
                Intent localIntent = new Intent(CubeActivity.this, WriteStatusActivity.class);
                if ((CubeActivity.a(CubeActivity.this).isSellFlag()) && (CubeActivity.a(CubeActivity.this).getLastBuyRbGid() > 0L)) {
                  localIntent.putExtra("extra_module_id", "A7VMfHQzCK");
                }
                localIntent.putExtra("extra_write_type", 3);
                localIntent.putExtra("extra_auto_add_text", String.format("$%s(%s)$ @%s ", new Object[] { CubeActivity.a(CubeActivity.this).getName(), CubeActivity.a(CubeActivity.this).getSymbol(), CubeActivity.a(CubeActivity.this).getOwner().getScreenName() }));
                CubeActivity.this.startActivityForResult(localIntent, 3);
              }
            }
            if (paramAnonymousInt == 2131623957)
            {
              long l = CubeActivity.a(CubeActivity.this).getOwner().getUserId();
              u.a();
              if (l == UserLogonDataPrefs.getLogonUserId()) {}
              for (paramAnonymousInt = 5;; paramAnonymousInt = 4)
              {
                CubeActivity.a(CubeActivity.this, paramAnonymousInt);
                return true;
              }
            }
            if (paramAnonymousInt == 2131623945)
            {
              CubeActivity.t(CubeActivity.this);
              return true;
            }
            if (paramAnonymousInt == 2131623948)
            {
              if (u.a().d) {
                com.xueqiu.android.base.t.a(CubeActivity.this, false);
              }
              for (;;)
              {
                return true;
                l.a(CubeActivity.this, 1, CubeActivity.a(CubeActivity.this).getSymbol());
              }
            }
          } while (paramAnonymousInt != 2131623940);
          CubeActivity.x(CubeActivity.this);
          return false;
        }
      });
      break;
      int i;
      int m;
      boolean bool;
      if (this.s.getClosedAt() != null)
      {
        i = 1;
        if (i == 0) {
          break label1094;
        }
        m = 2131558420;
        localObject2 = this.af;
        String str = getString(2131165914);
        if (i != 0) {
          break label1102;
        }
        bool = true;
        ((FloatingActionMenu)localObject2).a(2131623953, str, "", bool, m);
        this.af.a(2131623941, 2131165948, ((TypedArray)localObject1).getResourceId(0, 0));
        this.af.a(2131623957, 2131166070, ((TypedArray)localObject1).getResourceId(1, 0));
        localObject1 = this.af.a(2131623952, ((TypedArray)localObject1).getResourceId(2, 0));
        if (!this.s.isFollowing()) {
          break label1108;
        }
        ((com.xueqiu.android.common.widget.i)localObject1).a(2131623948, getString(2131165585));
        ((com.xueqiu.android.common.widget.i)localObject1).a(2131623945, getString(2131165486));
      }
      for (;;)
      {
        if (this.s.getClosedAt() != null) {
          break label1124;
        }
        ((com.xueqiu.android.common.widget.i)localObject1).a(2131623940, getString(2131165325));
        break;
        i = 0;
        break label919;
        m = 2130837698;
        break label929;
        bool = false;
        break label950;
        ((com.xueqiu.android.common.widget.i)localObject1).a(2131623945, getString(2131165486));
      }
    }
  }
  
  private void k()
  {
    final ArrayList localArrayList = new ArrayList();
    int i = 0;
    while (i < this.ab.getChildCount())
    {
      localArrayList.add((TextView)this.ab.getChildAt(i).findViewById(2131624813));
      i += 1;
    }
    this.ab.setTag(localArrayList);
    ((TextView)localArrayList.get(0)).setText(2131165780);
    ((TextView)localArrayList.get(1)).setText(2131165228);
    b((TextView)localArrayList.get(0), true);
    b((TextView)localArrayList.get(1), false);
    this.ab.getChildAt(0).setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        CubeActivity.a((TextView)localArrayList.get(0), true);
        CubeActivity.a((TextView)localArrayList.get(1), false);
        if (CubeActivity.a(CubeActivity.this) != null) {
          CubeActivity.a(CubeActivity.this, "all", CubeActivity.a(CubeActivity.this).getOwnerId());
        }
      }
    });
    this.ab.getChildAt(1).setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        CubeActivity.a((TextView)localArrayList.get(0), false);
        CubeActivity.a((TextView)localArrayList.get(1), true);
        if (CubeActivity.a(CubeActivity.this) != null) {
          CubeActivity.a(CubeActivity.this, "all", 0L);
        }
      }
    });
  }
  
  private void l()
  {
    setTitle(this.s.getName());
    this.i.b().b(this.s.getSymbol());
    Object localObject2 = this.y;
    int i = this.s.getFollowerCount();
    Object localObject3 = this.s.getOrderTicketCount();
    Object localObject4;
    if (localObject3 != null)
    {
      localObject1 = String.format("%d 次下单   %d 人关注", new Object[] { localObject3, Integer.valueOf(i) });
      localObject4 = new Rect();
      this.y.getPaint().getTextBounds((String)localObject1, 0, ((String)localObject1).length(), (Rect)localObject4);
      if (((Rect)localObject4).width() > ay.c(this) / 2) {
        localObject1 = String.format("%d 人关注%n%d 次下单", new Object[] { Integer.valueOf(i), localObject3 });
      }
      ((TextView)localObject2).setText((CharSequence)localObject1);
      this.z.setText(au.a("%.2f%%", this.s.getDailyGain(), "--"));
      this.A.setText(au.a("%.2f%%", this.s.getMonthlyGain(), "--"));
      this.B.setText(au.a("%.4f", this.s.getNetValue(), "--"));
      this.C.setText(au.a("%.2f", this.s.getTotalGain(), "--"));
      localObject1 = Market.valueOf(this.s.getMarket().toUpperCase());
      localObject2 = this.Y;
      if (localObject1 != Market.US) {
        break label531;
      }
    }
    label531:
    for (i = 0;; i = 8)
    {
      ((TextView)localObject2).setVisibility(i);
      localObject1 = com.xueqiu.android.base.util.h.a(this.s.getCreatedAt(), "（创建于yyyy-MM-dd）");
      localObject2 = new SpannableStringBuilder("收益率走势" + (String)localObject1);
      localObject3 = new AbsoluteSizeSpan(12, true);
      localObject4 = new ForegroundColorSpan(Color.parseColor("#aaaaaa"));
      ((SpannableStringBuilder)localObject2).setSpan(localObject3, ((SpannableStringBuilder)localObject2).length() - ((String)localObject1).length(), ((SpannableStringBuilder)localObject2).length(), 17);
      ((SpannableStringBuilder)localObject2).setSpan(localObject4, ((SpannableStringBuilder)localObject2).length() - ((String)localObject1).length(), ((SpannableStringBuilder)localObject2).length(), 17);
      this.V.setText((CharSequence)localObject2);
      if (this.s.getClosedAt() != null) {
        break label538;
      }
      this.U.setVisibility(8);
      this.T.setVisibility(8);
      if ((this.ao == 2) && (this.s.getUpdatedAt() != null))
      {
        localObject1 = this.u.findViewById(2131625039);
        localObject2 = (TextView)this.u.findViewById(2131625041);
        ((View)localObject1).setVisibility(0);
        ((TextView)localObject2).setText(new SimpleDateFormat("MM-dd HH:mm").format(this.s.getUpdatedAt()));
        this.u.findViewById(2131625040).setOnClickListener(new View.OnClickListener()
        {
          public final void onClick(View paramAnonymousView)
          {
            paramAnonymousView = new com.xueqiu.android.common.widget.f(CubeActivity.this, null);
            paramAnonymousView.a("更新提示");
            paramAnonymousView.b("为了保证数据准确，雪球实盘组合数据每日更新一次。 一般于凌晨1点，券商夜间清算结束后，更新前一个交易日数据。");
            paramAnonymousView.show();
          }
        });
      }
      return;
      localObject1 = String.format("%d 人关注", new Object[] { Integer.valueOf(i) });
      break;
    }
    label538:
    this.U.setVisibility(0);
    this.T.setVisibility(0);
    Object localObject1 = new SimpleDateFormat("yyyy-MM-dd");
    this.U.setText(String.format("关停日期%n%s", new Object[] { ((SimpleDateFormat)localObject1).format(this.s.getClosedAt()) }));
  }
  
  private void m()
  {
    this.D.removeAllViews();
    a(Market.valueOf(this.s.getMarket().toUpperCase()).description(), false);
    if ((this.s.getTag() != null) && (this.s.getTag().size() > 0))
    {
      int i = 0;
      while (i < this.s.getTag().size())
      {
        a((String)this.s.getTag().get(i), true);
        i += 1;
      }
    }
  }
  
  private void n()
  {
    this.u.findViewById(2131624938).setVisibility(0);
    this.M.setVisibility(8);
    this.N.setVisibility(8);
  }
  
  private void o()
  {
    if ((this.ao == 2) && (this.s != null) && (this.s.getClosedAt() != null)) {
      n();
    }
    if ((this.s == null) || (this.s.getViewRebalancing() == null) || (this.s.getViewRebalancing().getHoldings() == null)) {
      return;
    }
    Object localObject2 = this.s.getViewRebalancing();
    if ((this.ao == 2) && (((Rebalancing)localObject2).getCash() == 0.0D) && (((Rebalancing)localObject2).getHoldings().size() == 0))
    {
      n();
      ((TextView)this.u.findViewById(2131624938)).setText("暂无资产");
    }
    Object localObject1;
    if (Market.valueOf(this.s.getMarket().toUpperCase()).isCN())
    {
      this.P.setVisibility(0);
      localObject1 = new HashMap();
      localObject3 = ((Rebalancing)localObject2).getHoldings().iterator();
    }
    Object localObject5;
    for (;;)
    {
      if (!((Iterator)localObject3).hasNext()) {
        break label257;
      }
      localObject4 = (Holding)((Iterator)localObject3).next();
      localObject5 = (Holding)((HashMap)localObject1).get(((Holding)localObject4).getSegmentName());
      if (localObject5 == null)
      {
        localObject4 = ((Holding)localObject4).copy();
        ((HashMap)localObject1).put(((Holding)localObject4).getSegmentName(), localObject4);
        continue;
        this.P.setVisibility(8);
        break;
      }
      ((Holding)localObject5).setWeight(((Holding)localObject5).getWeight() + ((Holding)localObject4).getWeight());
    }
    label257:
    Object localObject3 = new ArrayList();
    Object localObject4 = new ArrayList(((HashMap)localObject1).values());
    Collections.sort((List)localObject4, new Comparator() {});
    int m;
    int i;
    if (((List)localObject4).size() > 0)
    {
      m = 0;
      i = 0;
      label307:
      if (m >= ((List)localObject4).size()) {
        break label704;
      }
      localObject1 = (Holding)((List)localObject4).get(m);
      localObject5 = new ArrayList();
      ((List)localObject5).add(new com.xueqiu.chart.a.c((float)((Holding)localObject1).getWeight() / 100.0F));
      localObject5 = new com.xueqiu.chart.a.b(((Holding)localObject1).getSegmentName(), (List)localObject5);
      if (((Rebalancing)localObject2).getStatus() != Rebalancing.Status.SUCCESS)
      {
        ((com.xueqiu.chart.a.b)localObject5).b = au[(localObject3.size() % au.length)];
        label410:
        ((List)localObject3).add(localObject5);
        if ((((Rebalancing)localObject2).getCash() < 0.004999999888241291D) || (i != 0) || ((m != ((List)localObject4).size() - 1) && (((Rebalancing)localObject2).getCash() < ((Holding)((List)localObject4).get(m + 1)).getWeight()))) {
          break label1109;
        }
        localObject1 = new ArrayList();
        ((List)localObject1).add(new com.xueqiu.chart.a.c((float)((Rebalancing)localObject2).getCash() / 100.0F));
        if (this.ao != 2) {
          break label592;
        }
        localObject1 = new com.xueqiu.chart.a.b("现金等资产", (List)localObject1);
        label525:
        if (((Rebalancing)localObject2).getStatus() == Rebalancing.Status.SUCCESS) {
          break label607;
        }
        ((com.xueqiu.chart.a.b)localObject1).b = au[(localObject3.size() % au.length)];
        label554:
        ((List)localObject3).add(localObject1);
        i += 1;
      }
    }
    label592:
    label607:
    label704:
    label1109:
    for (;;)
    {
      m += 1;
      break label307;
      ((com.xueqiu.chart.a.b)localObject5).b = Color.parseColor(((Holding)localObject1).getSegmentColor());
      break label410;
      localObject1 = new com.xueqiu.chart.a.b("现金", (List)localObject1);
      break label525;
      ((com.xueqiu.chart.a.b)localObject1).b = getResources().getColor(2131558624);
      break label554;
      localObject1 = new ArrayList();
      ((List)localObject1).add(new com.xueqiu.chart.a.c((float)((Rebalancing)localObject2).getCash() / 100.0F));
      localObject1 = new com.xueqiu.chart.a.b("现金", (List)localObject1);
      if (((Rebalancing)localObject2).getStatus() != Rebalancing.Status.SUCCESS) {}
      for (((com.xueqiu.chart.a.b)localObject1).b = au[(localObject3.size() % au.length)];; ((com.xueqiu.chart.a.b)localObject1).b = getResources().getColor(2131558624))
      {
        ((List)localObject3).add(localObject1);
        this.M.setData(new com.xueqiu.chart.a.a((List)localObject3));
        this.M.getLegend().k = com.xueqiu.chart.b.i.b;
        this.M.getLegend().l = com.xueqiu.chart.b.h.b;
        this.M.getLegend().i = 10;
        this.M.getLegend().m = 5;
        this.M.setHolePercent(0.6F);
        this.M.invalidate();
        localObject2 = this.s.getPerformance();
        if (localObject2 != null)
        {
          localObject1 = ((Performance)localObject2).getTopGainerName();
          i = ((Performance)localObject2).getGainCount();
          m = ((Performance)localObject2).getLossCount() + i;
          if ((localObject1 != null) || (m > 0))
          {
            this.O.setVisibility(0);
            localObject2 = this.O;
            localObject3 = new SpannableStringBuilder();
            if (m > 0)
            {
              ((SpannableStringBuilder)localObject3).append("最近三月调仓 ");
              int n = ((SpannableStringBuilder)localObject3).length();
              ((SpannableStringBuilder)localObject3).append(String.valueOf(m));
              ((SpannableStringBuilder)localObject3).setSpan(new ForegroundColorSpan(Color.parseColor("#ff7700")), n, ((SpannableStringBuilder)localObject3).length(), 17);
              ((SpannableStringBuilder)localObject3).append(" 次，");
              n = ((SpannableStringBuilder)localObject3).length();
              ((SpannableStringBuilder)localObject3).append(String.valueOf(i));
              ((SpannableStringBuilder)localObject3).setSpan(new ForegroundColorSpan(Color.parseColor("#ff7700")), n, ((SpannableStringBuilder)localObject3).length(), 17);
              ((SpannableStringBuilder)localObject3).append(" 次赚了钱");
            }
            localObject4 = Market.valueOf(this.s.getMarket().toUpperCase());
            if ((localObject1 != null) && (!((Market)localObject4).isCN()))
            {
              if (m > 0) {
                ((SpannableStringBuilder)localObject3).append("\n");
              }
              ((SpannableStringBuilder)localObject3).append("最赚钱股票 ");
              i = ((SpannableStringBuilder)localObject3).length();
              ((SpannableStringBuilder)localObject3).append((CharSequence)localObject1);
              ((SpannableStringBuilder)localObject3).setSpan(new ForegroundColorSpan(Color.parseColor("#ff7700")), i, ((SpannableStringBuilder)localObject3).length(), 17);
            }
            ((TextView)localObject2).setText((CharSequence)localObject3);
          }
        }
        this.N.setText(this.s.getViewRebalancing().getErrorStatus());
        if (this.ao != 2) {
          break;
        }
        this.P.setVisibility(8);
        this.O.setVisibility(8);
        return;
      }
    }
  }
  
  private void p()
  {
    SNBEvent localSNBEvent;
    if (this.s.isFollowing())
    {
      localSNBEvent = new SNBEvent(1401, 11);
      localSNBEvent.addProperty("symbol", this.s.getSymbol());
      com.xueqiu.android.base.i.a().a(localSNBEvent);
    }
    for (;;)
    {
      com.xueqiu.android.base.util.f.a(this.s, this, new com.xueqiu.android.base.util.g()
      {
        public final void a(Cube paramAnonymousCube)
        {
          CubeActivity.c(CubeActivity.this, paramAnonymousCube);
          CubeActivity.H(CubeActivity.this);
          CubeActivity.this.invalidateOptionsMenu();
          CubeActivity.I(CubeActivity.this);
        }
        
        public final void b(Cube paramAnonymousCube)
        {
          CubeActivity.c(CubeActivity.this, paramAnonymousCube);
          CubeActivity.this.invalidateOptionsMenu();
          CubeActivity.H(CubeActivity.this);
          CubeActivity.I(CubeActivity.this);
          paramAnonymousCube = new Intent("com.xueqiu.android.action.refreshPortfolio");
          paramAnonymousCube.putExtra("extra_portfolio_category", 1);
          android.support.v4.content.r.a(CubeActivity.this).a(paramAnonymousCube);
        }
        
        public final void c(Cube paramAnonymousCube)
        {
          CubeActivity.c(CubeActivity.this, paramAnonymousCube);
          CubeActivity.this.invalidateOptionsMenu();
          CubeActivity.I(CubeActivity.this);
        }
      }, true);
      return;
      localSNBEvent = new SNBEvent(1401, 10);
      localSNBEvent.addProperty("symbol", this.s.getSymbol());
      com.xueqiu.android.base.i.a().a(localSNBEvent);
    }
  }
  
  private void q()
  {
    this.ag.removeAllViews();
    Object localObject1 = new View(this);
    ((View)localObject1).setBackgroundColor(com.xueqiu.android.base.r.a(2131558587));
    this.ag.addView((View)localObject1, new ViewGroup.LayoutParams(-1, 1));
    localObject1 = new LinearLayout(this);
    int i = com.xueqiu.android.base.r.c(2131230872) / 2;
    if (c(this.s))
    {
      com.xueqiu.android.base.util.a.a((View)localObject1, com.xueqiu.android.base.r.h(2130837767));
      ((LinearLayout)localObject1).setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          CubeActivity.J(CubeActivity.this);
        }
      });
    }
    ((LinearLayout)localObject1).setPadding(0, i, 0, i);
    ((LinearLayout)localObject1).setOrientation(0);
    this.ag.addView((View)localObject1, new LinearLayout.LayoutParams(-1, -2));
    this.av = new TextView(this);
    this.av.setTextColor(com.xueqiu.android.base.r.a(2131558686));
    this.av.setTextSize(0, com.xueqiu.android.base.r.c(2131230775));
    Object localObject2 = new LinearLayout.LayoutParams(-2, -2);
    ((LinearLayout.LayoutParams)localObject2).gravity = 16;
    ((LinearLayout.LayoutParams)localObject2).leftMargin = com.xueqiu.android.base.r.c(2131230872);
    ((LinearLayout)localObject1).addView(this.av, (ViewGroup.LayoutParams)localObject2);
    this.aw = new TextView(this);
    this.aw.setGravity(19);
    this.aw.setTextColor(com.xueqiu.android.base.r.a(2131558525));
    this.aw.setTextSize(0, com.xueqiu.android.base.r.c(2131230772));
    localObject2 = new LinearLayout.LayoutParams(-2, -2, 1.0F);
    ((LinearLayout.LayoutParams)localObject2).gravity = 16;
    ((LinearLayout)localObject1).addView(this.aw, (ViewGroup.LayoutParams)localObject2);
    if (c(this.s))
    {
      localObject2 = new TextView(this);
      ((TextView)localObject2).setTextColor(com.xueqiu.android.base.r.a(2131558525));
      ((TextView)localObject2).setTextSize(0, com.xueqiu.android.base.r.c(2131230771));
      if (this.ao != 2) {
        break label622;
      }
      ((TextView)localObject2).setText(com.xueqiu.android.base.r.d(2131165912));
    }
    for (;;)
    {
      LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-2, -2);
      localLayoutParams.gravity = 16;
      ((LinearLayout)localObject1).addView((View)localObject2, localLayoutParams);
      localObject2 = new ImageView(this);
      ((ImageView)localObject2).setImageDrawable(com.xueqiu.android.base.r.h(2130837620));
      localLayoutParams = new LinearLayout.LayoutParams(-2, -2);
      localLayoutParams.gravity = 21;
      localLayoutParams.leftMargin = (com.xueqiu.android.base.r.c(2131230872) / 3);
      localLayoutParams.rightMargin = com.xueqiu.android.base.r.c(2131230872);
      localLayoutParams.topMargin = com.xueqiu.android.base.r.c(2131230770);
      ((LinearLayout)localObject1).addView((View)localObject2, localLayoutParams);
      this.ay = new View(this);
      this.ay.setBackgroundColor(com.xueqiu.android.base.r.a(2131558436));
      this.ay.setVisibility(8);
      this.ag.addView(this.ay, new ViewGroup.LayoutParams(-1, 1));
      this.ax = new TextView(this);
      this.ax.setTextColor(com.xueqiu.android.base.r.a(2131558524));
      this.ax.setTextSize(0, com.xueqiu.android.base.r.c(2131230774));
      this.ax.setGravity(51);
      i = com.xueqiu.android.base.r.c(2131230776);
      this.ax.setPadding(i, i, i, i);
      com.xueqiu.android.base.util.a.a(this.ax, com.xueqiu.android.base.r.h(2130837894));
      localObject1 = new LinearLayout.LayoutParams(-1, -2);
      ((LinearLayout.LayoutParams)localObject1).leftMargin = com.xueqiu.android.base.r.c(2131230872);
      ((LinearLayout.LayoutParams)localObject1).rightMargin = com.xueqiu.android.base.r.c(2131230872);
      this.ag.addView(this.ax, (ViewGroup.LayoutParams)localObject1);
      return;
      label622:
      ((TextView)localObject2).setText(com.xueqiu.android.base.r.d(2131165423));
    }
  }
  
  private void refresh()
  {
    Object localObject1;
    Object localObject2;
    final Object localObject3;
    if (this.ao == 1)
    {
      localObject1 = new p(this)
      {
        public final void a(y paramAnonymousy)
        {
          aa.a(paramAnonymousy);
          CubeActivity.this.findViewById(2131624916).setVisibility(8);
        }
      };
      localObject2 = com.xueqiu.android.base.q.a().b();
      localObject3 = this.s.getSymbol();
      ((ai)localObject2).l.h((String)localObject3, (p)localObject1);
      l();
      if (this.s.getLastRebalancing() != null)
      {
        localObject3 = this.s.getLastRebalancing();
        u.a();
        if (UserLogonDataPrefs.getLogonUserId() == this.s.getOwnerId())
        {
          localObject1 = new ArrayList();
          ((List)localObject1).add(this.s.getSymbol() + "_message");
          localObject2 = com.xueqiu.android.base.q.a().b();
          localObject3 = new p(this)
          {
            public final void a(y paramAnonymousy)
            {
              aa.a(paramAnonymousy);
            }
          };
          ((ai)localObject2).h.a((List)localObject1, (p)localObject3);
        }
      }
      m();
      if (this.s.getOwner() != null)
      {
        localObject1 = new com.d.a.b.e();
        ((com.d.a.b.e)localObject1).c = 2130838664;
        ((com.d.a.b.e)localObject1).b = 2130838664;
        ((com.d.a.b.e)localObject1).a = 2130838664;
        ((com.d.a.b.e)localObject1).i = true;
        ((com.d.a.b.e)localObject1).h = true;
        ((com.d.a.b.e)localObject1).q = new com.d.a.b.c.c((int)ay.a(25.0F));
        localObject1 = ((com.d.a.b.e)localObject1).b();
        localObject2 = this.s.getOwner().getProfileLargeImageUrl();
        com.d.a.b.f.a().a((String)localObject2, this.K, (com.d.a.b.d)localObject1, new o());
        localObject1 = this.s.getOwner().getScreenName();
        this.H.setText((CharSequence)localObject1);
        if (this.s.getOwner().getVerifyType() != UserVerifyType.ADVISER) {
          break label1091;
        }
        this.J.setVisibility(0);
        label301:
        localObject2 = this.s.getDescription();
        if (localObject2 != null)
        {
          localObject1 = localObject2;
          if (((String)localObject2).trim().length() != 0) {}
        }
        else
        {
          l = this.s.getOwner().getUserId();
          u.a();
          if (l != UserLogonDataPrefs.getLogonUserId()) {
            break label1103;
          }
          localObject1 = getString(2131166290);
        }
        label358:
        this.G.setText((CharSequence)localObject1);
        this.K.setOnClickListener(new View.OnClickListener()
        {
          public final void onClick(View paramAnonymousView)
          {
            CubeActivity.this.startActivity(com.xueqiu.android.base.util.q.a(paramAnonymousView.getContext(), UserProfileActivity.class, "extra_user", CubeActivity.a(CubeActivity.this).getOwner()));
          }
        });
        if ((this.s.getContractor() == null) || (this.s.getContractor().getId() == null)) {
          break label1114;
        }
        localObject1 = this.s.getContractor();
        this.I.setOnClickListener(new View.OnClickListener()
        {
          public final void onClick(View paramAnonymousView)
          {
            CubeActivity.E(CubeActivity.this);
          }
        });
        this.I.setText(((Contractor)localObject1).getShortName());
        com.d.a.b.f.a().a(((Contractor)localObject1).getLogo(), com.xueqiu.android.base.util.n.b().b(), new com.d.a.b.f.d()
        {
          public final void a(String paramAnonymousString, View paramAnonymousView, Bitmap paramAnonymousBitmap)
          {
            paramAnonymousString = new BitmapDrawable(paramAnonymousBitmap);
            int i = (int)ay.a(CubeActivity.this, 10.0F);
            paramAnonymousString.setBounds(0, 0, i, i);
            CubeActivity.F(CubeActivity.this).setCompoundDrawables(paramAnonymousString, null, null, null);
          }
        });
        this.I.setVisibility(0);
        label470:
        if (this.ao == 2) {
          this.J.setVisibility(0);
        }
      }
      o();
      if (this.ah != null) {
        this.W.removeView(this.ah);
      }
      this.ah = new LinearLayout(this);
      this.ah.setOrientation(0);
      this.ah.setPadding(1, 1, 1, 1);
      this.ah.setBackgroundDrawable(com.xueqiu.android.base.r.h(2130837856));
      this.j = ((Button)LayoutInflater.from(this).inflate(2130903274, this.ah, false));
      this.j.setText(com.xueqiu.android.base.r.d(2131165391));
      com.xueqiu.android.base.util.a.a(this.j, com.xueqiu.android.base.r.h(2130838248));
      this.j.setTextColor(com.xueqiu.android.base.r.b());
      this.j.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          CubeActivity.a(CubeActivity.this.j, true, 2);
          CubeActivity.a(CubeActivity.this.k, false, 1);
          CubeActivity.a(CubeActivity.this.p, false, 3);
          CubeActivity.b(CubeActivity.this, 2);
          paramAnonymousView = new SNBEvent(1401, 8);
          paramAnonymousView.addProperty("symbol", CubeActivity.a(CubeActivity.this).getSymbol());
          paramAnonymousView.addProperty("period", "最近3个月");
          com.xueqiu.android.base.i.a().a(paramAnonymousView);
        }
      });
      this.k = ((Button)LayoutInflater.from(this).inflate(2130903274, this.ah, false));
      this.k.setText(com.xueqiu.android.base.r.d(2131165390));
      com.xueqiu.android.base.util.a.a(this.k, com.xueqiu.android.base.r.h(2130838300));
      this.k.setTextColor(com.xueqiu.android.base.r.b());
      this.k.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          CubeActivity.a(CubeActivity.this.j, false, 2);
          CubeActivity.a(CubeActivity.this.k, true, 1);
          CubeActivity.a(CubeActivity.this.p, false, 3);
          CubeActivity.b(CubeActivity.this, 1);
          paramAnonymousView = new SNBEvent(1401, 8);
          paramAnonymousView.addProperty("symbol", CubeActivity.a(CubeActivity.this).getSymbol());
          paramAnonymousView.addProperty("period", "最近一年");
          com.xueqiu.android.base.i.a().a(paramAnonymousView);
        }
      });
      this.p = ((Button)LayoutInflater.from(this).inflate(2130903274, this.ah, false));
      this.p.setText(com.xueqiu.android.base.r.d(2131165389));
      com.xueqiu.android.base.util.a.a(this.p, com.xueqiu.android.base.r.h(2130838408));
      this.p.setTextColor(com.xueqiu.android.base.r.b());
      this.p.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          CubeActivity.a(CubeActivity.this.j, false, 2);
          CubeActivity.a(CubeActivity.this.k, false, 1);
          CubeActivity.a(CubeActivity.this.p, true, 3);
          CubeActivity.b(CubeActivity.this, 3);
          paramAnonymousView = new SNBEvent(1401, 8);
          paramAnonymousView.addProperty("symbol", CubeActivity.a(CubeActivity.this).getSymbol());
          paramAnonymousView.addProperty("period", "全部");
          com.xueqiu.android.base.i.a().a(paramAnonymousView);
        }
      });
      b(this.j, true, 2);
      b(this.k, false, 1);
      b(this.p, false, 3);
      this.ah.addView(this.j);
      this.ah.addView(this.k);
      this.ah.addView(this.p);
      localObject1 = new FrameLayout.LayoutParams(-2, -2, 51);
      ((FrameLayout.LayoutParams)localObject1).leftMargin = com.xueqiu.android.base.r.c(2131230872);
      this.W.addView(this.ah, (ViewGroup.LayoutParams)localObject1);
      c(2);
      if (this.s == null) {
        break label1168;
      }
      if (this.ao != 1) {
        break label1126;
      }
      localObject1 = com.xueqiu.android.base.q.a().b();
      long l = this.s.getLastUserRbGid();
      localObject2 = new p(this)
      {
        public final void a(y paramAnonymousy)
        {
          com.xueqiu.android.base.util.v.a("CubeActivity", "getCubeRbHistory  onErrorResponse : " + paramAnonymousy);
        }
      };
      ((ai)localObject1).l.a(l, (p)localObject2);
      label924:
      this.w.a(false);
      if ((this.s.getStyle() == null) || (this.s.getClosedAt() != null)) {
        break label1180;
      }
      int i = Color.parseColor(this.s.getStyle().getColor0());
      this.v.setBackgroundColor(i);
      this.ai = new ColorDrawable(i);
      this.ai.setCallback(this.aq);
    }
    for (;;)
    {
      this.i.b().a(this.ai);
      localObject1 = com.xueqiu.android.base.q.a().b();
      localObject2 = this.s.getSymbol();
      localObject3 = Arrays.asList(new String[] { "owner", "all" });
      p local37 = new p(this)
      {
        public final void a(y paramAnonymousy)
        {
          aa.a(paramAnonymousy);
        }
      };
      ((ai)localObject1).g.a((String)localObject2, (List)localObject3, -1L, local37);
      return;
      findViewById(2131624916).setVisibility(8);
      break;
      label1091:
      this.J.setVisibility(8);
      break label301;
      label1103:
      localObject1 = getString(2131166257);
      break label358;
      label1114:
      this.I.setVisibility(8);
      break label470;
      label1126:
      localObject1 = com.xueqiu.android.base.q.a().b();
      localObject2 = this.s.getSymbol();
      localObject3 = new p(this)
      {
        public final void a(y paramAnonymousy)
        {
          com.xueqiu.android.base.util.v.a("CubeActivity", "getCubeRbHistory  onErrorResponse : " + paramAnonymousy);
        }
      };
      ((ai)localObject1).l.a((String)localObject2, as.f((String)localObject2), (p)localObject3);
      break label924;
      label1168:
      com.xueqiu.android.base.util.v.a("CubeActivity", "mcube is null ");
      break label924;
      label1180:
      this.ai = new ColorDrawable(getResources().getColor(2131558536));
      this.v.setBackgroundResource(2131558536);
    }
  }
  
  public final void b(final int paramInt)
  {
    double d2;
    Object localObject1;
    Object localObject2;
    if (this.ao == 2)
    {
      if ((this.am == null) || (this.am.size() == 0)) {
        d2 = 0.0D;
      }
      while (d2 == 0.0D)
      {
        com.xueqiu.android.base.q.a().b().a(this.s.getSymbol(), this.s.getMarket(), "annual", new p(this)
        {
          public final void a(y paramAnonymousy)
          {
            aa.a(paramAnonymousy);
          }
        });
        return;
        localObject1 = this.am.iterator();
        double d1 = 0.0D;
        d2 = d1;
        if (((Iterator)localObject1).hasNext())
        {
          localObject2 = (d)((Iterator)localObject1).next();
          if ((!TextUtils.equals(((d)localObject2).rankParam, "annual")) || (((d)localObject2).a == null)) {
            break label266;
          }
          d1 = ((d)localObject2).a.doubleValue();
        }
      }
    }
    label266:
    for (;;)
    {
      break;
      a(paramInt, d2);
      return;
      localObject2 = new p(this)
      {
        public final void a(y paramAnonymousy)
        {
          CubeActivity.this.i();
          aa.a(paramAnonymousy);
          if (CubeActivity.this.r != null) {
            CubeActivity.this.r.a(paramInt);
          }
        }
      };
      ai localai = com.xueqiu.android.base.q.a().b();
      String str = String.format("$%s(%s)$", new Object[] { this.s.getName(), this.s.getSymbol() });
      localObject1 = null;
      if ((this.q == 4) || (this.q == 5)) {
        localObject1 = String.format("%.2f%%", new Object[] { this.s.getTotalGain() });
      }
      localai.a(this.q, str, (String)localObject1, (p)localObject2);
      h();
      return;
    }
  }
  
  protected final void e()
  {
    setTheme(2131361923);
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, final Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    if (this.s == null) {}
    do
    {
      long l;
      do
      {
        do
        {
          do
          {
            return;
            if ((paramInt1 != 1) || (paramInt2 != -1)) {
              break;
            }
            a(this.s.getId(), this.s.getSymbol());
          } while (!DefaultPrefs.getBoolean(com.xueqiu.android.base.r.d(2131166085), true, getApplicationContext()));
          new AlertDialog.Builder(this).setTitle(2131166239).setNegativeButton(2131166255, null).setPositiveButton(2131166278, new DialogInterface.OnClickListener()
          {
            public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
            {
              paramAnonymousDialogInterface = (Rebalancing)paramIntent.getParcelableExtra("rebalance");
              String str = paramIntent.getStringExtra("extra_rb_desc");
              str = CubeActivity.this.getString(2131166238, new Object[] { CubeActivity.a(CubeActivity.this).getName(), CubeActivity.a(CubeActivity.this).getSymbol(), str });
              paramAnonymousInt = ap.a();
              ap.a(CubeActivity.this.getBaseContext(), CubeActivity.g(), str, "rebalancing", String.valueOf(paramAnonymousDialogInterface.getId())).b(new rx.i()
              {
                public final void a() {}
                
                public final void a(Throwable paramAnonymous2Throwable)
                {
                  aa.a(paramAnonymous2Throwable);
                }
              });
            }
          }).show();
          return;
          if ((paramInt1 == 2) && (paramInt2 == -1))
          {
            a(this.s.getId(), this.s.getSymbol());
            return;
          }
          if ((paramInt1 != 3) || (paramInt2 != -1)) {
            break;
          }
          paramIntent = Integer.valueOf(paramIntent.getIntExtra("extra_task_id", -1));
        } while (paramIntent.intValue() < 0);
        this.ar.add(paramIntent);
        return;
        if ((paramInt1 != 4) || (paramInt2 != 2)) {
          break;
        }
        l = paramIntent.getLongExtra("delete_status_id", -1L);
      } while (l <= 0L);
      paramIntent = new ArrayList(this.x.a());
      Iterator localIterator = paramIntent.iterator();
      while (localIterator.hasNext()) {
        if (((Status)localIterator.next()).getStatusId() == l) {
          localIterator.remove();
        }
      }
      this.x.a(paramIntent);
      return;
    } while (paramInt1 != 5);
    a(this.s.getId(), this.s.getSymbol());
  }
  
  public void onBackPressed()
  {
    if (this.s != null)
    {
      Intent localIntent = new Intent();
      localIntent.putExtra("extra_cube", this.s);
      setResult(-1, localIntent);
    }
    super.onBackPressed();
  }
  
  protected void onCreate(final Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903093);
    this.ai = new ColorDrawable(getResources().getColor(2131558536));
    this.ai.setAlpha(0);
    this.i.b().a(this.ai);
    this.ai.setCallback(this.aq);
    this.ap = getIntent().getStringExtra("extra_cube_symbol");
    if (com.xueqiu.android.base.util.f.a(this.ap))
    {
      this.ao = 2;
      this.t = findViewById(2131624300);
      paramBundle = (SNBPullToRefreshListView)findViewById(2131624301);
      if (this.ao != 1) {
        break label1181;
      }
      this.u = LayoutInflater.from(this).inflate(2130903288, (ViewGroup)paramBundle.getRefreshableView(), false);
      label147:
      this.v = this.u.findViewById(2131624573);
      ((ListView)paramBundle.getRefreshableView()).addHeaderView(this.u);
      paramBundle.setPullToRefreshEnabled(false);
      this.x = new com.xueqiu.android.community.a.ak(this);
      this.w = new com.xueqiu.android.community.widget.i(paramBundle, new com.xueqiu.android.common.t()
      {
        private int b = 1;
        private ai c = com.xueqiu.android.base.q.a().b();
        
        public final com.android.volley.n<ArrayList<Status>> a(p<ArrayList<Status>> paramAnonymousp)
        {
          this.b = 1;
          return this.c.a(CubeActivity.a(CubeActivity.this).getSymbol(), CubeActivity.b(CubeActivity.this), this.b, 10, CubeActivity.c(CubeActivity.this), paramAnonymousp);
        }
        
        public final void a(ArrayList<Status> paramAnonymousArrayList, Throwable paramAnonymousThrowable, boolean paramAnonymousBoolean)
        {
          CubeActivity.this.i();
          if (paramAnonymousArrayList == null)
          {
            aa.a(paramAnonymousThrowable);
            this.b -= 1;
            if (this.b <= 0) {
              this.b = 1;
            }
          }
          do
          {
            do
            {
              return;
            } while (paramAnonymousBoolean);
            CubeActivity.this.i();
            CubeActivity.d(CubeActivity.this).c();
          } while (!CubeActivity.e(CubeActivity.this));
          CubeActivity.f(CubeActivity.this);
          ag.d.a(new rx.c.a()
          {
            public final void a()
            {
              ((ListView)CubeActivity.d(CubeActivity.this).a.getRefreshableView()).smoothScrollToPositionFromTop(2, CubeActivity.g(CubeActivity.this).getHeight() + CubeActivity.h(CubeActivity.this).getHeight() + CubeActivity.this.i.b().c());
            }
          }, 100L, TimeUnit.MILLISECONDS);
        }
        
        public final com.android.volley.n<ArrayList<Status>> b(p<ArrayList<Status>> paramAnonymousp)
        {
          this.b += 1;
          return this.c.a(CubeActivity.a(CubeActivity.this).getSymbol(), CubeActivity.b(CubeActivity.this), this.b, 10, CubeActivity.c(CubeActivity.this), paramAnonymousp);
        }
      });
      this.w.a("还没有评论，就等你点评了！");
      this.w.a(2130837914);
      this.w.a(this.x);
      this.w.a(new AdapterView.OnItemClickListener()
      {
        public final void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
        {
          paramAnonymousAdapterView = (Status)CubeActivity.d(CubeActivity.this).c.getItem(paramAnonymousInt - ((ListView)paramBundle.getRefreshableView()).getHeaderViewsCount());
          paramAnonymousView = new Intent(CubeActivity.this.getBaseContext(), StatusDetailActivity.class);
          paramAnonymousView.putExtra("status", paramAnonymousAdapterView);
          CubeActivity.this.startActivityForResult(paramAnonymousView, 4);
        }
      });
      this.af = ((FloatingActionMenu)findViewById(2131624306));
      paramBundle.setOnScrollListener(new AbsListView.OnScrollListener()
      {
        public final void onScroll(AbsListView paramAnonymousAbsListView, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3)
        {
          CubeActivity.j(CubeActivity.this).setAlpha(CubeActivity.i(CubeActivity.this));
        }
        
        public final void onScrollStateChanged(AbsListView paramAnonymousAbsListView, int paramAnonymousInt) {}
      });
      this.y = ((TextView)this.u.findViewById(2131624893));
      this.z = ((TextView)this.u.findViewById(2131624900));
      this.A = ((TextView)this.u.findViewById(2131624901));
      this.B = ((TextView)this.u.findViewById(2131624902));
      this.C = ((TextView)this.u.findViewById(2131624895));
      this.D = ((LinearLayout)this.u.findViewById(2131624892));
      this.E = ((TextView)this.u.findViewById(2131624904));
      this.F = ((TextView)this.u.findViewById(2131624906));
      this.H = ((TextView)this.u.findViewById(2131624911));
      this.I = ((TextView)this.u.findViewById(2131624914));
      this.J = this.u.findViewById(2131624912);
      this.G = ((TextView)this.u.findViewById(2131624913));
      this.K = ((ImageView)this.u.findViewById(2131624909));
      this.L = this.u.findViewById(2131624932);
      this.R = ((TextView)this.u.findViewById(2131624917));
      this.Q = ((RadarChart)this.u.findViewById(2131624918));
      this.S = ((LinearLayout)this.u.findViewById(2131624921));
      this.T = ((ImageView)this.u.findViewById(2131624896));
      this.U = ((TextView)this.u.findViewById(2131624897));
      this.V = ((TextView)this.u.findViewById(2131624926));
      this.W = ((LineChart)this.u.findViewById(2131624884));
      this.Y = ((TextView)this.u.findViewById(2131624929));
      this.ag = ((LinearLayout)this.u.findViewById(2131624923));
      this.Z = this.u.findViewById(2131624925);
      this.aa = this.u.findViewById(2131624930);
      this.O = ((TextView)this.u.findViewById(2131624936));
      this.P = this.u.findViewById(2131624937);
      this.M = ((PieChart)this.u.findViewById(2131624935));
      this.N = ((TextView)this.u.findViewById(2131624934));
      this.ab = ((LinearLayout)this.aa.findViewById(2131624811));
      this.X = findViewById(2131624302);
      this.ac = findViewById(2131624303);
      this.ad = ((TextView)this.ac.findViewById(2131624304));
      this.ae = ((ImageButton)this.ac.findViewById(2131624305));
      this.L.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          CubeActivity.k(CubeActivity.this);
        }
      });
      this.Z.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          if (CubeActivity.l(CubeActivity.this) == 1)
          {
            CubeActivity.m(CubeActivity.this);
            return;
          }
          CubeActivity.n(CubeActivity.this);
        }
      });
      this.P.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          CubeActivity.o(CubeActivity.this);
        }
      });
      this.ae.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          CubeActivity.a(CubeActivity.this, true);
          CubeActivity.b(CubeActivity.this, true);
        }
      });
      this.ac.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          if (CubeActivity.a(CubeActivity.this).getLastRebalancing().getStatus() == Rebalancing.Status.FAILED) {
            CubeActivity.p(CubeActivity.this);
          }
          for (;;)
          {
            CubeActivity.a(CubeActivity.this, true);
            CubeActivity.b(CubeActivity.this, true);
            return;
            CubeActivity.q(CubeActivity.this);
          }
        }
      });
      this.u.findViewById(2131624903).setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          if ((CubeActivity.a(CubeActivity.this) == null) || (CubeActivity.a(CubeActivity.this).getMarket() == null) || (CubeActivity.r(CubeActivity.this) == null) || (CubeActivity.r(CubeActivity.this).size() <= CubeActivity.s(CubeActivity.this))) {
            return;
          }
          paramAnonymousView = (d)CubeActivity.r(CubeActivity.this).get(CubeActivity.s(CubeActivity.this));
          UserPrefs.setString(CubeActivity.this, "rank_param", paramAnonymousView.rankParam);
          if (paramAnonymousView.a == null) {
            CubeActivity.a(CubeActivity.this, paramAnonymousView);
          }
          for (;;)
          {
            paramAnonymousView = new SNBEvent(1401, 12);
            paramAnonymousView.addProperty("symbol", CubeActivity.a(CubeActivity.this).getSymbol());
            com.xueqiu.android.base.i.a().a(paramAnonymousView);
            return;
            CubeActivity.b(CubeActivity.this, paramAnonymousView);
          }
        }
      });
      findViewById(2131624908).setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          CubeActivity.t(CubeActivity.this);
        }
      });
      q();
      this.u.findViewById(2131624924).setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          CubeActivity.n(CubeActivity.this);
        }
      });
      paramBundle = getString(2131166259);
      float f = ay.a(this, 14.0F);
      int i = getResources().getColor(2131558586);
      this.W.setEmptyDescription(paramBundle);
      this.W.getEmptyLabel().f.setTextSize(f);
      this.W.getEmptyLabel().f.setColor(i);
      k();
      paramBundle = (Cube)getIntent().getParcelableExtra("extra_cube");
      if (paramBundle == null) {
        break label1206;
      }
      a(paramBundle);
      a(paramBundle.getId(), paramBundle.getSymbol());
    }
    for (;;)
    {
      if (getIntent().getBooleanExtra("extra_share", false)) {
        d(3);
      }
      a(rx.a.b.a.b(this, new IntentFilter("com.xueqiu.android.action.statusPosted")).c(new rx.c.b() {}));
      if (this.ao == 2)
      {
        this.P.setVisibility(8);
        this.O.setVisibility(8);
        this.u.findViewById(2131625045).setOnClickListener(new View.OnClickListener()
        {
          public final void onClick(View paramAnonymousView)
          {
            com.xueqiu.android.common.q.a(com.xueqiu.android.base.v.b("/6123409880/72737685"), CubeActivity.this);
          }
        });
      }
      return;
      this.ao = 1;
      break;
      label1181:
      this.u = LayoutInflater.from(this).inflate(2130903314, (ViewGroup)paramBundle.getRefreshableView(), false);
      break label147;
      label1206:
      a(getIntent().getLongExtra("extra_cube_id", 0L), this.ap);
    }
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    if (this.s != null) {
      if (!this.s.isFollowing()) {
        break label39;
      }
    }
    label39:
    for (int i = 2131166549;; i = 2131165536)
    {
      android.support.v4.view.ak.a(paramMenu.add(0, 2131623947, 0, i), 2);
      return true;
    }
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    if (paramMenuItem.getItemId() == 2131623947)
    {
      if (this.s.isFollowing())
      {
        new AlertDialog.Builder(this).setTitle(getString(2131165366, new Object[] { this.s.getName() })).setNegativeButton(2131165296, null).setPositiveButton(2131165361, new DialogInterface.OnClickListener()
        {
          public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
          {
            CubeActivity.G(CubeActivity.this);
          }
        }).show();
        return true;
      }
      p();
      return true;
    }
    return super.onOptionsItemSelected(paramMenuItem);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\cube\CubeActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
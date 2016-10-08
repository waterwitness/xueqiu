package com.xueqiu.android.stockchart.d;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.os.Handler;
import android.preference.PreferenceManager;
import android.support.v4.a.k;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.animation.AlphaAnimation;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.PopupWindow;
import android.widget.TextView;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.xueqiu.android.stockchart.e.g;
import com.xueqiu.android.stockchart.e.h;
import com.xueqiu.android.stockchart.e.j;
import com.xueqiu.android.stockchart.view.BlinkPointView;
import com.xueqiu.android.stockchart.view.EventView;
import com.xueqiu.android.stockchart.view.FundChartView;
import com.xueqiu.android.stockchart.view.KlineChartView;
import com.xueqiu.android.stockchart.view.LoadingView;
import com.xueqiu.android.stockchart.view.PankouView;
import com.xueqiu.android.stockchart.view.PressInfoView;
import com.xueqiu.android.stockchart.view.StockChartView;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class a
  extends android.support.v4.a.i
  implements View.OnClickListener
{
  public String a;
  public StockChartView aA;
  public KlineChartView aB;
  public FundChartView aC;
  public PankouView aD;
  public PressInfoView aE;
  public EventView aF;
  public LoadingView aG;
  public TextView aH;
  public TextView aI;
  public BlinkPointView aJ;
  public TypedArray aK;
  public Handler aL = new Handler();
  boolean aM;
  private boolean aN = false;
  private boolean aO = false;
  private boolean aP = false;
  private boolean aQ = false;
  private String[] aR = { "1d", "5d", "1day", "1week", "1month", "minute" };
  private String[] aS = { "分时", "五日", "日K", "周K", "月K", "分钟" };
  private String[] aT = { "1d", "5d", "1m", "6m", "3y", "all" };
  private String[] aU = { "1day", "1week", "1month", "1minute", "5m", "15m", "30m", "60m" };
  private String[] aV = { "unit5", "unit", "seven", "million" };
  private LinearLayout aW;
  private TextView aX;
  private TextView aY;
  private TextView aZ;
  public LinearLayout ak;
  public com.xueqiu.android.stockchart.b.a al;
  public com.xueqiu.android.stockchart.a.b am;
  public String an;
  public h ao;
  public DecimalFormat ap = new DecimalFormat("0.00");
  public String aq = "1d";
  public String ar = "stock";
  public String as = "small";
  public String at = "before";
  public String au = "volume";
  public String av = "wudang";
  public String[] aw = { "1minute", "5m", "15m", "30m", "60m" };
  public HashMap<String, JsonObject> ax = new HashMap();
  public HashMap<String, HashMap<String, JsonObject>> ay = new HashMap();
  PopupWindow az;
  public LinearLayout b;
  private TextView ba;
  private TextView bb;
  private TextView bc;
  private LinearLayout bd;
  private TextView be;
  private TextView bf;
  private TextView bg;
  private TextView bh;
  private TextView bi;
  private TextView bj;
  private TextView bk;
  private LinearLayout bl;
  private TextView bm;
  private TextView bn;
  private TextView bo;
  private int bp;
  private int bq;
  private boolean br = false;
  private float bs;
  private Runnable bt = new Runnable()
  {
    public final void run()
    {
      if (a.this.an == null) {
        return;
      }
      if (a.this.aq.equals("1d")) {
        a.this.a(true);
      }
      a locala;
      long l;
      HashMap localHashMap;
      if ((a.this.ar.equals("kline")) && (a.a(a.this.aw, a.this.aq)))
      {
        locala = a.this;
        l = System.currentTimeMillis();
        localHashMap = new HashMap();
        localHashMap.put("symbol", locala.an);
        if (!locala.aq.equals("1minute")) {
          break label208;
        }
      }
      label208:
      for (String str = "1m";; str = locala.aq)
      {
        localHashMap.put("period", str);
        localHashMap.put("type", locala.at);
        localHashMap.put("end", String.valueOf(l + 3600000L));
        localHashMap.put("count", "2");
        locala.a("stock", "/stock/forchartk/stocklist.json", "get", localHashMap, new a.5(locala));
        a.this.aL.postDelayed(a.a(a.this), 60000L);
        return;
      }
    }
  };
  public com.xueqiu.android.stockchart.a.c c;
  public com.xueqiu.android.stockchart.a.a d;
  public com.xueqiu.android.stockchart.c.b e;
  public View f;
  public LinearLayout g;
  public FrameLayout h;
  public LinearLayout i;
  
  public static JsonObject a(JsonObject paramJsonObject1, JsonObject paramJsonObject2)
  {
    try
    {
      Object localObject = paramJsonObject1.getAsJsonArray("chartlist");
      JsonArray localJsonArray = paramJsonObject2.getAsJsonArray("chartlist");
      paramJsonObject2 = new JsonArray();
      paramJsonObject2.addAll(localJsonArray);
      paramJsonObject2.addAll((JsonArray)localObject);
      localObject = new JsonObject();
      ((JsonObject)localObject).add("chartlist", paramJsonObject2);
      return (JsonObject)localObject;
    }
    catch (Exception paramJsonObject2)
    {
      paramJsonObject2.printStackTrace();
    }
    return paramJsonObject1;
  }
  
  public static List<g> a(JsonObject paramJsonObject)
  {
    ArrayList localArrayList = new ArrayList();
    int j = 5;
    g localg;
    float f1;
    if (j > 0)
    {
      localg = new g();
      localg.a = ("卖" + j);
      if (paramJsonObject == null)
      {
        f1 = 0.0F;
        label52:
        localg.b = f1;
        if (paramJsonObject != null) {
          break label125;
        }
        f1 = 0.0F;
        label63:
        localg.c = f1;
        if (paramJsonObject != null) {
          break label154;
        }
      }
      label125:
      label154:
      for (f1 = 0.0F;; f1 = paramJsonObject.get("current").getAsFloat())
      {
        localg.d = f1;
        localArrayList.add(localg);
        j -= 1;
        break;
        f1 = paramJsonObject.get("sp" + j).getAsFloat();
        break label52;
        f1 = paramJsonObject.get("sc" + j).getAsFloat();
        break label63;
      }
    }
    j = 1;
    if (j < 6)
    {
      localg = new g();
      localg.a = ("买" + j);
      if (paramJsonObject == null)
      {
        f1 = 0.0F;
        label214:
        localg.b = f1;
        if (paramJsonObject != null) {
          break label287;
        }
        f1 = 0.0F;
        label225:
        localg.c = f1;
        if (paramJsonObject != null) {
          break label316;
        }
      }
      label287:
      label316:
      for (f1 = 0.0F;; f1 = paramJsonObject.get("current").getAsFloat())
      {
        localg.d = f1;
        localArrayList.add(localg);
        j += 1;
        break;
        f1 = paramJsonObject.get("bp" + j).getAsFloat();
        break label214;
        f1 = paramJsonObject.get("bc" + j).getAsFloat();
        break label225;
      }
    }
    return localArrayList;
  }
  
  public static boolean a(String[] paramArrayOfString, String paramString)
  {
    return Arrays.asList(paramArrayOfString).contains(paramString);
  }
  
  public static List<com.xueqiu.android.stockchart.e.b> b(JsonObject paramJsonObject)
  {
    ArrayList localArrayList = new ArrayList();
    paramJsonObject = paramJsonObject.getAsJsonArray("list");
    int j = 0;
    while (j < paramJsonObject.size())
    {
      JsonObject localJsonObject = paramJsonObject.get(j).getAsJsonObject();
      com.xueqiu.android.stockchart.e.b localb = new com.xueqiu.android.stockchart.e.b();
      localb.a = localJsonObject.get("ts").getAsString();
      localb.b = localJsonObject.get("c").getAsFloat();
      localb.c = localJsonObject.get("v").getAsFloat();
      localb.d = localJsonObject.get("type").getAsInt();
      localArrayList.add(localb);
      j += 1;
    }
    return localArrayList;
  }
  
  private void c(float paramFloat)
  {
    int j = this.aB.getOHLCMAArray().size();
    com.xueqiu.android.stockchart.e.f localf = (com.xueqiu.android.stockchart.e.f)this.aB.getOHLCMAArray().get(j - 1);
    String str = com.xueqiu.android.stockchart.f.a.a(localf.j, "MM-DD");
    if (com.xueqiu.android.stockchart.f.a.a(System.currentTimeMillis(), "MM-DD").equals(str))
    {
      if (paramFloat > localf.b) {
        localf.b = paramFloat;
      }
      if (paramFloat < localf.c) {
        localf.c = paramFloat;
      }
      localf.d = paramFloat;
      if (this.aB.getEndIndex() == j) {
        this.aB.invalidate();
      }
    }
  }
  
  private void d(JsonObject paramJsonObject)
  {
    if (paramJsonObject != null) {}
    try
    {
      ArrayList localArrayList1 = new ArrayList();
      ArrayList localArrayList2 = new ArrayList();
      ArrayList localArrayList3 = new ArrayList();
      paramJsonObject = paramJsonObject.getAsJsonArray("chartlist");
      int j = 0;
      while (j < paramJsonObject.size())
      {
        JsonObject localJsonObject = paramJsonObject.get(j).getAsJsonObject();
        com.xueqiu.android.stockchart.e.f localf = new com.xueqiu.android.stockchart.e.f();
        j localj = new j();
        com.xueqiu.android.stockchart.e.e locale = new com.xueqiu.android.stockchart.e.e();
        localf.a = localJsonObject.get("open").getAsFloat();
        localf.b = localJsonObject.get("high").getAsFloat();
        localf.c = localJsonObject.get("low").getAsFloat();
        localf.d = localJsonObject.get("close").getAsFloat();
        localf.e = localJsonObject.get("ma5").getAsFloat();
        localf.f = localJsonObject.get("ma10").getAsFloat();
        localf.g = localJsonObject.get("ma20").getAsFloat();
        localf.h = localJsonObject.get("ma30").getAsFloat();
        localf.i = localJsonObject.get("percent").getAsFloat();
        localf.j = localJsonObject.get("time").getAsString();
        localj.a(localJsonObject.get("volume").getAsString());
        locale.a = localJsonObject.get("dif").getAsFloat();
        locale.b = localJsonObject.get("dea").getAsFloat();
        locale.c = localJsonObject.get("macd").getAsFloat();
        localArrayList1.add(localf);
        localArrayList2.add(localj);
        localArrayList3.add(locale);
        j += 1;
      }
      this.aB.setOHLCMAArray(localArrayList1);
      this.aB.setVolumeArray(localArrayList2);
      this.aB.setMacdArray(localArrayList3);
      this.aB.setStock(this.ao);
      this.aB.invalidate();
      this.aE.invalidate();
      return;
    }
    catch (Exception paramJsonObject)
    {
      paramJsonObject.printStackTrace();
    }
  }
  
  private void e(JsonObject paramJsonObject)
  {
    if (paramJsonObject != null) {}
    try
    {
      ArrayList localArrayList = new ArrayList();
      paramJsonObject = paramJsonObject.getAsJsonArray("fund");
      int k = paramJsonObject.size();
      int j = 0;
      if (this.aq.equals("unit5")) {
        j = k - 5;
      }
      while (j < k)
      {
        JsonObject localJsonObject = paramJsonObject.get(j).getAsJsonObject();
        com.xueqiu.android.stockchart.e.d locald = new com.xueqiu.android.stockchart.e.d();
        if (this.aq.startsWith("unit"))
        {
          locald.a = localJsonObject.get("unit_nav").getAsFloat();
          locald.b = localJsonObject.get("nav_date").getAsString();
        }
        if (this.aq.equals("seven"))
        {
          locald.a = localJsonObject.get("sevendayYield").getAsFloat();
          locald.b = localJsonObject.get("valueDate").getAsString();
        }
        if (this.aq.equals("million"))
        {
          locald.a = localJsonObject.get("milliongain").getAsFloat();
          locald.b = localJsonObject.get("valueDate").getAsString();
        }
        localArrayList.add(locald);
        j += 1;
      }
      this.aC.setFundDataArray(localArrayList);
      this.aC.invalidate();
      return;
    }
    catch (Exception paramJsonObject)
    {
      paramJsonObject.printStackTrace();
    }
  }
  
  private void g(final boolean paramBoolean)
  {
    int j = 1;
    this.aM = true;
    long l3 = System.currentTimeMillis();
    Object localObject;
    if (paramBoolean)
    {
      localObject = this.aB;
      if ((((KlineChartView)localObject).d != null) && (((KlineChartView)localObject).d.size() > 0)) {}
      while (j == 0)
      {
        return;
        j = 0;
      }
      localObject = ((com.xueqiu.android.stockchart.e.f)this.aB.getOHLCMAArray().get(0)).j;
    }
    for (;;)
    {
      HashMap localHashMap;
      try
      {
        l2 = com.xueqiu.android.stockchart.f.a.a.parse((String)localObject).getTime();
        l1 = l2;
        if (this.aq.equals("1day")) {
          l1 = (l2 - 4.32E7D);
        }
        l2 = l1;
        if (this.aq.equals("1week")) {
          l2 = l1 - 604800000L;
        }
        paramBoolean = this.aq.equals("1month");
        l1 = l2;
        if (paramBoolean) {
          l1 = l2 - 2592000000L;
        }
        if (!this.aq.equals("1day")) {
          break label399;
        }
        l2 = (l1 - 2.20752E10D);
        if (this.aq.equals("1week")) {
          l2 = l1 - 63072000000L;
        }
        if (!this.aq.equals("1month")) {
          break label396;
        }
        l2 = l1 - 315360000000L;
        this.aG.setVisibility(0);
        localHashMap = new HashMap();
        localHashMap.put("symbol", this.an);
        if (!this.aq.equals("1minute")) {
          break label372;
        }
        localObject = "1m";
        localHashMap.put("period", localObject);
        localHashMap.put("type", this.at);
        localHashMap.put("end", String.valueOf(l1 - 1L));
        paramBoolean = a(this.aw, this.aq);
        if (paramBoolean) {
          break label380;
        }
        localHashMap.put("begin", String.valueOf(l2));
        a("stock", "/stock/forchartk/stocklist.json", "get", localHashMap, new com.xueqiu.android.stockchart.c.a()
        {
          public final void a(Exception paramAnonymousException)
          {
            Log.i("stock", paramAnonymousException.toString());
          }
        });
        return;
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
      }
      long l1 = l3;
      continue;
      label372:
      String str = this.aq;
      continue;
      label380:
      localHashMap.put("count", "100");
      continue;
      label396:
      continue;
      label399:
      long l2 = l1;
    }
  }
  
  public View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    super.a(paramLayoutInflater, paramViewGroup, paramBundle);
    label675:
    label752:
    int j;
    if (this.as.equals("big"))
    {
      this.f = paramLayoutInflater.inflate(com.xueqiu.android.stockchart.f.fragment_big_chart, paramViewGroup, false);
      this.g = ((LinearLayout)this.f.findViewById(com.xueqiu.android.stockchart.e.big_chart_period_container));
      this.h = ((FrameLayout)this.f.findViewById(com.xueqiu.android.stockchart.e.big_chart_container));
      this.i = ((LinearLayout)this.f.findViewById(com.xueqiu.android.stockchart.e.big_chart_pankou_container));
      this.ak = ((LinearLayout)this.f.findViewById(com.xueqiu.android.stockchart.e.big_chart_kline_config_container));
      this.aD = ((PankouView)this.f.findViewById(com.xueqiu.android.stockchart.e.big_chart_pankou_view));
      this.aW = ((LinearLayout)this.f.findViewById(com.xueqiu.android.stockchart.e.big_chart_current_stock_info));
      this.bd = ((LinearLayout)this.f.findViewById(com.xueqiu.android.stockchart.e.big_chart_current_kline_info));
      this.bl = ((LinearLayout)this.f.findViewById(com.xueqiu.android.stockchart.e.big_chart_current_fund_info));
      this.aD.setChartSize(this.as);
      this.aH = ((TextView)this.i.findViewById(com.xueqiu.android.stockchart.e.pankou_wudang));
      this.aI = ((TextView)this.i.findViewById(com.xueqiu.android.stockchart.e.pankou_detail));
      this.aX = ((TextView)this.f.findViewById(com.xueqiu.android.stockchart.e.current_stock_time));
      this.aY = ((TextView)this.f.findViewById(com.xueqiu.android.stockchart.e.current_stock_price));
      this.aZ = ((TextView)this.f.findViewById(com.xueqiu.android.stockchart.e.current_stock_change));
      this.ba = ((TextView)this.f.findViewById(com.xueqiu.android.stockchart.e.current_stock_amount));
      this.bb = ((TextView)this.f.findViewById(com.xueqiu.android.stockchart.e.current_stock_average));
      this.bc = ((TextView)this.f.findViewById(com.xueqiu.android.stockchart.e.current_stock_average_title));
      this.be = ((TextView)this.f.findViewById(com.xueqiu.android.stockchart.e.current_kline_time));
      this.bf = ((TextView)this.f.findViewById(com.xueqiu.android.stockchart.e.current_kline_open));
      this.bg = ((TextView)this.f.findViewById(com.xueqiu.android.stockchart.e.current_kline_high));
      this.bh = ((TextView)this.f.findViewById(com.xueqiu.android.stockchart.e.current_kline_low));
      this.bi = ((TextView)this.f.findViewById(com.xueqiu.android.stockchart.e.current_kline_close));
      this.bj = ((TextView)this.f.findViewById(com.xueqiu.android.stockchart.e.current_kline_percent));
      this.bk = ((TextView)this.f.findViewById(com.xueqiu.android.stockchart.e.current_kline_volume));
      this.bm = ((TextView)this.f.findViewById(com.xueqiu.android.stockchart.e.current_fund_time));
      this.bn = ((TextView)this.f.findViewById(com.xueqiu.android.stockchart.e.current_fund_title));
      this.bo = ((TextView)this.f.findViewById(com.xueqiu.android.stockchart.e.current_fund_value));
      this.aH.setSelected(true);
      this.aI.setOnClickListener(this);
      this.aH.setOnClickListener(this);
      if (this.an == null) {
        break label1624;
      }
      if (this.g == null) {
        break label1533;
      }
      if (!this.as.equals("big")) {
        break label1255;
      }
      if (!this.aQ) {
        break label1134;
      }
      this.aR = new String[] { "1d", "5d", "1day", "1week", "1month", "minute", "1m", "6m", "3y", "all" };
      this.aS = new String[] { "分时", "五日", "日K", "周K", "月K", "分钟", "1月", "6月", "3年", "全部" };
      if (this.aN)
      {
        if (!this.aO) {
          break label1331;
        }
        this.aR = new String[] { "seven", "million" };
        this.aS = new String[] { "七日年化", "万份收益" };
        if (this.aq.equals("1d"))
        {
          this.aq = "seven";
          this.ar = "fund";
        }
      }
      j = 0;
      label755:
      if (j >= this.aR.length) {
        break label1456;
      }
      paramLayoutInflater = this.aR[j];
      Object localObject = this.aS[j];
      paramViewGroup = new TextView(g());
      paramViewGroup.setText((CharSequence)localObject);
      paramViewGroup.setTextSize(12.0F);
      localObject = new LinearLayout.LayoutParams(-1, -1, 1.0F);
      paramViewGroup.setBackgroundResource(this.aK.getResourceId(3, 0));
      paramViewGroup.setTextColor(h().getColor(this.aK.getResourceId(4, 0)));
      paramViewGroup.setLayoutParams((ViewGroup.LayoutParams)localObject);
      paramViewGroup.setGravity(17);
      if (!paramLayoutInflater.equals("minute")) {
        break label1424;
      }
      paramViewGroup.setTag("minute_text");
      paramViewGroup.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
      paramViewGroup.setCompoundDrawablesWithIntrinsicBounds(0, 0, com.xueqiu.android.stockchart.d.icon_arrow_down, 0);
      paramViewGroup.setCompoundDrawablePadding(5);
      paramViewGroup.setBackgroundColor(0);
      LinearLayout localLinearLayout = new LinearLayout(g());
      localLinearLayout.setLayoutParams((ViewGroup.LayoutParams)localObject);
      localLinearLayout.setBackgroundResource(this.aK.getResourceId(3, 0));
      localLinearLayout.addView(paramViewGroup);
      localLinearLayout.setTag(paramLayoutInflater);
      localLinearLayout.setGravity(17);
      localLinearLayout.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          int i = 0;
          a locala = a.this;
          if (locala.az == null)
          {
            ViewGroup localViewGroup = (ViewGroup)LayoutInflater.from(locala.g()).inflate(com.xueqiu.android.stockchart.f.minute_kline_menu, null);
            locala.az = new PopupWindow(localViewGroup, -2, -2, true);
            locala.az.setBackgroundDrawable(new ColorDrawable(0));
            locala.az.setFocusable(true);
            locala.az.setOutsideTouchable(true);
            locala.az.setTouchInterceptor(new a.8(locala));
            localViewGroup = (ViewGroup)localViewGroup.findViewById(com.xueqiu.android.stockchart.e.minute_period_container);
            while (i < localViewGroup.getChildCount())
            {
              View localView = localViewGroup.getChildAt(i);
              if ((localView instanceof TextView)) {
                localView.setOnClickListener(new a.9(locala));
              }
              i += 1;
            }
          }
          locala.az.showAsDropDown(paramAnonymousView);
        }
      });
      this.g.addView(localLinearLayout);
    }
    for (;;)
    {
      j += 1;
      break label755;
      this.f = paramLayoutInflater.inflate(com.xueqiu.android.stockchart.f.fragment_small_chart, paramViewGroup, false);
      this.g = ((LinearLayout)this.f.findViewById(com.xueqiu.android.stockchart.e.small_period_container));
      this.h = ((FrameLayout)this.f.findViewById(com.xueqiu.android.stockchart.e.small_chart_container));
      this.i = ((LinearLayout)this.f.findViewById(com.xueqiu.android.stockchart.e.small_chart_pankou_container));
      this.aD = ((PankouView)this.f.findViewById(com.xueqiu.android.stockchart.e.small_chart_pankou_view));
      this.aW = ((LinearLayout)this.f.findViewById(com.xueqiu.android.stockchart.e.small_chart_current_stock_info));
      this.bd = ((LinearLayout)this.f.findViewById(com.xueqiu.android.stockchart.e.small_chart_current_kline_info));
      this.bl = ((LinearLayout)this.f.findViewById(com.xueqiu.android.stockchart.e.small_chart_current_fund_info));
      break;
      label1134:
      this.aR = new String[] { "1d", "5d", "1day", "1week", "1month", "1m", "6m", "3y", "all" };
      this.aS = new String[] { "分时", "五日", "日K", "周K", "月K", "1月", "6月", "3年", "全部" };
      break label675;
      label1255:
      if (this.aQ) {
        break label675;
      }
      this.aR = new String[] { "1d", "5d", "1day", "1week", "1month" };
      this.aS = new String[] { "分时", "五日", "日K", "周K", "月K" };
      break label675;
      label1331:
      if (this.aP)
      {
        this.aR = new String[] { "unit5", "unit" };
        this.aS = new String[] { "五日净值", "累计净值" };
        if (!this.aq.equals("1d")) {
          break label752;
        }
        this.aq = "unit5";
        this.ar = "fund";
        break label752;
      }
      this.aR[1] = "unit";
      this.aS[1] = "净值";
      break label752;
      label1424:
      paramViewGroup.setTag(paramLayoutInflater);
      paramViewGroup.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          a.this.b(paramAnonymousView.getTag().toString());
          if (a.this.al != null) {
            a.this.al.a(a.this.as, ((TextView)paramAnonymousView).getText().toString(), this.a);
          }
        }
      });
      this.g.addView(paramViewGroup);
    }
    label1456:
    if (a(this.aw, this.aq))
    {
      this.g.findViewWithTag("minute").setSelected(true);
      if (this.g.findViewWithTag("minute_text") != null)
      {
        paramViewGroup = (TextView)this.g.findViewWithTag("minute_text");
        paramLayoutInflater = this.aq;
        if (paramLayoutInflater.equals("1minute"))
        {
          paramLayoutInflater = "1分";
          paramViewGroup.setText(paramLayoutInflater);
        }
      }
      else
      {
        label1533:
        b();
      }
    }
    for (;;)
    {
      c(null);
      this.aF.setOnPressListener(new com.xueqiu.android.stockchart.a.c()
      {
        public final void a(float paramAnonymousFloat1, float paramAnonymousFloat2)
        {
          if (a.this.c != null) {
            a.this.c.a(paramAnonymousFloat1, paramAnonymousFloat2);
          }
          a.this.g.setVisibility(4);
          if (a.this.ar.equals("stock"))
          {
            a.c(a.this).setVisibility(0);
            a.this.a(paramAnonymousFloat1);
          }
          do
          {
            return;
            if (a.this.ar.equals("kline"))
            {
              a.d(a.this).setVisibility(0);
              a.this.b(paramAnonymousFloat1);
              return;
            }
          } while (!a.this.ar.equals("fund"));
          a.e(a.this).setVisibility(0);
          a.this.a(paramAnonymousFloat1, paramAnonymousFloat2);
        }
        
        public final void b(float paramAnonymousFloat1, float paramAnonymousFloat2)
        {
          if (a.this.c != null) {
            a.this.c.b(paramAnonymousFloat1, paramAnonymousFloat2);
          }
          if (a.this.ar.equals("stock")) {
            a.this.a(paramAnonymousFloat1);
          }
          do
          {
            return;
            if (a.this.ar.equals("kline"))
            {
              a.this.b(paramAnonymousFloat1);
              return;
            }
          } while (!a.this.ar.equals("fund"));
          a.this.a(paramAnonymousFloat1, paramAnonymousFloat2);
        }
        
        public final void c(float paramAnonymousFloat1, float paramAnonymousFloat2)
        {
          if (a.this.c != null) {
            a.this.c.c(paramAnonymousFloat1, paramAnonymousFloat2);
          }
          if (a.this.al != null) {
            a.this.al.b(a.this.as);
          }
          a.this.g.setVisibility(0);
          if (a.this.ar.equals("stock")) {
            a.c(a.this).setVisibility(4);
          }
          for (;;)
          {
            a.this.aE.setIsOnPress(false);
            a.this.aE.invalidate();
            return;
            if (a.this.ar.equals("kline")) {
              a.d(a.this).setVisibility(4);
            } else if (a.this.ar.equals("fund")) {
              a.e(a.this).setVisibility(4);
            }
          }
        }
      });
      this.aF.setOnDragEventListener(new com.xueqiu.android.stockchart.a.a()
      {
        public final void d(float paramAnonymousFloat1, float paramAnonymousFloat2)
        {
          if ((a.this.d != null) && (a.this.ar.equals("kline"))) {
            a.this.d.d(paramAnonymousFloat1, paramAnonymousFloat2);
          }
          a.a(a.this, paramAnonymousFloat1);
          a.a(a.this, false);
        }
        
        public final void e(float paramAnonymousFloat1, float paramAnonymousFloat2)
        {
          if ((a.this.aB == null) || (!a.this.ar.equals("kline"))) {}
          int k;
          do
          {
            do
            {
              return;
              if ((a.this.d != null) && (a.this.ar.equals("kline"))) {
                a.this.d.e(paramAnonymousFloat1, paramAnonymousFloat2);
              }
            } while (a.this.aM);
            if (!a.f(a.this))
            {
              a.a(a.this, a.this.aB.getStartIndex());
              a.b(a.this, a.this.aB.getEndIndex());
              a.a(a.this, true);
            }
            int i = Math.round((paramAnonymousFloat1 - a.g(a.this)) / (a.this.aB.getCandleWidth() + a.this.aB.getCandleGap())) * -1;
            int j = a.h(a.this) + i;
            int m = i + a.i(a.this);
            k = a.this.aB.getMaxIndex();
            i = j;
            if (m > k) {
              i = j - (m - k);
            }
            k = i;
            j = m;
            if (i < 0)
            {
              j = m - i;
              k = 0;
            }
            if ((k != a.this.aB.getStartIndex()) && (j != a.this.aB.getEndIndex()) && (k <= j))
            {
              a.this.aB.setStartIndex(k);
              a.this.aB.setEndIndex(j);
              a.this.aB.invalidate();
              a.this.aE.invalidate();
            }
          } while ((k != 0) || (a.this.aM));
          a.a(a.this, false);
          a.this.f(true);
        }
        
        public final void f(float paramAnonymousFloat1, float paramAnonymousFloat2)
        {
          if ((a.this.d != null) && (a.this.ar.equals("kline"))) {
            a.this.d.f(paramAnonymousFloat1, paramAnonymousFloat2);
          }
          a.a(a.this, paramAnonymousFloat1);
        }
      });
      if ((this.an == null) || (paramBundle != null)) {
        v();
      }
      return this.f;
      paramLayoutInflater = paramLayoutInflater.replace("m", "分");
      break;
      this.g.findViewWithTag(this.aq).setSelected(true);
      break label1533;
      label1624:
      ((View)this.g.getParent()).setVisibility(8);
    }
  }
  
  public final void a(float paramFloat)
  {
    if (this.aA.getTimesArray() == null) {}
    int j;
    do
    {
      return;
      j = this.aA.b(paramFloat);
    } while (j >= this.aA.getTimesSize());
    com.xueqiu.android.stockchart.e.i locali = this.aA.a(j);
    Object localObject = this.aA.b(j);
    float f4;
    float f1;
    float f2;
    float f3;
    if (this.ao != null)
    {
      f4 = this.ao.d;
      f1 = ((j)localObject).a;
      f2 = locali.a;
      f3 = locali.c;
      f4 = (f2 - f4) / f4 * 100.0F;
      localObject = com.xueqiu.android.stockchart.f.a.a(this.ao.i, f2);
      String str1 = com.xueqiu.android.stockchart.f.a.a(f1);
      String str2 = String.format("%.2f%%", new Object[] { Float.valueOf(f4) });
      String str3 = com.xueqiu.android.stockchart.f.a.a(this.ao.i, f3);
      int k = this.aA.a(f4);
      this.aY.setText((CharSequence)localObject);
      this.aY.setTextColor(k);
      this.aZ.setText(str2);
      this.aZ.setTextColor(k);
      this.ba.setText(str1);
      if (this.bb != null)
      {
        if (com.xueqiu.android.stockchart.f.a.d(this.ao.c))
        {
          this.bb.setText(str3);
          this.bb.setTextColor(k);
        }
      }
      else
      {
        localObject = "YYYY-MM-DD";
        if ((this.aq.equals("1d")) || (this.aq.equals("5d"))) {
          localObject = "hh:mm";
        }
        this.aX.setText(com.xueqiu.android.stockchart.f.a.a(locali.b, (String)localObject));
      }
    }
    else
    {
      localObject = this.aA;
      locali = ((StockChartView)localObject).a(j);
      if (locali != null) {
        break label392;
      }
    }
    label392:
    float f5;
    for (localObject = new com.xueqiu.android.stockchart.e.c(0.0F, 0.0F);; localObject = new com.xueqiu.android.stockchart.e.c(f2 * f1, f3 - ((StockChartView)localObject).d * (f4 - f5)))
    {
      this.aE.setIsOnPress(true);
      this.aE.setPressEventX(paramFloat);
      this.aE.setPressEventY(((com.xueqiu.android.stockchart.e.c)localObject).a);
      this.aE.invalidate();
      return;
      this.bb.setVisibility(8);
      this.bc.setVisibility(8);
      break;
      f1 = ((StockChartView)localObject).c;
      f2 = j;
      f3 = ((StockChartView)localObject).getTopChartHeight();
      f4 = locali.a;
      f5 = ((StockChartView)localObject).e;
    }
  }
  
  public final void a(float paramFloat1, float paramFloat2)
  {
    if (this.aC.getFundDataArray() == null) {
      return;
    }
    int j = this.aC.b(paramFloat1);
    com.xueqiu.android.stockchart.e.d locald = this.aC.a(j);
    this.bm.setText(com.xueqiu.android.stockchart.f.a.a(locald.b, "YYYY-MM-DD"));
    String str = "净值";
    if (this.aq.equals("seven")) {
      str = "七日年化";
    }
    if (this.aq.equals("million")) {
      str = "万份收益";
    }
    this.bn.setText(str);
    this.bo.setText(String.format("%.4f", new Object[] { Float.valueOf(locald.a) }));
    this.aE.setIsOnPress(true);
    this.aE.setPressEventX(paramFloat1);
    this.aE.setPressEventY(paramFloat2);
    this.aE.invalidate();
  }
  
  public void a(float paramFloat, long paramLong)
  {
    if (this.aq.equals("1d"))
    {
      if (this.aJ != null)
      {
        Object localObject = this.aA;
        if (((StockChartView)localObject).b.size() != 0)
        {
          ((com.xueqiu.android.stockchart.e.i)((StockChartView)localObject).b.get(((StockChartView)localObject).b.size() - 1)).a(String.valueOf(paramFloat));
          ((StockChartView)localObject).invalidate();
        }
        float f1 = this.aA.getCurrentX();
        localObject = this.aA;
        float f2 = ((StockChartView)localObject).getTopChartHeight();
        float f3 = ((StockChartView)localObject).e;
        float f4 = ((StockChartView)localObject).d;
        int j = (int)com.xueqiu.android.stockchart.f.a.a(g(), 5.0F);
        float f5 = j / 2;
        float f6 = j / 2;
        localObject = new FrameLayout.LayoutParams(j, j);
        ((FrameLayout.LayoutParams)localObject).setMargins((int)(f1 - f5), (int)(f2 - f4 * (paramFloat - f3) - f6), 0, 0);
        this.aJ.setLayoutParams((ViewGroup.LayoutParams)localObject);
      }
      w();
    }
    if ((this.aq.equals("1day")) && (this.at.equals("normal"))) {
      c(paramFloat);
    }
    if ((a(this.aw, this.aq)) && (this.ar.equals("kline"))) {
      c(paramFloat);
    }
  }
  
  public void a(Bundle paramBundle)
  {
    super.a(paramBundle);
    this.aK = g().getTheme().obtainStyledAttributes(new int[] { com.xueqiu.android.stockchart.b.attr_chart_border_color, com.xueqiu.android.stockchart.b.attr_chart_split_color, com.xueqiu.android.stockchart.b.attr_chart_text_color, com.xueqiu.android.stockchart.b.attr_chart_period_selected_bg, com.xueqiu.android.stockchart.b.attr_text_level1_color });
    this.a = PreferenceManager.getDefaultSharedPreferences(g().getApplication()).getString("access_token", "");
  }
  
  public final void a(View paramView, Bundle paramBundle)
  {
    super.a(paramView, paramBundle);
  }
  
  public final void a(String paramString)
  {
    if (paramString == null) {}
    for (;;)
    {
      return;
      this.an = paramString;
      this.ap = com.xueqiu.android.stockchart.f.a.b(paramString);
      if (com.xueqiu.android.stockchart.f.a.a(paramString).c.equals("基金"))
      {
        this.aN = true;
        if (!paramString.startsWith("MF")) {
          break label80;
        }
        this.aO = true;
      }
      while ((paramString.startsWith("SH")) || (paramString.startsWith("SZ")))
      {
        this.aQ = true;
        return;
        label80:
        if (paramString.startsWith("F")) {
          this.aP = true;
        }
      }
    }
  }
  
  public final void a(String paramString1, String paramString2, String paramString3, Map<String, String> paramMap, com.xueqiu.android.stockchart.c.a<JsonElement> parama)
  {
    if ((this.e == null) || (!j())) {}
    do
    {
      return;
      if (paramString1.equals("api"))
      {
        this.e.b(paramString2, paramString3, paramMap, parama);
        return;
      }
    } while (!paramString1.equals("stock"));
    this.e.a(paramString2, paramString3, paramMap, parama);
  }
  
  public final void a(boolean paramBoolean)
  {
    if ((this.ax.containsKey(this.aq)) && (!paramBoolean))
    {
      c((JsonObject)this.ax.get(this.aq));
      return;
    }
    this.aG.setVisibility(0);
    HashMap localHashMap = new HashMap();
    localHashMap.put("symbol", this.an);
    localHashMap.put("period", this.aq);
    if (this.aq.equals("1d")) {
      localHashMap.put("one_min", "1");
    }
    a("stock", "/stock/forchart/stocklist.json", "get", localHashMap, new com.xueqiu.android.stockchart.c.a()
    {
      public final void a(Exception paramAnonymousException)
      {
        Log.i("stock", paramAnonymousException.toString());
      }
    });
  }
  
  public final void b()
  {
    Object localObject = PreferenceManager.getDefaultSharedPreferences(g());
    this.at = ((SharedPreferences)localObject).getString("key_kline_type", this.at);
    this.au = ((SharedPreferences)localObject).getString("key_kline_indicator", this.au);
    localObject = com.xueqiu.android.stockchart.f.a.a(this.an);
    if (((com.xueqiu.android.stockchart.f.b)localObject).b.equals("港股")) {
      this.at = "normal";
    }
    if (((com.xueqiu.android.stockchart.f.b)localObject).b.equals("美股")) {
      this.at = "before";
    }
    if (this.aB != null)
    {
      this.aB.setKlineType(this.at);
      this.aB.setIndicator(this.au);
      this.aB.invalidate();
    }
  }
  
  public final void b(float paramFloat)
  {
    if (!this.aB.b()) {
      return;
    }
    int j = this.aB.b(paramFloat);
    if (j >= this.aB.getShowOHLCMAArray().size()) {
      j = this.aB.getShowOHLCMAArray().size() - 1;
    }
    for (;;)
    {
      Object localObject1 = this.aB.a(j);
      float f1;
      Object localObject2;
      if (this.ao != null)
      {
        f1 = ((com.xueqiu.android.stockchart.e.f)localObject1).a;
        int m = j - 1;
        int k = m;
        if (m < 0) {
          k = 0;
        }
        localObject2 = this.aB.a(k);
        if (localObject2 == null) {
          break label533;
        }
        f1 = ((com.xueqiu.android.stockchart.e.f)localObject2).d;
      }
      label533:
      for (;;)
      {
        if (a(this.aw, this.aq)) {
          this.be.setText(com.xueqiu.android.stockchart.f.a.a(((com.xueqiu.android.stockchart.e.f)localObject1).j, "MM-DD hh:mm"));
        }
        for (;;)
        {
          float f2 = ((com.xueqiu.android.stockchart.e.f)localObject1).a;
          this.bf.setTextColor(this.aB.a(f2 - f1));
          this.bf.setText(com.xueqiu.android.stockchart.f.a.a(this.ao.i, f2));
          f2 = ((com.xueqiu.android.stockchart.e.f)localObject1).b;
          this.bg.setTextColor(this.aB.a(f2 - f1));
          this.bg.setText(com.xueqiu.android.stockchart.f.a.a(this.ao.i, f2));
          f2 = ((com.xueqiu.android.stockchart.e.f)localObject1).c;
          this.bh.setTextColor(this.aB.a(f2 - f1));
          this.bh.setText(com.xueqiu.android.stockchart.f.a.a(this.ao.i, f2));
          f2 = ((com.xueqiu.android.stockchart.e.f)localObject1).d;
          this.bi.setTextColor(this.aB.a(f2 - f1));
          this.bi.setText(com.xueqiu.android.stockchart.f.a.a(this.ao.i, f2));
          f1 = ((com.xueqiu.android.stockchart.e.f)localObject1).i;
          localObject2 = String.format("%.2f%%", new Object[] { Float.valueOf(f1) });
          localObject1 = localObject2;
          if (f1 > 0.0F) {
            localObject1 = "+" + (String)localObject2;
          }
          this.bj.setTextColor(this.aB.a(f1));
          this.bj.setText((CharSequence)localObject1);
          if (this.bk != null)
          {
            localObject1 = (j)this.aB.e.get(j);
            this.bk.setText(com.xueqiu.android.stockchart.f.a.a(((j)localObject1).a));
          }
          this.aE.setIsOnPress(true);
          this.aE.setPressEventX(paramFloat);
          localObject1 = this.aE;
          localObject2 = this.aB;
          com.xueqiu.android.stockchart.e.f localf = ((KlineChartView)localObject2).a(j);
          ((PressInfoView)localObject1).setPressEventY(((KlineChartView)localObject2).getTopChartHeight() - (localf.d - ((KlineChartView)localObject2).g) * ((KlineChartView)localObject2).h);
          this.aE.invalidate();
          return;
          this.be.setText(com.xueqiu.android.stockchart.f.a.a(((com.xueqiu.android.stockchart.e.f)localObject1).j, "YYYY-MM-DD"));
        }
      }
    }
  }
  
  public final void b(String paramString)
  {
    if ((!a(this.aR, paramString)) && (!a(this.aw, paramString))) {
      return;
    }
    int j = 0;
    while (j < this.g.getChildCount())
    {
      this.g.getChildAt(j).setSelected(false);
      j += 1;
    }
    Object localObject;
    if (a(this.aw, paramString))
    {
      this.g.findViewWithTag("minute").setSelected(true);
      localObject = (ViewGroup)LayoutInflater.from(g()).inflate(com.xueqiu.android.stockchart.f.minute_kline_menu, null);
      if (((ViewGroup)localObject).findViewWithTag(paramString) != null)
      {
        localObject = ((TextView)((ViewGroup)localObject).findViewWithTag(paramString)).getText().toString();
        if (this.g.findViewWithTag("minute_text") != null) {
          ((TextView)this.g.findViewWithTag("minute_text")).setText((CharSequence)localObject);
        }
      }
    }
    for (;;)
    {
      this.aA.setVisibility(4);
      this.aB.setVisibility(4);
      this.aC.setVisibility(4);
      if (!paramString.equals("1d"))
      {
        j = (int)com.xueqiu.android.stockchart.f.a.a(g(), 5.0F);
        localObject = new FrameLayout.LayoutParams(j, j);
        ((FrameLayout.LayoutParams)localObject).setMargins(-100, -100, 0, 0);
        this.aJ.setLayoutParams((ViewGroup.LayoutParams)localObject);
      }
      if (a(this.aT, paramString))
      {
        this.ar = "stock";
        this.aA.setPeriod(paramString);
      }
      if (a(this.aU, paramString))
      {
        this.ar = "kline";
        this.aB.setPeriod(paramString);
        this.aB.c();
      }
      if (a(this.aV, paramString))
      {
        this.ar = "fund";
        this.aC.setPeriod(paramString);
      }
      this.aq = paramString;
      this.aF.setChartType(this.ar);
      this.aE.setChartType(this.ar);
      this.aE.setPeriod(this.aq);
      v();
      return;
      if (this.g.findViewWithTag(paramString) != null) {
        this.g.findViewWithTag(paramString).setSelected(true);
      }
      if (this.g.findViewWithTag("minute_text") != null) {
        ((TextView)this.g.findViewWithTag("minute_text")).setText("分钟");
      }
    }
  }
  
  public final void c(JsonObject paramJsonObject)
  {
    Object localObject2;
    label380:
    label402:
    int j;
    if (this.h != null)
    {
      if (this.aA == null)
      {
        this.aA = new StockChartView(g());
        this.aA.setSymbol(this.an);
        this.aA.setPeriod(this.aq);
        this.aA.setType(this.as);
        this.aA.setChartType("stock");
        this.h.addView(this.aA);
      }
      if (this.aB == null)
      {
        this.aB = new KlineChartView(g());
        this.aB.setSymbol(this.an);
        this.aB.setPeriod(this.aq);
        this.aB.setType(this.as);
        this.aB.setChartType("kline");
        this.aB.setKlineType(this.at);
        this.aB.setIndicator(this.au);
        this.h.addView(this.aB);
      }
      if (this.aC == null)
      {
        this.aC = new FundChartView(g());
        this.aC.setSymbol(this.an);
        this.aC.setPeriod(this.aq);
        this.aC.setType(this.as);
        this.aC.setChartType("fund");
        this.h.addView(this.aC);
      }
      Object localObject1;
      if (this.ak != null)
      {
        localObject1 = com.xueqiu.android.stockchart.f.a.a(this.an).b;
        localObject2 = this.ak.findViewById(com.xueqiu.android.stockchart.e.big_chart_kline_config_type);
        if (!this.ar.equals("kline")) {
          break label659;
        }
        this.ak.setVisibility(0);
        if ((!((String)localObject1).equals("港股")) && (!a(this.aw, this.aq))) {
          break label620;
        }
        ((View)localObject2).setVisibility(8);
        this.ak.findViewById(com.xueqiu.android.stockchart.e.config_divider).setVisibility(8);
      }
      for (;;)
      {
        if (a(this.aw, this.aq))
        {
          this.ak.findViewById(com.xueqiu.android.stockchart.e.kline_indicator_macd).setVisibility(8);
          if (((String)localObject1).equals("美股")) {
            ((View)localObject2).findViewById(com.xueqiu.android.stockchart.e.kline_type_after).setVisibility(8);
          }
          this.aA.setVisibility(4);
          this.aB.setVisibility(4);
          this.aC.setVisibility(4);
          if (!this.ar.equals("stock")) {
            break label703;
          }
          if (paramJsonObject == null) {}
        }
        else
        {
          try
          {
            localObject1 = new ArrayList();
            localObject2 = new ArrayList();
            JsonArray localJsonArray = paramJsonObject.getAsJsonArray("chartlist");
            j = 0;
            label470:
            if (j < localJsonArray.size())
            {
              JsonObject localJsonObject = localJsonArray.get(j).getAsJsonObject();
              com.xueqiu.android.stockchart.e.i locali = new com.xueqiu.android.stockchart.e.i();
              j localj = new j();
              locali.a(localJsonObject.get("current").getAsString());
              locali.b = localJsonObject.get("time").getAsString();
              if ((this.aq.equals("1d")) || (this.aq.equals("5d"))) {
                locali.b(localJsonObject.get("avg_price").getAsString());
              }
              for (;;)
              {
                localj.a(localJsonObject.get("volume").getAsString());
                ((ArrayList)localObject1).add(locali);
                ((ArrayList)localObject2).add(localj);
                j += 1;
                break label470;
                label620:
                ((View)localObject2).setVisibility(0);
                this.ak.findViewById(com.xueqiu.android.stockchart.e.config_divider).setVisibility(0);
                break;
                this.ak.findViewById(com.xueqiu.android.stockchart.e.kline_indicator_macd).setVisibility(0);
                break label380;
                label659:
                this.ak.setVisibility(8);
                break label402;
                locali.b(localJsonObject.get("current").getAsString());
              }
              this.aA.setVisibility(0);
            }
          }
          catch (Exception localException)
          {
            localException.printStackTrace();
          }
        }
      }
    }
    for (;;)
    {
      label703:
      if (this.ar.equals("kline"))
      {
        d(paramJsonObject);
        this.aB.setVisibility(0);
      }
      if (this.ar.equals("fund"))
      {
        e(paramJsonObject);
        this.aC.setVisibility(0);
      }
      if (this.aJ == null)
      {
        this.aJ = new BlinkPointView(g());
        this.aJ.setBackgroundResource(com.xueqiu.android.stockchart.d.blink_point_view_background);
        this.h.addView(this.aJ);
        paramJsonObject = new AlphaAnimation(0.1F, 1.0F);
        paramJsonObject.setDuration(1000L);
        paramJsonObject.setStartOffset(0L);
        paramJsonObject.setRepeatMode(2);
        paramJsonObject.setRepeatCount(-1);
        this.aJ.startAnimation(paramJsonObject);
        j = (int)com.xueqiu.android.stockchart.f.a.a(g(), 5.0F);
        paramJsonObject = new FrameLayout.LayoutParams(j, j);
        paramJsonObject.setMargins(-100, -100, 0, 0);
        this.aJ.setLayoutParams(paramJsonObject);
      }
      if (this.aE == null)
      {
        this.aE = new PressInfoView(g());
        this.aE.setSymbol(this.an);
        this.aE.setChartType(this.ar);
        this.aE.setType(this.as);
        this.aE.setPeriod(this.aq);
        this.aE.setKlineChartView(this.aB);
        this.aE.setStockChartView(this.aA);
        this.aE.setFundChartView(this.aC);
        this.h.addView(this.aE);
      }
      this.aE.setStock(this.ao);
      if (this.aF == null)
      {
        this.aF = new EventView(g());
        this.aF.setChartType(this.ar);
        this.aF.setType(this.as);
        this.aF.b = this.b;
        this.h.addView(this.aF);
      }
      if (this.aG == null)
      {
        this.aG = new LoadingView(g());
        this.aG.setVisibility(4);
        this.h.addView(this.aG);
      }
      return;
      this.aA.setTimesArray(localException);
      this.aA.setVolumeArray((ArrayList)localObject2);
      this.aA.setStock(this.ao);
      this.aA.setPeriod(this.aq);
      this.aA.invalidate();
      this.aE.invalidate();
    }
  }
  
  public final void d()
  {
    super.d();
    this.aL.removeCallbacks(this.bt);
  }
  
  public final void f(boolean paramBoolean)
  {
    if (this.ar.equals("stock")) {
      a(false);
    }
    do
    {
      return;
      if (this.ar.equals("kline"))
      {
        if ((!paramBoolean) && (this.ay.containsKey(this.aq)))
        {
          localObject = (HashMap)this.ay.get(this.aq);
          if ((localObject != null) && (((HashMap)localObject).containsKey(this.at)))
          {
            c((JsonObject)((HashMap)localObject).get(this.at));
            return;
          }
          g(paramBoolean);
          return;
        }
        g(paramBoolean);
        return;
      }
    } while (!this.ar.equals("fund"));
    if (this.ax.containsKey(this.aq))
    {
      c((JsonObject)this.ax.get(this.aq));
      return;
    }
    this.aG.setVisibility(0);
    Object localObject = "/fund/forchart/day.json";
    if (this.aO) {
      localObject = "/money_fund/forchart/day.json";
    }
    HashMap localHashMap = new HashMap();
    localHashMap.put("symbol", this.an);
    localHashMap.put("period", "6m");
    a("api", (String)localObject, "get", localHashMap, new com.xueqiu.android.stockchart.c.a()
    {
      public final void a(Exception paramAnonymousException)
      {
        Log.i("stock", paramAnonymousException.toString());
      }
    });
  }
  
  public final void o()
  {
    super.o();
    this.aL.removeCallbacks(this.bt);
    this.aL.postDelayed(this.bt, 60000L);
    if ((a(this.aw, this.aq)) && ("small".equals(this.as))) {
      b(this.aq);
    }
  }
  
  public void onClick(View paramView)
  {
    int j = 1;
    String str = paramView.getTag().toString();
    if (paramView.isSelected()) {
      break label17;
    }
    label17:
    while ((!str.equals("wudang")) && (!str.equals("detail"))) {
      return;
    }
    this.av = str;
    this.aH.setSelected(false);
    this.aI.setSelected(false);
    if (str.equals("wudang"))
    {
      this.aH.setSelected(true);
      j = 2;
    }
    for (;;)
    {
      w();
      if (this.al == null) {
        break;
      }
      this.al.a(j);
      return;
      this.aI.setSelected(true);
    }
  }
  
  public void q()
  {
    super.q();
    this.aL.removeCallbacksAndMessages(null);
  }
  
  public final void u()
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(g()).edit();
    if (com.xueqiu.android.stockchart.f.a.a(this.an).b.equals("沪深")) {
      localEditor.putString("key_kline_type", this.at);
    }
    localEditor.putString("key_kline_indicator", this.au);
    localEditor.apply();
  }
  
  public final void v()
  {
    if (this.an == null)
    {
      ArrayList localArrayList = new ArrayList();
      this.aA.setTimesArray(localArrayList);
      this.aA.setVolumeArray(null);
      this.aA.setStock(this.ao);
      this.aA.setPeriod(this.aq);
      this.aA.invalidate();
      if (this.ao != null)
      {
        if ((this.aq.equals("1d")) && (com.xueqiu.android.stockchart.f.a.b(this.ao.c)))
        {
          this.i.setVisibility(0);
          w();
        }
      }
      else {
        return;
      }
      this.i.setVisibility(8);
      return;
    }
    if (this.ao != null)
    {
      if ((!this.aq.equals("1d")) || (!com.xueqiu.android.stockchart.f.a.b(this.ao.c))) {
        break label165;
      }
      this.i.setVisibility(0);
      w();
    }
    for (;;)
    {
      f(false);
      return;
      label165:
      this.i.setVisibility(8);
    }
  }
  
  public final void w()
  {
    this.aD.setSymbol(this.an);
    this.aD.setStock(this.ao);
    this.aD.setOnPankouClickListener(this.am);
    if (this.av.equals("detail"))
    {
      if (this.an == null)
      {
        this.aD.setType("detail");
        this.aD.setDetailList(null);
        return;
      }
      localHashMap = new HashMap();
      localHashMap.put("symbol", this.an);
      localHashMap.put("count", "10");
      a("api", "/stock/trade_detail.json", "get", localHashMap, new com.xueqiu.android.stockchart.c.a()
      {
        public final void a(Exception paramAnonymousException)
        {
          paramAnonymousException.printStackTrace();
        }
      });
      return;
    }
    if (this.an == null)
    {
      this.aD.setType("wudang");
      this.aD.setPanKouList(a(null));
      return;
    }
    HashMap localHashMap = new HashMap();
    localHashMap.put("symbol", this.an);
    a("stock", "/stock/pankou.json", "get", localHashMap, new com.xueqiu.android.stockchart.c.a()
    {
      public final void a(Exception paramAnonymousException)
      {
        paramAnonymousException.printStackTrace();
      }
    });
  }
  
  public final void x()
  {
    a(true);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\stockchart\d\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
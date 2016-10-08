package com.xueqiu.android.stock.d;

import android.content.Context;
import android.support.annotation.NonNull;
import com.android.volley.o;
import com.android.volley.y;
import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.google.gson.reflect.TypeToken;
import com.xueqiu.android.base.b.ai;
import com.xueqiu.android.base.b.ak;
import com.xueqiu.android.base.b.al;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.b.r;
import com.xueqiu.android.base.storage.prefs.DefaultPrefs;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.base.util.as;
import com.xueqiu.android.common.model.PagedList;
import com.xueqiu.android.common.model.parser.GroupParser;
import com.xueqiu.android.common.model.parser.PortFolioParser;
import com.xueqiu.android.community.model.AdBanner;
import com.xueqiu.android.community.model.TopicInfo;
import com.xueqiu.android.stock.c.w;
import com.xueqiu.android.stock.l;
import com.xueqiu.android.stock.model.AHStockQuote;
import com.xueqiu.android.stock.model.IndustryInStock;
import com.xueqiu.android.stock.model.StockQuote;
import com.xueqiu.android.stock.model.StockRank;
import com.xueqiu.android.tactic.d.g;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;
import rx.j;

public final class a
  implements com.xueqiu.android.stock.b.b
{
  public j a;
  com.xueqiu.android.stock.b.c b;
  public w c;
  int d;
  int e = 0;
  boolean f = false;
  ArrayList<StockQuote> g;
  ArrayList<IndustryInStock> h;
  List<g> i;
  ArrayList<com.xueqiu.android.tactic.d.c> j = new ArrayList();
  JSONObject k;
  JSONObject l;
  private r m;
  private Context n;
  
  public a(@NonNull com.xueqiu.android.stock.b.c paramc, int paramInt)
  {
    this.b = paramc;
    this.d = paramInt;
    this.c = ((w)this.b);
    this.n = this.c.f();
    this.m = new r();
    this.m.a = true;
    this.m.c = o.c;
  }
  
  private void c()
  {
    this.e = 0;
    if (this.d != 7) {
      a(this.d);
    }
    if (this.d == 1)
    {
      this.e += 1;
      ai localai = com.xueqiu.android.base.q.a().b();
      r localr = this.m;
      Object localObject = new p(this.c)
      {
        public final void a(y paramAnonymousy)
        {
          a.a(a.this);
          aa.a(paramAnonymousy);
        }
      };
      localai.i.a(1, 3, "SW2014", localr, (p)localObject);
      this.e += 1;
      localai = com.xueqiu.android.base.q.a().b();
      localr = this.m;
      localObject = new p(this.c)
      {
        public final void a(y paramAnonymousy)
        {
          aa.a(paramAnonymousy);
          a.a(a.this);
        }
      };
      localai.n.a(localr, (p)localObject);
    }
    a(1, this.d);
  }
  
  public final void a()
  {
    c();
    if (this.d == 2)
    {
      this.j.clear();
      this.e += 1;
      com.xueqiu.android.base.q.a().b().i(new p()
      {
        public final void a(y paramAnonymousy)
        {
          aa.a(paramAnonymousy);
          a.a(a.this);
        }
      });
      this.e += 1;
      com.xueqiu.android.base.q.a().b().a(1, 5, "us", new p()
      {
        public final void a(y paramAnonymousy)
        {
          aa.a(paramAnonymousy);
          a.a(a.this);
        }
      });
    }
  }
  
  public final void a(int paramInt)
  {
    final ArrayList localArrayList = new ArrayList(3);
    if (paramInt == 1)
    {
      localArrayList.add("SH000001");
      localArrayList.add("SZ399001");
      localArrayList.add("SZ399006");
    }
    for (;;)
    {
      this.e += 1;
      ai localai = com.xueqiu.android.base.q.a().b();
      List localList = Arrays.asList(new String[] { "name", "symbol", "current", "change", "percentage" });
      r localr = this.m;
      p local1 = new p(this.c)
      {
        public final void a(y paramAnonymousy)
        {
          a.a(a.this);
          aa.a(paramAnonymousy);
        }
      };
      localai.i.a(localArrayList, localList, true, false, local1, localr);
      return;
      if (paramInt == 3)
      {
        localArrayList.add("HKHSI");
        localArrayList.add("HKHSCEI");
        localArrayList.add("HKHSCCI");
      }
      else if (paramInt == 2)
      {
        localArrayList.add("DJI30");
        localArrayList.add("QQQ");
        localArrayList.add("SP500");
      }
      else if (paramInt == 9)
      {
        localArrayList.add("OC899002");
        localArrayList.add("OC899001");
      }
    }
  }
  
  public final void a(final int paramInt1, final int paramInt2)
  {
    p local7 = new p((w)this.b)
    {
      public final void a(y paramAnonymousy)
      {
        aa.a(paramAnonymousy);
        a.this.c.z();
        a.a(a.this);
      }
    };
    this.e += 1;
    ai localai = com.xueqiu.android.base.q.a().b();
    r localr = this.m;
    localai.i.a(paramInt2, local7, localr, paramInt1);
  }
  
  public final void a(JSONObject paramJSONObject, int paramInt)
  {
    if (paramJSONObject == null) {
      return;
    }
    this.b.a();
    Object localObject1;
    Object localObject2;
    com.xueqiu.android.stock.m localm;
    if (paramInt == 2)
    {
      localObject1 = StockRank.parseUpsOrDownsRankResult(paramJSONObject.getJSONObject("1").getJSONObject("result").getJSONArray("data"));
      localObject2 = this.n.getString(2131165902);
      localm = l.a(13, (String)localObject2, this.n);
      this.b.a(StockRank.convertToStockRank((List)localObject1, 13), localm, (String)localObject2);
      localObject1 = StockRank.parseUpsOrDownsRankResult(paramJSONObject.getJSONObject("2").getJSONObject("result").getJSONArray("data"));
      localObject2 = this.n.getString(2131165882);
      localm = l.a(14, (String)localObject2, this.n);
      this.b.a(StockRank.convertToStockRank((List)localObject1, 14), localm, (String)localObject2);
      localObject1 = StockRank.parseUpsOrDownsRankResult(paramJSONObject.getJSONObject("3").getJSONObject("result").getJSONArray("data"));
      localObject2 = l.a(15, this.n.getString(2131165903), this.n);
      this.b.a(StockRank.convertToStockRank((List)localObject1, 15), (com.xueqiu.android.stock.m)localObject2, this.n.getString(2131165903));
      localObject1 = StockRank.parseUpsOrDownsRankResult(paramJSONObject.getJSONObject("4").getJSONObject("result").getJSONArray("data"));
      localObject2 = l.a(16, this.n.getString(2131165883), this.n);
      this.b.a(StockRank.convertToStockRank((List)localObject1, 16), (com.xueqiu.android.stock.m)localObject2, this.n.getString(2131165883));
      paramJSONObject = paramJSONObject.getJSONObject("5").getJSONObject("result").getJSONArray("stocks");
      paramJSONObject = new GroupParser(new PortFolioParser()).parse(paramJSONObject);
      localObject1 = this.n.getString(2131165905);
      localObject2 = l.a(17, (String)localObject1, this.n);
      this.b.a(StockRank.convertToStockRank(paramJSONObject, 81), (com.xueqiu.android.stock.m)localObject2, (String)localObject1);
      return;
    }
    int i1;
    if ((paramInt == 1) || (paramInt == 3))
    {
      if (paramInt == 1)
      {
        localObject1 = paramJSONObject.getJSONObject("5").getJSONObject("result").getJSONArray("stocks");
        localObject1 = new GroupParser(new PortFolioParser()).parse((JSONArray)localObject1);
        localObject2 = this.n.getString(2131165909);
        localm = l.a(10, (String)localObject2, this.n);
        this.b.a(StockRank.convertToStockRank((List)localObject1, 81), localm, (String)localObject2);
      }
      localObject1 = paramJSONObject.getJSONObject("1").getJSONObject("result").getJSONArray("ranks");
      localObject1 = new GroupParser(new PortFolioParser()).parse((JSONArray)localObject1);
      if (paramInt == 1) {
        i1 = 1;
      }
    }
    for (;;)
    {
      localObject2 = l.a(i1, this.n.getString(2131165892), this.c.f());
      this.b.a(StockRank.convertToStockRank((List)localObject1, i1), (com.xueqiu.android.stock.m)localObject2, this.n.getString(2131165892));
      localObject1 = paramJSONObject.getJSONObject("2").getJSONObject("result").getJSONArray("ranks");
      localObject1 = new GroupParser(new PortFolioParser()).parse((JSONArray)localObject1);
      if (paramInt == 1) {
        i1 = 2;
      }
      for (;;)
      {
        label617:
        localObject2 = l.a(i1, this.n.getString(2131165891), this.n);
        this.b.a(StockRank.convertToStockRank((List)localObject1, i1), (com.xueqiu.android.stock.m)localObject2, this.n.getString(2131165891));
        localObject1 = StockRank.parseUpsOrDownsRankResult(paramJSONObject.getJSONObject("3").getJSONObject("result").getJSONArray("data"));
        localObject2 = this.n.getString(2131165901);
        if (paramInt == 1) {
          i1 = 3;
        }
        for (;;)
        {
          label708:
          localm = l.a(i1, (String)localObject2, this.n);
          this.b.a(StockRank.convertToStockRank((List)localObject1, i1), localm, (String)localObject2);
          localObject1 = StockRank.parseUpsOrDownsRankResult(paramJSONObject.getJSONObject("4").getJSONObject("result").getJSONArray("data"));
          localObject2 = this.n.getString(2131165881);
          if (paramInt == 1) {
            i1 = 4;
          }
          for (;;)
          {
            label783:
            localm = l.a(i1, (String)localObject2, this.n);
            this.b.a(StockRank.convertToStockRank((List)localObject1, i1), localm, (String)localObject2);
            for (;;)
            {
              if (paramInt != 7) {
                break label1451;
              }
              localObject1 = StockRank.parseUpsOrDownsRankResult(paramJSONObject.getJSONObject("2").getJSONObject("result").getJSONArray("data"));
              localObject2 = this.n.getString(2131165889);
              localm = l.a(72, (String)localObject2, this.n);
              this.b.a(StockRank.convertToStockRank((List)localObject1, 72), localm, (String)localObject2);
              localObject1 = StockRank.parseUpsOrDownsRankResult(paramJSONObject.getJSONObject("1").getJSONObject("result").getJSONArray("data"));
              localObject2 = this.n.getString(2131165890);
              localm = l.a(71, (String)localObject2, this.n);
              this.b.a(StockRank.convertToStockRank((List)localObject1, 71), localm, (String)localObject2);
              paramJSONObject = paramJSONObject.getJSONObject("3").getJSONObject("result").getJSONArray("data");
              paramJSONObject = (List)com.xueqiu.android.base.util.m.a().fromJson(paramJSONObject.toString(), new TypeToken() {}.getType());
              localObject1 = this.n.getString(2131165888);
              localObject2 = l.a(73, (String)localObject1, this.n);
              this.b.a(StockRank.convertAhQuoteToStockRank(paramJSONObject, 73), (com.xueqiu.android.stock.m)localObject2, (String)localObject1);
              return;
              if (paramInt != 3) {
                break label2139;
              }
              i1 = 21;
              break;
              if (paramInt != 3) {
                break label2133;
              }
              i1 = 22;
              break label617;
              if (paramInt != 3) {
                break label2127;
              }
              i1 = 23;
              break label708;
              if (paramInt != 3) {
                break label2121;
              }
              i1 = 24;
              break label783;
              if (paramInt == 5)
              {
                localObject1 = paramJSONObject.getJSONObject("4").getJSONObject("result").getJSONArray("stocks");
                localObject2 = new GroupParser(new PortFolioParser()).parse((JSONArray)localObject1);
                localObject1 = l.a(44, this.n.getString(2131165877), this.n);
                localObject2 = StockRank.formatNameForBuyBack((ArrayList)localObject2);
                this.b.a(StockRank.convertToStockRank((List)localObject2, 44), (com.xueqiu.android.stock.m)localObject1, this.n.getString(2131165877));
                localObject1 = paramJSONObject.getJSONObject("1").getJSONObject("result").getJSONArray("stocks");
                localObject1 = new GroupParser(new PortFolioParser()).parse((JSONArray)localObject1);
                localObject2 = l.a(41, this.n.getString(2131165878), this.n);
                this.b.a(StockRank.convertToStockRank((List)localObject1, 41), (com.xueqiu.android.stock.m)localObject2, this.n.getString(2131165878));
                localObject1 = paramJSONObject.getJSONObject("2").getJSONObject("result").getJSONArray("stocks");
                localObject1 = new GroupParser(new PortFolioParser()).parse((JSONArray)localObject1);
                localObject2 = l.a(42, this.n.getString(2131165880), this.n);
                this.b.a(StockRank.convertToStockRank((List)localObject1, 42), (com.xueqiu.android.stock.m)localObject2, this.n.getString(2131165880));
                localObject1 = paramJSONObject.getJSONObject("3").getJSONObject("result").getJSONArray("stocks");
                localObject1 = new GroupParser(new PortFolioParser()).parse((JSONArray)localObject1);
                localObject2 = l.a(43, this.n.getString(2131165879), this.n);
                this.b.a(StockRank.convertToStockRank((List)localObject1, 43), (com.xueqiu.android.stock.m)localObject2, this.n.getString(2131165879));
              }
            }
            label1451:
            if (paramInt == 8)
            {
              localObject1 = paramJSONObject.getJSONObject("1").getJSONObject("result").getJSONArray("data");
              localObject1 = new GroupParser(new PortFolioParser()).parse((JSONArray)localObject1);
              localObject2 = this.n.getString(2131165885);
              localm = l.a(74, (String)localObject2, this.n);
              this.b.a(StockRank.convertToStockRank((List)localObject1, 74), localm, (String)localObject2);
              localObject1 = paramJSONObject.getJSONObject("2").getJSONObject("result").getJSONArray("data");
              localObject1 = new GroupParser(new PortFolioParser()).parse((JSONArray)localObject1);
              localObject2 = this.n.getString(2131165886);
              localm = l.a(75, (String)localObject2, this.n);
              this.b.a(StockRank.convertToStockRank((List)localObject1, 75), localm, (String)localObject2);
              localObject1 = paramJSONObject.getJSONObject("3").getJSONObject("result").getJSONArray("data");
              localObject1 = new GroupParser(new PortFolioParser()).parse((JSONArray)localObject1);
              localObject2 = this.n.getString(2131165887);
              localm = l.a(76, (String)localObject2, this.n);
              this.b.a(StockRank.convertToStockRank((List)localObject1, 76), localm, (String)localObject2);
              paramJSONObject = paramJSONObject.getJSONObject("4").getJSONObject("result").getJSONArray("data");
              paramJSONObject = new GroupParser(new PortFolioParser()).parse(paramJSONObject);
              localObject1 = this.n.getString(2131165884);
              localObject2 = l.a(77, (String)localObject1, this.n);
              this.b.a(StockRank.convertToStockRank(paramJSONObject, 77), (com.xueqiu.android.stock.m)localObject2, (String)localObject1);
              return;
            }
            if (paramInt != 9) {
              break;
            }
            localObject1 = paramJSONObject.getJSONObject("1").getJSONObject("result").getJSONArray("stocks");
            localObject1 = new GroupParser(new PortFolioParser()).parse((JSONArray)localObject1);
            localObject2 = this.n.getString(2131165896);
            localm = l.a(81, (String)localObject2, this.n);
            this.b.a(StockRank.convertToStockRank((List)localObject1, 81), localm, (String)localObject2);
            localObject1 = paramJSONObject.getJSONObject("2").getJSONObject("result").getJSONArray("stocks");
            localObject1 = new GroupParser(new PortFolioParser()).parse((JSONArray)localObject1);
            localObject2 = this.n.getString(2131165895);
            localm = l.a(82, (String)localObject2, this.n);
            this.b.a(StockRank.convertToStockRank((List)localObject1, 82), localm, (String)localObject2);
            localObject1 = paramJSONObject.getJSONObject("3").getJSONObject("result").getJSONArray("stocks");
            localObject1 = new GroupParser(new PortFolioParser()).parse((JSONArray)localObject1);
            localObject2 = this.n.getString(2131165898);
            localm = l.a(83, (String)localObject2, this.n);
            this.b.a(StockRank.convertToStockRank((List)localObject1, 83), localm, (String)localObject2);
            paramJSONObject = paramJSONObject.getJSONObject("4").getJSONObject("result").getJSONArray("stocks");
            paramJSONObject = new GroupParser(new PortFolioParser()).parse(paramJSONObject);
            localObject1 = this.n.getString(2131165897);
            localObject2 = l.a(84, (String)localObject1, this.n);
            this.b.a(StockRank.convertToStockRank(paramJSONObject, 84), (com.xueqiu.android.stock.m)localObject2, (String)localObject1);
            return;
            label2121:
            i1 = 4;
          }
          label2127:
          i1 = 3;
        }
        label2133:
        i1 = 2;
      }
      label2139:
      i1 = 1;
    }
  }
  
  public final void b() {}
  
  public final void b(JSONObject paramJSONObject, int paramInt)
  {
    if (paramJSONObject == null) {}
    do
    {
      return;
      this.b.a();
      a(this.k, paramInt);
      if (paramInt == 1)
      {
        localObject = StockRank.parseAmountAndTurnoverRateRankResult(paramJSONObject.getJSONObject("1").getJSONObject("result").getJSONArray("data"), false);
        localm = l.a(5, this.n.getString(2131165870), this.n);
        this.b.a(StockRank.convertToStockRank((List)localObject, 5), localm, this.n.getString(2131165870));
        localObject = StockRank.parseAmountAndTurnoverRateRankResult(paramJSONObject.getJSONObject("2").getJSONObject("result").getJSONArray("data"), true);
        localm = l.a(6, this.n.getString(2131165904), this.n);
        this.b.a(StockRank.convertToStockRank((List)localObject, 6), localm, this.n.getString(2131165904));
        paramJSONObject = StockRank.parseNewIpoRankResult(paramJSONObject.getJSONObject("3").getJSONObject("result").getJSONArray("data"));
        localObject = l.a(9, this.n.getString(2131165894), this.n);
        this.b.a(StockRank.convertToStockRank(paramJSONObject, 9), (com.xueqiu.android.stock.m)localObject, this.n.getString(2131165894));
        return;
      }
    } while (paramInt != 2);
    Object localObject = paramJSONObject.getJSONObject("1").getJSONObject("result").getJSONArray("ranks");
    localObject = new GroupParser(new PortFolioParser()).parse((JSONArray)localObject);
    com.xueqiu.android.stock.m localm = l.a(11, this.n.getString(2131165892), this.c.f());
    this.b.a(StockRank.convertToStockRank((List)localObject, 11), localm, this.n.getString(2131165892));
    localObject = paramJSONObject.getJSONObject("2").getJSONObject("result").getJSONArray("ranks");
    localObject = new GroupParser(new PortFolioParser()).parse((JSONArray)localObject);
    localm = l.a(12, this.n.getString(2131165891), this.n);
    this.b.a(StockRank.convertToStockRank((List)localObject, 12), localm, this.n.getString(2131165891));
    paramJSONObject = StockRank.parseUSPreIpoRankResult(paramJSONObject.getJSONObject("3").getJSONObject("result").getJSONArray("data"));
    localObject = this.n.getString(2131165900);
    localm = l.a(180, (String)localObject, this.n);
    this.b.a(StockRank.convertToStockRank(paramJSONObject, 180), localm, (String)localObject);
  }
  
  public final void refresh()
  {
    this.f = true;
    c();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\stock\d\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
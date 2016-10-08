package com.xueqiu.android.base.b;

import com.android.volley.o;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonPrimitive;
import com.google.gson.reflect.TypeToken;
import com.xueqiu.android.base.util.au;
import com.xueqiu.android.common.model.PagedList;
import com.xueqiu.android.common.model.RequestResult;
import com.xueqiu.android.common.model.parser.GPagedParser;
import com.xueqiu.android.common.model.parser.GParser;
import com.xueqiu.android.common.model.parser.InTradeParser;
import com.xueqiu.android.common.model.parser.Parser;
import com.xueqiu.android.common.model.parser.ResultParser;
import com.xueqiu.android.community.model.Status;
import com.xueqiu.android.cube.model.Cube;
import com.xueqiu.android.cube.model.Editorial;
import com.xueqiu.android.cube.model.EditorialCube;
import com.xueqiu.android.cube.model.HistoryValue;
import com.xueqiu.android.cube.model.Holding;
import com.xueqiu.android.cube.model.Industry;
import com.xueqiu.android.cube.model.NavDailyList;
import com.xueqiu.android.cube.model.NavMonthlyList;
import com.xueqiu.android.cube.model.OrderStatus;
import com.xueqiu.android.cube.model.Rebalancing;
import com.xueqiu.android.cube.model.SpCubeRelation;
import com.xueqiu.android.cube.model.Topic;
import com.xueqiu.android.stock.model.StockQuote;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.apache.http.message.BasicNameValuePair;
import org.json.JSONArray;
import org.json.JSONObject;

public final class c
  extends a
{
  public c(ae paramae)
  {
    this.f = paramae;
  }
  
  private static String a(List<Holding> paramList1, List<Holding> paramList2)
  {
    JsonArray localJsonArray = new JsonArray();
    Object localObject1 = paramList1;
    Object localObject2;
    Object localObject3;
    if (paramList2 != null)
    {
      localObject1 = new HashMap();
      localObject2 = new HashMap();
      localObject3 = paramList2.iterator();
      Holding localHolding;
      while (((Iterator)localObject3).hasNext())
      {
        localHolding = (Holding)((Iterator)localObject3).next();
        ((Map)localObject2).put(Long.valueOf(localHolding.getStockId()), localHolding);
      }
      paramList1 = paramList1.iterator();
      while (paramList1.hasNext())
      {
        localObject3 = (Holding)paramList1.next();
        if ((!((Map)localObject2).containsKey(Long.valueOf(((Holding)localObject3).getStockId()))) || (((Holding)((Map)localObject2).get(Long.valueOf(((Holding)localObject3).getStockId()))).getWeight() != ((Holding)localObject3).getWeight()) || (((Holding)((Map)localObject2).get(Long.valueOf(((Holding)localObject3).getStockId()))).getVolume() != ((Holding)localObject3).getVolume())) {
          ((Holding)localObject3).setProactive(true);
        }
        ((Map)localObject1).put(Long.valueOf(((Holding)localObject3).getStockId()), localObject3);
      }
      paramList1 = ((Map)localObject2).keySet().iterator();
      while (paramList1.hasNext())
      {
        localObject3 = (Long)paramList1.next();
        if (!((Map)localObject1).containsKey(localObject3))
        {
          localHolding = (Holding)((Map)localObject2).get(localObject3);
          localHolding.setProactive(true);
          localHolding.setWeight(0.0D);
          ((Map)localObject1).put(localObject3, localHolding);
        }
      }
      localObject1 = new ArrayList(((Map)localObject1).values());
    }
    int i = 0;
    if (i < ((List)localObject1).size())
    {
      localObject2 = (Holding)((List)localObject1).get(i);
      localObject3 = new JsonObject();
      ((JsonObject)localObject3).add("stock_id", new JsonPrimitive(Long.valueOf(((Holding)localObject2).getStockId())));
      ((JsonObject)localObject3).add("weight", new JsonPrimitive(Double.valueOf(((Holding)localObject2).getWeight())));
      ((JsonObject)localObject3).add("volume", new JsonPrimitive(Double.valueOf(((Holding)localObject2).getVolume())));
      if (((Holding)localObject2).getSegmentName() == null) {}
      for (paramList1 = "其他";; paramList1 = ((Holding)localObject2).getSegmentName())
      {
        ((JsonObject)localObject3).add("segment_name", new JsonPrimitive(paramList1));
        if (paramList2 != null) {
          ((JsonObject)localObject3).add("proactive", new JsonPrimitive(Boolean.valueOf(((Holding)localObject2).isProactive())));
        }
        localJsonArray.add((JsonElement)localObject3);
        i += 1;
        break;
      }
    }
    return localJsonArray.toString();
  }
  
  public final x<ArrayList<Cube>> a(int paramInt1, int paramInt2, Map<String, String> paramMap, p<ArrayList<Cube>> paramp)
  {
    ArrayList localArrayList = new ArrayList();
    if (paramMap.size() > 0)
    {
      Iterator localIterator = paramMap.keySet().iterator();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        localArrayList.add(new BasicNameValuePair(str, (String)paramMap.get(str)));
      }
    }
    localArrayList.add(new BasicNameValuePair("category", String.valueOf(paramInt1)));
    localArrayList.add(new BasicNameValuePair("page", String.valueOf(paramInt2)));
    localArrayList.add(new BasicNameValuePair("count", "20"));
    paramMap = new GPagedParser("list", new TypeToken() {}.getType());
    paramMap = x.a(a.a("/cubes/discover/rank/cube/list", false), (BasicNameValuePair[])localArrayList.toArray(new BasicNameValuePair[0]), paramp, paramMap);
    this.f.a(paramMap);
    return paramMap;
  }
  
  public final x<ArrayList<Editorial>> a(int paramInt, p<ArrayList<Editorial>> paramp)
  {
    BasicNameValuePair localBasicNameValuePair1 = new BasicNameValuePair("page", String.valueOf(paramInt));
    BasicNameValuePair localBasicNameValuePair2 = new BasicNameValuePair("count", "6");
    String str = a.a("/cubes/discover/editorial/list", false);
    GParser localGParser = new GParser(new TypeToken() {}.getType());
    paramp = x.a(str, new BasicNameValuePair[] { localBasicNameValuePair1, localBasicNameValuePair2 }, paramp, localGParser);
    this.f.a(paramp);
    return paramp;
  }
  
  public final x<ArrayList<Cube>> a(long paramLong, int paramInt, p<ArrayList<Cube>> paramp)
  {
    BasicNameValuePair localBasicNameValuePair1 = new BasicNameValuePair("editorial_id", String.valueOf(paramLong));
    BasicNameValuePair localBasicNameValuePair2 = new BasicNameValuePair("page", String.valueOf(paramInt));
    BasicNameValuePair localBasicNameValuePair3 = new BasicNameValuePair("count", "20");
    GPagedParser localGPagedParser = new GPagedParser("list", new TypeToken() {}.getType());
    paramp = x.a(a.a("/cubes/discover/editorial/cube/list", false), new BasicNameValuePair[] { localBasicNameValuePair1, localBasicNameValuePair2, localBasicNameValuePair3 }, paramp, localGPagedParser);
    this.f.a(paramp);
    return paramp;
  }
  
  public final x<OrderStatus> a(long paramLong1, long paramLong2, p<OrderStatus> paramp)
  {
    BasicNameValuePair localBasicNameValuePair1 = new BasicNameValuePair("out_service_no", String.valueOf(paramLong1));
    BasicNameValuePair localBasicNameValuePair2 = new BasicNameValuePair("out_trade_no", String.valueOf(paramLong2));
    String str = a.a("/tc/snowpay/trade/get_prepay_info", false);
    GParser localGParser = new GParser("status", new TypeToken() {}.getType());
    paramp = x.a(str, new BasicNameValuePair[] { localBasicNameValuePair1, localBasicNameValuePair2 }, paramp, localGParser);
    this.f.a(paramp);
    return paramp;
  }
  
  public final x<Rebalancing> a(long paramLong, p<Rebalancing> paramp)
  {
    BasicNameValuePair localBasicNameValuePair = new BasicNameValuePair("rb_id", String.valueOf(paramLong));
    String str = a.a("/cubes/rebalancing/show_origin", false);
    GParser localGParser = new GParser("rebalancing", Rebalancing.class);
    paramp = x.a(str, new BasicNameValuePair[] { localBasicNameValuePair }, paramp, localGParser);
    this.f.a(paramp);
    return paramp;
  }
  
  public final x<JSONObject> a(long paramLong, String paramString, double paramDouble, p<JSONObject> paramp)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("plan", "1");
    if (paramLong > 0L) {
      localHashMap.put("cube_id", String.valueOf(paramLong));
    }
    if (paramString != null) {
      localHashMap.put("cube_symbol", paramString);
    }
    if (paramDouble > 0.0D) {
      localHashMap.put("assets_limit", String.valueOf(paramDouble));
    }
    paramString = x.a(a.a("/cubes/order/plan", false), localHashMap, paramp, new Parser()
    {
      public final ArrayList parse(JSONArray paramAnonymousJSONArray)
      {
        return null;
      }
    });
    this.f.a(paramString);
    return paramString;
  }
  
  public final x<PagedList<HistoryValue>> a(long paramLong, String paramString, int paramInt1, int paramInt2, p<PagedList<HistoryValue>> paramp)
  {
    BasicNameValuePair[] arrayOfBasicNameValuePair = new BasicNameValuePair[3];
    if (paramLong > 0L) {
      arrayOfBasicNameValuePair[0] = new BasicNameValuePair("cube_id", String.valueOf(paramLong));
    }
    for (;;)
    {
      arrayOfBasicNameValuePair[1] = new BasicNameValuePair("page", String.valueOf(paramInt1));
      arrayOfBasicNameValuePair[2] = new BasicNameValuePair("count", String.valueOf(paramInt2));
      paramString = x.a(a.a("/cubes/nav_daily/page", false), arrayOfBasicNameValuePair, paramp, new GParser(new TypeToken() {}.getType()));
      this.f.a(paramString);
      return paramString;
      arrayOfBasicNameValuePair[0] = new BasicNameValuePair("cube_symbol", paramString);
    }
  }
  
  public final x<Cube> a(long paramLong, String paramString, p<Cube> paramp)
  {
    BasicNameValuePair[] arrayOfBasicNameValuePair = new BasicNameValuePair[3];
    if (paramLong > 0L) {
      arrayOfBasicNameValuePair[0] = new BasicNameValuePair("id", String.valueOf(paramLong));
    }
    for (;;)
    {
      arrayOfBasicNameValuePair[1] = new BasicNameValuePair("mix_rebalancing", "true");
      arrayOfBasicNameValuePair[2] = new BasicNameValuePair("ret_last_buy_rb_id", "true");
      paramString = x.a(a.a("/cubes/show", false), arrayOfBasicNameValuePair, paramp, new GParser(Cube.class));
      this.f.a(paramString);
      return paramString;
      arrayOfBasicNameValuePair[0] = new BasicNameValuePair("symbol", paramString);
    }
  }
  
  public final x<RequestResult> a(long paramLong, String paramString1, String paramString2, p<RequestResult> paramp)
  {
    BasicNameValuePair[] arrayOfBasicNameValuePair = new BasicNameValuePair[3];
    if (paramLong > 0L) {
      arrayOfBasicNameValuePair[0] = new BasicNameValuePair("id", String.valueOf(paramLong));
    }
    for (;;)
    {
      arrayOfBasicNameValuePair[1] = new BasicNameValuePair("name", paramString1);
      arrayOfBasicNameValuePair[2] = new BasicNameValuePair("description", paramString2);
      paramString1 = x.b(a.a("/cubes/update", false), arrayOfBasicNameValuePair, paramp, new GParser(RequestResult.class));
      this.f.a(paramString1);
      return paramString1;
      arrayOfBasicNameValuePair[0] = new BasicNameValuePair("symbol", null);
    }
  }
  
  public final x<Rebalancing> a(long paramLong, String paramString1, List<Holding> paramList1, List<Holding> paramList2, double paramDouble, String paramString2, p<Rebalancing> paramp)
  {
    BasicNameValuePair[] arrayOfBasicNameValuePair = new BasicNameValuePair[5];
    if (paramLong > 0L) {
      arrayOfBasicNameValuePair[0] = new BasicNameValuePair("cube_id", String.valueOf(paramLong));
    }
    for (;;)
    {
      arrayOfBasicNameValuePair[1] = new BasicNameValuePair("holdings", a(paramList1, paramList2));
      arrayOfBasicNameValuePair[2] = new BasicNameValuePair("cash", String.format("%.2f", new Object[] { Double.valueOf(paramDouble) }));
      arrayOfBasicNameValuePair[3] = new BasicNameValuePair("segmenting", Boolean.valueOf(true).toString());
      paramString1 = paramString2;
      if (paramString2 == null) {
        paramString1 = "";
      }
      arrayOfBasicNameValuePair[4] = new BasicNameValuePair("comment", paramString1);
      paramString1 = x.b(a.a("/cubes/rebalancing/create", false), arrayOfBasicNameValuePair, paramp, new GParser(Rebalancing.class));
      this.f.a(paramString1);
      return paramString1;
      arrayOfBasicNameValuePair[0] = new BasicNameValuePair("cube_symbol", paramString1);
    }
  }
  
  public final x<List<Industry>> a(p<List<Industry>> paramp)
  {
    BasicNameValuePair localBasicNameValuePair1 = new BasicNameValuePair("count", "28");
    BasicNameValuePair localBasicNameValuePair2 = new BasicNameValuePair("page", "1");
    BasicNameValuePair localBasicNameValuePair3 = new BasicNameValuePair("order", "1");
    GPagedParser localGPagedParser = new GPagedParser("list", new TypeToken() {}.getType());
    paramp = x.a(a.a("/cubes/discover/industry/list", false), new BasicNameValuePair[] { localBasicNameValuePair1, localBasicNameValuePair2, localBasicNameValuePair3 }, paramp, localGPagedParser);
    this.f.a(paramp);
    return null;
  }
  
  public final x<JsonObject> a(String paramString, int paramInt1, int paramInt2, p<JsonObject> paramp)
  {
    paramString = new BasicNameValuePair("cube_symbol", paramString);
    BasicNameValuePair localBasicNameValuePair1 = new BasicNameValuePair("page", String.valueOf(paramInt1));
    BasicNameValuePair localBasicNameValuePair2 = new BasicNameValuePair("count", String.valueOf(paramInt2));
    GParser localGParser = new GParser(JsonObject.class);
    paramString = x.a(a.a("/cubes/analyst/stock", false), new BasicNameValuePair[] { paramString, localBasicNameValuePair1, localBasicNameValuePair2 }, paramp, localGParser);
    this.f.a(paramString);
    return paramString;
  }
  
  public final x<JsonObject> a(String paramString1, int paramInt, String paramString2, p<JsonObject> paramp)
  {
    GParser localGParser = new GParser(JsonObject.class);
    paramString1 = new BasicNameValuePair("list_param", paramString1);
    BasicNameValuePair localBasicNameValuePair1 = new BasicNameValuePair("cube_level", String.valueOf(paramInt));
    paramString2 = new BasicNameValuePair("market", paramString2);
    BasicNameValuePair localBasicNameValuePair2 = new BasicNameValuePair("page", "1");
    BasicNameValuePair localBasicNameValuePair3 = new BasicNameValuePair("count", "1");
    paramString1 = x.a(a.a("/cubes/rank/arena_cubes", false), new BasicNameValuePair[] { paramString1, localBasicNameValuePair1, paramString2, localBasicNameValuePair2, localBasicNameValuePair3 }, paramp, localGParser);
    this.f.a(paramString1);
    return paramString1;
  }
  
  public final x<ArrayList<Cube>> a(String paramString, int paramInt, Map<String, String> paramMap, p<ArrayList<Cube>> paramp)
  {
    ArrayList localArrayList = new ArrayList();
    if (paramMap.size() > 0)
    {
      Iterator localIterator = paramMap.keySet().iterator();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        localArrayList.add(new BasicNameValuePair(str, (String)paramMap.get(str)));
      }
    }
    localArrayList.add(new BasicNameValuePair("industry_name", paramString));
    localArrayList.add(new BasicNameValuePair("page", String.valueOf(paramInt)));
    localArrayList.add(new BasicNameValuePair("count", "20"));
    paramString = new GPagedParser("list", new TypeToken() {}.getType());
    paramString = x.a(a.a("/cubes/discover/topic/cube/list", false), (BasicNameValuePair[])localArrayList.toArray(new BasicNameValuePair[0]), paramp, paramString);
    this.f.a(paramString);
    return paramString;
  }
  
  public final x<List<NavDailyList>> a(String paramString, long paramLong1, long paramLong2, p<List<NavDailyList>> paramp)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("cube_symbol", paramString);
    if ((paramLong1 > 0L) && (paramLong2 > 0L))
    {
      localHashMap.put("since", String.valueOf(paramLong1));
      localHashMap.put("until", String.valueOf(paramLong2));
    }
    paramString = x.a(a.a("/cubes/nav_daily/all", false), localHashMap, paramp, new GParser(new TypeToken() {}.getType()));
    this.f.a(paramString);
    return paramString;
  }
  
  public final x<SpCubeRelation> a(String paramString, long paramLong, p<SpCubeRelation> paramp)
  {
    paramString = new BasicNameValuePair("cube_symbol", paramString);
    BasicNameValuePair localBasicNameValuePair = new BasicNameValuePair("owner_id", String.valueOf(paramLong));
    String str = a.a("/tc/snowx/cube/relation", false);
    InTradeParser localInTradeParser = new InTradeParser(SpCubeRelation.class);
    paramString = x.a(str, new BasicNameValuePair[] { paramString, localBasicNameValuePair }, paramp, localInTradeParser);
    this.f.a(paramString);
    return paramString;
  }
  
  public final x<Cube> a(String paramString, p<Cube> paramp)
  {
    paramString = a("/tc/snowx/cubes/license/query", paramString);
    InTradeParser localInTradeParser = new InTradeParser(Cube.class);
    paramString = x.a(paramString, new BasicNameValuePair[0], paramp, localInTradeParser);
    this.f.a(paramString);
    return paramString;
  }
  
  public final x<ArrayList<Status>> a(String paramString1, String paramString2, int paramInt1, int paramInt2, long paramLong, p<ArrayList<Status>> paramp)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("symbol", paramString1);
    localHashMap.put("source", paramString2);
    localHashMap.put("count", String.valueOf(paramInt2));
    localHashMap.put("comment", "0");
    localHashMap.put("page", String.valueOf(paramInt1));
    if (paramLong != 0L) {
      localHashMap.put("uid", String.valueOf(paramLong));
    }
    paramString1 = x.a(a.a("/statuses/search", false), localHashMap, paramp, new GPagedParser("list", new TypeToken() {}.getType()));
    this.f.a(paramString1);
    return paramString1;
  }
  
  public final x<PagedList<HistoryValue>> a(String paramString1, String paramString2, int paramInt1, int paramInt2, p<PagedList<HistoryValue>> paramp)
  {
    paramString1 = new BasicNameValuePair("cube_symbol", paramString1);
    BasicNameValuePair localBasicNameValuePair1 = new BasicNameValuePair("page", String.valueOf(paramInt1));
    BasicNameValuePair localBasicNameValuePair2 = new BasicNameValuePair("count", String.valueOf(paramInt2));
    paramString2 = a("/tc/snowx/cubes/nav_daily/page", paramString2);
    GParser localGParser = new GParser(new TypeToken() {}.getType());
    paramString1 = x.a(paramString2, new BasicNameValuePair[] { paramString1, localBasicNameValuePair1, localBasicNameValuePair2 }, paramp, localGParser);
    this.f.a(paramString1);
    return paramString1;
  }
  
  public final x<JsonObject> a(String paramString1, String paramString2, int paramInt, p<JsonObject> paramp)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("cube_symbol", paramString1);
    localHashMap.put("type", paramString2);
    if (paramInt > 0) {
      localHashMap.put("level", String.valueOf(paramInt));
    }
    paramString1 = new GParser(JsonObject.class);
    paramString1 = x.a(a.a("/cubes/analyst/histo/stat", false), localHashMap, paramp, paramString1);
    this.f.a(paramString1);
    return paramString1;
  }
  
  public final x<List<NavDailyList>> a(String paramString1, String paramString2, long paramLong1, long paramLong2, p<List<NavDailyList>> paramp)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("cube_symbol", paramString1);
    if ((paramLong1 > 0L) && (paramLong2 > 0L))
    {
      localHashMap.put("since", String.valueOf(paramLong1));
      localHashMap.put("until", String.valueOf(paramLong2));
    }
    paramString1 = x.a(a("/tc/snowx/cubes/nav_daily/all", paramString2), localHashMap, paramp, new GParser(new TypeToken() {}.getType()));
    this.f.a(paramString1);
    return paramString1;
  }
  
  public final x<Rebalancing> a(String paramString1, String paramString2, p<Rebalancing> paramp)
  {
    paramString1 = new BasicNameValuePair("cube_symbol", paramString1);
    paramString2 = a("/tc/snowx/cubes/rebalancing/show_origin", paramString2);
    GParser localGParser = new GParser("rebalancing", Rebalancing.class);
    paramString1 = x.a(paramString2, new BasicNameValuePair[] { paramString1 }, paramp, localGParser);
    this.f.a(paramString1);
    return paramString1;
  }
  
  public final x<ArrayList<Cube>> a(String paramString1, String paramString2, String paramString3, int paramInt, p<ArrayList<Cube>> paramp)
  {
    GPagedParser localGPagedParser = new GPagedParser("list", new TypeToken() {}.getType());
    paramString1 = new BasicNameValuePair("list_param", paramString1);
    paramString2 = new BasicNameValuePair("cube_level", String.valueOf(paramString2));
    paramString3 = new BasicNameValuePair("market", paramString3);
    BasicNameValuePair localBasicNameValuePair1 = new BasicNameValuePair("page", String.valueOf(paramInt));
    BasicNameValuePair localBasicNameValuePair2 = new BasicNameValuePair("count", "20");
    paramString1 = x.a(a.a("/cubes/rank/arena_cubes", false), new BasicNameValuePair[] { paramString1, paramString2, paramString3, localBasicNameValuePair1, localBasicNameValuePair2 }, paramp, localGPagedParser);
    this.f.a(paramString1);
    return paramString1;
  }
  
  public final x<RequestResult> a(String paramString1, String paramString2, String paramString3, String paramString4, p<RequestResult> paramp)
  {
    paramString1 = new BasicNameValuePair("cube_symbol", paramString1);
    paramString3 = new BasicNameValuePair("name", paramString3);
    paramString4 = new BasicNameValuePair("description", paramString4);
    paramString2 = a("/tc/snowx/cubes/modify", paramString2);
    GParser localGParser = new GParser(RequestResult.class);
    paramString1 = x.b(paramString2, new BasicNameValuePair[] { paramString1, paramString3, paramString4 }, paramp, localGParser);
    this.f.a(paramString1);
    return paramString1;
  }
  
  public final x<Cube> a(String paramString1, String paramString2, String paramString3, List<Holding> paramList, double paramDouble, String paramString4, p<Cube> paramp)
  {
    paramString1 = new BasicNameValuePair("name", paramString1);
    paramString2 = new BasicNameValuePair("description", paramString2);
    paramString3 = new BasicNameValuePair("market", paramString3);
    BasicNameValuePair localBasicNameValuePair = new BasicNameValuePair("cash", String.valueOf(paramDouble));
    paramList = new BasicNameValuePair("holdings", a(paramList, null));
    paramString4 = new BasicNameValuePair("session_token", paramString4);
    String str = a.a("/cubes/create", false);
    GParser localGParser = new GParser(Cube.class);
    paramString1 = x.b(str, new BasicNameValuePair[] { paramString1, paramString2, paramString3, localBasicNameValuePair, paramList, paramString4 }, paramp, localGParser);
    this.f.a(paramString1);
    return paramString1;
  }
  
  public final x<Map<String, StockQuote>> a(List<String> paramList, p<Map<String, StockQuote>> paramp)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("code", au.a(paramList, ","));
    paramList = x.a(a.a("/cubes/quote", false), localHashMap, paramp, new GParser(new TypeToken() {}.getType()));
    this.f.a(paramList);
    return paramList;
  }
  
  public final x<ArrayList<Cube>> b(long paramLong, int paramInt, p<ArrayList<Cube>> paramp)
  {
    BasicNameValuePair localBasicNameValuePair1 = new BasicNameValuePair("type", "2");
    BasicNameValuePair localBasicNameValuePair2 = new BasicNameValuePair("user_id", String.valueOf(paramLong));
    BasicNameValuePair localBasicNameValuePair3 = new BasicNameValuePair("page", String.valueOf(paramInt));
    BasicNameValuePair localBasicNameValuePair4 = new BasicNameValuePair("count", "20");
    GPagedParser localGPagedParser = new GPagedParser("list", new TypeToken() {}.getType());
    paramp = x.a(a.a("/cubes/onshelf/list", false), new BasicNameValuePair[] { localBasicNameValuePair1, localBasicNameValuePair2, localBasicNameValuePair3, localBasicNameValuePair4 }, paramp, localGPagedParser);
    this.f.a(paramp);
    return paramp;
  }
  
  public final x<EditorialCube> b(long paramLong, p<EditorialCube> paramp)
  {
    BasicNameValuePair localBasicNameValuePair = new BasicNameValuePair("editorial_id", String.valueOf(paramLong));
    String str = a.a("/cubes/discover/editorial/cube/list", false);
    GParser localGParser = new GParser(new TypeToken() {}.getType());
    paramp = x.a(str, new BasicNameValuePair[] { localBasicNameValuePair }, paramp, localGParser);
    this.f.a(paramp);
    return paramp;
  }
  
  public final x<PagedList<Rebalancing>> b(long paramLong, String paramString, int paramInt1, int paramInt2, p<PagedList<Rebalancing>> paramp)
  {
    BasicNameValuePair[] arrayOfBasicNameValuePair = new BasicNameValuePair[3];
    if (paramLong > 0L) {
      arrayOfBasicNameValuePair[0] = new BasicNameValuePair("cube_id", String.valueOf(paramLong));
    }
    for (;;)
    {
      int i = paramInt1;
      if (paramInt1 <= 0) {
        i = 30;
      }
      arrayOfBasicNameValuePair[1] = new BasicNameValuePair("count", String.valueOf(i));
      paramInt1 = paramInt2;
      if (paramInt2 <= 0) {
        paramInt1 = 1;
      }
      arrayOfBasicNameValuePair[2] = new BasicNameValuePair("page", String.valueOf(paramInt1));
      paramString = x.a(a.a("/cubes/rebalancing/history", false), arrayOfBasicNameValuePair, paramp, new GParser(new TypeToken() {}.getType()));
      this.f.a(paramString);
      return paramString;
      arrayOfBasicNameValuePair[0] = new BasicNameValuePair("cube_symbol", paramString);
    }
  }
  
  public final x<Boolean> b(long paramLong, String paramString, p<Boolean> paramp)
  {
    HashMap localHashMap = new HashMap();
    if (paramLong > 0L) {
      localHashMap.put("id", String.valueOf(paramLong));
    }
    if (paramString != null) {
      localHashMap.put("symbol", paramString);
    }
    paramString = x.b(a.a("/cubes/close", false), localHashMap, paramp, new ResultParser());
    this.f.a(paramString);
    return paramString;
  }
  
  public final x<Double> b(long paramLong, String paramString1, String paramString2, p<Double> paramp)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("cube_id", String.valueOf(paramLong));
    localHashMap.put("market", paramString1);
    localHashMap.put("dimension", paramString2);
    paramString1 = x.a(a.a("/cubes/data/rank_percent", false), localHashMap, paramp, new Parser()
    {
      public final ArrayList parse(JSONArray paramAnonymousJSONArray)
      {
        return null;
      }
    });
    this.f.a(paramString1);
    return paramString1;
  }
  
  public final x<RequestResult> b(p<RequestResult> paramp)
  {
    String str = a.a("/cubes/allow_create", false);
    GParser localGParser = new GParser(RequestResult.class);
    paramp = x.a(str, new BasicNameValuePair[0], paramp, localGParser);
    this.f.a(paramp);
    return paramp;
  }
  
  public final x<Cube> b(String paramString, p<Cube> paramp)
  {
    paramString = a("/tc/snowx/cubes/license", paramString);
    InTradeParser localInTradeParser = new InTradeParser(Cube.class);
    paramString = x.b(paramString, new BasicNameValuePair[0], paramp, localInTradeParser);
    this.f.a(paramString);
    return paramString;
  }
  
  public final x<PagedList<Rebalancing>> b(String paramString1, String paramString2, int paramInt1, int paramInt2, p<PagedList<Rebalancing>> paramp)
  {
    paramString1 = new BasicNameValuePair("cube_symbol", paramString1);
    int i = paramInt1;
    if (paramInt1 <= 0) {
      i = 30;
    }
    BasicNameValuePair localBasicNameValuePair1 = new BasicNameValuePair("count", String.valueOf(i));
    paramInt1 = paramInt2;
    if (paramInt2 <= 0) {
      paramInt1 = 1;
    }
    BasicNameValuePair localBasicNameValuePair2 = new BasicNameValuePair("page", String.valueOf(paramInt1));
    paramString2 = a("/tc/snowx/cubes/rebalancing/history", paramString2);
    GParser localGParser = new GParser(new TypeToken() {}.getType());
    paramString1 = x.a(paramString2, new BasicNameValuePair[] { paramString1, localBasicNameValuePair1, localBasicNameValuePair2 }, paramp, localGParser);
    this.f.a(paramString1);
    return paramString1;
  }
  
  public final x<Cube> b(String paramString1, String paramString2, p<Cube> paramp)
  {
    paramString1 = new BasicNameValuePair("cube_symbol", paramString1);
    BasicNameValuePair localBasicNameValuePair1 = new BasicNameValuePair("mix_rebalancing", "true");
    BasicNameValuePair localBasicNameValuePair2 = new BasicNameValuePair("ret_last_buy_rb_id", "true");
    paramString2 = a("/tc/snowx/cubes/show", paramString2);
    GParser localGParser = new GParser(Cube.class);
    paramString1 = x.a(paramString2, new BasicNameValuePair[] { paramString1, localBasicNameValuePair1, localBasicNameValuePair2 }, paramp, localGParser);
    this.f.a(paramString1);
    return paramString1;
  }
  
  public final x<Double> b(String paramString1, String paramString2, String paramString3, String paramString4, p<Double> paramp)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("cube_symbol", paramString1);
    localHashMap.put("market", paramString3);
    localHashMap.put("dimension", paramString4);
    paramString1 = x.a(a("/tc/snowx/cubes/data/rank_percent", paramString2), localHashMap, paramp, new Parser()
    {
      public final ArrayList parse(JSONArray paramAnonymousJSONArray)
      {
        return null;
      }
    });
    this.f.a(paramString1);
    return paramString1;
  }
  
  public final x<ArrayList<Cube>> c(long paramLong, p<ArrayList<Cube>> paramp)
  {
    Object localObject = new BasicNameValuePair("user_id", String.valueOf(paramLong));
    BasicNameValuePair localBasicNameValuePair1 = new BasicNameValuePair("page", "1");
    BasicNameValuePair localBasicNameValuePair2 = new BasicNameValuePair("count", "50");
    GPagedParser localGPagedParser = new GPagedParser("list", new TypeToken() {}.getType());
    paramp = x.a(a.a("/cubes/list", false), new BasicNameValuePair[] { localObject, localBasicNameValuePair1, localBasicNameValuePair2 }, paramp, localGPagedParser);
    localObject = new r();
    ((r)localObject).a = true;
    ((r)localObject).c = o.c;
    paramp.a((r)localObject);
    this.f.a(paramp);
    return paramp;
  }
  
  public final x<List<NavDailyList>> c(String paramString, p<List<NavDailyList>> paramp)
  {
    BasicNameValuePair[] arrayOfBasicNameValuePair = new BasicNameValuePair[1];
    if (0L > 0L) {
      arrayOfBasicNameValuePair[0] = new BasicNameValuePair("cube_id", "0");
    }
    for (;;)
    {
      paramString = x.a(a.a("/cubes/nav_daily/all", false), arrayOfBasicNameValuePair, paramp, new GParser(new TypeToken() {}.getType()));
      this.f.a(paramString);
      return paramString;
      arrayOfBasicNameValuePair[0] = new BasicNameValuePair("cube_symbol", paramString);
    }
  }
  
  public final x<Boolean> c(String paramString1, String paramString2, p<Boolean> paramp)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("cube_symbol", paramString1);
    paramString1 = x.b(a("/tc/snowx/cubes/close", paramString2), localHashMap, paramp, new ResultParser());
    this.f.a(paramString1);
    return paramString1;
  }
  
  public final x<List<NavMonthlyList>> d(String paramString, p<List<NavMonthlyList>> paramp)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("cube_symbol", paramString);
    paramString = x.a(a.a("/cubes/analyst/histo/benefit", false), localHashMap, paramp, new GParser(new TypeToken() {}.getType()));
    this.f.a(paramString);
    return paramString;
  }
  
  public final x<List<Topic>> e(String paramString, p<List<Topic>> paramp)
  {
    paramString = new BasicNameValuePair("industry_name", String.valueOf(paramString));
    BasicNameValuePair localBasicNameValuePair1 = new BasicNameValuePair("count", "50");
    BasicNameValuePair localBasicNameValuePair2 = new BasicNameValuePair("page", "1");
    BasicNameValuePair localBasicNameValuePair3 = new BasicNameValuePair("order", "1");
    BasicNameValuePair localBasicNameValuePair4 = new BasicNameValuePair("has_header", "1");
    String str = a.a("/cubes/discover/topic/list", false);
    GParser localGParser = new GParser(new TypeToken() {}.getType());
    paramString = x.a(str, new BasicNameValuePair[] { paramString, localBasicNameValuePair1, localBasicNameValuePair2, localBasicNameValuePair3, localBasicNameValuePair4 }, paramp, localGParser);
    this.f.a(paramString);
    return paramString;
  }
  
  public final x<RequestResult> f(String paramString, p<RequestResult> paramp)
  {
    paramString = new BasicNameValuePair("name", paramString);
    String str = a.a("/cubes/valid_name", false);
    GParser localGParser = new GParser(RequestResult.class);
    paramString = x.a(str, new BasicNameValuePair[] { paramString }, paramp, localGParser);
    this.f.a(paramString);
    return paramString;
  }
  
  public final x<ArrayList<Cube>> g(String paramString, p<ArrayList<Cube>> paramp)
  {
    paramString = new BasicNameValuePair("q", paramString);
    BasicNameValuePair localBasicNameValuePair = new BasicNameValuePair("count", "10");
    GPagedParser localGPagedParser = new GPagedParser("list", new TypeToken() {}.getType());
    paramString = x.a(a.a("/cube/search", false), new BasicNameValuePair[] { paramString, localBasicNameValuePair }, paramp, localGPagedParser);
    this.f.a(paramString);
    return paramString;
  }
  
  public final x<JsonObject> h(String paramString, p<JsonObject> paramp)
  {
    GParser localGParser = new GParser(JsonObject.class);
    HashMap localHashMap = new HashMap();
    if (paramString != null) {
      localHashMap.put("symbol", paramString);
    }
    if (0L > 0L) {
      localHashMap.put("cube_id", "0");
    }
    paramString = x.a(a.a("/cubes/rank/summary", false), localHashMap, paramp, localGParser);
    this.f.a(paramString);
    return paramString;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\base\b\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
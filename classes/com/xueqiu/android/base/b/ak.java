package com.xueqiu.android.base.b;

import com.android.volley.o;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.google.gson.reflect.TypeToken;
import com.xueqiu.android.base.util.au;
import com.xueqiu.android.common.model.BaseGroupInfo;
import com.xueqiu.android.common.model.PagedGroup;
import com.xueqiu.android.common.model.RequestResult;
import com.xueqiu.android.common.model.SNBJSONObject;
import com.xueqiu.android.common.model.parser.GParser;
import com.xueqiu.android.common.model.parser.GroupParser;
import com.xueqiu.android.common.model.parser.PagedGroupParser;
import com.xueqiu.android.common.model.parser.Parser;
import com.xueqiu.android.common.model.parser.PortFolioParser;
import com.xueqiu.android.common.model.parser.SNBJsonObjectPaser;
import com.xueqiu.android.common.model.parser.StockParser;
import com.xueqiu.android.community.model.SimpleFund;
import com.xueqiu.android.cube.model.NavDailyList;
import com.xueqiu.android.stock.model.AHStockQuote;
import com.xueqiu.android.stock.model.F10Page;
import com.xueqiu.android.stock.model.FundType;
import com.xueqiu.android.stock.model.IndustryInStock;
import com.xueqiu.android.stock.model.OldPortFolio;
import com.xueqiu.android.stock.model.Portfolio;
import com.xueqiu.android.stock.model.PortfolioStock;
import com.xueqiu.android.stock.model.Stock;
import com.xueqiu.android.stock.model.StockOption;
import com.xueqiu.android.stock.model.StockQuote;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.apache.http.message.BasicNameValuePair;
import org.json.JSONArray;
import org.json.JSONObject;

public final class ak
  extends a
{
  public static final String[] g = { "封闭式基金", "传统封闭式基金", "ETF", "LOF", "分级基金", "货币式基金" };
  public static final String[] h = { "可转债", "国债", "企债", "回购" };
  public static final String[] i = { "比特币(CNY)", "比特币(USD)", "比特币(EUR)", "比特币(GBP)", "比特币(JPY)", "比特币(AUD)" };
  
  public ak(ae paramae)
  {
    this.f = paramae;
  }
  
  private static String a(int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (String str = a.b("/stock/rank", false);; str = a.a("/stock/rank", false)) {
      return str + new StringBuilder("?type=").append(paramInt1).toString() + new StringBuilder("&size=").append(paramInt2).toString() + new StringBuilder("&page=").append(paramInt3).toString();
    }
  }
  
  private static String a(String paramString1, String paramString2, String paramString3)
  {
    return a(paramString1, paramString2, paramString3, 5, 1, true);
  }
  
  private static String a(String paramString1, String paramString2, String paramString3, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (Object localObject = a.b("/stock/cata/stocklist", false);; localObject = a.a("/stock/cata/stocklist", false))
    {
      localObject = new StringBuilder((String)localObject);
      ((StringBuilder)localObject).append("?type=" + paramString1).append("&orderby=" + paramString3).append("&order=" + paramString2).append("&size=" + paramInt1).append("&page=" + paramInt2);
      return ((StringBuilder)localObject).toString();
    }
  }
  
  private static String a(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, int paramInt)
  {
    return a(paramString1, paramString2, paramString3, paramString4, paramString5, paramInt, 1, true);
  }
  
  private static String a(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (Object localObject = a.b("/stock/cata/stocklist", false);; localObject = a.a("/stock/cata/stocklist", false))
    {
      localObject = new StringBuilder((String)localObject);
      ((StringBuilder)localObject).append("?exchange=" + paramString1).append("&industry=" + paramString3).append("&plate=" + paramString2).append("&orderby=" + paramString5).append("&order=" + paramString4).append("&size=" + paramInt1).append("&page=" + paramInt2);
      return ((StringBuilder)localObject).toString();
    }
  }
  
  private static String a(String paramString1, String paramString2, String paramString3, String[] paramArrayOfString)
  {
    return a(paramString1, paramString2, paramString3, paramArrayOfString, 5, 1, true);
  }
  
  private static String a(String paramString1, String paramString2, String paramString3, String[] paramArrayOfString, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (String str = a.b("/stock/quote_order", false);; str = a.a("/stock/quote_order", false))
    {
      paramString1 = new StringBuilder(str).append("?stockType=" + paramString1).append("&orderBy=" + paramString2).append("&order=" + paramString3).append("&size=" + paramInt1).append("&page=" + paramInt2);
      if ((paramArrayOfString == null) || (paramArrayOfString.length <= 0)) {
        break label210;
      }
      paramString1.append("&column=");
      paramInt2 = paramArrayOfString.length;
      paramInt1 = 0;
      while (paramInt1 < paramInt2)
      {
        paramString2 = paramArrayOfString[paramInt1];
        paramString1.append(paramString2 + ",");
        paramInt1 += 1;
      }
    }
    paramString1.deleteCharAt(paramString1.lastIndexOf(","));
    label210:
    return paramString1.toString();
  }
  
  private static String a(String paramString1, String paramString2, String[] paramArrayOfString, String paramString3, String paramString4)
  {
    return a(paramString1, paramString2, paramArrayOfString, paramString3, paramString4, 1, 5, true);
  }
  
  private static String a(String paramString1, String paramString2, String[] paramArrayOfString, String paramString3, String paramString4, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (String str = a.b("/preipo/query", false);; str = a.a("/preipo/query", false))
    {
      paramString1 = new StringBuilder(str).append("?stockType=" + paramString1).append("&orderBy=" + paramString4).append("&type=" + paramString2).append("&order=" + paramString3).append("&size=" + paramInt2).append("&page=" + paramInt1);
      if ((paramArrayOfString == null) || (paramArrayOfString.length <= 0)) {
        break label230;
      }
      paramString1.append("&column=");
      paramInt2 = paramArrayOfString.length;
      paramInt1 = 0;
      while (paramInt1 < paramInt2)
      {
        paramString2 = paramArrayOfString[paramInt1];
        paramString1.append(paramString2 + ",");
        paramInt1 += 1;
      }
    }
    paramString1.deleteCharAt(paramString1.lastIndexOf(","));
    label230:
    return paramString1.toString();
  }
  
  private static String b(String paramString1, String paramString2)
  {
    return a.b("/private_fund/performance/query", false) + new StringBuilder("?orderby=").append(paramString2).toString() + new StringBuilder("&order=").append(paramString1).toString() + "&size=5&page=1";
  }
  
  public final x<ArrayList<OldPortFolio>> a(int paramInt1, int paramInt2, int paramInt3, String paramString1, String paramString2, p<ArrayList<OldPortFolio>> paramp)
  {
    BasicNameValuePair localBasicNameValuePair1 = new BasicNameValuePair("type", String.valueOf(paramInt2));
    BasicNameValuePair localBasicNameValuePair2 = new BasicNameValuePair("size", "60");
    BasicNameValuePair localBasicNameValuePair3 = new BasicNameValuePair("page", String.valueOf(paramInt3));
    paramString1 = new BasicNameValuePair("orderBy", String.valueOf(paramString1));
    paramString2 = new BasicNameValuePair("order", paramString2);
    BasicNameValuePair localBasicNameValuePair4 = new BasicNameValuePair("parent_type", String.valueOf(paramInt1));
    String str = a.a("/fund/quote/list", false);
    Parser local11 = new Parser()
    {
      public final Object parse(JSONObject paramAnonymousJSONObject)
      {
        return new GroupParser(new PortFolioParser()).parse(paramAnonymousJSONObject.getJSONArray("stocks"));
      }
      
      public final ArrayList parse(JSONArray paramAnonymousJSONArray)
      {
        return null;
      }
    };
    paramString1 = x.a(str, new BasicNameValuePair[] { localBasicNameValuePair1, localBasicNameValuePair2, localBasicNameValuePair3, paramString1, paramString2, localBasicNameValuePair4 }, paramp, local11);
    this.f.a(paramString1);
    return null;
  }
  
  public final x<ArrayList<IndustryInStock>> a(int paramInt1, int paramInt2, String paramString, r paramr, p<ArrayList<IndustryInStock>> paramp)
  {
    BasicNameValuePair localBasicNameValuePair1 = new BasicNameValuePair("page", String.valueOf(paramInt1));
    BasicNameValuePair localBasicNameValuePair2 = new BasicNameValuePair("size", String.valueOf(paramInt2));
    paramString = new BasicNameValuePair("indClass", paramString);
    GParser localGParser = new GParser("industryList", new TypeToken() {}.getType());
    paramString = x.a(a.a("/stock/industry/list", false), new BasicNameValuePair[] { localBasicNameValuePair1, localBasicNameValuePair2, paramString }, paramp, localGParser);
    if (paramr != null) {
      paramString.a(paramr);
    }
    this.f.a(paramString);
    return null;
  }
  
  public final x<List<FundType>> a(int paramInt, p<List<FundType>> paramp)
  {
    BasicNameValuePair localBasicNameValuePair = new BasicNameValuePair("type", String.valueOf(paramInt));
    GParser localGParser = new GParser(new TypeToken() {}.getType());
    paramp = x.a(a.a("/fund/type/sublist", false), new BasicNameValuePair[] { localBasicNameValuePair }, paramp, localGParser);
    this.f.a(paramp);
    return paramp;
  }
  
  public final x<JSONObject> a(int paramInt1, p<JSONObject> paramp, r paramr, int paramInt2)
  {
    Object localObject2 = new StringBuilder();
    Object localObject1;
    Object localObject3;
    String str1;
    String str2;
    String str3;
    if (paramInt1 == 1) {
      if (paramInt2 == 1)
      {
        localObject1 = a(12, 5, 1, true) + "&request_method=get";
        localObject3 = a(22, 5, 1, true) + "&request_method=get";
        str1 = a("sh_sz", "percent", "desc", new String[] { "symbol", "name", "current", "percent" }) + "&request_method=get";
        str2 = a("sh_sz", "percent", "asc", new String[] { "symbol", "name", "current", "percent" }) + "&request_method=get";
        str3 = a("CN", "雪球", "", "desc", "percent", 5) + "&request_method=get";
        ((StringBuilder)localObject2).append((String)localObject1).append("#47bce5c74f#").append((String)localObject3).append("#47bce5c74f#").append(str1).append("#47bce5c74f#").append(str2).append("#47bce5c74f#").append(str3);
      }
    }
    for (;;)
    {
      localObject1 = new BasicNameValuePair("api", ((StringBuilder)localObject2).toString());
      localObject2 = a.a("/apimerge/result", false);
      localObject3 = new SNBJsonObjectPaser();
      paramp = x.b((String)localObject2, new BasicNameValuePair[] { localObject1 }, paramp, (Parser)localObject3);
      paramp.a(paramr);
      paramp.j = new z();
      this.f.a(paramp);
      return paramp;
      localObject1 = a("sh_sz", "amount", "desc", new String[] { "symbol", "name", "current", "percent", "amount" }, 5, 1, true) + "&request_method=get";
      localObject3 = a("sh_sz", "turnover_rate", "desc", new String[] { "symbol", "name", "current", "percent", "turnover_rate" }, 5, 1, true) + "&request_method=get";
      str1 = a("", "income", new String[] { "symbol", "name", "current", "iss_price" }, "desc", "ipo_date") + "&request_method=get";
      ((StringBuilder)localObject2).append((String)localObject1).append("#47bce5c74f#").append((String)localObject3).append("#47bce5c74f#").append(str1);
      continue;
      if (paramInt1 == 3)
      {
        localObject1 = a(13, 5, 1, true) + "&request_method=get";
        localObject3 = a(23, 5, 1, true) + "&request_method=get";
        str1 = a("hk", "percent", "desc", new String[] { "symbol", "name", "current", "percent" }) + "&request_method=get";
        str2 = a("hk", "percent", "asc", new String[] { "symbol", "name", "current", "percent" }) + "&request_method=get";
        ((StringBuilder)localObject2).append((String)localObject1).append("#47bce5c74f#").append((String)localObject3).append("#47bce5c74f#").append(str1).append("#47bce5c74f#").append(str2);
      }
      else if (paramInt1 == 2)
      {
        if (paramInt2 == 1)
        {
          localObject1 = a("us_china", "percent", "desc", new String[] { "symbol", "name", "current", "percent" }) + "&request_method=get";
          localObject3 = a("us_china", "percent", "asc", new String[] { "symbol", "name", "current", "percent" }) + "&request_method=get";
          str1 = a("us_star", "percent", "desc", new String[] { "symbol", "name", "current", "percent" }) + "&request_method=get";
          str2 = a("us_star", "percent", "asc", new String[] { "symbol", "name", "current", "percent" }) + "&request_method=get";
          str3 = a("US", "ETF", "", "desc", "percent", 5) + "&request_method=get";
          ((StringBuilder)localObject2).append((String)localObject1).append("#47bce5c74f#").append((String)localObject3).append("#47bce5c74f#").append(str1).append("#47bce5c74f#").append(str2).append("#47bce5c74f#").append(str3);
        }
        else
        {
          localObject1 = a(11, 5, 1, true) + "&request_method=get";
          localObject3 = a(21, 5, 1, true) + "&request_method=get";
          str1 = a("us", "ipo_preview", new String[] { "symbol", "company_name", "ipo_date", "price_range" }, "desc", "ipo_date") + "&request_method=get";
          ((StringBuilder)localObject2).append((String)localObject1).append("#47bce5c74f#").append((String)localObject3).append("#47bce5c74f#").append(str1);
        }
      }
      else
      {
        if (paramInt1 == 5)
        {
          paramInt1 = 0;
          label1349:
          if (paramInt1 < h.length)
          {
            localObject1 = h[paramInt1];
            if (paramInt1 != h.length - 1) {
              break label1447;
            }
          }
          label1447:
          for (localObject1 = a("CN", "", (String)localObject1, "asc", "name", 5) + "&request_method=get";; localObject1 = a("CN", "", (String)localObject1, "desc", "percent", 5) + "&request_method=get")
          {
            ((StringBuilder)localObject2).append((String)localObject1);
            if (paramInt1 != h.length - 1) {
              ((StringBuilder)localObject2).append("#47bce5c74f#");
            }
            paramInt1 += 1;
            break label1349;
            break;
          }
        }
        if (paramInt1 == 6)
        {
          paramInt1 = 0;
          while (paramInt1 < i.length)
          {
            localObject1 = i[paramInt1];
            ((StringBuilder)localObject2).append(a("比特币", "", (String)localObject1, "desc", "volume", 50) + "&request_method=get");
            if (paramInt1 != i.length - 1) {
              ((StringBuilder)localObject2).append("#47bce5c74f#");
            }
            paramInt1 += 1;
          }
        }
        else if (paramInt1 == 7)
        {
          localObject1 = a("hgt", "percent", "desc", new String[] { "symbol", "name", "current", "percent" }) + "&request_method=get";
          localObject3 = a("ggt", "percent", "desc", new String[] { "symbol", "name", "current", "percent" }) + "&request_method=get";
          str1 = a.a("/stock/compare_price_ah", false) + "?request_method=get&orderby=price_ratio&order=desc&page=1&size=5";
          ((StringBuilder)localObject2).append((String)localObject1).append("#47bce5c74f#").append((String)localObject3).append("#47bce5c74f#").append(str1);
        }
        else if (paramInt1 == 8)
        {
          localObject1 = b("desc", "growth_rate_month1") + "&request_method=get";
          localObject3 = b("desc", "growth_rate_month3") + "&request_method=get";
          str1 = b("desc", "growth_rate_month6") + "&request_method=get";
          str2 = b("desc", "growth_rate_year") + "&request_method=get";
          ((StringBuilder)localObject2).append((String)localObject1).append("#47bce5c74f#").append((String)localObject3).append("#47bce5c74f#").append(str1).append("#47bce5c74f#").append(str2);
        }
        else if (paramInt1 == 9)
        {
          localObject1 = a("61", "desc", "percent") + "&request_method=get";
          localObject3 = a("61", "asc", "percent") + "&request_method=get";
          str1 = a("62", "desc", "percent") + "&request_method=get";
          str2 = a("62", "asc", "percent") + "&request_method=get";
          ((StringBuilder)localObject2).append((String)localObject1).append("#47bce5c74f#").append((String)localObject3).append("#47bce5c74f#").append(str1).append("#47bce5c74f#").append(str2);
        }
      }
    }
  }
  
  public final x<RequestResult> a(int paramInt, String paramString, Set<String> paramSet, p<RequestResult> paramp)
  {
    BasicNameValuePair localBasicNameValuePair1 = new BasicNameValuePair("category", String.valueOf(paramInt));
    BasicNameValuePair localBasicNameValuePair2 = new BasicNameValuePair("symbol", paramString);
    if (paramSet.size() == 0) {}
    for (paramString = "";; paramString = au.a(paramSet, ","))
    {
      paramString = new BasicNameValuePair("pnames", paramString);
      paramSet = a.a("/stock/portfolio/updstock", true);
      GParser localGParser = new GParser(RequestResult.class);
      paramString = x.b(paramSet, new BasicNameValuePair[] { localBasicNameValuePair1, localBasicNameValuePair2, paramString }, paramp, localGParser);
      this.f.a(paramString);
      return paramString;
    }
  }
  
  public final x<JsonObject> a(int paramInt, List<String> paramList, p<JsonObject> paramp)
  {
    BasicNameValuePair localBasicNameValuePair = new BasicNameValuePair("category", String.valueOf(paramInt));
    paramList = new BasicNameValuePair("pname", au.a(paramList, ","));
    String str = a.a("/stock/portfolio/create", true);
    GParser localGParser = new GParser(JsonObject.class);
    paramList = x.b(str, new BasicNameValuePair[] { localBasicNameValuePair, paramList }, paramp, localGParser);
    this.f.a(paramList);
    return paramList;
  }
  
  public final x<ArrayList<SimpleFund>> a(long paramLong, p<ArrayList<SimpleFund>> paramp)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("user_id", String.valueOf(paramLong));
    paramp = x.a(a.a("/private_fund/manager_rate/query", false), localHashMap, paramp, new GParser(new TypeToken() {}.getType()));
    this.f.a(paramp);
    return paramp;
  }
  
  public final x<List<PortfolioStock>> a(long paramLong, Integer paramInteger, int paramInt1, int paramInt2, p<List<PortfolioStock>> paramp)
  {
    HashMap localHashMap = new HashMap();
    if (paramLong > 0L) {
      localHashMap.put("uid", String.valueOf(paramLong));
    }
    if (paramInteger != null) {
      localHashMap.put("pid", String.valueOf(paramInteger));
    }
    localHashMap.put("category", String.valueOf(paramInt1));
    localHashMap.put("type", String.valueOf(paramInt2));
    localHashMap.put("size", "10000");
    paramInteger = x.a(a.a("/stock/portfolio/stocks", true), localHashMap, paramp, new GParser("stocks", new TypeToken() {}.getType()));
    this.f.a(paramInteger);
    return paramInteger;
  }
  
  public final x<List<Portfolio>> a(long paramLong, String paramString, int paramInt, p<List<Portfolio>> paramp)
  {
    HashMap localHashMap = new HashMap();
    if (paramLong > 0L) {
      localHashMap.put("uid", String.valueOf(paramLong));
    }
    if ((paramString != null) && (paramString.length() > 0)) {
      localHashMap.put("symbol", paramString);
    }
    localHashMap.put("category", String.valueOf(paramInt));
    String str = a.a("/stock/portfolio/list", true);
    if (paramInt == 2) {}
    for (paramString = "portfolios";; paramString = "cubes")
    {
      paramString = x.a(str, localHashMap, paramp, new GParser(paramString, new TypeToken() {}.getType()));
      this.f.a(paramString);
      return paramString;
    }
  }
  
  public final x<ArrayList<Stock>> a(p<ArrayList<Stock>> paramp)
  {
    BasicNameValuePair localBasicNameValuePair1 = new BasicNameValuePair("pid", "-1");
    BasicNameValuePair localBasicNameValuePair2 = new BasicNameValuePair("size", "50");
    BasicNameValuePair localBasicNameValuePair3 = new BasicNameValuePair("page", "1");
    String str = a.a("/stock/portfolio/user_stocks", false);
    Parser local18 = new Parser()
    {
      public final Object parse(JSONObject paramAnonymousJSONObject)
      {
        if ((paramAnonymousJSONObject.has("stocks")) && (paramAnonymousJSONObject.get("stocks") != null)) {
          return new GroupParser(new StockParser()).parse(paramAnonymousJSONObject.getJSONArray("stocks"));
        }
        return null;
      }
      
      public final ArrayList parse(JSONArray paramAnonymousJSONArray)
      {
        return null;
      }
    };
    paramp = x.a(str, new BasicNameValuePair[] { localBasicNameValuePair1, localBasicNameValuePair2, localBasicNameValuePair3 }, paramp, local18);
    this.f.a(paramp);
    return paramp;
  }
  
  public final x<ArrayList<OldPortFolio>> a(p<ArrayList<OldPortFolio>> paramp, int paramInt1, int paramInt2, Parser<ArrayList<OldPortFolio>> paramParser)
  {
    paramp = x.a(a(paramInt1, 60, paramInt2, false), new BasicNameValuePair[0], paramp, paramParser);
    this.f.a(paramp);
    return paramp;
  }
  
  public final x<ArrayList<OldPortFolio>> a(p<ArrayList<OldPortFolio>> paramp, String paramString1, String paramString2, String paramString3, int paramInt, Parser<ArrayList<OldPortFolio>> paramParser)
  {
    paramp = x.a(a(paramString1, paramString2, paramString3, 60, paramInt, false), new BasicNameValuePair[0], paramp, paramParser);
    this.f.a(paramp);
    return paramp;
  }
  
  public final x<ArrayList<OldPortFolio>> a(p<ArrayList<OldPortFolio>> paramp, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, int paramInt1, int paramInt2, Parser<ArrayList<OldPortFolio>> paramParser)
  {
    paramp = x.a(a(paramString1, paramString2, URLEncoder.encode(paramString3), paramString4, paramString5, paramInt1, paramInt2, false), new BasicNameValuePair[0], paramp, paramParser);
    this.f.a(paramp);
    return paramp;
  }
  
  public final x<ArrayList<OldPortFolio>> a(p<ArrayList<OldPortFolio>> paramp, String paramString1, String paramString2, String paramString3, String[] paramArrayOfString, int paramInt, Parser<ArrayList<OldPortFolio>> paramParser)
  {
    paramp = x.a(a(paramString1, paramString2, paramString3, paramArrayOfString, 60, paramInt, false), new BasicNameValuePair[0], paramp, paramParser);
    this.f.a(paramp);
    return paramp;
  }
  
  public final x<ArrayList<OldPortFolio>> a(p<ArrayList<OldPortFolio>> paramp, String paramString1, String paramString2, String[] paramArrayOfString, String paramString3, String paramString4, int paramInt, Parser<ArrayList<OldPortFolio>> paramParser)
  {
    paramp = x.a(a(paramString1, paramString2, paramArrayOfString, paramString3, paramString4, paramInt, 60, false), new BasicNameValuePair[0], paramp, paramParser);
    this.f.a(paramp);
    return paramp;
  }
  
  public final x<ArrayList<Stock>> a(String paramString, int paramInt, long paramLong, p<ArrayList<Stock>> paramp)
  {
    paramString = new BasicNameValuePair("code", paramString);
    BasicNameValuePair localBasicNameValuePair1 = new BasicNameValuePair("size", String.valueOf(paramInt));
    BasicNameValuePair localBasicNameValuePair2 = new BasicNameValuePair("uid", String.valueOf(paramLong));
    PagedGroupParser localPagedGroupParser = new PagedGroupParser(new StockParser(), "stocks");
    paramString = x.a(a.a("/stock/search", false), new BasicNameValuePair[] { paramString, localBasicNameValuePair1, localBasicNameValuePair2 }, paramp, localPagedGroupParser);
    this.f.a(paramString);
    return paramString;
  }
  
  public final x<RequestResult> a(String paramString, int paramInt, p<RequestResult> paramp)
  {
    paramString = new BasicNameValuePair("symbol", paramString);
    BasicNameValuePair localBasicNameValuePair = new BasicNameValuePair("category", String.valueOf(paramInt));
    String str = a.a("/stock/portfolio/addstock", true);
    GParser localGParser = new GParser(RequestResult.class);
    paramString = x.b(str, new BasicNameValuePair[] { paramString, localBasicNameValuePair }, paramp, localGParser);
    this.f.a(paramString);
    return paramString;
  }
  
  public final x<RequestResult> a(String paramString, p<RequestResult> paramp)
  {
    paramString = new BasicNameValuePair("symbol", paramString);
    String str = a.a("/stock/portfolio/delstock", true);
    GParser localGParser = new GParser(RequestResult.class);
    paramString = x.b(str, new BasicNameValuePair[] { paramString }, paramp, localGParser);
    this.f.a(paramString);
    return paramString;
  }
  
  public final x<ArrayList<OldPortFolio>> a(String paramString1, String paramString2, int paramInt, p<ArrayList<OldPortFolio>> paramp)
  {
    paramString1 = new BasicNameValuePair("order", paramString1);
    paramString2 = new BasicNameValuePair("orderby", paramString2);
    BasicNameValuePair localBasicNameValuePair1 = new BasicNameValuePair("page", String.valueOf(paramInt));
    BasicNameValuePair localBasicNameValuePair2 = new BasicNameValuePair("size", "60");
    String str = a.a("/private_fund/performance/query", false);
    Parser local5 = new Parser()
    {
      public final Object parse(JSONObject paramAnonymousJSONObject)
      {
        return new GroupParser(new PortFolioParser()).parse(paramAnonymousJSONObject.getJSONArray("data"));
      }
      
      public final ArrayList parse(JSONArray paramAnonymousJSONArray)
      {
        return null;
      }
    };
    paramString1 = x.a(str, new BasicNameValuePair[] { paramString1, paramString2, localBasicNameValuePair1, localBasicNameValuePair2 }, paramp, local5);
    this.f.a(paramString1);
    return paramString1;
  }
  
  public final x<ArrayList<Stock>> a(String paramString1, String paramString2, long paramLong, p<ArrayList<Stock>> paramp)
  {
    paramString1 = new BasicNameValuePair("code", paramString1);
    paramString2 = new BasicNameValuePair("etype", paramString2);
    BasicNameValuePair localBasicNameValuePair1 = new BasicNameValuePair("size", "10");
    BasicNameValuePair localBasicNameValuePair2 = new BasicNameValuePair("uid", String.valueOf(paramLong));
    PagedGroupParser localPagedGroupParser = new PagedGroupParser(new StockParser(), "stocks");
    paramString1 = x.a(a.a("/tc/snowx/stock/search", false), new BasicNameValuePair[] { paramString1, paramString2, localBasicNameValuePair1, localBasicNameValuePair2 }, paramp, localPagedGroupParser);
    this.f.a(paramString1);
    return paramString1;
  }
  
  public final x<List<NavDailyList>> a(String paramString1, String paramString2, p<List<NavDailyList>> paramp)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("symbol", paramString1);
    localHashMap.put("period", paramString2);
    paramString1 = x.a(a.a("/private_fund/nav_daily/day", false), localHashMap, paramp, new GParser(new TypeToken() {}.getType()));
    this.f.a(paramString1);
    return paramString1;
  }
  
  public final x<ArrayList<StockOption>> a(String paramString1, String paramString2, String paramString3, int paramInt, p<ArrayList<StockOption>> paramp)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("symbol", paramString1);
    localHashMap.put("orderBy", "percent");
    localHashMap.put("order", "desc");
    localHashMap.put("page", String.valueOf(paramInt));
    localHashMap.put("size", "20");
    if (paramString2 != null) {
      localHashMap.put("bond_type", paramString2);
    }
    if (paramString3 != null) {
      localHashMap.put("due_date", paramString3);
    }
    paramString1 = new GParser("data", new TypeToken() {}.getType());
    paramString1 = x.a(a.a("/stock/option/query", false), localHashMap, paramp, paramString1);
    this.f.a(paramString1);
    return paramString1;
  }
  
  public final x<JsonObject> a(String paramString, boolean paramBoolean, p<JsonObject> paramp)
  {
    BasicNameValuePair localBasicNameValuePair1 = new BasicNameValuePair("symbol", paramString);
    BasicNameValuePair localBasicNameValuePair2 = new BasicNameValuePair("page", "1");
    BasicNameValuePair localBasicNameValuePair3 = new BasicNameValuePair("size", "20");
    if (paramBoolean) {}
    for (paramString = "year";; paramString = "")
    {
      paramString = new BasicNameValuePair("type", paramString);
      String str = a.a("/stock/f10/balsheet", false);
      GParser localGParser = new GParser(JsonObject.class);
      paramString = x.a(str, new BasicNameValuePair[] { localBasicNameValuePair1, localBasicNameValuePair2, localBasicNameValuePair3, paramString }, paramp, localGParser);
      paramString.l = o.a;
      this.f.a(paramString);
      return paramString;
    }
  }
  
  public final x<SNBJSONObject> a(List<BaseGroupInfo> paramList, int paramInt, p<SNBJSONObject> paramp)
  {
    Object localObject1 = a.b("/stock/portfolio/remove", true) + "?request_method=post&pids=%s";
    String str = a.b("/stock/portfolio/create", true) + "?request_method=post&pname=%s&category=%d";
    Object localObject2 = a.b("/stock/portfolio/modify", true) + "?request_method=post&pid=%s&pname=%s";
    StringBuilder localStringBuilder1 = new StringBuilder();
    StringBuilder localStringBuilder2 = new StringBuilder();
    StringBuilder localStringBuilder3 = new StringBuilder();
    StringBuilder localStringBuilder4 = new StringBuilder();
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      BaseGroupInfo localBaseGroupInfo = (BaseGroupInfo)paramList.next();
      if (localBaseGroupInfo.mIsDelete) {
        localStringBuilder1.append(localBaseGroupInfo.mId).append(",");
      }
      if (localBaseGroupInfo.mIsAdd) {
        localStringBuilder2.append(localBaseGroupInfo.mName).append(",");
      }
      if (localBaseGroupInfo.mIsUpdate)
      {
        localStringBuilder3.append(localBaseGroupInfo.mId).append(",");
        localStringBuilder4.append(localBaseGroupInfo.mName).append(",");
      }
    }
    paramList = new StringBuilder();
    if (localStringBuilder1.length() > 0) {
      paramList.append(String.format((String)localObject1, new Object[] { localStringBuilder1.substring(0, localStringBuilder1.length() - 1) }));
    }
    if (localStringBuilder2.length() > 0)
    {
      if (localStringBuilder1.length() > 0) {
        paramList.append("#47bce5c74f#");
      }
      paramList.append(String.format(str, new Object[] { localStringBuilder2.substring(0, localStringBuilder2.length() - 1), Integer.valueOf(paramInt) }));
    }
    if (localStringBuilder3.length() > 0)
    {
      if ((localStringBuilder1.length() > 0) || (localStringBuilder2.length() > 0)) {
        paramList.append("#47bce5c74f#");
      }
      paramList.append(String.format((String)localObject2, new Object[] { localStringBuilder3.substring(0, localStringBuilder3.length() - 1), localStringBuilder4.substring(0, localStringBuilder4.length() - 1) }));
    }
    paramList = new BasicNameValuePair("api", paramList.toString());
    localObject1 = new BasicNameValuePair("tasktype", "seq");
    str = a.a("/apimerge/result", false);
    localObject2 = new SNBJsonObjectPaser();
    paramList = x.b(str, new BasicNameValuePair[] { paramList, localObject1 }, paramp, (Parser)localObject2);
    paramList.j = new z();
    this.f.a(paramList);
    return paramList;
  }
  
  public final x<RequestResult> a(List<String> paramList, Integer paramInteger1, Integer paramInteger2, p<RequestResult> paramp)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("stocks", au.a(paramList, ","));
    if (paramInteger1 != null) {
      localHashMap.put("pid", String.valueOf(paramInteger1));
    }
    if (paramInteger2 != null) {
      localHashMap.put("type", String.valueOf(paramInteger2));
    }
    paramList = x.b(a.a("/stock/portfolio/modifystocks", true), localHashMap, paramp, new GParser(RequestResult.class));
    this.f.a(paramList);
    return paramList;
  }
  
  public final x<Map<String, StockQuote>> a(List<String> paramList1, List<String> paramList2, boolean paramBoolean1, boolean paramBoolean2, p<Map<String, StockQuote>> paramp, r paramr)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("code", au.a(paramList1, ","));
    if ((paramList2 != null) && (paramList2.size() > 0)) {
      localHashMap.put("fields", au.a(paramList2, ","));
    }
    if (paramBoolean1)
    {
      paramList1 = "1";
      localHashMap.put("isdelay", paramList1);
      if (!paramBoolean2) {
        break label149;
      }
    }
    label149:
    for (paramList1 = "1";; paramList1 = "0")
    {
      localHashMap.put("return_hasexist", paramList1);
      paramList1 = x.a(a.a("/stock/quote", true), localHashMap, paramp, new Parser()
      {
        public final ArrayList parse(JSONArray paramAnonymousJSONArray)
        {
          return null;
        }
      });
      if (paramr != null) {
        paramList1.a(paramr);
      }
      this.f.a(paramList1);
      return paramList1;
      paramList1 = "0";
      break;
    }
  }
  
  public final x<Map<String, JsonArray>> a(List<String> paramList, boolean paramBoolean, p<Map<String, JsonArray>> paramp)
  {
    if (paramBoolean) {}
    for (Object localObject = "1";; localObject = "0")
    {
      localObject = new BasicNameValuePair("isdelay", (String)localObject);
      paramList = new BasicNameValuePair("code", au.a(paramList, ","));
      String str = a.a("/stock/quotec", true);
      GParser localGParser = new GParser(new TypeToken() {}.getType());
      paramList = x.a(str, new BasicNameValuePair[] { localObject, paramList }, paramp, localGParser);
      this.f.a(paramList);
      return paramList;
    }
  }
  
  public final x<Map<String, List<OldPortFolio>>> a(final int[] paramArrayOfInt, int paramInt, p<Map<String, List<OldPortFolio>>> paramp)
  {
    Object localObject1 = new ArrayList();
    int k = paramArrayOfInt.length;
    int j = 0;
    if (j < k)
    {
      int m = paramArrayOfInt[j];
      localObject2 = new StringBuilder(a.b("/fund/quote/list", false) + "?request_method=get");
      ((StringBuilder)localObject2).append("&size=5");
      ((StringBuilder)localObject2).append("&page=1");
      ((StringBuilder)localObject2).append("&order=desc");
      if (m == 13)
      {
        ((StringBuilder)localObject2).append("&parent_type=13");
        label106:
        if (m != 12) {
          break label193;
        }
        ((StringBuilder)localObject2).append("&orderBy=pe_ttm");
      }
      for (;;)
      {
        ((List)localObject1).add(((StringBuilder)localObject2).toString());
        j += 1;
        break;
        ((StringBuilder)localObject2).append("&parent_type=" + paramInt);
        ((StringBuilder)localObject2).append("&type=" + m);
        break label106;
        label193:
        ((StringBuilder)localObject2).append("&orderBy=percent");
      }
    }
    localObject1 = new BasicNameValuePair("api", au.a((Collection)localObject1, "#47bce5c74f#"));
    Object localObject2 = new BasicNameValuePair("tasktype", "par");
    String str = a.a("/apimerge/result", false);
    paramArrayOfInt = new Parser()
    {
      public final Object parse(JSONObject paramAnonymousJSONObject)
      {
        HashMap localHashMap = new HashMap();
        PagedGroupParser localPagedGroupParser = new PagedGroupParser(new PortFolioParser(), "stocks");
        int i = 0;
        while (i < paramArrayOfInt.length)
        {
          PagedGroup localPagedGroup = localPagedGroupParser.parse(paramAnonymousJSONObject.getJSONObject(String.valueOf(i + 1)).getJSONObject("result"));
          localHashMap.put(String.valueOf(paramArrayOfInt[i]), localPagedGroup);
          i += 1;
        }
        return localHashMap;
      }
      
      public final ArrayList parse(JSONArray paramAnonymousJSONArray)
      {
        return null;
      }
    };
    paramArrayOfInt = x.b(str, new BasicNameValuePair[] { localObject1, localObject2 }, paramp, paramArrayOfInt);
    paramArrayOfInt.j = new z();
    this.f.a(paramArrayOfInt);
    return paramArrayOfInt;
  }
  
  public final x<Map<String, Stock>> a(String[] paramArrayOfString, p<Map<String, Stock>> paramp)
  {
    paramArrayOfString = new BasicNameValuePair("stockid", au.a(paramArrayOfString, ","));
    String str = a.a("/stock/quotep", false);
    Parser local16 = new Parser()
    {
      public final ArrayList parse(JSONArray paramAnonymousJSONArray)
      {
        return null;
      }
    };
    paramArrayOfString = x.a(str, new BasicNameValuePair[] { paramArrayOfString }, paramp, local16);
    this.f.a(paramArrayOfString);
    return paramArrayOfString;
  }
  
  public final x<List<String>> b(p<List<String>> paramp)
  {
    String str = a.a("/stock/portfolio/holdings", false);
    GParser localGParser = new GParser(new TypeToken() {}.getType());
    paramp = x.a(str, new BasicNameValuePair[0], paramp, localGParser);
    this.f.a(paramp);
    return paramp;
  }
  
  public final x<F10Page> b(String paramString, int paramInt, p<F10Page> paramp)
  {
    int j = paramInt;
    if (paramInt > 6) {
      j = 0;
    }
    paramString = new BasicNameValuePair("symbol", paramString);
    String str = a.a(new String[] { "/stock/f10/page/busiinfo.json", "", "/stock/f10/page/finance.json", "/stock/f10/page/trade.json", "/stock/f10/page/sharestruct.json", "/stock/f10/page/shareholder.json" }[j], false);
    GParser localGParser = new GParser("page", F10Page.class);
    paramString = x.a(str, new BasicNameValuePair[] { paramString }, paramp, localGParser);
    paramString.l = o.a;
    this.f.a(paramString);
    return paramString;
  }
  
  public final x<JsonObject> b(String paramString, p<JsonObject> paramp)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("symbol", paramString);
    paramString = new GParser(JsonObject.class);
    paramString = x.a(a.a("/private_fund/income/query", false), localHashMap, paramp, paramString);
    this.f.a(paramString);
    return paramString;
  }
  
  public final x<ArrayList<AHStockQuote>> b(String paramString1, String paramString2, int paramInt, p<ArrayList<AHStockQuote>> paramp)
  {
    paramString1 = new BasicNameValuePair("orderby", paramString1);
    paramString2 = new BasicNameValuePair("order", paramString2);
    BasicNameValuePair localBasicNameValuePair1 = new BasicNameValuePair("page", String.valueOf(paramInt));
    BasicNameValuePair localBasicNameValuePair2 = new BasicNameValuePair("size", "20");
    GParser localGParser = new GParser("data", new TypeToken() {}.getType());
    paramString1 = x.a(a.a("/stock/compare_price_ah", false), new BasicNameValuePair[] { paramString1, paramString2, localBasicNameValuePair1, localBasicNameValuePair2 }, paramp, localGParser);
    this.f.a(paramString1);
    return paramString1;
  }
  
  public final x<ArrayList<Stock>> b(String paramString1, String paramString2, long paramLong, p<ArrayList<Stock>> paramp)
  {
    paramString1 = new BasicNameValuePair("code", paramString1);
    BasicNameValuePair localBasicNameValuePair1 = new BasicNameValuePair("type", "-1");
    paramString2 = new BasicNameValuePair("market", paramString2);
    BasicNameValuePair localBasicNameValuePair2 = new BasicNameValuePair("size", "10");
    BasicNameValuePair localBasicNameValuePair3 = new BasicNameValuePair("uid", String.valueOf(paramLong));
    String str = a.a("/stock/p/search", false);
    Parser local19 = new Parser()
    {
      public final Object parse(JSONObject paramAnonymousJSONObject)
      {
        if ((paramAnonymousJSONObject.has("stocks")) && (paramAnonymousJSONObject.get("stocks") != null)) {
          return new GroupParser(new StockParser()).parse(paramAnonymousJSONObject.getJSONArray("stocks"));
        }
        return null;
      }
      
      public final ArrayList parse(JSONArray paramAnonymousJSONArray)
      {
        return null;
      }
    };
    paramString1 = x.a(str, new BasicNameValuePair[] { paramString1, localBasicNameValuePair1, paramString2, localBasicNameValuePair2, localBasicNameValuePair3 }, paramp, local19);
    this.f.a(paramString1);
    return paramString1;
  }
  
  public final x<JsonObject> b(String paramString1, String paramString2, p<JsonObject> paramp)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("symbol", paramString1);
    localHashMap.put("period", paramString2);
    paramString1 = new GParser(JsonObject.class);
    paramString1 = x.a(a.a("/private_fund/forchart/day", false), localHashMap, paramp, paramString1);
    this.f.a(paramString1);
    return paramString1;
  }
  
  public final x<JsonObject> b(String paramString, boolean paramBoolean, p<JsonObject> paramp)
  {
    BasicNameValuePair localBasicNameValuePair1 = new BasicNameValuePair("symbol", paramString);
    BasicNameValuePair localBasicNameValuePair2 = new BasicNameValuePair("page", "1");
    BasicNameValuePair localBasicNameValuePair3 = new BasicNameValuePair("size", "20");
    if (paramBoolean) {}
    for (paramString = "year";; paramString = "")
    {
      paramString = new BasicNameValuePair("type", paramString);
      String str = a.a("/stock/f10/incstatement", false);
      GParser localGParser = new GParser(JsonObject.class);
      paramString = x.a(str, new BasicNameValuePair[] { localBasicNameValuePair1, localBasicNameValuePair2, localBasicNameValuePair3, paramString }, paramp, localGParser);
      paramString.l = o.a;
      this.f.a(paramString);
      return paramString;
    }
  }
  
  public final x<Map<String, Stock>> b(String[] paramArrayOfString, p<Map<String, Stock>> paramp)
  {
    paramArrayOfString = new BasicNameValuePair("stockid", au.a(paramArrayOfString, ","));
    String str = a.a("/stock/quotep", false);
    Parser local17 = new Parser()
    {
      public final ArrayList parse(JSONArray paramAnonymousJSONArray)
      {
        return null;
      }
    };
    paramArrayOfString = x.a(str, new BasicNameValuePair[] { paramArrayOfString }, paramp, local17);
    this.f.a(paramArrayOfString);
    return paramArrayOfString;
  }
  
  public final x<JsonArray> c(p<JsonArray> paramp)
  {
    String str = a.a("/stock/transgroup/list", false);
    GParser localGParser = new GParser(JsonArray.class);
    paramp = x.a(str, new BasicNameValuePair[0], paramp, localGParser);
    this.f.a(paramp);
    return paramp;
  }
  
  public final x<JsonArray> c(String paramString, p<JsonArray> paramp)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("symbol", String.valueOf(paramString));
    paramString = new GParser(JsonArray.class);
    paramString = x.a(a.a("/private_fund/mananger_list", false), localHashMap, paramp, paramString);
    this.f.a(paramString);
    return paramString;
  }
  
  public final x<ArrayList<OldPortFolio>> c(String paramString1, String paramString2, p<ArrayList<OldPortFolio>> paramp)
  {
    paramString1 = new BasicNameValuePair("indCode", paramString1);
    paramString2 = new BasicNameValuePair("indClass", paramString2);
    PagedGroupParser localPagedGroupParser = new PagedGroupParser(new PortFolioParser(), "quoteCoreList");
    paramString1 = x.a(a.a("/stock/industry/list_stock_by_ind_code", false), new BasicNameValuePair[] { paramString1, paramString2 }, paramp, localPagedGroupParser);
    this.f.a(paramString1);
    return null;
  }
  
  public final x<JsonObject> c(String paramString, boolean paramBoolean, p<JsonObject> paramp)
  {
    BasicNameValuePair localBasicNameValuePair1 = new BasicNameValuePair("symbol", paramString);
    BasicNameValuePair localBasicNameValuePair2 = new BasicNameValuePair("page", "1");
    BasicNameValuePair localBasicNameValuePair3 = new BasicNameValuePair("size", "20");
    if (paramBoolean) {}
    for (paramString = "year";; paramString = "")
    {
      paramString = new BasicNameValuePair("type", paramString);
      String str = a.a("/stock/f10/cfstatement", false);
      GParser localGParser = new GParser(JsonObject.class);
      paramString = x.a(str, new BasicNameValuePair[] { localBasicNameValuePair1, localBasicNameValuePair2, localBasicNameValuePair3, paramString }, paramp, localGParser);
      paramString.l = o.a;
      this.f.a(paramString);
      return paramString;
    }
  }
  
  public final x<RequestResult> c(String[] paramArrayOfString, p<RequestResult> paramp)
  {
    paramArrayOfString = new BasicNameValuePair("code", au.a(paramArrayOfString, ","));
    String str = a.a("/stock/portfolio/addstocks", false);
    GParser localGParser = new GParser(RequestResult.class);
    paramArrayOfString = x.b(str, new BasicNameValuePair[] { paramArrayOfString }, paramp, localGParser);
    this.f.a(paramArrayOfString);
    return paramArrayOfString;
  }
  
  public final x<JSONObject> d(String paramString, p<JSONObject> paramp)
  {
    paramString = new BasicNameValuePair("code", paramString);
    Parser local9 = new Parser()
    {
      public final ArrayList parse(JSONArray paramAnonymousJSONArray)
      {
        return null;
      }
    };
    paramString = x.a(a.a("/stock/profilenew", false), new BasicNameValuePair[] { paramString }, paramp, local9);
    this.f.a(paramString);
    return paramString;
  }
  
  public final x<JsonObject> d(String paramString1, String paramString2, p<JsonObject> paramp)
  {
    paramString1 = new BasicNameValuePair("symbol", paramString1);
    paramString2 = new BasicNameValuePair("group_id", paramString2);
    String str = a.a("/stock/transfund/remove", false);
    GParser localGParser = new GParser(JsonObject.class);
    paramString1 = x.b(str, new BasicNameValuePair[] { paramString1, paramString2 }, paramp, localGParser);
    paramString1.l = o.a;
    this.f.a(paramString1);
    return paramString1;
  }
  
  public final x<JSONObject> e(String paramString, p<JSONObject> paramp)
  {
    paramString = new BasicNameValuePair("symbol", paramString);
    String str = a.a("/stock/externallinks", false);
    SNBJsonObjectPaser localSNBJsonObjectPaser = new SNBJsonObjectPaser();
    paramString = x.a(str, new BasicNameValuePair[] { paramString }, paramp, localSNBJsonObjectPaser);
    this.f.a(paramString);
    return paramString;
  }
  
  public final x<JsonObject> e(String paramString1, String paramString2, p<JsonObject> paramp)
  {
    paramString1 = new BasicNameValuePair("symbol", paramString1);
    paramString2 = new BasicNameValuePair("group_id", paramString2);
    String str = a.a("/stock/portfolio/deltrans", false);
    GParser localGParser = new GParser(JsonObject.class);
    paramString1 = x.b(str, new BasicNameValuePair[] { paramString1, paramString2 }, paramp, localGParser);
    paramString1.l = o.a;
    this.f.a(paramString1);
    return paramString1;
  }
  
  public final x<JsonArray> f(String paramString, p<JsonArray> paramp)
  {
    paramString = new BasicNameValuePair("group_id", paramString);
    BasicNameValuePair localBasicNameValuePair1 = new BasicNameValuePair("size", "100");
    BasicNameValuePair localBasicNameValuePair2 = new BasicNameValuePair("page", "1");
    BasicNameValuePair localBasicNameValuePair3 = new BasicNameValuePair("showshort", "0");
    BasicNameValuePair localBasicNameValuePair4 = new BasicNameValuePair("includeTotal", "1");
    String str = a.a("/stock/portfolio/performances", false);
    GParser localGParser = new GParser(JsonArray.class);
    paramString = x.a(str, new BasicNameValuePair[] { paramString, localBasicNameValuePair1, localBasicNameValuePair2, localBasicNameValuePair3, localBasicNameValuePair4 }, paramp, localGParser);
    paramString.l = o.a;
    this.f.a(paramString);
    return paramString;
  }
  
  public final x<AHStockQuote> f(String paramString1, String paramString2, p<AHStockQuote> paramp)
  {
    paramString1 = new BasicNameValuePair("symbol_cn", paramString1);
    paramString2 = new BasicNameValuePair("symbol_hk", paramString2);
    String str = a.a("/stock/get_price_ratio_ah", false);
    GParser localGParser = new GParser("priceRatioCNHK", AHStockQuote.class);
    paramString1 = x.a(str, new BasicNameValuePair[] { paramString1, paramString2 }, paramp, localGParser);
    paramString1.l = o.a;
    this.f.a(paramString1);
    return paramString1;
  }
  
  public final x<JsonObject> g(String paramString, p<JsonObject> paramp)
  {
    paramString = new BasicNameValuePair("symbol", paramString);
    String str = a.a("/stock/f10/bizunittrdinfo", false);
    GParser localGParser = new GParser(JsonObject.class);
    paramString = x.a(str, new BasicNameValuePair[] { paramString }, paramp, localGParser);
    paramString.l = o.a;
    this.f.a(paramString);
    return paramString;
  }
  
  public final x<JsonObject> g(String paramString1, String paramString2, p<JsonObject> paramp)
  {
    paramString1 = new BasicNameValuePair("symbol", paramString1);
    paramString2 = new BasicNameValuePair("date", paramString2);
    String str = a.a("/stock/f10/bizunittrdinfo", false);
    GParser localGParser = new GParser(JsonObject.class);
    paramString1 = x.a(str, new BasicNameValuePair[] { paramString1, paramString2 }, paramp, localGParser);
    paramString1.l = o.a;
    this.f.a(paramString1);
    return paramString1;
  }
  
  public final x<JsonObject> h(String paramString, p<JsonObject> paramp)
  {
    paramString = new BasicNameValuePair("symbol", paramString);
    BasicNameValuePair localBasicNameValuePair1 = new BasicNameValuePair("page", "1");
    BasicNameValuePair localBasicNameValuePair2 = new BasicNameValuePair("size", "30");
    String str = a.a("/stock/f10/finmrgninfo", false);
    GParser localGParser = new GParser(JsonObject.class);
    paramString = x.a(str, new BasicNameValuePair[] { paramString, localBasicNameValuePair1, localBasicNameValuePair2 }, paramp, localGParser);
    paramString.l = o.a;
    this.f.a(paramString);
    return paramString;
  }
  
  public final x<JsonObject> h(String paramString1, String paramString2, p<JsonObject> paramp)
  {
    paramString1 = new BasicNameValuePair("symbol", paramString1);
    paramString2 = new BasicNameValuePair("level1code", paramString2);
    String str = a.a("/stock/f10/finmainindexbyindustry", false);
    GParser localGParser = new GParser(JsonObject.class);
    paramString1 = x.a(str, new BasicNameValuePair[] { paramString1, paramString2 }, paramp, localGParser);
    paramString1.l = o.a;
    this.f.a(paramString1);
    return paramString1;
  }
  
  public final x<JsonObject> i(String paramString, p<JsonObject> paramp)
  {
    paramString = new BasicNameValuePair("symbol", paramString);
    BasicNameValuePair localBasicNameValuePair = new BasicNameValuePair("indClass", "SW2014");
    String str = a.a("/stock/industry/list_stock_industry", false);
    GParser localGParser = new GParser(JsonObject.class);
    paramString = x.a(str, new BasicNameValuePair[] { paramString, localBasicNameValuePair }, paramp, localGParser);
    paramString.l = o.a;
    this.f.a(paramString);
    return paramString;
  }
  
  public final x<JsonObject> j(String paramString, p<JsonObject> paramp)
  {
    paramString = new BasicNameValuePair("symbol", paramString);
    String str = a.a("/stock/pankou", false);
    GParser localGParser = new GParser(JsonObject.class);
    paramString = x.a(str, new BasicNameValuePair[] { paramString }, paramp, localGParser);
    paramString.j = new y(5000);
    this.f.a(paramString);
    return paramString;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\base\b\ak.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
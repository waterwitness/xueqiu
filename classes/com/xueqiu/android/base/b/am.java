package com.xueqiu.android.base.b;

import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.google.gson.reflect.TypeToken;
import com.xueqiu.android.base.util.au;
import com.xueqiu.android.common.model.parser.GParser;
import com.xueqiu.android.common.model.parser.InTradeParser;
import com.xueqiu.android.community.model.UserNotification;
import com.xueqiu.android.trade.g;
import com.xueqiu.android.trade.model.AccountFundIncomeInfo;
import com.xueqiu.android.trade.model.AccountFundInfo;
import com.xueqiu.android.trade.model.OrderCondition;
import com.xueqiu.android.trade.model.OrderSheet;
import com.xueqiu.android.trade.model.TradeFee;
import com.xueqiu.android.trade.model.TradeNotification;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.apache.http.message.BasicNameValuePair;

public final class am
  extends a
{
  public am(ae paramae)
  {
    this.f = paramae;
  }
  
  public final x<Boolean> a(int paramInt, p<Boolean> paramp)
  {
    BasicNameValuePair localBasicNameValuePair = new BasicNameValuePair("access_token_expires", String.valueOf(paramInt));
    InTradeParser localInTradeParser = new InTradeParser(Boolean.class);
    paramp = x.b(a.a("/tc/snowx/accesstoken/expires/set", false), new BasicNameValuePair[] { localBasicNameValuePair }, paramp, localInTradeParser);
    this.f.a(paramp);
    return paramp;
  }
  
  public final x<ArrayList<TradeNotification>> a(long paramLong, p<ArrayList<TradeNotification>> paramp)
  {
    HashMap localHashMap = new HashMap();
    if (paramLong > 0L) {
      localHashMap.put("max_id", String.valueOf(paramLong));
    }
    localHashMap.put("limit", "20");
    InTradeParser localInTradeParser = new InTradeParser(new TypeToken() {}.getType());
    paramp = x.a(a.a("/tc/snowx/notify/recent/list", false), localHashMap, paramp, localInTradeParser);
    this.f.a(paramp);
    return paramp;
  }
  
  public final x<JsonObject> a(p<JsonObject> paramp)
  {
    InTradeParser localInTradeParser = new InTradeParser(JsonObject.class);
    paramp = x.a(a.a("/tc/snowx/securities/exchange", false), new BasicNameValuePair[0], paramp, localInTradeParser);
    this.f.a(paramp);
    return paramp;
  }
  
  public final x<TradeFee> a(String paramString1, double paramDouble1, double paramDouble2, String paramString2, String paramString3, p<TradeFee> paramp)
  {
    InTradeParser localInTradeParser = new InTradeParser(TradeFee.class);
    BasicNameValuePair localBasicNameValuePair1 = new BasicNameValuePair("tid", paramString1);
    BasicNameValuePair localBasicNameValuePair2 = new BasicNameValuePair("price", String.valueOf(paramDouble1));
    BasicNameValuePair localBasicNameValuePair3 = new BasicNameValuePair("amount", String.valueOf(paramDouble2));
    paramString2 = new BasicNameValuePair("action", paramString2);
    paramString3 = new BasicNameValuePair("symbol", paramString3);
    paramString1 = x.a(a("/tc/snowx/trade/fee/query", paramString1), new BasicNameValuePair[] { localBasicNameValuePair1, localBasicNameValuePair2, localBasicNameValuePair3, paramString2, paramString3 }, paramp, localInTradeParser);
    this.f.a(paramString1);
    return paramString1;
  }
  
  public final x<JsonObject> a(String paramString, double paramDouble, p<JsonObject> paramp)
  {
    InTradeParser localInTradeParser = new InTradeParser(JsonObject.class);
    paramString = new BasicNameValuePair("tid", paramString);
    BasicNameValuePair localBasicNameValuePair = new BasicNameValuePair("commission", String.valueOf(paramDouble));
    paramString = x.a(a.a("/tc/snowx/reward/best/query", false), new BasicNameValuePair[] { paramString, localBasicNameValuePair }, paramp, localInTradeParser);
    this.f.a(paramString);
    return paramString;
  }
  
  public final x<JsonObject> a(String paramString, p<JsonObject> paramp)
  {
    InTradeParser localInTradeParser = new InTradeParser(JsonObject.class);
    paramString = x.a(paramString, new BasicNameValuePair[0], paramp, localInTradeParser);
    this.f.a(paramString);
    return paramString;
  }
  
  public final x<List<AccountFundInfo>> a(String paramString1, String paramString2, p<List<AccountFundInfo>> paramp)
  {
    paramString1 = new BasicNameValuePair("aid", paramString1);
    BasicNameValuePair localBasicNameValuePair = new BasicNameValuePair("tid", paramString2);
    InTradeParser localInTradeParser = new InTradeParser(new TypeToken() {}.getType());
    paramString1 = x.a(a("/tc/snowx/fund/query", paramString2), new BasicNameValuePair[] { paramString1, localBasicNameValuePair }, paramp, localInTradeParser);
    this.f.a(paramString1);
    return paramString1;
  }
  
  public final x<JsonObject> a(String paramString1, String paramString2, String paramString3, p<JsonObject> paramp)
  {
    paramString1 = new BasicNameValuePair("aid", paramString1);
    BasicNameValuePair localBasicNameValuePair1 = new BasicNameValuePair("tid", paramString2);
    paramString3 = new BasicNameValuePair("pos", paramString3);
    BasicNameValuePair localBasicNameValuePair2 = new BasicNameValuePair("row", "20");
    GParser localGParser = new GParser(JsonObject.class);
    paramString1 = x.a(a("/tc/snowx/order/list", paramString2), new BasicNameValuePair[] { paramString1, localBasicNameValuePair1, paramString3, localBasicNameValuePair2 }, paramp, localGParser);
    this.f.a(paramString1);
    return paramString1;
  }
  
  public final x<JsonObject> a(String paramString1, String paramString2, String paramString3, String paramString4, p<JsonObject> paramp)
  {
    InTradeParser localInTradeParser = new InTradeParser("result_data", JsonObject.class);
    paramString1 = new BasicNameValuePair("reward_owner_id", paramString1);
    BasicNameValuePair localBasicNameValuePair = new BasicNameValuePair("tid", paramString2);
    paramString3 = new BasicNameValuePair("aid", paramString3);
    paramString4 = new BasicNameValuePair("oid", paramString4);
    paramString1 = x.b(a("/tc/snowx/reward/lock", paramString2), new BasicNameValuePair[] { paramString1, localBasicNameValuePair, paramString3, paramString4 }, paramp, localInTradeParser);
    this.f.a(paramString1);
    return paramString1;
  }
  
  public final x<ArrayList<OrderCondition>> a(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, double paramDouble, String paramString6, p<ArrayList<OrderCondition>> paramp)
  {
    InTradeParser localInTradeParser = new InTradeParser(new TypeToken() {}.getType());
    paramString1 = new BasicNameValuePair("etype", paramString1);
    BasicNameValuePair localBasicNameValuePair1 = new BasicNameValuePair("tid", paramString2);
    paramString3 = new BasicNameValuePair("aid", paramString3);
    paramString5 = new BasicNameValuePair("scode", paramString5);
    paramString4 = new BasicNameValuePair("action", paramString4);
    BasicNameValuePair localBasicNameValuePair2 = new BasicNameValuePair("price", String.valueOf(paramDouble));
    paramString6 = new BasicNameValuePair("otype", paramString6);
    paramString1 = x.a(a("/tc/snowx/order/terms/query", paramString2), new BasicNameValuePair[] { paramString1, localBasicNameValuePair1, paramString3, paramString5, paramString4, localBasicNameValuePair2, paramString6 }, paramp, localInTradeParser);
    this.f.a(paramString1);
    return paramString1;
  }
  
  public final x<JsonArray> a(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, p<JsonArray> paramp)
  {
    paramString1 = new BasicNameValuePair("aid", paramString1);
    paramString2 = new BasicNameValuePair("oid", paramString2);
    BasicNameValuePair localBasicNameValuePair = new BasicNameValuePair("tid", paramString3);
    paramString5 = new BasicNameValuePair("etype", paramString5);
    paramString4 = new BasicNameValuePair("write_access_token", paramString4);
    InTradeParser localInTradeParser = new InTradeParser(JsonObject.class);
    paramString1 = x.b(a("/tc/snowx/order/cancel", paramString3), new BasicNameValuePair[] { paramString1, paramString2, localBasicNameValuePair, paramString5, paramString4 }, paramp, localInTradeParser);
    this.f.a(paramString1);
    return paramString1;
  }
  
  public final x<List<OrderSheet>> a(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, double paramDouble1, double paramDouble2, String paramString7, String paramString8, p<List<OrderSheet>> paramp)
  {
    InTradeParser localInTradeParser = new InTradeParser(new TypeToken() {}.getType());
    BasicNameValuePair localBasicNameValuePair1 = new BasicNameValuePair("tid", paramString1);
    paramString2 = new BasicNameValuePair("aid", paramString2);
    paramString3 = new BasicNameValuePair("action", paramString3);
    paramString4 = new BasicNameValuePair("scode", paramString4);
    paramString5 = new BasicNameValuePair("otype", paramString5);
    paramString6 = new BasicNameValuePair("oprop", paramString6);
    BasicNameValuePair localBasicNameValuePair2 = new BasicNameValuePair("price", String.valueOf(paramDouble1));
    BasicNameValuePair localBasicNameValuePair3 = new BasicNameValuePair("amount", String.valueOf(paramDouble2));
    paramString7 = new BasicNameValuePair("write_access_token", paramString7);
    paramString8 = new BasicNameValuePair("etype", paramString8);
    paramString1 = x.b(a("/tc/snowx/order/place", paramString1), new BasicNameValuePair[] { localBasicNameValuePair1, paramString2, paramString3, paramString4, paramString5, paramString6, localBasicNameValuePair2, localBasicNameValuePair3, paramString7, paramString8 }, paramp, localInTradeParser);
    this.f.a(paramString1);
    return paramString1;
  }
  
  public final x<JsonObject> a(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, Map<String, String> paramMap, p<JsonObject> paramp)
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = paramMap.keySet().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      localArrayList.add(new BasicNameValuePair(str, (String)paramMap.get(str)));
    }
    localArrayList.add(new BasicNameValuePair("fund_account", paramString2));
    localArrayList.add(new BasicNameValuePair("account_password_encrypted", g.a(paramString3)));
    localArrayList.add(new BasicNameValuePair("code", paramString4));
    localArrayList.add(new BasicNameValuePair("content_hash", paramString5));
    paramString2 = new InTradeParser(JsonObject.class);
    paramString1 = x.b(paramString1, (BasicNameValuePair[])localArrayList.toArray(new BasicNameValuePair[0]), paramp, paramString2);
    this.f.a(paramString1);
    return paramString1;
  }
  
  public final x<JsonObject> a(String paramString1, String paramString2, boolean paramBoolean, p<JsonObject> paramp)
  {
    BasicNameValuePair localBasicNameValuePair1 = new BasicNameValuePair("tid", paramString1);
    paramString2 = new BasicNameValuePair("auth_code", paramString2);
    BasicNameValuePair localBasicNameValuePair2 = new BasicNameValuePair("renew", String.valueOf(paramBoolean));
    InTradeParser localInTradeParser = new InTradeParser(JsonObject.class);
    paramString1 = x.b(a("/tc/snowx/bind", paramString1), new BasicNameValuePair[] { localBasicNameValuePair1, paramString2, localBasicNameValuePair2 }, paramp, localInTradeParser);
    this.f.a(paramString1);
    return paramString1;
  }
  
  public final x<List<OrderSheet>> a(String paramString, Map<String, String> paramMap, p<List<OrderSheet>> paramp)
  {
    InTradeParser localInTradeParser = new InTradeParser(new TypeToken() {}.getType());
    paramString = x.b(a.a(paramString, false), paramMap, paramp, localInTradeParser);
    this.f.a(paramString);
    return paramString;
  }
  
  public final x<HashMap<String, String>> a(String[] paramArrayOfString, p<HashMap<String, String>> paramp)
  {
    InTradeParser localInTradeParser = new InTradeParser(new TypeToken() {}.getType());
    paramArrayOfString = au.a(paramArrayOfString, ",");
    HashMap localHashMap = new HashMap();
    localHashMap.put("keys", paramArrayOfString);
    paramArrayOfString = x.a(a.a("/tc/snowx/trade/setting/query", false), localHashMap, paramp, localInTradeParser);
    this.f.a(paramArrayOfString);
    return paramArrayOfString;
  }
  
  public final x<Integer> b(p<Integer> paramp)
  {
    InTradeParser localInTradeParser = new InTradeParser("accessTokenExpires", Integer.class);
    paramp = x.a(a.a("/tc/snowx/accesstoken/expires/query", false), new BasicNameValuePair[0], paramp, localInTradeParser);
    this.f.a(paramp);
    return paramp;
  }
  
  public final x<JsonObject> b(String paramString1, String paramString2, p<JsonObject> paramp)
  {
    paramString1 = new BasicNameValuePair("aid", paramString1);
    BasicNameValuePair localBasicNameValuePair = new BasicNameValuePair("tid", paramString2);
    GParser localGParser = new GParser(JsonObject.class);
    paramString1 = x.a(a("/tc/snowx/position/list", paramString2), new BasicNameValuePair[] { paramString1, localBasicNameValuePair }, paramp, localGParser);
    this.f.a(paramString1);
    return paramString1;
  }
  
  public final x<JsonObject> b(String paramString1, String paramString2, String paramString3, p<JsonObject> paramp)
  {
    paramString1 = new BasicNameValuePair("aid", paramString1);
    BasicNameValuePair localBasicNameValuePair1 = new BasicNameValuePair("tid", paramString2);
    paramString3 = new BasicNameValuePair("pos", paramString3);
    BasicNameValuePair localBasicNameValuePair2 = new BasicNameValuePair("row", "20");
    GParser localGParser = new GParser(JsonObject.class);
    paramString1 = x.a(a("/tc/snowx/transaction/list_history", paramString2), new BasicNameValuePair[] { paramString1, localBasicNameValuePair1, paramString3, localBasicNameValuePair2 }, paramp, localGParser);
    this.f.a(paramString1);
    return paramString1;
  }
  
  public final x<JsonArray> b(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, p<JsonArray> paramp)
  {
    BasicNameValuePair localBasicNameValuePair = new BasicNameValuePair("tid", paramString1);
    paramString2 = new BasicNameValuePair("aid", paramString2);
    paramString3 = new BasicNameValuePair("writeToken", paramString3);
    paramString4 = new BasicNameValuePair("source", paramString4);
    paramString5 = new BasicNameValuePair("data", paramString5);
    InTradeParser localInTradeParser = new InTradeParser(JsonArray.class);
    paramString1 = x.b(a("/tc/snowx/order/placebatch", paramString1), new BasicNameValuePair[] { localBasicNameValuePair, paramString2, paramString3, paramString4, paramString5 }, paramp, localInTradeParser);
    this.f.a(paramString1);
    return paramString1;
  }
  
  public final x<JsonObject> b(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, Map<String, String> paramMap, p<JsonObject> paramp)
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = paramMap.keySet().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      localArrayList.add(new BasicNameValuePair(str, (String)paramMap.get(str)));
    }
    if (paramString2 != null) {
      localArrayList.add(new BasicNameValuePair("pin_encrypted", g.a(paramString2)));
    }
    for (;;)
    {
      localArrayList.add(new BasicNameValuePair("code", paramString4));
      localArrayList.add(new BasicNameValuePair("content_hash", paramString5));
      paramString2 = new InTradeParser(JsonObject.class);
      paramString1 = x.b(paramString1, (BasicNameValuePair[])localArrayList.toArray(new BasicNameValuePair[0]), paramp, paramString2);
      this.f.a(paramString1);
      return paramString1;
      if (paramString3 != null) {
        localArrayList.add(new BasicNameValuePair("account_password_encrypted", g.a(paramString3)));
      }
    }
  }
  
  public final x<JsonObject> b(String paramString, Map<String, String> paramMap, p<JsonObject> paramp)
  {
    InTradeParser localInTradeParser = new InTradeParser(new TypeToken() {}.getType());
    paramString = x.b(a.a(paramString, false), paramMap, paramp, localInTradeParser);
    this.f.a(paramString);
    return paramString;
  }
  
  public final x<JsonObject> c(p<JsonObject> paramp)
  {
    InTradeParser localInTradeParser = new InTradeParser(JsonObject.class);
    paramp = x.a(a.a("/tc/snowx/trader/config/query", false), new BasicNameValuePair[0], paramp, localInTradeParser);
    this.f.a(paramp);
    return paramp;
  }
  
  public final x<JsonObject> c(String paramString1, String paramString2, p<JsonObject> paramp)
  {
    InTradeParser localInTradeParser = new InTradeParser(JsonObject.class);
    paramString1 = new BasicNameValuePair("current_tid", paramString1);
    paramString2 = new BasicNameValuePair("symbol", paramString2);
    paramString1 = x.a(a.a("/tc/snowx/trade/stock/query", false), new BasicNameValuePair[] { paramString1, paramString2 }, paramp, localInTradeParser);
    this.f.a(paramString1);
    return paramString1;
  }
  
  public final x<String> d(p<String> paramp)
  {
    InTradeParser localInTradeParser = new InTradeParser("key", String.class);
    BasicNameValuePair localBasicNameValuePair = new BasicNameValuePair("type", "java");
    paramp = x.a(a.a("/tc/snowx/key", false), new BasicNameValuePair[] { localBasicNameValuePair }, paramp, localInTradeParser);
    this.f.a(paramp);
    return paramp;
  }
  
  public final x<JsonObject> d(String paramString1, String paramString2, p<JsonObject> paramp)
  {
    BasicNameValuePair localBasicNameValuePair = new BasicNameValuePair("tid", paramString1);
    paramString2 = new BasicNameValuePair("mid", paramString2);
    InTradeParser localInTradeParser = new InTradeParser(JsonObject.class);
    paramString1 = x.a(a("/tc/snowx/open/status", paramString1), new BasicNameValuePair[] { localBasicNameValuePair, paramString2 }, paramp, localInTradeParser);
    this.f.a(paramString1);
    return paramString1;
  }
  
  public final x<UserNotification> e(p<UserNotification> paramp)
  {
    paramp = x.a(a.a("/tc/snowx/notify/last", false), new HashMap(), paramp, new InTradeParser(UserNotification.class));
    this.f.a(paramp);
    return paramp;
  }
  
  public final x<JsonObject> e(String paramString1, String paramString2, p<JsonObject> paramp)
  {
    InTradeParser localInTradeParser = new InTradeParser(JsonObject.class);
    paramString1 = new BasicNameValuePair("key", paramString1);
    paramString2 = new BasicNameValuePair("value", paramString2);
    paramString1 = x.b(a.a("/tc/snowx/trade/setting", false), new BasicNameValuePair[] { paramString1, paramString2 }, paramp, localInTradeParser);
    this.f.a(paramString1);
    return paramString1;
  }
  
  public final x<AccountFundIncomeInfo> f(String paramString1, String paramString2, p<AccountFundIncomeInfo> paramp)
  {
    paramString1 = new BasicNameValuePair("aid", paramString1);
    BasicNameValuePair localBasicNameValuePair = new BasicNameValuePair("tid", paramString2);
    InTradeParser localInTradeParser = new InTradeParser(AccountFundIncomeInfo.class);
    paramString1 = x.a(a("/tc/snowx/fund/income/query", paramString2), new BasicNameValuePair[] { paramString1, localBasicNameValuePair }, paramp, localInTradeParser);
    this.f.a(paramString1);
    return paramString1;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\base\b\am.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
package com.xueqiu.android.base.b;

import com.google.gson.reflect.TypeToken;
import com.xueqiu.android.common.model.PagedList;
import com.xueqiu.android.common.model.parser.GParser;
import com.xueqiu.android.common.model.parser.PagedIdList;
import com.xueqiu.android.common.model.parser.Parser;
import com.xueqiu.android.community.model.UserNotification;
import com.xueqiu.android.tactic.d.b;
import com.xueqiu.android.tactic.d.d;
import com.xueqiu.android.tactic.d.g;
import com.xueqiu.android.tactic.d.h;
import com.xueqiu.android.tactic.d.i;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.apache.http.message.BasicNameValuePair;
import org.json.JSONArray;

public final class al
  extends a
{
  public al(ae paramae)
  {
    this.f = paramae;
  }
  
  public final x<List<g>> a(int paramInt, p<List<g>> paramp)
  {
    GParser localGParser = new GParser(new TypeToken() {}.getType());
    HashMap localHashMap = new HashMap();
    if (paramInt > 0) {
      localHashMap.put("category", String.valueOf(paramInt));
    }
    paramp = x.a(a.a("/snowmart/product/list", false), localHashMap, paramp, localGParser);
    this.f.a(paramp);
    return paramp;
  }
  
  public final x<d> a(long paramLong, int paramInt, p<d> paramp)
  {
    GParser localGParser = new GParser(new TypeToken() {}.getType());
    HashMap localHashMap = new HashMap();
    localHashMap.put("product_id", String.valueOf(paramLong));
    localHashMap.put("quantity", String.valueOf(paramInt));
    paramp = x.b(a.a("/snowmart/order/create", false), localHashMap, paramp, localGParser);
    this.f.a(paramp);
    return paramp;
  }
  
  public final x<PagedIdList<h>> a(long paramLong1, long paramLong2, p<PagedIdList<h>> paramp)
  {
    HashMap localHashMap = new HashMap();
    if (paramLong1 > 0L) {
      localHashMap.put("since_id", String.valueOf(paramLong1));
    }
    if (paramLong2 > 0L) {
      localHashMap.put("max_id", String.valueOf(paramLong2));
    }
    localHashMap.put("count", "5");
    GParser localGParser = new GParser(new TypeToken() {}.getType());
    paramp = x.a(a.a("/snowmart/push/timeline", false), localHashMap, paramp, localGParser);
    this.f.a(paramp);
    return paramp;
  }
  
  public final x<g> a(long paramLong, p<g> paramp)
  {
    GParser localGParser = new GParser(new TypeToken() {}.getType());
    HashMap localHashMap = new HashMap();
    localHashMap.put("product_id", String.valueOf(paramLong));
    paramp = x.a(a.a("/snowmart/product", false), localHashMap, paramp, localGParser);
    this.f.a(paramp);
    return paramp;
  }
  
  public final x<List<i>> a(p<List<i>> paramp)
  {
    GParser localGParser = new GParser(new TypeToken() {}.getType());
    HashMap localHashMap = new HashMap();
    paramp = x.a(a.a("/snowmart/inventory/list", false), localHashMap, paramp, localGParser);
    this.f.a(paramp);
    return paramp;
  }
  
  public final x<List<g>> a(r paramr, p<List<g>> paramp)
  {
    GParser localGParser = new GParser(new TypeToken() {}.getType());
    HashMap localHashMap = new HashMap();
    localHashMap.put("size", "6");
    paramp = x.a(a.a("/snowmart/product/top_list", false), localHashMap, paramp, localGParser);
    if (paramr != null) {
      paramp.a(paramr);
    }
    this.f.a(paramp);
    return paramp;
  }
  
  public final x<PagedList<b>> b(long paramLong, int paramInt, p<PagedList<b>> paramp)
  {
    BasicNameValuePair localBasicNameValuePair1 = new BasicNameValuePair("count", "10");
    BasicNameValuePair localBasicNameValuePair2 = new BasicNameValuePair("page", String.valueOf(paramInt));
    BasicNameValuePair localBasicNameValuePair3 = new BasicNameValuePair("product_id", String.valueOf(paramLong));
    GParser localGParser = new GParser(new TypeToken() {}.getType());
    paramp = x.a(a.a("/snowmart/push/stocks", false), new BasicNameValuePair[] { localBasicNameValuePair1, localBasicNameValuePair2, localBasicNameValuePair3 }, paramp, localGParser);
    this.f.a(paramp);
    return paramp;
  }
  
  public final x<Boolean> b(long paramLong, p<Boolean> paramp)
  {
    Parser local6 = new Parser()
    {
      public final ArrayList parse(JSONArray paramAnonymousJSONArray)
      {
        return null;
      }
    };
    HashMap localHashMap = new HashMap();
    localHashMap.put("product_id", String.valueOf(paramLong));
    localHashMap.put("on", "false");
    paramp = x.b(a.a("/snowmart/preference/switch", false), localHashMap, paramp, local6);
    this.f.a(paramp);
    return paramp;
  }
  
  public final x<UserNotification> b(p<UserNotification> paramp)
  {
    HashMap localHashMap = new HashMap();
    if (-1L > 0L) {
      localHashMap.put("since_id", "-1");
    }
    paramp = x.a(a.a("/snowmart/push/status/last", false), localHashMap, paramp, new GParser("status_last", UserNotification.class));
    this.f.a(paramp);
    return paramp;
  }
  
  public final x<h> c(long paramLong, p<h> paramp)
  {
    BasicNameValuePair localBasicNameValuePair = new BasicNameValuePair("id", String.valueOf(paramLong));
    GParser localGParser = new GParser(new TypeToken() {}.getType());
    paramp = x.a(a.a("/snowmart/push/status", false), new BasicNameValuePair[] { localBasicNameValuePair }, paramp, localGParser);
    this.f.a(paramp);
    return paramp;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\base\b\al.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
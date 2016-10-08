package com.xueqiu.android.base.b;

import android.os.Build;
import com.android.volley.n;
import com.android.volley.o;
import com.android.volley.q;
import com.e.a.a.j;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.internal.LinkedTreeMap;
import com.google.gson.reflect.TypeToken;
import com.xueqiu.android.base.f;
import com.xueqiu.android.base.g;
import com.xueqiu.android.base.storage.prefs.UserLogonDataPrefs;
import com.xueqiu.android.base.t;
import com.xueqiu.android.base.u;
import com.xueqiu.android.base.util.as;
import com.xueqiu.android.base.util.au;
import com.xueqiu.android.base.util.i;
import com.xueqiu.android.base.util.w;
import com.xueqiu.android.common.model.FileUploadResult;
import com.xueqiu.android.common.model.LoginResult;
import com.xueqiu.android.common.model.OAuthBindResult;
import com.xueqiu.android.common.model.PagedGroup;
import com.xueqiu.android.common.model.PagedList;
import com.xueqiu.android.common.model.PhotoUploadResult;
import com.xueqiu.android.common.model.RequestResult;
import com.xueqiu.android.common.model.SNBJSONObject;
import com.xueqiu.android.common.model.parser.GPagedParser;
import com.xueqiu.android.common.model.parser.GParser;
import com.xueqiu.android.common.model.parser.Parser;
import com.xueqiu.android.common.model.parser.SNBJsonObjectPaser;
import com.xueqiu.android.community.model.AdBanner;
import com.xueqiu.android.community.model.Comment;
import com.xueqiu.android.community.model.FriendshipGroup;
import com.xueqiu.android.community.model.Remind;
import com.xueqiu.android.community.model.Reward;
import com.xueqiu.android.community.model.RewardCash;
import com.xueqiu.android.community.model.SimpleFund;
import com.xueqiu.android.community.model.Status;
import com.xueqiu.android.community.model.TopicInfo;
import com.xueqiu.android.community.model.User;
import com.xueqiu.android.cube.model.Cube;
import com.xueqiu.android.cube.model.Editorial;
import com.xueqiu.android.cube.model.SessionToken;
import com.xueqiu.android.message.model.BatchResult;
import com.xueqiu.android.message.model.IMGroup;
import com.xueqiu.android.stock.model.OldPortFolio;
import com.xueqiu.android.stock.model.Portfolio;
import com.xueqiu.android.stock.model.Stock;
import com.xueqiu.android.stock.model.StockQuote;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.apache.http.HttpEntity;
import org.apache.http.message.BasicNameValuePair;
import org.json.JSONArray;
import org.json.JSONObject;

public final class ai
  extends a
{
  public aj g = null;
  public an h = null;
  public ak i = null;
  public e j = null;
  public d k = null;
  public c l = null;
  public am m = null;
  public al n = null;
  
  public ai(ae paramae)
  {
    this.f = paramae;
    this.g = new aj(paramae);
    this.h = new an(paramae);
    this.i = new ak(paramae);
    this.j = new e(paramae);
    this.k = new d(paramae);
    this.l = new c(paramae);
    this.m = new am(paramae);
    this.n = new al(paramae);
  }
  
  private x<JSONObject> a(int paramInt, long paramLong1, String paramString1, String paramString2, long paramLong2, String paramString3, long paramLong3, String paramString4, p<JSONObject> paramp)
  {
    BasicNameValuePair localBasicNameValuePair1 = new BasicNameValuePair("updated", String.valueOf(paramLong1));
    BasicNameValuePair localBasicNameValuePair2 = new BasicNameValuePair("type", String.valueOf(paramInt));
    paramString1 = new BasicNameValuePair("cube_name", paramString1);
    paramString2 = new BasicNameValuePair("cube_yield", paramString2);
    BasicNameValuePair localBasicNameValuePair3 = new BasicNameValuePair("special_id", String.valueOf(paramLong2));
    paramString3 = new BasicNameValuePair("special_title", paramString3);
    BasicNameValuePair localBasicNameValuePair4 = new BasicNameValuePair("id", String.valueOf(paramLong3));
    paramString4 = new BasicNameValuePair("title", paramString4);
    String str = a.a("/share/get_content", false);
    Parser local1 = new Parser()
    {
      public final ArrayList parse(JSONArray paramAnonymousJSONArray)
      {
        return null;
      }
    };
    paramString1 = x.a(str, new BasicNameValuePair[] { localBasicNameValuePair1, localBasicNameValuePair2, paramString1, paramString2, localBasicNameValuePair3, paramString3, localBasicNameValuePair4, paramString4 }, paramp, local1);
    this.f.a(paramString1);
    return paramString1;
  }
  
  private x<ArrayList<Comment>> a(long paramLong1, long paramLong2, String paramString, p<ArrayList<Comment>> paramp)
  {
    BasicNameValuePair localBasicNameValuePair1;
    if (paramLong1 == 0L)
    {
      localObject = null;
      localBasicNameValuePair1 = new BasicNameValuePair("since_id", (String)localObject);
      if (paramLong2 != 0L) {
        break label153;
      }
    }
    label153:
    for (Object localObject = null;; localObject = String.valueOf(paramLong2))
    {
      localObject = new BasicNameValuePair("max_id", (String)localObject);
      BasicNameValuePair localBasicNameValuePair2 = new BasicNameValuePair("count", "20");
      BasicNameValuePair localBasicNameValuePair3 = new BasicNameValuePair("split", "true");
      GPagedParser localGPagedParser = new GPagedParser("comments", new TypeToken() {}.getType());
      paramString = x.a(a.a(paramString, false), new BasicNameValuePair[] { localBasicNameValuePair1, localObject, localBasicNameValuePair2, localBasicNameValuePair3 }, paramp, localGPagedParser);
      this.f.a(paramString);
      return paramString;
      localObject = String.valueOf(paramLong1);
      break;
    }
  }
  
  private x<RequestResult> a(String paramString1, String paramString2, boolean paramBoolean, String paramString3, p<RequestResult> paramp)
  {
    BasicNameValuePair localBasicNameValuePair = new BasicNameValuePair("areacode", paramString1);
    paramString2 = new BasicNameValuePair("telephone", String.valueOf(paramString2));
    if (paramBoolean) {}
    for (paramString1 = "true";; paramString1 = "false")
    {
      paramString1 = new BasicNameValuePair("voice", paramString1);
      paramString3 = new BasicNameValuePair("access_token", paramString3);
      String str = a.a("/account/sms/send_verification_code", false);
      GParser localGParser = new GParser(RequestResult.class);
      paramString1 = x.b(str, new BasicNameValuePair[] { localBasicNameValuePair, paramString2, paramString1, paramString3 }, paramp, localGParser);
      this.f.a(paramString1);
      return paramString1;
    }
  }
  
  public final x<PagedList<TopicInfo>> a(int paramInt1, int paramInt2, String paramString, p<PagedList<TopicInfo>> paramp)
  {
    return this.g.a(paramInt1, paramInt2, paramString, paramp);
  }
  
  public final x<JSONObject> a(int paramInt, long paramLong, p<JSONObject> paramp)
  {
    return a(paramInt, paramLong, null, null, 0L, null, 0L, null, paramp);
  }
  
  public final x<ArrayList<User>> a(int paramInt, p<ArrayList<User>> paramp)
  {
    return this.h.a(paramInt, paramp);
  }
  
  public final x<ArrayList<User>> a(int paramInt, String paramString, p<ArrayList<User>> paramp)
  {
    return this.h.a(paramInt, paramString, paramp);
  }
  
  public final x<JSONObject> a(int paramInt, String paramString1, String paramString2, p<JSONObject> paramp)
  {
    return a(paramInt, 0L, paramString1, paramString2, 0L, null, 0L, null, paramp);
  }
  
  public final x<ArrayList<Status>> a(long paramLong, int paramInt1, int paramInt2, int paramInt3, p<ArrayList<Status>> paramp)
  {
    return this.g.a(paramLong, null, paramInt1, 0L, 0L, paramInt2, paramInt3, paramp);
  }
  
  public final x<ArrayList<Status>> a(long paramLong, int paramInt1, int paramInt2, p<ArrayList<Status>> paramp)
  {
    return this.g.a(paramLong, paramInt1, paramInt2, paramp);
  }
  
  public final x<ArrayList<Comment>> a(long paramLong, int paramInt1, int paramInt2, String paramString, p<ArrayList<Comment>> paramp)
  {
    BasicNameValuePair localBasicNameValuePair1 = new BasicNameValuePair("id", String.valueOf(paramLong));
    BasicNameValuePair localBasicNameValuePair2 = new BasicNameValuePair("count", "20");
    BasicNameValuePair localBasicNameValuePair3 = new BasicNameValuePair("page", String.valueOf(paramInt1));
    paramString = new BasicNameValuePair("type", paramString);
    BasicNameValuePair localBasicNameValuePair4 = new BasicNameValuePair("asc", String.valueOf(paramInt2));
    BasicNameValuePair localBasicNameValuePair5 = new BasicNameValuePair("split", "true");
    GPagedParser localGPagedParser = new GPagedParser("comments", new TypeToken() {}.getType());
    paramString = x.a(a.a("/statuses/comments", false), new BasicNameValuePair[] { localBasicNameValuePair1, localBasicNameValuePair2, localBasicNameValuePair3, paramString, localBasicNameValuePair4, localBasicNameValuePair5 }, paramp, localGPagedParser);
    this.f.a(paramString);
    return paramString;
  }
  
  public final x<JSONObject> a(long paramLong, int paramInt, p<JSONObject> paramp)
  {
    Object localObject1 = a.b("/statuses/comments", false) + "?request_method=get&id=" + paramLong + "&type=status&count=20&page=1&reply=1&asc=" + paramInt + "&split=true";
    Object localObject2 = a.b("/cubes/discover/material/cube/list", false) + "?request_method=get&mtype=1&mid=" + paramLong + "&count=20&page=1";
    String str = a.b("/favorites/exists", false) + "?request_method=get&id=" + paramLong;
    Object localObject3 = a.b("/statuses/comments_excellent", false) + "?request_method=get&id=" + paramLong + "&count=5&page=1";
    localObject1 = new BasicNameValuePair("api", (String)localObject1 + "#47bce5c74f#" + (String)localObject2 + "#47bce5c74f#" + str + "#47bce5c74f#" + (String)localObject3);
    localObject2 = new BasicNameValuePair("tasktype", "par");
    str = a.a("/apimerge/result", false);
    localObject3 = new SNBJsonObjectPaser();
    paramp = x.b(str, new BasicNameValuePair[] { localObject1, localObject2 }, paramp, (Parser)localObject3);
    paramp.j = new z();
    this.f.a(paramp);
    return paramp;
  }
  
  public final x<JsonObject> a(long paramLong, int paramInt, String paramString, p<JsonObject> paramp)
  {
    GParser localGParser = new GParser(JsonObject.class);
    HashMap localHashMap = new HashMap();
    if (paramLong >= 0L) {
      localHashMap.put("updateTime", String.valueOf(paramLong));
    }
    if (paramInt >= 0) {
      localHashMap.put("category", String.valueOf(paramInt));
    }
    if (paramString != null) {
      localHashMap.put("market", paramString);
    }
    paramString = x.a(a.a("/cubes/discover/rank/cube/filter", false), localHashMap, paramp, localGParser);
    this.f.a(paramString);
    return paramString;
  }
  
  public final x<ArrayList<Comment>> a(long paramLong1, long paramLong2, int paramInt, p<ArrayList<Comment>> paramp)
  {
    BasicNameValuePair localBasicNameValuePair1 = new BasicNameValuePair("id", String.valueOf(paramLong1));
    BasicNameValuePair localBasicNameValuePair2 = new BasicNameValuePair("comment_id", String.valueOf(paramLong2));
    BasicNameValuePair localBasicNameValuePair3 = new BasicNameValuePair("asc", "true");
    BasicNameValuePair localBasicNameValuePair4 = new BasicNameValuePair("count", "20");
    BasicNameValuePair localBasicNameValuePair5 = new BasicNameValuePair("page", String.valueOf(paramInt));
    GPagedParser localGPagedParser = new GPagedParser("comments", new TypeToken() {}.getType());
    paramp = x.a(a.a("/statuses/talks", false), new BasicNameValuePair[] { localBasicNameValuePair1, localBasicNameValuePair2, localBasicNameValuePair3, localBasicNameValuePair4, localBasicNameValuePair5 }, paramp, localGPagedParser);
    this.f.a(paramp);
    return paramp;
  }
  
  public final x<ArrayList<Comment>> a(long paramLong1, long paramLong2, p<ArrayList<Comment>> paramp)
  {
    return a(paramLong1, paramLong2, "/comments/receive", paramp);
  }
  
  public final x<Status> a(long paramLong, p<Status> paramp)
  {
    return this.g.a(paramLong, paramp);
  }
  
  public final x<List<Portfolio>> a(long paramLong, String paramString, int paramInt, p<List<Portfolio>> paramp)
  {
    return this.i.a(paramLong, paramString, paramInt, paramp);
  }
  
  public final x<ArrayList<Reward>> a(long paramLong1, String paramString, long paramLong2, p<ArrayList<Reward>> paramp)
  {
    if (paramLong1 == 0L) {}
    for (Object localObject = null;; localObject = String.valueOf(paramLong1))
    {
      localObject = new BasicNameValuePair("to_id", (String)localObject);
      paramString = new BasicNameValuePair("to_type", paramString);
      BasicNameValuePair localBasicNameValuePair1 = new BasicNameValuePair("order_by", "snowcoin");
      BasicNameValuePair localBasicNameValuePair2 = new BasicNameValuePair("page", String.valueOf(paramLong2));
      BasicNameValuePair localBasicNameValuePair3 = new BasicNameValuePair("size", "20");
      BasicNameValuePair localBasicNameValuePair4 = new BasicNameValuePair("base_profile_user", "1");
      String str = a.a("/donates/list", false);
      Parser local11 = new Parser()
      {
        public final ArrayList parse(JSONArray paramAnonymousJSONArray)
        {
          return null;
        }
      };
      paramString = x.a(str, new BasicNameValuePair[] { localObject, paramString, localBasicNameValuePair1, localBasicNameValuePair2, localBasicNameValuePair3, localBasicNameValuePair4 }, paramp, local11);
      this.f.a(paramString);
      return paramString;
    }
  }
  
  public final x<JSONObject> a(long paramLong, String paramString, p<JSONObject> paramp)
  {
    return a(6, 0L, null, null, paramLong, paramString, 0L, null, paramp);
  }
  
  public final x<JsonObject> a(long paramLong1, String paramString1, String paramString2, long paramLong2, p<JsonObject> paramp)
  {
    BasicNameValuePair localBasicNameValuePair1 = new BasicNameValuePair("uid", String.valueOf(paramLong1));
    paramString1 = new BasicNameValuePair("platform_id", paramString1);
    paramString2 = new BasicNameValuePair("page_id", paramString2);
    BasicNameValuePair localBasicNameValuePair2 = new BasicNameValuePair("promotion_id", String.valueOf(paramLong2));
    String str = a.a("/promotion/display_adrm", false);
    GParser localGParser = new GParser(JsonObject.class);
    paramString1 = x.b(str, new BasicNameValuePair[] { localBasicNameValuePair1, paramString1, paramString2, localBasicNameValuePair2 }, paramp, localGParser);
    this.f.a(paramString1);
    return paramString1;
  }
  
  public final x<JsonObject> a(long paramLong, String paramString1, String paramString2, p<JsonObject> paramp)
  {
    BasicNameValuePair localBasicNameValuePair = new BasicNameValuePair("uid", String.valueOf(paramLong));
    paramString1 = new BasicNameValuePair("platform_id", paramString1);
    paramString2 = new BasicNameValuePair("page_id", paramString2);
    String str = a.a("/promotion/display_ad", false);
    GParser localGParser = new GParser(JsonObject.class);
    paramString1 = x.a(str, new BasicNameValuePair[] { localBasicNameValuePair, paramString1, paramString2 }, paramp, localGParser);
    this.f.a(paramString1);
    return paramString1;
  }
  
  public final x<JsonObject> a(long paramLong, String paramString1, String paramString2, String paramString3, p<JsonObject> paramp)
  {
    BasicNameValuePair localBasicNameValuePair = new BasicNameValuePair("uid", String.valueOf(paramLong));
    paramString1 = new BasicNameValuePair("platform_id", paramString1);
    paramString2 = new BasicNameValuePair("page_id", paramString2);
    paramString3 = new BasicNameValuePair("pos_id", paramString3);
    String str = a.a("/promotion/search_ad", false);
    GParser localGParser = new GParser(JsonObject.class);
    paramString1 = x.a(str, new BasicNameValuePair[] { localBasicNameValuePair, paramString1, paramString2, paramString3 }, paramp, localGParser);
    this.f.a(paramString1);
    return paramString1;
  }
  
  public final x<JSONObject> a(long paramLong, String paramString1, String paramString2, String paramString3, String paramString4, p<JSONObject> paramp)
  {
    paramString1 = new BasicNameValuePair("page_id", paramString1);
    BasicNameValuePair localBasicNameValuePair1 = new BasicNameValuePair("promotion_id", String.valueOf(paramLong));
    BasicNameValuePair localBasicNameValuePair2 = new BasicNameValuePair("action_time", String.valueOf(System.currentTimeMillis()));
    paramString3 = new BasicNameValuePair("platform_id", paramString3);
    paramString2 = new BasicNameValuePair("version", paramString2);
    BasicNameValuePair localBasicNameValuePair3 = new BasicNameValuePair("brand", Build.BOARD);
    BasicNameValuePair localBasicNameValuePair4 = new BasicNameValuePair("model", Build.MODEL);
    paramString4 = new BasicNameValuePair("network", paramString4);
    String str = a.a("/promotion/show_log", false);
    SNBJsonObjectPaser localSNBJsonObjectPaser = new SNBJsonObjectPaser();
    paramString1 = x.a(str, new BasicNameValuePair[] { paramString1, localBasicNameValuePair1, localBasicNameValuePair2, paramString3, paramString2, localBasicNameValuePair3, localBasicNameValuePair4, paramString4 }, paramp, localSNBJsonObjectPaser);
    paramString1.l = o.a;
    this.f.a(paramString1);
    return paramString1;
  }
  
  public final x<IMGroup> a(long paramLong, boolean paramBoolean, p<IMGroup> paramp)
  {
    return this.k.a(paramLong, paramBoolean, paramp);
  }
  
  public final x<PhotoUploadResult> a(long paramLong, boolean paramBoolean, String paramString, p<PhotoUploadResult> paramp)
  {
    BasicNameValuePair localBasicNameValuePair1 = new BasicNameValuePair("to_id", String.valueOf(paramLong));
    if (paramBoolean) {}
    for (Object localObject = "1";; localObject = "2")
    {
      localObject = new BasicNameValuePair("type", (String)localObject);
      BasicNameValuePair localBasicNameValuePair2 = new BasicNameValuePair("access_token", u.a().a);
      paramString = new BasicNameValuePair("url", paramString);
      String str = a.a("/photo/im/forward", false);
      GParser localGParser = new GParser(PhotoUploadResult.class);
      paramString = x.b(str, new BasicNameValuePair[] { localBasicNameValuePair1, localObject, localBasicNameValuePair2, paramString }, paramp, localGParser);
      this.f.a(paramString);
      return paramString;
    }
  }
  
  public final x<BatchResult> a(long paramLong, long[] paramArrayOfLong, p<BatchResult> paramp)
  {
    return this.k.b(paramLong, paramArrayOfLong, paramp);
  }
  
  public final x<JsonObject> a(p<JsonObject> paramp)
  {
    GParser localGParser = new GParser(JsonObject.class);
    paramp = x.a(a.a("/statuses/switch", false), new BasicNameValuePair[0], paramp, localGParser);
    this.f.a(paramp);
    return paramp;
  }
  
  public final x<ArrayList<OldPortFolio>> a(p<ArrayList<OldPortFolio>> paramp, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, int paramInt1, int paramInt2, Parser<ArrayList<OldPortFolio>> paramParser)
  {
    return this.i.a(paramp, paramString1, paramString2, paramString3, paramString4, paramString5, paramInt1, paramInt2, paramParser);
  }
  
  public final x<ArrayList<User>> a(String paramString, int paramInt1, int paramInt2, p<ArrayList<User>> paramp)
  {
    return this.h.a(paramString, paramInt1, paramInt2, paramp);
  }
  
  public final x<ArrayList<Stock>> a(String paramString, int paramInt, long paramLong, p<ArrayList<Stock>> paramp)
  {
    return this.i.a(paramString, paramInt, paramLong, paramp);
  }
  
  public final x<RequestResult> a(String paramString, int paramInt, p<RequestResult> paramp)
  {
    return this.i.a(paramString, paramInt, paramp);
  }
  
  public final x<PagedGroup<Status>> a(String paramString1, int paramInt, String paramString2, p<PagedGroup<Status>> paramp)
  {
    paramString1 = new BasicNameValuePair("q", paramString1);
    paramString2 = new BasicNameValuePair("sort", paramString2);
    BasicNameValuePair localBasicNameValuePair1 = new BasicNameValuePair("page", String.valueOf(paramInt));
    BasicNameValuePair localBasicNameValuePair2 = new BasicNameValuePair("count", "15");
    String str = a.a("/hot_event/search", false);
    GPagedParser localGPagedParser = new GPagedParser("list", new TypeToken() {}.getType());
    paramString1 = x.a(str, new BasicNameValuePair[] { paramString1, paramString2, localBasicNameValuePair1, localBasicNameValuePair2 }, paramp, localGPagedParser);
    this.f.a(paramString1);
    return paramString1;
  }
  
  public final x<JsonObject> a(String paramString, long paramLong, p<JsonObject> paramp)
  {
    GParser localGParser = new GParser(JsonObject.class);
    HashMap localHashMap = new HashMap();
    localHashMap.put("type", paramString);
    localHashMap.put("updated", String.valueOf(paramLong));
    paramString = x.a(a.a("/mobile_config/content", false), localHashMap, paramp, localGParser);
    this.f.a(paramString);
    return paramString;
  }
  
  public final x<JSONObject> a(String paramString, p<JSONObject> paramp)
  {
    paramString = new BasicNameValuePair("code", paramString);
    BasicNameValuePair localBasicNameValuePair1 = new BasicNameValuePair("type", "1");
    BasicNameValuePair localBasicNameValuePair2 = new BasicNameValuePair("start", "0");
    BasicNameValuePair localBasicNameValuePair3 = new BasicNameValuePair("count", "0");
    String str = a.a("/recommend/pofriends", false);
    SNBJsonObjectPaser localSNBJsonObjectPaser = new SNBJsonObjectPaser();
    paramString = x.a(str, new BasicNameValuePair[] { paramString, localBasicNameValuePair1, localBasicNameValuePair2, localBasicNameValuePair3 }, paramp, localSNBJsonObjectPaser);
    paramString.j = new z();
    this.f.a(paramString);
    return paramString;
  }
  
  public final x<Map<String, StockQuote>> a(String paramString, p<Map<String, StockQuote>> paramp, r paramr)
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(paramString);
    return this.i.a(localArrayList, null, false, true, paramp, paramr);
  }
  
  public final x<ArrayList<Status>> a(String paramString1, String paramString2, int paramInt1, int paramInt2, long paramLong, p<ArrayList<Status>> paramp)
  {
    return this.l.a(paramString1, paramString2, paramInt1, paramInt2, paramLong, paramp);
  }
  
  public final x<ArrayList<Status>> a(String paramString1, String paramString2, int paramInt1, int paramInt2, p<ArrayList<Status>> paramp)
  {
    return this.g.a(paramString1, paramString2, paramInt1, paramInt2, paramp);
  }
  
  public final x<JsonObject> a(String paramString1, String paramString2, int paramInt, p<JsonObject> paramp)
  {
    return this.l.a(paramString1, paramString2, paramInt, paramp);
  }
  
  public final x<JsonObject> a(String paramString1, String paramString2, long paramLong, int paramInt, p<JsonObject> paramp)
  {
    paramString1 = new BasicNameValuePair("page_id", paramString1);
    paramString2 = new BasicNameValuePair("platform_id", paramString2);
    BasicNameValuePair localBasicNameValuePair1 = new BasicNameValuePair("date", String.valueOf(paramLong));
    BasicNameValuePair localBasicNameValuePair2 = new BasicNameValuePair("screen_type", String.valueOf(paramInt));
    String str = a.a("/promotion/display_cache", false);
    GParser localGParser = new GParser(JsonObject.class);
    paramString1 = x.a(str, new BasicNameValuePair[] { paramString1, paramString2, localBasicNameValuePair1, localBasicNameValuePair2 }, paramp, localGParser);
    paramString1.l = o.a;
    this.f.a(paramString1);
    return paramString1;
  }
  
  public final x<JsonObject> a(String paramString1, String paramString2, long paramLong, p<JsonObject> paramp)
  {
    GParser localGParser = new GParser(JsonObject.class);
    paramString1 = x.a(paramString2, new BasicNameValuePair[] { new BasicNameValuePair("env", String.valueOf(paramString1)), new BasicNameValuePair("timestamp", String.valueOf(paramLong)) }, paramp, localGParser);
    this.f.a(paramString1);
    return paramString1;
  }
  
  public final x<JsonObject> a(String paramString1, String paramString2, p<JsonObject> paramp)
  {
    GParser localGParser = new GParser(JsonObject.class);
    paramString1 = x.a(paramString2, new BasicNameValuePair[] { new BasicNameValuePair("env", String.valueOf(paramString1)) }, paramp, localGParser);
    this.f.a(paramString1);
    return paramString1;
  }
  
  public final x<ArrayList<Status>> a(String paramString1, String paramString2, String paramString3, int paramInt1, int paramInt2, String paramString4, p<ArrayList<Status>> paramp)
  {
    return this.g.a(paramString1, 0L, paramString2, paramString3, paramInt1, paramInt2, paramString4, paramp);
  }
  
  public final x<OAuthBindResult> a(String paramString1, String paramString2, String paramString3, long paramLong, String paramString4, String paramString5, p<OAuthBindResult> paramp)
  {
    return this.h.a(paramString1, paramString2, paramString3, paramLong, paramString4, paramString5, paramp);
  }
  
  public final x<Double> a(String paramString1, String paramString2, String paramString3, p<Double> paramp)
  {
    return this.l.b(paramString1, as.f(paramString1), paramString2, paramString3, paramp);
  }
  
  public final x<RequestResult> a(String paramString1, String paramString2, String paramString3, String paramString4, p<RequestResult> paramp)
  {
    paramString1 = new BasicNameValuePair("areacode", paramString1);
    paramString2 = new BasicNameValuePair("telephone", String.valueOf(paramString2));
    paramString3 = new BasicNameValuePair("code", String.valueOf(paramString3));
    paramString4 = new BasicNameValuePair("access_token", paramString4);
    String str = a.a("/account/sms/verify_code", false);
    GParser localGParser = new GParser(RequestResult.class);
    paramString1 = x.b(str, new BasicNameValuePair[] { paramString1, paramString2, paramString3, paramString4 }, paramp, localGParser);
    this.f.a(paramString1);
    return paramString1;
  }
  
  public final x<Status> a(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, p<Status> paramp)
  {
    return this.g.a(paramString1, paramString2, paramString3, paramString4, paramString5, paramp);
  }
  
  public final x<LoginResult> a(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, p<LoginResult> paramp)
  {
    paramString1 = new BasicNameValuePair("areacode", paramString1);
    paramString2 = new BasicNameValuePair("telephone", paramString2);
    BasicNameValuePair localBasicNameValuePair = new BasicNameValuePair("passwd1", w.a(paramString3));
    paramString3 = new BasicNameValuePair("passwd2", w.a(paramString3));
    paramString5 = new BasicNameValuePair("nickname", paramString5);
    paramString6 = new BasicNameValuePair("profile_image_url", paramString6);
    paramString4 = new BasicNameValuePair("access_token", paramString4);
    String str = a.a("/account/signup_by_telephone", false);
    GParser localGParser = new GParser(LoginResult.class);
    paramString1 = x.b(str, new BasicNameValuePair[] { paramString1, paramString2, localBasicNameValuePair, paramString3, paramString5, paramString6, paramString4 }, paramp, localGParser);
    this.f.a(paramString1);
    return paramString1;
  }
  
  public final x<LoginResult> a(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7, String paramString8, long paramLong, String paramString9, p<LoginResult> paramp)
  {
    paramString1 = new BasicNameValuePair("telephone", paramString1);
    BasicNameValuePair localBasicNameValuePair1 = new BasicNameValuePair("passwd1", w.a(paramString2));
    paramString2 = new BasicNameValuePair("passwd2", w.a(paramString2));
    paramString4 = new BasicNameValuePair("source", paramString4);
    paramString5 = new BasicNameValuePair("openid", paramString5);
    paramString6 = new BasicNameValuePair("nickname", paramString6);
    paramString7 = new BasicNameValuePair("profile_image_url", paramString7);
    paramString8 = new BasicNameValuePair("token2", paramString8);
    BasicNameValuePair localBasicNameValuePair2 = new BasicNameValuePair("expireIn", String.valueOf(paramLong));
    paramString9 = new BasicNameValuePair("oauth_nickname", paramString9);
    BasicNameValuePair localBasicNameValuePair3 = new BasicNameValuePair("version", "2");
    paramString3 = new BasicNameValuePair("access_token", paramString3);
    String str = a.a("/account/oauth/signup", false);
    GParser localGParser = new GParser(LoginResult.class);
    paramString1 = x.b(str, new BasicNameValuePair[] { paramString1, localBasicNameValuePair1, paramString2, paramString4, paramString5, paramString6, paramString7, paramString8, localBasicNameValuePair2, paramString9, localBasicNameValuePair3, paramString3 }, paramp, localGParser);
    this.f.a(paramString1);
    return paramString1;
  }
  
  public final x<JsonElement> a(String paramString1, String paramString2, Map<String, String> paramMap, int paramInt, p<JsonElement> paramp)
  {
    if (paramString2.equalsIgnoreCase("post")) {}
    for (paramString1 = x.b(a.a(paramString1, false), paramMap, paramp, new GParser(JsonElement.class));; paramString1 = x.a(a.a(paramString1, false), paramMap, paramp, new GParser(JsonElement.class)))
    {
      paramString1.j = new y(paramInt);
      this.f.a(paramString1);
      return paramString1;
    }
  }
  
  public final x<JsonElement> a(String paramString1, String paramString2, Map<String, String> paramMap, p<JsonElement> paramp)
  {
    if (paramString2.equalsIgnoreCase("post")) {}
    for (paramString1 = x.b(a.a(paramString1, false), paramMap, paramp, new GParser(JsonElement.class));; paramString1 = x.a(a.a(paramString1, false), paramMap, paramp, new GParser(JsonElement.class)))
    {
      paramString1.j = new y(5000);
      this.f.a(paramString1);
      return paramString1;
    }
  }
  
  public final x<IMGroup> a(String paramString1, String paramString2, long[] paramArrayOfLong, p<IMGroup> paramp)
  {
    return this.k.a(paramString1, paramString2, paramArrayOfLong, paramp);
  }
  
  public final x<Boolean> a(String paramString, HttpEntity paramHttpEntity, p<Boolean> paramp)
  {
    paramHttpEntity = x.a(a("/upload/mobile/offlineFile"), paramHttpEntity, paramp, new GParser("isSuccess", Boolean.class));
    paramp = new HashMap();
    paramp.put("X-category", paramString);
    u.a();
    paramp.put("X-uid", String.valueOf(UserLogonDataPrefs.getLogonUserId()));
    paramp.put("X-isCompress", "tar");
    paramp.put("Content-Encoding", "UTF-8");
    g.a();
    com.xueqiu.android.base.b.a();
    paramp.put("User-Agent", String.format("Xueqiu Android %s %s %s %s", new Object[] { f.a(com.xueqiu.android.base.b.d()), i.i(), i.a(), i.h().replaceAll(" ", "_") }));
    paramHttpEntity.a(paramp);
    this.f.a(paramHttpEntity);
    return paramHttpEntity;
  }
  
  public final x<JsonObject> a(List<String> paramList, p<JsonObject> paramp)
  {
    String str = a.a("/apimerge/result", false);
    paramList = new BasicNameValuePair("api", au.a(paramList, "#47bce5c74f#"));
    GParser localGParser = new GParser(JsonObject.class);
    paramList = x.b(str, new BasicNameValuePair[] { paramList }, paramp, localGParser);
    paramList.j = new z();
    this.f.a(paramList);
    return paramList;
  }
  
  public final x<Map<String, StockQuote>> a(List<String> paramList1, List<String> paramList2, boolean paramBoolean, p<Map<String, StockQuote>> paramp)
  {
    return this.i.a(paramList1, paramList2, paramBoolean, false, paramp, null);
  }
  
  public final x<Map<String, JsonArray>> a(List<String> paramList, boolean paramBoolean, p<Map<String, JsonArray>> paramp)
  {
    return this.i.a(paramList, paramBoolean, paramp);
  }
  
  public final x<ArrayList<User>> a(boolean paramBoolean, p<ArrayList<User>> paramp)
  {
    return this.h.a(paramp, paramBoolean);
  }
  
  public final x<PhotoUploadResult> a(byte[] paramArrayOfByte, String paramString, long paramLong, boolean paramBoolean, p<PhotoUploadResult> paramp)
  {
    int i1 = 1;
    Object localObject = u.a().a;
    StringBuilder localStringBuilder = new StringBuilder(a.a("/photo/im/upload", false));
    if (paramBoolean) {}
    for (;;)
    {
      localStringBuilder.append(String.format("?%s=%s&%s=%s&%s=%s", new Object[] { "to_id", String.valueOf(paramLong), "type", String.valueOf(i1), "access_token", localObject }));
      localObject = new j(com.e.a.a.e.b, (byte)0);
      ((j)localObject).a("file", new com.e.a.a.a.b(paramArrayOfByte, paramString));
      paramArrayOfByte = x.a(localStringBuilder.toString(), new k((HttpEntity)localObject), paramp, new GParser(PhotoUploadResult.class));
      paramArrayOfByte.j = new ad();
      this.f.a(paramArrayOfByte);
      return paramArrayOfByte;
      i1 = 2;
    }
  }
  
  public final x<PhotoUploadResult> a(byte[] paramArrayOfByte, String paramString, p<PhotoUploadResult> paramp)
  {
    j localj = new j(com.e.a.a.e.b, (byte)0);
    localj.a("file", new com.e.a.a.a.b(paramArrayOfByte, paramString));
    paramArrayOfByte = x.a(a.a("/photo/upload", false), localj, paramp, new GParser(PhotoUploadResult.class));
    paramArrayOfByte.j = new ad();
    this.f.a(paramArrayOfByte);
    return paramArrayOfByte;
  }
  
  public final x<List<User>> a(Long[] paramArrayOfLong, p<List<User>> paramp)
  {
    return this.h.c(paramArrayOfLong, paramp);
  }
  
  public final x<RequestResult> a(String[] paramArrayOfString, p<RequestResult> paramp)
  {
    return this.i.c(paramArrayOfString, paramp);
  }
  
  public final x<RequestResult> a(String[] paramArrayOfString1, String[] paramArrayOfString2, p<RequestResult> paramp)
  {
    return this.h.a(paramArrayOfString1, paramArrayOfString2, paramp);
  }
  
  public final void a(x arg1)
  {
    Object localObject2 = this.f;
    q local12 = new q()
    {
      public final boolean a(n paramAnonymousn)
      {
        return paramx.equals(paramAnonymousn);
      }
    };
    synchronized (((com.android.volley.p)localObject2).b)
    {
      localObject2 = ((com.android.volley.p)localObject2).b.iterator();
      while (((Iterator)localObject2).hasNext())
      {
        n localn = (n)((Iterator)localObject2).next();
        if (local12.a(localn)) {
          localn.h = true;
        }
      }
    }
  }
  
  public final void a(final boolean paramBoolean)
  {
    Object localObject = new p()
    {
      public final void a(com.android.volley.y paramAnonymousy) {}
    };
    Parser local14 = new Parser()
    {
      public final ArrayList parse(JSONArray paramAnonymousJSONArray)
      {
        return null;
      }
    };
    HashMap localHashMap = new HashMap();
    localHashMap.put("on", String.valueOf(paramBoolean));
    localObject = x.b(a.a("/etc/mobile/state", false), localHashMap, (p)localObject, local14);
    this.f.a((x)localObject);
  }
  
  public final x<RequestResult> b(int paramInt, p<RequestResult> paramp)
  {
    return this.h.e(paramInt, paramp);
  }
  
  public final x<SNBJSONObject> b(long paramLong, int paramInt1, int paramInt2, String paramString, p<SNBJSONObject> paramp)
  {
    String str = a.a("/reportspam/create", false);
    BasicNameValuePair localBasicNameValuePair1 = new BasicNameValuePair("id", String.valueOf(paramLong));
    BasicNameValuePair localBasicNameValuePair2 = new BasicNameValuePair("type", String.valueOf(paramInt1));
    BasicNameValuePair localBasicNameValuePair3 = new BasicNameValuePair("spamtype", String.valueOf(paramInt2));
    paramString = new BasicNameValuePair("irre_symbol", paramString);
    SNBJsonObjectPaser localSNBJsonObjectPaser = new SNBJsonObjectPaser();
    paramString = x.b(str, new BasicNameValuePair[] { localBasicNameValuePair1, localBasicNameValuePair2, localBasicNameValuePair3, paramString }, paramp, localSNBJsonObjectPaser);
    this.f.a(paramString);
    return paramString;
  }
  
  public final x<ArrayList<Comment>> b(long paramLong, int paramInt, p<ArrayList<Comment>> paramp)
  {
    BasicNameValuePair localBasicNameValuePair1 = new BasicNameValuePair("id", String.valueOf(paramLong));
    BasicNameValuePair localBasicNameValuePair2 = new BasicNameValuePair("count", "20");
    BasicNameValuePair localBasicNameValuePair3 = new BasicNameValuePair("page", String.valueOf(paramInt));
    GPagedParser localGPagedParser = new GPagedParser("comments", new TypeToken() {}.getType());
    paramp = x.a(a.a("/statuses/comments_excellent", false), new BasicNameValuePair[] { localBasicNameValuePair1, localBasicNameValuePair2, localBasicNameValuePair3 }, paramp, localGPagedParser);
    this.f.a(paramp);
    return paramp;
  }
  
  public final x<ArrayList<Comment>> b(long paramLong1, long paramLong2, p<ArrayList<Comment>> paramp)
  {
    return a(paramLong1, paramLong2, "/comments/send", paramp);
  }
  
  public final x<RequestResult> b(long paramLong, p<RequestResult> paramp)
  {
    return this.g.b(paramLong, paramp);
  }
  
  public final x<JSONObject> b(long paramLong, String paramString, p<JSONObject> paramp)
  {
    return a(7, 0L, null, null, 0L, null, paramLong, paramString, paramp);
  }
  
  public final x<JsonObject> b(long paramLong, String paramString1, String paramString2, p<JsonObject> paramp)
  {
    BasicNameValuePair localBasicNameValuePair = new BasicNameValuePair("uid", String.valueOf(paramLong));
    paramString1 = new BasicNameValuePair("platform_id", paramString1);
    paramString2 = new BasicNameValuePair("page_id", paramString2);
    String str = a.a("/promotion/display_ad_batch", false);
    GParser localGParser = new GParser(JsonObject.class);
    paramString1 = x.a(str, new BasicNameValuePair[] { localBasicNameValuePair, paramString1, paramString2 }, paramp, localGParser);
    this.f.a(paramString1);
    return paramString1;
  }
  
  public final x<IMGroup> b(long paramLong, boolean paramBoolean, p<IMGroup> paramp)
  {
    return this.k.b(paramLong, paramBoolean, paramp);
  }
  
  public final x<Integer> b(p<Integer> paramp)
  {
    return this.h.a(paramp);
  }
  
  public final x<ArrayList<User>> b(String paramString, int paramInt1, int paramInt2, p<ArrayList<User>> paramp)
  {
    return this.h.b(paramString, paramInt1, paramInt2, paramp);
  }
  
  public final x<JSONObject> b(String paramString, p<JSONObject> paramp)
  {
    Object localObject1 = a.b("/stock/myandanalyst", false) + "?symbol=" + paramString + "&request_method=get";
    String str = a.b("/recommend/user/stock_hot_user", false) + "?symbol=" + paramString + "&start=0&count=6&request_method=get";
    Object localObject2 = a.b("/imgroups_recommend/show", false) + "?symbol=" + paramString + "&request_method=get";
    paramString = a.b("/recommend/pofriends", false) + "?code=" + paramString + "&type=1&start=0&count=0&request_method=get";
    paramString = new BasicNameValuePair("api", (String)localObject1 + "#47bce5c74f#" + str + "#47bce5c74f#" + (String)localObject2 + "#47bce5c74f#" + paramString);
    localObject1 = new BasicNameValuePair("tasktype", "seq");
    str = a.a("/apimerge/result", false);
    localObject2 = new SNBJsonObjectPaser();
    paramString = x.b(str, new BasicNameValuePair[] { paramString, localObject1 }, paramp, (Parser)localObject2);
    paramString.j = new z();
    this.f.a(paramString);
    return paramString;
  }
  
  public final x<User> b(String paramString1, String paramString2, p<User> paramp)
  {
    return this.h.a(paramString1, paramString2, paramp);
  }
  
  public final x<RequestResult> b(String paramString1, String paramString2, String paramString3, p<RequestResult> paramp)
  {
    return a(paramString1, paramString2, false, paramString3, paramp);
  }
  
  public final x<LoginResult> b(String paramString1, String paramString2, String paramString3, String paramString4, p<LoginResult> paramp)
  {
    return b(paramString1, null, paramString2, paramString3, paramString4, paramp);
  }
  
  public final x<LoginResult> b(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, p<LoginResult> paramp)
  {
    paramString1 = new BasicNameValuePair("source", paramString1);
    paramString3 = new BasicNameValuePair("oauth_user_id", paramString3);
    paramString5 = new BasicNameValuePair("sid", paramString5);
    BasicNameValuePair localBasicNameValuePair1 = new BasicNameValuePair("client_id", "JtXbaMn7eP");
    paramString4 = new BasicNameValuePair("open_access_token", paramString4);
    BasicNameValuePair localBasicNameValuePair2 = new BasicNameValuePair("client_secret", "txsDfr9FphRSPov5oQou74");
    BasicNameValuePair localBasicNameValuePair3 = new BasicNameValuePair("grant_type", "password");
    paramString2 = new BasicNameValuePair("open_id", paramString2);
    String str = a("/provider/oauth/token");
    GParser localGParser = new GParser(LoginResult.class);
    paramString1 = x.b(str, new BasicNameValuePair[] { paramString1, paramString3, paramString5, localBasicNameValuePair1, paramString4, localBasicNameValuePair2, localBasicNameValuePair3, paramString2 }, paramp, localGParser);
    this.f.a(paramString1);
    return paramString1;
  }
  
  public final x<JsonElement> b(String paramString1, String paramString2, Map<String, String> paramMap, p<JsonElement> paramp)
  {
    if (paramString2.equalsIgnoreCase("post")) {}
    for (paramString1 = x.b(a.a(paramString1, false), paramMap, paramp, new GParser(JsonElement.class));; paramString1 = x.a(a.a(paramString1, false), paramMap, paramp, new GParser(JsonElement.class)))
    {
      this.f.a(paramString1);
      return paramString1;
    }
  }
  
  public final x<FileUploadResult> b(byte[] paramArrayOfByte, String paramString, p<FileUploadResult> paramp)
  {
    StringBuilder localStringBuilder = new StringBuilder(a.a("/upload/image", false));
    localStringBuilder.append("?ssid=c499e6a8-9756-4b0f-b483-e70a3dc0ff76&appId=community&scale=advanced:split");
    j localj = new j(com.e.a.a.e.b, (byte)0);
    localj.a("file", new com.e.a.a.a.b(paramArrayOfByte, paramString));
    paramArrayOfByte = x.a(localStringBuilder.toString(), localj, paramp, new GParser(FileUploadResult.class));
    paramArrayOfByte.j = new ad();
    this.f.a(paramArrayOfByte);
    return paramArrayOfByte;
  }
  
  public final x<List<IMGroup>> b(Long[] paramArrayOfLong, p<List<IMGroup>> paramp)
  {
    return this.k.a(paramArrayOfLong, paramp);
  }
  
  public final x<List<LinkedTreeMap<String, String>>> b(String[] paramArrayOfString, p<List<LinkedTreeMap<String, String>>> paramp)
  {
    GParser localGParser = new GParser(new TypeToken() {}.getType());
    StringBuilder localStringBuilder = new StringBuilder();
    int i2 = paramArrayOfString.length;
    int i1 = 0;
    while (i1 < i2)
    {
      localStringBuilder.append(paramArrayOfString[i1]);
      localStringBuilder.append(",");
      i1 += 1;
    }
    if (localStringBuilder.indexOf(",") != -1) {
      localStringBuilder.deleteCharAt(localStringBuilder.lastIndexOf(","));
    }
    paramArrayOfString = new HashMap();
    paramArrayOfString.put("types", localStringBuilder.toString());
    paramArrayOfString = x.a(a.a("/user/setting/select", false), paramArrayOfString, paramp, localGParser);
    this.f.a(paramArrayOfString);
    return paramArrayOfString;
  }
  
  public final n<ArrayList<User>> c(long paramLong, int paramInt, p<ArrayList<User>> paramp)
  {
    return this.h.a(String.valueOf(paramLong), paramInt, paramp);
  }
  
  public final x<RequestResult> c(int paramInt, p<RequestResult> paramp)
  {
    BasicNameValuePair localBasicNameValuePair = new BasicNameValuePair("gmt", String.valueOf(paramInt));
    String str = a.a("/user/setting/timezone", false);
    GParser localGParser = new GParser(RequestResult.class);
    paramp = x.b(str, new BasicNameValuePair[] { localBasicNameValuePair }, paramp, localGParser);
    this.f.a(paramp);
    return paramp;
  }
  
  public final x<JsonObject> c(long paramLong1, long paramLong2, p<JsonObject> paramp)
  {
    BasicNameValuePair localBasicNameValuePair1 = new BasicNameValuePair("uid", String.valueOf(paramLong1));
    BasicNameValuePair localBasicNameValuePair2 = new BasicNameValuePair("id", String.valueOf(paramLong2));
    String str = a.a("/etc/prompt/bomb_box/show_log", false);
    GParser localGParser = new GParser(JsonObject.class);
    paramp = x.b(str, new BasicNameValuePair[] { localBasicNameValuePair1, localBasicNameValuePair2 }, paramp, localGParser);
    this.f.a(paramp);
    return paramp;
  }
  
  public final x<PagedList<RewardCash>> c(long paramLong, p<PagedList<RewardCash>> paramp)
  {
    return this.g.g(paramLong, paramp);
  }
  
  public final x<Cube> c(long paramLong, String paramString, p<Cube> paramp)
  {
    return this.l.a(paramLong, paramString, paramp);
  }
  
  public final x<JsonObject> c(p<JsonObject> paramp)
  {
    return this.h.d(paramp);
  }
  
  public final x<Map<String, JsonArray>> c(String paramString, p<Map<String, JsonArray>> paramp)
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(paramString);
    return this.i.a(localArrayList, false, paramp);
  }
  
  public final x<SNBJSONObject> c(String paramString1, String paramString2, p<SNBJSONObject> paramp)
  {
    long l1 = System.currentTimeMillis();
    Object localObject = w.b(paramString1 + w.b("xq_anonymous_since_2014") + l1);
    paramString1 = new BasicNameValuePair("sid", paramString1);
    localObject = new BasicNameValuePair("sign", (String)localObject);
    BasicNameValuePair localBasicNameValuePair1 = new BasicNameValuePair("timestamp", String.valueOf(l1));
    paramString2 = new BasicNameValuePair("version", paramString2);
    BasicNameValuePair localBasicNameValuePair2 = new BasicNameValuePair("type", "1");
    BasicNameValuePair localBasicNameValuePair3 = new BasicNameValuePair("client_id", "JtXbaMn7eP");
    BasicNameValuePair localBasicNameValuePair4 = new BasicNameValuePair("client_secret", "txsDfr9FphRSPov5oQou74");
    BasicNameValuePair localBasicNameValuePair5 = new BasicNameValuePair("grant_type", "password");
    String str = a("/provider/oauth/token");
    SNBJsonObjectPaser localSNBJsonObjectPaser = new SNBJsonObjectPaser();
    paramString1 = x.b(str, new BasicNameValuePair[] { paramString1, localObject, localBasicNameValuePair1, paramString2, localBasicNameValuePair2, localBasicNameValuePair3, localBasicNameValuePair4, localBasicNameValuePair5 }, paramp, localSNBJsonObjectPaser);
    this.f.a(paramString1);
    return paramString1;
  }
  
  public final x<RequestResult> c(String paramString1, String paramString2, String paramString3, p<RequestResult> paramp)
  {
    return a(paramString1, paramString2, true, paramString3, paramp);
  }
  
  public final x<LoginResult> c(String paramString1, String paramString2, String paramString3, String paramString4, p<LoginResult> paramp)
  {
    paramString1 = new BasicNameValuePair("telephone", paramString1);
    paramString2 = new BasicNameValuePair("areacode", paramString2);
    paramString3 = new BasicNameValuePair("password", w.a(paramString3));
    paramString4 = new BasicNameValuePair("sid", paramString4);
    BasicNameValuePair localBasicNameValuePair1 = new BasicNameValuePair("client_id", "JtXbaMn7eP");
    BasicNameValuePair localBasicNameValuePair2 = new BasicNameValuePair("client_secret", "txsDfr9FphRSPov5oQou74");
    BasicNameValuePair localBasicNameValuePair3 = new BasicNameValuePair("grant_type", "password");
    String str = a("/provider/oauth/token");
    GParser localGParser = new GParser(LoginResult.class);
    paramString1 = x.b(str, new BasicNameValuePair[] { paramString1, paramString2, paramString3, paramString4, localBasicNameValuePair1, localBasicNameValuePair2, localBasicNameValuePair3 }, paramp, localGParser);
    this.f.a(paramString1);
    return paramString1;
  }
  
  public final x<ArrayList<Editorial>> d(int paramInt, p<ArrayList<Editorial>> paramp)
  {
    return this.l.a(paramInt, paramp);
  }
  
  public final x<RequestResult> d(long paramLong, p<RequestResult> paramp)
  {
    String str = a.a("/comments/destroy/" + paramLong, false);
    GParser localGParser = new GParser(RequestResult.class);
    paramp = x.b(str, new BasicNameValuePair[0], paramp, localGParser);
    this.f.a(paramp);
    return paramp;
  }
  
  public final x<JsonObject> d(long paramLong, String paramString, p<JsonObject> paramp)
  {
    BasicNameValuePair localBasicNameValuePair = new BasicNameValuePair("uid", String.valueOf(paramLong));
    paramString = new BasicNameValuePair("promotion_id", paramString);
    String str = a("/promotion/click_log");
    GParser localGParser = new GParser(JsonObject.class);
    paramString = x.b(str, new BasicNameValuePair[] { localBasicNameValuePair, paramString }, paramp, localGParser);
    this.f.a(paramString);
    return paramString;
  }
  
  public final x<JsonObject> d(p<JsonObject> paramp)
  {
    return this.h.i(paramp);
  }
  
  public final x<RequestResult> d(String paramString, p<RequestResult> paramp)
  {
    return this.i.a(paramString, paramp);
  }
  
  public final x<JsonObject> d(String paramString1, String paramString2, p<JsonObject> paramp)
  {
    paramString1 = new BasicNameValuePair("areacode", paramString1);
    paramString2 = new BasicNameValuePair("telephone", String.valueOf(paramString2));
    String str = a.a("/account/get_bind_user", false);
    GParser localGParser = new GParser(JsonObject.class);
    paramString1 = x.a(str, new BasicNameValuePair[] { paramString1, paramString2 }, paramp, localGParser);
    this.f.a(paramString1);
    return paramString1;
  }
  
  public final x<LoginResult> d(String paramString1, String paramString2, String paramString3, p<LoginResult> paramp)
  {
    BasicNameValuePair localBasicNameValuePair1 = new BasicNameValuePair("username", paramString1);
    if (paramString2 == null) {}
    for (paramString1 = null;; paramString1 = w.a(paramString2))
    {
      paramString1 = new BasicNameValuePair("password", paramString1);
      paramString2 = new BasicNameValuePair("sid", paramString3);
      paramString3 = new BasicNameValuePair("client_id", "JtXbaMn7eP");
      BasicNameValuePair localBasicNameValuePair2 = new BasicNameValuePair("client_secret", "txsDfr9FphRSPov5oQou74");
      BasicNameValuePair localBasicNameValuePair3 = new BasicNameValuePair("grant_type", "password");
      String str = a("/provider/oauth/token");
      GParser localGParser = new GParser(LoginResult.class);
      paramString1 = x.b(str, new BasicNameValuePair[] { localBasicNameValuePair1, paramString1, paramString2, paramString3, localBasicNameValuePair2, localBasicNameValuePair3 }, paramp, localGParser);
      this.f.a(paramString1);
      return paramString1;
    }
  }
  
  public final x<RequestResult> e(long paramLong, p<RequestResult> paramp)
  {
    BasicNameValuePair localBasicNameValuePair = new BasicNameValuePair("id", String.valueOf(paramLong));
    String str = a.a("/comments/like", false);
    GParser localGParser = new GParser(RequestResult.class);
    paramp = x.b(str, new BasicNameValuePair[] { localBasicNameValuePair }, paramp, localGParser);
    this.f.a(paramp);
    return paramp;
  }
  
  public final x<Remind> e(p<Remind> paramp)
  {
    String str = a.a("/remind/unread", false);
    GParser localGParser = new GParser(Remind.class);
    paramp = x.a(str, new BasicNameValuePair[0], paramp, localGParser);
    this.f.a(paramp);
    return paramp;
  }
  
  public final x<LoginResult> e(String paramString, p<LoginResult> paramp)
  {
    BasicNameValuePair localBasicNameValuePair1 = new BasicNameValuePair("client_id", "JtXbaMn7eP");
    BasicNameValuePair localBasicNameValuePair2 = new BasicNameValuePair("client_secret", "txsDfr9FphRSPov5oQou74");
    BasicNameValuePair localBasicNameValuePair3 = new BasicNameValuePair("grant_type", "refresh_token");
    paramString = new BasicNameValuePair("refresh_token", paramString);
    String str = a("/provider/oauth/token");
    GParser localGParser = new GParser(LoginResult.class);
    paramString = x.b(str, new BasicNameValuePair[] { localBasicNameValuePair1, localBasicNameValuePair2, localBasicNameValuePair3, paramString }, paramp, localGParser);
    this.f.a(paramString);
    return paramString;
  }
  
  public final x<RequestResult> e(String paramString1, String paramString2, p<RequestResult> paramp)
  {
    paramString1 = new BasicNameValuePair("nickname", paramString1);
    paramString2 = new BasicNameValuePair("access_token", paramString2);
    String str = a.a("/account/verify_nickname", false);
    GParser localGParser = new GParser(RequestResult.class);
    paramString1 = x.a(str, new BasicNameValuePair[] { paramString1, paramString2 }, paramp, localGParser);
    this.f.a(paramString1);
    return paramString1;
  }
  
  public final x<RequestResult> e(String paramString1, String paramString2, String paramString3, p<RequestResult> paramp)
  {
    paramString1 = new BasicNameValuePair("sid", paramString1);
    BasicNameValuePair localBasicNameValuePair = new BasicNameValuePair("type", "1");
    paramString2 = new BasicNameValuePair("version", paramString2);
    paramString3 = new BasicNameValuePair("channel", paramString3);
    String str = a.a("/mobile_client/setting", false);
    GParser localGParser = new GParser(RequestResult.class);
    paramString1 = x.a(str, new BasicNameValuePair[] { paramString1, localBasicNameValuePair, paramString2, paramString3 }, paramp, localGParser);
    this.f.a(paramString1);
    return paramString1;
  }
  
  public final x<RequestResult> f(long paramLong, p<RequestResult> paramp)
  {
    BasicNameValuePair localBasicNameValuePair = new BasicNameValuePair("id", String.valueOf(paramLong));
    String str = a.a("/comments/unlike", false);
    GParser localGParser = new GParser(RequestResult.class);
    paramp = x.b(str, new BasicNameValuePair[] { localBasicNameValuePair }, paramp, localGParser);
    this.f.a(paramp);
    return paramp;
  }
  
  public final x<JsonObject> f(p<JsonObject> paramp)
  {
    String str = a("/app/mobile_module");
    GParser localGParser = new GParser(JsonObject.class);
    paramp = x.a(str, new BasicNameValuePair[0], paramp, localGParser);
    this.f.a(paramp);
    return paramp;
  }
  
  public final x<JSONObject> f(String paramString, p<JSONObject> paramp)
  {
    BasicNameValuePair localBasicNameValuePair1 = new BasicNameValuePair("appid", "wx8be10642d9baf61f");
    BasicNameValuePair localBasicNameValuePair2 = new BasicNameValuePair("secret", "5b908b2ca133d7a9aeaa075146da6869");
    paramString = new BasicNameValuePair("code", paramString);
    BasicNameValuePair localBasicNameValuePair3 = new BasicNameValuePair("grant_type", "authorization_code");
    SNBJsonObjectPaser localSNBJsonObjectPaser = new SNBJsonObjectPaser();
    paramString = x.a("https://api.weixin.qq.com/sns/oauth2/access_token", new BasicNameValuePair[] { localBasicNameValuePair1, localBasicNameValuePair2, paramString, localBasicNameValuePair3 }, paramp, localSNBJsonObjectPaser);
    this.f.a(paramString);
    return paramString;
  }
  
  public final x<SNBJSONObject> f(String paramString1, String paramString2, p<SNBJSONObject> paramp)
  {
    paramString1 = new BasicNameValuePair("email", paramString1);
    paramString2 = new BasicNameValuePair("access_token", paramString2);
    String str = a.a("/account/find_passwd", false);
    SNBJsonObjectPaser localSNBJsonObjectPaser = new SNBJsonObjectPaser();
    paramString1 = x.b(str, new BasicNameValuePair[] { paramString1, paramString2 }, paramp, localSNBJsonObjectPaser);
    this.f.a(paramString1);
    return paramString1;
  }
  
  public final x<User> g(long paramLong, p<User> paramp)
  {
    return this.h.a(paramLong, paramp);
  }
  
  public final x<JsonObject> g(p<JsonObject> paramp)
  {
    GParser localGParser = new GParser(new TypeToken() {}.getType());
    paramp = x.a(a.a("/privacy/show", false), new BasicNameValuePair[0], paramp, localGParser);
    this.f.a(paramp);
    return paramp;
  }
  
  public final x<JSONObject> g(String paramString, p<JSONObject> paramp)
  {
    Object localObject = a.b("/users/search", false) + "?count=4&q=" + paramString + "&request_method=get&hl=0";
    String str = a.b("/stock/search", false) + "?size=4&code=" + paramString + "&request_method=get";
    paramString = a.b("/cube/search", false) + "?count=3&q=" + paramString + "&request_method=get";
    paramString = new BasicNameValuePair("api", (String)localObject + "#47bce5c74f#" + str + "#47bce5c74f#" + paramString);
    localObject = new BasicNameValuePair("tasktype", "par");
    str = a.a("/apimerge/result", false);
    SNBJsonObjectPaser localSNBJsonObjectPaser = new SNBJsonObjectPaser();
    paramString = x.a(str, new BasicNameValuePair[] { paramString, localObject }, paramp, localSNBJsonObjectPaser);
    paramString.j = new z();
    this.f.a(paramString);
    return paramString;
  }
  
  public final x<JSONObject> g(String paramString1, String paramString2, p<JSONObject> paramp)
  {
    paramString1 = new BasicNameValuePair("access_token", paramString1);
    paramString2 = new BasicNameValuePair("openid", paramString2);
    SNBJsonObjectPaser localSNBJsonObjectPaser = new SNBJsonObjectPaser();
    paramString1 = x.a("https://api.weixin.qq.com/sns/userinfo", new BasicNameValuePair[] { paramString1, paramString2 }, paramp, localSNBJsonObjectPaser);
    this.f.a(paramString1);
    return paramString1;
  }
  
  public final x<RequestResult> h(long paramLong, p<RequestResult> paramp)
  {
    return this.h.d(paramLong, paramp);
  }
  
  public final x<List<LinkedTreeMap<String, String>>> h(p<List<LinkedTreeMap<String, String>>> paramp)
  {
    GParser localGParser = new GParser(new TypeToken() {}.getType());
    paramp = x.a(a.a("/friendships/groups", false), new BasicNameValuePair[0], paramp, localGParser);
    this.f.a(paramp);
    return paramp;
  }
  
  public final x<JsonObject> h(String paramString, p<JsonObject> paramp)
  {
    return this.m.a(paramString, paramp);
  }
  
  public final x<JsonObject> h(String paramString1, String paramString2, p<JsonObject> paramp)
  {
    return this.m.c(paramString1, paramString2, paramp);
  }
  
  public final x<RequestResult> i(long paramLong, p<RequestResult> paramp)
  {
    return this.h.a(new Long[] { Long.valueOf(paramLong) }, paramp);
  }
  
  public final x<ArrayList<AdBanner>> i(p<ArrayList<AdBanner>> paramp)
  {
    BasicNameValuePair localBasicNameValuePair = new BasicNameValuePair("ad_type", "5");
    String str = a.a("/tc/snowx/ad/list", false);
    GParser localGParser = new GParser("result_data", new TypeToken() {}.getType());
    paramp = x.a(str, new BasicNameValuePair[] { localBasicNameValuePair }, paramp, localGParser);
    this.f.a(paramp);
    return paramp;
  }
  
  public final x<SessionToken> i(String paramString, p<SessionToken> paramp)
  {
    paramString = new BasicNameValuePair("api_path", paramString + ".json");
    String str = a.a("/provider/session/token", false);
    GParser localGParser = new GParser(SessionToken.class);
    paramString = x.b(str, new BasicNameValuePair[] { paramString }, paramp, localGParser);
    this.f.a(paramString);
    return paramString;
  }
  
  public final x<JsonObject> i(String paramString1, String paramString2, p<JsonObject> paramp)
  {
    return this.m.b(paramString1, paramString2, paramp);
  }
  
  public final x<JsonObject> j(long paramLong, p<JsonObject> paramp)
  {
    return this.h.e(paramLong, paramp);
  }
  
  public final x<JsonObject> j(p<JsonObject> paramp)
  {
    GParser localGParser = new GParser(JsonObject.class);
    HashMap localHashMap = new HashMap();
    localHashMap.put("top_type", "1");
    paramp = x.b(a.a("/valueadded/top/cancel", false), localHashMap, paramp, localGParser);
    this.f.a(paramp);
    return paramp;
  }
  
  public final x<JSONObject> j(String paramString, p<JSONObject> paramp)
  {
    paramString = new BasicNameValuePair("version", paramString);
    String str = a.a("/mobile/android/isgray", false);
    SNBJsonObjectPaser localSNBJsonObjectPaser = new SNBJsonObjectPaser();
    paramString = x.a(str, new BasicNameValuePair[] { paramString }, paramp, localSNBJsonObjectPaser);
    paramString.l = o.a;
    this.f.a(paramString);
    return paramString;
  }
  
  public final x<List<FriendshipGroup>> k(long paramLong, p<List<FriendshipGroup>> paramp)
  {
    return this.h.g(paramLong, paramp);
  }
  
  public final x<JsonObject> k(String paramString, p<JsonObject> paramp)
  {
    GParser localGParser = new GParser(JsonObject.class);
    paramString = new BasicNameValuePair("card_id", paramString);
    paramString = x.b(a.a("/rec/card/cancel.json", false), new BasicNameValuePair[] { paramString }, paramp, localGParser);
    this.f.a(paramString);
    return paramString;
  }
  
  public final x<ArrayList<SimpleFund>> l(long paramLong, p<ArrayList<SimpleFund>> paramp)
  {
    return this.i.a(paramLong, paramp);
  }
  
  public final x<Remind> m(long paramLong, p<Remind> paramp)
  {
    HashMap localHashMap = new HashMap();
    if (0L > 0L) {
      localHashMap.put("htl_since_id", "0");
    }
    if (paramLong > 0L) {
      localHashMap.put("ptl_since_id", String.valueOf(paramLong));
    }
    paramp = x.a(a.a("/remind/unread", false), localHashMap, paramp, new GParser(Remind.class));
    this.f.a(paramp);
    return paramp;
  }
  
  public final x<IMGroup> n(long paramLong, p<IMGroup> paramp)
  {
    return this.k.a(paramLong, paramp);
  }
  
  public final x<Boolean> o(long paramLong, p<Boolean> paramp)
  {
    return this.k.d(paramLong, paramp);
  }
  
  public final x<List<User>> p(long paramLong, p<List<User>> paramp)
  {
    return this.k.e(paramLong, paramp);
  }
  
  public final x<List<String>> q(long paramLong, p<List<String>> paramp)
  {
    return this.k.g(paramLong, paramp);
  }
  
  public final x<JsonObject> r(long paramLong, p<JsonObject> paramp)
  {
    BasicNameValuePair localBasicNameValuePair = new BasicNameValuePair("uid", String.valueOf(paramLong));
    String str = a.a("/etc/prompt/bomb_box/show", false);
    GParser localGParser = new GParser(JsonObject.class);
    paramp = x.a(str, new BasicNameValuePair[] { localBasicNameValuePair }, paramp, localGParser);
    this.f.a(paramp);
    return paramp;
  }
  
  public final x<JsonObject> s(long paramLong, p<JsonObject> paramp)
  {
    GParser localGParser = new GParser(JsonObject.class);
    HashMap localHashMap = new HashMap();
    if (paramLong > 0L) {
      localHashMap.put("timeStamp", String.valueOf(paramLong));
    }
    paramp = x.a(a.a("/cubes/discover/element/buttons", false), localHashMap, paramp, localGParser);
    this.f.a(paramp);
    return paramp;
  }
  
  public final x<JsonObject> t(long paramLong, p<JsonObject> paramp)
  {
    GParser localGParser = new GParser(JsonObject.class);
    HashMap localHashMap = new HashMap();
    localHashMap.put("top_type", "1");
    localHashMap.put("status_id", String.valueOf(paramLong));
    paramp = x.b(a.a("/valueadded/top/add", false), localHashMap, paramp, localGParser);
    this.f.a(paramp);
    return paramp;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\base\b\ai.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
package com.xueqiu.android.base.b;

import android.os.Build;
import android.text.TextUtils;
import com.android.volley.n;
import com.google.gson.JsonObject;
import com.google.gson.reflect.TypeToken;
import com.xueqiu.android.base.util.au;
import com.xueqiu.android.base.util.i;
import com.xueqiu.android.common.model.PagedList;
import com.xueqiu.android.common.model.RequestResult;
import com.xueqiu.android.common.model.parser.GPagedParser;
import com.xueqiu.android.common.model.parser.GParser;
import com.xueqiu.android.common.model.parser.PagedIdList;
import com.xueqiu.android.common.model.parser.Parser;
import com.xueqiu.android.common.model.parser.PublicTimelineParser;
import com.xueqiu.android.community.model.Comment;
import com.xueqiu.android.community.model.LiveNews;
import com.xueqiu.android.community.model.PublicTimeline;
import com.xueqiu.android.community.model.Question;
import com.xueqiu.android.community.model.RewardCash;
import com.xueqiu.android.community.model.Status;
import com.xueqiu.android.community.model.StatusFacetCount;
import com.xueqiu.android.community.model.TopicInfo;
import com.xueqiu.android.community.model.UserNotification;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.apache.http.message.BasicNameValuePair;
import org.json.JSONArray;

public final class aj
  extends a
{
  public aj(ae paramae)
  {
    this.f = paramae;
  }
  
  public final n<ArrayList<Status>> a(String paramString, long paramLong1, long paramLong2, long paramLong3, p<ArrayList<Status>> paramp)
  {
    Object localObject;
    BasicNameValuePair localBasicNameValuePair1;
    label32:
    BasicNameValuePair localBasicNameValuePair2;
    BasicNameValuePair localBasicNameValuePair3;
    label93:
    BasicNameValuePair localBasicNameValuePair4;
    BasicNameValuePair localBasicNameValuePair5;
    if (paramLong1 == 0L)
    {
      localObject = null;
      localBasicNameValuePair1 = new BasicNameValuePair("since_id", (String)localObject);
      if (paramLong2 != 0L) {
        break label224;
      }
      localObject = null;
      localBasicNameValuePair2 = new BasicNameValuePair("max_id", (String)localObject);
      localObject = paramString;
      if (TextUtils.isEmpty(paramString)) {
        localObject = null;
      }
      localObject = new BasicNameValuePair("source", (String)localObject);
      localBasicNameValuePair3 = new BasicNameValuePair("count", "20");
      if (paramLong3 != 0L) {
        break label234;
      }
      paramString = null;
      localBasicNameValuePair4 = new BasicNameValuePair("usergroup_id", paramString);
      localBasicNameValuePair5 = new BasicNameValuePair("page", null);
      if (!i.d()) {
        break label243;
      }
    }
    label224:
    label234:
    label243:
    for (paramString = null;; paramString = "1")
    {
      paramString = new BasicNameValuePair("filter_retweet_text", paramString);
      String str = a.a("/statuses/home_timeline", true);
      Parser local1 = new Parser()
      {
        public final ArrayList<Status> parse(JSONArray paramAnonymousJSONArray)
        {
          return null;
        }
      };
      paramString = x.a(str, new BasicNameValuePair[] { localBasicNameValuePair1, localBasicNameValuePair2, localObject, localBasicNameValuePair3, localBasicNameValuePair4, localBasicNameValuePair5, paramString }, paramp, local1);
      this.f.a(paramString);
      return paramString;
      localObject = String.valueOf(paramLong1);
      break;
      localObject = String.valueOf(paramLong2);
      break label32;
      paramString = String.valueOf(paramLong3);
      break label93;
    }
  }
  
  public final x<PagedList<TopicInfo>> a(int paramInt1, int paramInt2, String paramString, p<PagedList<TopicInfo>> paramp)
  {
    BasicNameValuePair localBasicNameValuePair1 = new BasicNameValuePair("page", String.valueOf(paramInt1));
    BasicNameValuePair localBasicNameValuePair2 = new BasicNameValuePair("size", String.valueOf(paramInt2));
    BasicNameValuePair localBasicNameValuePair3 = new BasicNameValuePair("type", "0");
    BasicNameValuePair localBasicNameValuePair4 = new BasicNameValuePair("tag", paramString);
    if (i.d()) {}
    for (paramString = null;; paramString = "1")
    {
      paramString = new BasicNameValuePair("filter_retweet_text", paramString);
      GParser localGParser = new GParser("list", new TypeToken() {}.getType());
      paramString = x.a(a.a("/statuses/special/v2/list", false), new BasicNameValuePair[] { localBasicNameValuePair1, localBasicNameValuePair2, localBasicNameValuePair3, localBasicNameValuePair4, paramString }, paramp, localGParser);
      this.f.a(paramString);
      return paramString;
    }
  }
  
  public final x<PagedIdList<Status>> a(int paramInt, long paramLong, p<PagedIdList<Status>> paramp)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("type", String.valueOf(paramInt));
    if (0L > 0L) {
      localHashMap.put("since_id", "0");
    }
    if (paramLong > 0L) {
      localHashMap.put("max_id", String.valueOf(paramLong));
    }
    localHashMap.put("size", "20");
    paramp = x.a(a.a("/statuses/paid_mention/list", false), localHashMap, paramp, new GParser(new TypeToken() {}.getType()));
    this.f.a(paramp);
    return paramp;
  }
  
  public final x<ArrayList<Status>> a(int paramInt, String paramString, p<ArrayList<Status>> paramp)
  {
    BasicNameValuePair localBasicNameValuePair1 = new BasicNameValuePair("page", String.valueOf(paramInt));
    BasicNameValuePair localBasicNameValuePair2 = new BasicNameValuePair("size", "20");
    BasicNameValuePair localBasicNameValuePair3 = new BasicNameValuePair("topicType", paramString);
    if (i.d()) {}
    for (paramString = null;; paramString = "1")
    {
      paramString = new BasicNameValuePair("filter_retweet_text", paramString);
      String str = a.a("/statuses/topic", false);
      GParser localGParser = new GParser(new TypeToken() {}.getType());
      paramString = x.a(str, new BasicNameValuePair[] { localBasicNameValuePair1, localBasicNameValuePair2, localBasicNameValuePair3, paramString }, paramp, localGParser);
      this.f.a(paramString);
      return paramString;
    }
  }
  
  public final x<ArrayList<Status>> a(long paramLong, int paramInt1, int paramInt2, p<ArrayList<Status>> paramp)
  {
    BasicNameValuePair localBasicNameValuePair1 = new BasicNameValuePair("user_id", String.valueOf(paramLong));
    BasicNameValuePair localBasicNameValuePair2 = new BasicNameValuePair("page", String.valueOf(paramInt1));
    BasicNameValuePair localBasicNameValuePair3 = new BasicNameValuePair("size", String.valueOf(paramInt2));
    String str = a.a("/statuses/user_timeline/hots", false);
    GParser localGParser = new GParser("items", new TypeToken() {}.getType());
    paramp = x.a(str, new BasicNameValuePair[] { localBasicNameValuePair1, localBasicNameValuePair2, localBasicNameValuePair3 }, paramp, localGParser);
    this.f.a(paramp);
    return paramp;
  }
  
  public final x<PagedList<Status>> a(long paramLong, int paramInt, p<PagedList<Status>> paramp)
  {
    BasicNameValuePair localBasicNameValuePair1 = new BasicNameValuePair("page", String.valueOf(paramInt));
    BasicNameValuePair localBasicNameValuePair2 = new BasicNameValuePair("size", "10");
    BasicNameValuePair localBasicNameValuePair3 = new BasicNameValuePair("id", String.valueOf(paramLong));
    if (i.d()) {}
    for (Object localObject = null;; localObject = "1")
    {
      localObject = new BasicNameValuePair("filter_retweet_text", (String)localObject);
      GParser localGParser = new GParser("statuses", new TypeToken() {}.getType());
      paramp = x.a(a.a("/statuses/special/v2/show", false), new BasicNameValuePair[] { localBasicNameValuePair1, localBasicNameValuePair2, localBasicNameValuePair3, localObject }, paramp, localGParser);
      this.f.a(paramp);
      return paramp;
    }
  }
  
  public final x<ArrayList<Question>> a(long paramLong1, long paramLong2, long paramLong3, p<ArrayList<Question>> paramp)
  {
    BasicNameValuePair localBasicNameValuePair1 = new BasicNameValuePair("user_id", String.valueOf(paramLong1));
    BasicNameValuePair localBasicNameValuePair2 = new BasicNameValuePair("since_id", String.valueOf(paramLong2));
    BasicNameValuePair localBasicNameValuePair3 = new BasicNameValuePair("max_id", String.valueOf(paramLong3));
    BasicNameValuePair localBasicNameValuePair4 = new BasicNameValuePair("size", "10");
    String str = a.a("/statuses/user_timeline/answers", false);
    GParser localGParser = new GParser("items", new TypeToken() {}.getType());
    paramp = x.a(str, new BasicNameValuePair[] { localBasicNameValuePair1, localBasicNameValuePair2, localBasicNameValuePair3, localBasicNameValuePair4 }, paramp, localGParser);
    this.f.a(paramp);
    return paramp;
  }
  
  public final x<ArrayList<Status>> a(long paramLong1, long paramLong2, p<ArrayList<Status>> paramp)
  {
    String str = null;
    BasicNameValuePair localBasicNameValuePair1;
    label34:
    BasicNameValuePair localBasicNameValuePair2;
    BasicNameValuePair localBasicNameValuePair3;
    if (paramLong1 == 0L)
    {
      localObject = null;
      localBasicNameValuePair1 = new BasicNameValuePair("since_id", (String)localObject);
      if (paramLong2 != 0L) {
        break label158;
      }
      localObject = null;
      localBasicNameValuePair2 = new BasicNameValuePair("max_id", (String)localObject);
      localBasicNameValuePair3 = new BasicNameValuePair("count", "20");
      if (!i.d()) {
        break label167;
      }
    }
    label158:
    label167:
    for (Object localObject = str;; localObject = "1")
    {
      localObject = new BasicNameValuePair("filter_retweet_text", (String)localObject);
      str = a.a("/statuses/mentions", false);
      Parser local19 = new Parser()
      {
        public final ArrayList parse(JSONArray paramAnonymousJSONArray)
        {
          return null;
        }
      };
      paramp = x.a(str, new BasicNameValuePair[] { localBasicNameValuePair1, localBasicNameValuePair2, localBasicNameValuePair3, localObject }, paramp, local19);
      this.f.a(paramp);
      return paramp;
      localObject = String.valueOf(paramLong1);
      break;
      localObject = String.valueOf(paramLong2);
      break label34;
    }
  }
  
  public final x<Comment> a(long paramLong1, long paramLong2, String paramString, boolean paramBoolean, p<Comment> paramp)
  {
    BasicNameValuePair localBasicNameValuePair1 = new BasicNameValuePair("id", String.valueOf(paramLong1));
    Object localObject;
    BasicNameValuePair localBasicNameValuePair2;
    int i;
    label58:
    BasicNameValuePair localBasicNameValuePair3;
    BasicNameValuePair localBasicNameValuePair4;
    if (paramLong2 == 0L)
    {
      localObject = null;
      localObject = new BasicNameValuePair("cid", (String)localObject);
      localBasicNameValuePair2 = new BasicNameValuePair("comment", paramString);
      if (!paramBoolean) {
        break label215;
      }
      i = 1;
      localBasicNameValuePair3 = new BasicNameValuePair("forward", String.valueOf(i));
      localBasicNameValuePair4 = new BasicNameValuePair("split", "true");
      if (!paramBoolean) {
        break label221;
      }
    }
    label215:
    label221:
    for (paramString = String.format("%s_%s", new Object[] { Build.MODEL, Build.BRAND });; paramString = null)
    {
      paramString = new BasicNameValuePair("device", paramString);
      String str = a.a("/statuses/reply", false);
      GParser localGParser = new GParser(Comment.class);
      paramString = x.b(str, new BasicNameValuePair[] { localBasicNameValuePair1, localObject, localBasicNameValuePair2, localBasicNameValuePair3, localBasicNameValuePair4, paramString }, paramp, localGParser);
      this.f.a(paramString);
      return paramString;
      localObject = String.valueOf(paramLong2);
      break;
      i = 0;
      break label58;
    }
  }
  
  public final x<Comment> a(long paramLong1, long paramLong2, String paramString1, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, boolean paramBoolean4, String paramString2, p<Comment> paramp)
  {
    BasicNameValuePair localBasicNameValuePair1 = new BasicNameValuePair("id", String.valueOf(paramLong1));
    Object localObject;
    BasicNameValuePair localBasicNameValuePair2;
    int i;
    label58:
    BasicNameValuePair localBasicNameValuePair3;
    label83:
    BasicNameValuePair localBasicNameValuePair4;
    label105:
    BasicNameValuePair localBasicNameValuePair5;
    label128:
    BasicNameValuePair localBasicNameValuePair6;
    if (paramLong2 == 0L)
    {
      localObject = null;
      localObject = new BasicNameValuePair("cid", (String)localObject);
      localBasicNameValuePair2 = new BasicNameValuePair("comment", paramString1);
      if (!paramBoolean1) {
        break label302;
      }
      i = 1;
      localBasicNameValuePair3 = new BasicNameValuePair("forward", String.valueOf(i));
      if (!paramBoolean2) {
        break label308;
      }
      paramString1 = "true";
      localBasicNameValuePair4 = new BasicNameValuePair("split", paramString1);
      if (!paramBoolean3) {
        break label316;
      }
      paramString1 = "true";
      localBasicNameValuePair5 = new BasicNameValuePair("answer", paramString1);
      if (!paramBoolean4) {
        break label324;
      }
      paramString1 = "true";
      localBasicNameValuePair6 = new BasicNameValuePair("charge", paramString1);
      paramString2 = new BasicNameValuePair("qtype", paramString2);
      if (!paramBoolean1) {
        break label332;
      }
    }
    label302:
    label308:
    label316:
    label324:
    label332:
    for (paramString1 = String.format("%s_%s", new Object[] { Build.MODEL, Build.BRAND });; paramString1 = null)
    {
      paramString1 = new BasicNameValuePair("device", paramString1);
      String str = a.a("/statuses/reply", false);
      GParser localGParser = new GParser(Comment.class);
      paramString1 = x.b(str, new BasicNameValuePair[] { localBasicNameValuePair1, localObject, localBasicNameValuePair2, localBasicNameValuePair3, localBasicNameValuePair4, localBasicNameValuePair5, localBasicNameValuePair6, paramString2, paramString1 }, paramp, localGParser);
      this.f.a(paramString1);
      return paramString1;
      localObject = String.valueOf(paramLong2);
      break;
      i = 0;
      break label58;
      paramString1 = "false";
      break label83;
      paramString1 = "false";
      break label105;
      paramString1 = "false";
      break label128;
    }
  }
  
  public final x<Status> a(long paramLong, p<Status> paramp)
  {
    BasicNameValuePair localBasicNameValuePair1 = new BasicNameValuePair("id", String.valueOf(paramLong));
    BasicNameValuePair localBasicNameValuePair2 = new BasicNameValuePair("card_addition", "1");
    String str = a.a("/statuses/show", false);
    Parser local20 = new Parser()
    {
      public final ArrayList parse(JSONArray paramAnonymousJSONArray)
      {
        return null;
      }
    };
    paramp = x.a(str, new BasicNameValuePair[] { localBasicNameValuePair1, localBasicNameValuePair2 }, paramp, local20);
    paramp.g = true;
    this.f.a(paramp);
    return paramp;
  }
  
  public final x<ArrayList<Status>> a(long paramLong1, String paramString, int paramInt1, long paramLong2, long paramLong3, int paramInt2, int paramInt3, p<ArrayList<Status>> paramp)
  {
    Object localObject;
    BasicNameValuePair localBasicNameValuePair1;
    label44:
    BasicNameValuePair localBasicNameValuePair2;
    label65:
    BasicNameValuePair localBasicNameValuePair3;
    BasicNameValuePair localBasicNameValuePair4;
    label100:
    BasicNameValuePair localBasicNameValuePair5;
    BasicNameValuePair localBasicNameValuePair6;
    if (paramLong1 == 0L)
    {
      localObject = null;
      localObject = new BasicNameValuePair("user_id", (String)localObject);
      localBasicNameValuePair1 = new BasicNameValuePair("screen_name", paramString);
      if (paramLong2 != 0L) {
        break label250;
      }
      paramString = null;
      localBasicNameValuePair2 = new BasicNameValuePair("since_id", paramString);
      if (paramLong3 != 0L) {
        break label259;
      }
      paramString = null;
      localBasicNameValuePair3 = new BasicNameValuePair("max_id", paramString);
      localBasicNameValuePair4 = new BasicNameValuePair("count", String.valueOf(paramInt2));
      if (paramInt3 != 0) {
        break label268;
      }
      paramString = null;
      localBasicNameValuePair5 = new BasicNameValuePair("page", paramString);
      localBasicNameValuePair6 = new BasicNameValuePair("type", String.valueOf(paramInt1));
      if (!i.d()) {
        break label277;
      }
    }
    label250:
    label259:
    label268:
    label277:
    for (paramString = null;; paramString = "1")
    {
      paramString = new BasicNameValuePair("filter_retweet_text", paramString);
      GPagedParser localGPagedParser = new GPagedParser("statuses", new TypeToken() {}.getType());
      paramString = x.a(a.a("/statuses/user_timeline", true), new BasicNameValuePair[] { localObject, localBasicNameValuePair1, localBasicNameValuePair2, localBasicNameValuePair3, localBasicNameValuePair4, localBasicNameValuePair5, localBasicNameValuePair6, paramString }, paramp, localGPagedParser);
      this.f.a(paramString);
      return paramString;
      localObject = String.valueOf(paramLong1);
      break;
      paramString = String.valueOf(paramLong2);
      break label44;
      paramString = String.valueOf(paramLong3);
      break label65;
      paramString = String.valueOf(paramInt3);
      break label100;
    }
  }
  
  public final x<Status> a(long paramLong, String paramString, int paramInt, p<Status> paramp)
  {
    BasicNameValuePair localBasicNameValuePair1 = new BasicNameValuePair("id", String.valueOf(paramLong));
    paramString = new BasicNameValuePair("status", paramString);
    BasicNameValuePair localBasicNameValuePair2 = new BasicNameValuePair("forward", String.valueOf(paramInt));
    BasicNameValuePair localBasicNameValuePair3 = new BasicNameValuePair("device", String.format("%s_%s", new Object[] { Build.MODEL, Build.BRAND }));
    String str = a.a("/statuses/repost", false);
    GParser localGParser = new GParser(Status.class);
    paramString = x.b(str, new BasicNameValuePair[] { localBasicNameValuePair1, paramString, localBasicNameValuePair2, localBasicNameValuePair3 }, paramp, localGParser);
    this.f.a(paramString);
    return paramString;
  }
  
  public final x<Status> a(long paramLong, String paramString, p<Status> paramp)
  {
    BasicNameValuePair localBasicNameValuePair1 = new BasicNameValuePair("status_id", String.valueOf(paramLong));
    paramString = new BasicNameValuePair("status", paramString);
    BasicNameValuePair localBasicNameValuePair2 = new BasicNameValuePair("device", String.format("%s_%s", new Object[] { Build.MODEL, Build.BRAND }));
    String str = a.a("/statuses/paid_mention/answer", false);
    GParser localGParser = new GParser(Status.class);
    paramString = x.b(str, new BasicNameValuePair[] { localBasicNameValuePair1, paramString, localBasicNameValuePair2 }, paramp, localGParser);
    this.f.a(paramString);
    return paramString;
  }
  
  public final x<ArrayList<TopicInfo>> a(p<ArrayList<TopicInfo>> paramp)
  {
    BasicNameValuePair localBasicNameValuePair1 = new BasicNameValuePair("page", "1");
    BasicNameValuePair localBasicNameValuePair2 = new BasicNameValuePair("count", "1");
    BasicNameValuePair localBasicNameValuePair3 = new BasicNameValuePair("type", "1");
    if (i.d()) {}
    for (Object localObject = null;; localObject = "1")
    {
      localObject = new BasicNameValuePair("filter_retweet_text", (String)localObject);
      GPagedParser localGPagedParser = new GPagedParser("featured", new TypeToken() {}.getType());
      paramp = x.a(a.a("/statuses/special/v2/list", false), new BasicNameValuePair[] { localBasicNameValuePair1, localBasicNameValuePair2, localBasicNameValuePair3, localObject }, paramp, localGPagedParser);
      this.f.a(paramp);
      return paramp;
    }
  }
  
  public final x<ArrayList<Status>> a(String paramString1, long paramLong, String paramString2, String paramString3, int paramInt1, int paramInt2, String paramString4, p<ArrayList<Status>> paramp)
  {
    BasicNameValuePair localBasicNameValuePair1 = new BasicNameValuePair("q", paramString1);
    BasicNameValuePair localBasicNameValuePair2 = new BasicNameValuePair("page", String.valueOf(paramInt1));
    BasicNameValuePair localBasicNameValuePair3;
    BasicNameValuePair localBasicNameValuePair4;
    BasicNameValuePair localBasicNameValuePair5;
    BasicNameValuePair localBasicNameValuePair6;
    BasicNameValuePair localBasicNameValuePair7;
    if (paramLong == 0L)
    {
      paramString1 = null;
      localBasicNameValuePair3 = new BasicNameValuePair("uid", paramString1);
      paramString3 = new BasicNameValuePair("source", paramString3);
      localBasicNameValuePair4 = new BasicNameValuePair("count", String.valueOf(paramInt2));
      paramString4 = new BasicNameValuePair("sort", paramString4);
      localBasicNameValuePair5 = new BasicNameValuePair("comment", "0");
      localBasicNameValuePair6 = new BasicNameValuePair("hl", "0");
      paramString2 = new BasicNameValuePair("symbol", paramString2);
      localBasicNameValuePair7 = new BasicNameValuePair("filter_text", "1");
      if (!i.d()) {
        break label279;
      }
    }
    label279:
    for (paramString1 = null;; paramString1 = "1")
    {
      paramString1 = new BasicNameValuePair("filter_retweet_text", paramString1);
      String str = a.a("/statuses/search", false);
      Parser local21 = new Parser()
      {
        public final ArrayList<Status> parse(JSONArray paramAnonymousJSONArray)
        {
          return null;
        }
      };
      paramString1 = x.a(str, new BasicNameValuePair[] { localBasicNameValuePair1, localBasicNameValuePair2, localBasicNameValuePair3, paramString3, localBasicNameValuePair4, paramString4, localBasicNameValuePair5, localBasicNameValuePair6, paramString2, localBasicNameValuePair7, paramString1 }, paramp, local21);
      this.f.a(paramString1);
      return paramString1;
      paramString1 = String.valueOf(paramLong);
      break;
    }
  }
  
  public final x<JsonObject> a(String paramString, p<JsonObject> paramp)
  {
    paramString = new BasicNameValuePair("interviewId", paramString);
    String str = a.a("/interview/show", false);
    GParser localGParser = new GParser(JsonObject.class);
    paramString = x.a(str, new BasicNameValuePair[] { paramString }, paramp, localGParser);
    this.f.a(paramString);
    return paramString;
  }
  
  public final x<ArrayList<Status>> a(String paramString1, String paramString2, int paramInt1, int paramInt2, p<ArrayList<Status>> paramp)
  {
    BasicNameValuePair localBasicNameValuePair1 = new BasicNameValuePair("symbol_id", paramString1);
    paramString2 = new BasicNameValuePair("source", paramString2);
    BasicNameValuePair localBasicNameValuePair2 = new BasicNameValuePair("count", String.valueOf(paramInt2));
    BasicNameValuePair localBasicNameValuePair3 = new BasicNameValuePair("page", String.valueOf(paramInt1));
    if (i.d()) {}
    for (paramString1 = null;; paramString1 = "1")
    {
      paramString1 = new BasicNameValuePair("filter_retweet_text", paramString1);
      String str = a.a("/statuses/stock_timeline", false);
      Parser local6 = new Parser()
      {
        public final ArrayList parse(JSONArray paramAnonymousJSONArray)
        {
          return null;
        }
      };
      paramString1 = x.a(str, new BasicNameValuePair[] { localBasicNameValuePair1, paramString2, localBasicNameValuePair2, localBasicNameValuePair3, paramString1 }, paramp, local6);
      this.f.a(paramString1);
      return paramString1;
    }
  }
  
  public final x<Status> a(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, p<Status> paramp)
  {
    paramString1 = new BasicNameValuePair("title", paramString1);
    paramString2 = new BasicNameValuePair("status", paramString2);
    paramString3 = new BasicNameValuePair("module_id", paramString3);
    BasicNameValuePair localBasicNameValuePair = new BasicNameValuePair("device", String.format("%s_%s", new Object[] { Build.MODEL, Build.BRAND }));
    paramString4 = new BasicNameValuePair("card_type", paramString4);
    paramString5 = new BasicNameValuePair("card_param", paramString5);
    String str = a.a("/statuses/update", false);
    GParser localGParser = new GParser(Status.class);
    paramString1 = x.b(str, new BasicNameValuePair[] { paramString1, paramString2, paramString3, localBasicNameValuePair, paramString4, paramString5 }, paramp, localGParser);
    this.f.a(paramString1);
    return paramString1;
  }
  
  public final x<List<StatusFacetCount>> a(String paramString, List<String> paramList, long paramLong, p<List<StatusFacetCount>> paramp)
  {
    BasicNameValuePair localBasicNameValuePair = new BasicNameValuePair("symbol", paramString);
    if (paramLong > 0L) {}
    for (paramString = String.valueOf(paramLong);; paramString = null)
    {
      paramString = new BasicNameValuePair("ownerId", paramString);
      paramList = new BasicNameValuePair("source", au.a(paramList, ","));
      String str = a.a("/statuses/facet/source_count", false);
      GParser localGParser = new GParser("facet", new TypeToken() {}.getType());
      paramString = x.a(str, new BasicNameValuePair[] { localBasicNameValuePair, paramString, paramList }, paramp, localGParser);
      this.f.a(paramString);
      return paramString;
    }
  }
  
  public final n<ArrayList<LiveNews>> b(long paramLong1, long paramLong2, p<ArrayList<LiveNews>> paramp)
  {
    BasicNameValuePair localBasicNameValuePair1 = null;
    BasicNameValuePair localBasicNameValuePair2;
    if (paramLong1 == 0L)
    {
      localObject = null;
      localBasicNameValuePair2 = new BasicNameValuePair("since_id", (String)localObject);
      if (paramLong2 != 0L) {
        break label142;
      }
    }
    label142:
    for (Object localObject = localBasicNameValuePair1;; localObject = String.valueOf(paramLong2))
    {
      localObject = new BasicNameValuePair("max_id", (String)localObject);
      localBasicNameValuePair1 = new BasicNameValuePair("size", "20");
      String str = a.a("/statuses/livenews/latest", false);
      GParser localGParser = new GParser(new TypeToken() {}.getType());
      paramp = x.a(str, new BasicNameValuePair[] { localBasicNameValuePair2, localObject, localBasicNameValuePair1 }, paramp, localGParser);
      this.f.a(paramp);
      return paramp;
      localObject = String.valueOf(paramLong1);
      break;
    }
  }
  
  public final x<PagedIdList<Comment>> b(int paramInt, long paramLong, p<PagedIdList<Comment>> paramp)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("type", String.valueOf(paramInt));
    if (0L > 0L) {
      localHashMap.put("since_id", "0");
    }
    if (paramLong > 0L) {
      localHashMap.put("max_id", String.valueOf(paramLong));
    }
    localHashMap.put("size", "20");
    paramp = x.a(a.a("/statuses/paid_mention/comment/list", false), localHashMap, paramp, new GParser(new TypeToken() {}.getType()));
    this.f.a(paramp);
    return paramp;
  }
  
  public final x<ArrayList<Status>> b(long paramLong, int paramInt, p<ArrayList<Status>> paramp)
  {
    BasicNameValuePair localBasicNameValuePair1 = new BasicNameValuePair("userId", String.valueOf(paramLong));
    BasicNameValuePair localBasicNameValuePair2 = new BasicNameValuePair("size", "20");
    BasicNameValuePair localBasicNameValuePair3 = new BasicNameValuePair("page", String.valueOf(paramInt));
    if (i.d()) {}
    for (Object localObject = null;; localObject = "1")
    {
      localObject = new BasicNameValuePair("filter_retweet_text", (String)localObject);
      Parser local7 = new Parser()
      {
        public final ArrayList parse(JSONArray paramAnonymousJSONArray)
        {
          return null;
        }
      };
      paramp = x.a(a.a("/favorites", false), new BasicNameValuePair[] { localBasicNameValuePair1, localBasicNameValuePair2, localBasicNameValuePair3, localObject }, paramp, local7);
      this.f.a(paramp);
      return paramp;
    }
  }
  
  public final x<RequestResult> b(long paramLong, p<RequestResult> paramp)
  {
    paramp = x.b(a.a("/statuses/destroy/" + paramLong, false), new BasicNameValuePair[0], paramp, null);
    this.f.a(paramp);
    return paramp;
  }
  
  public final x<UserNotification> b(p<UserNotification> paramp)
  {
    HashMap localHashMap = new HashMap();
    if (-1L > 0L) {
      localHashMap.put("since_id", "-1");
    }
    paramp = x.a(a.a("/comments/receive_last", false), localHashMap, paramp, new GParser("comment_last", UserNotification.class));
    this.f.a(paramp);
    return paramp;
  }
  
  public final x<JsonObject> b(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, p<JsonObject> paramp)
  {
    paramString1 = new BasicNameValuePair("title", paramString1);
    paramString2 = new BasicNameValuePair("summary", paramString2);
    paramString3 = new BasicNameValuePair("content", paramString3);
    paramString4 = new BasicNameValuePair("nickname", paramString4);
    paramString5 = new BasicNameValuePair("qrcode", paramString5);
    String str = a.a("/image/sharing/comment", false);
    GParser localGParser = new GParser(JsonObject.class);
    paramString1 = x.b(str, new BasicNameValuePair[] { paramString1, paramString2, paramString3, paramString4, paramString5 }, paramp, localGParser);
    paramString1.j = new y(10000);
    this.f.a(paramString1);
    return paramString1;
  }
  
  public final x<PagedList<RewardCash>> c(long paramLong, int paramInt, p<PagedList<RewardCash>> paramp)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("status_id", String.valueOf(paramLong));
    localHashMap.put("size", "20");
    localHashMap.put("page", String.valueOf(paramInt));
    paramp = x.a(a.a("/statuses/reward/list", false), localHashMap, paramp, new GParser(new TypeToken() {}.getType()));
    this.f.a(paramp);
    return paramp;
  }
  
  public final x<ArrayList<PublicTimeline>> c(long paramLong1, long paramLong2, p<ArrayList<PublicTimeline>> paramp)
  {
    BasicNameValuePair localBasicNameValuePair1 = null;
    BasicNameValuePair localBasicNameValuePair2;
    if (paramLong1 == 0L)
    {
      localObject = null;
      localBasicNameValuePair2 = new BasicNameValuePair("since_id", (String)localObject);
      if (paramLong2 != 0L) {
        break label131;
      }
    }
    label131:
    for (Object localObject = localBasicNameValuePair1;; localObject = String.valueOf(paramLong2))
    {
      localObject = new BasicNameValuePair("max_id", (String)localObject);
      localBasicNameValuePair1 = new BasicNameValuePair("count", "10");
      String str = a.a("/statuses/public_timeline", true);
      PublicTimelineParser localPublicTimelineParser = new PublicTimelineParser();
      paramp = x.a(str, new BasicNameValuePair[] { localBasicNameValuePair2, localObject, localBasicNameValuePair1 }, paramp, localPublicTimelineParser);
      this.f.a(paramp);
      return paramp;
      localObject = String.valueOf(paramLong1);
      break;
    }
  }
  
  public final x<JsonObject> c(long paramLong, p<JsonObject> paramp)
  {
    BasicNameValuePair localBasicNameValuePair1 = new BasicNameValuePair("page", "1");
    BasicNameValuePair localBasicNameValuePair2 = new BasicNameValuePair("size", "1");
    BasicNameValuePair localBasicNameValuePair3 = new BasicNameValuePair("id", String.valueOf(paramLong));
    if (i.d()) {}
    for (Object localObject = null;; localObject = "1")
    {
      localObject = new BasicNameValuePair("filter_retweet_text", (String)localObject);
      String str = a.a("/statuses/special/v2/show", false);
      GParser localGParser = new GParser(JsonObject.class);
      paramp = x.a(str, new BasicNameValuePair[] { localBasicNameValuePair1, localBasicNameValuePair2, localBasicNameValuePair3, localObject }, paramp, localGParser);
      this.f.a(paramp);
      return paramp;
    }
  }
  
  public final x<UserNotification> c(p<UserNotification> paramp)
  {
    HashMap localHashMap = new HashMap();
    if (-1L > 0L) {
      localHashMap.put("since_id", "-1");
    }
    paramp = x.a(a.a("/statuses/mentions_last", false), localHashMap, paramp, new GParser("mention_last", UserNotification.class));
    this.f.a(paramp);
    return paramp;
  }
  
  public final x<PagedList<RewardCash>> d(long paramLong, int paramInt, p<PagedList<RewardCash>> paramp)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("comment_id", String.valueOf(paramLong));
    localHashMap.put("size", "20");
    localHashMap.put("page", String.valueOf(paramInt));
    paramp = x.a(a.a("/statuses/reward/comment/list", false), localHashMap, paramp, new GParser(new TypeToken() {}.getType()));
    this.f.a(paramp);
    return paramp;
  }
  
  public final x<Status> d(long paramLong, p<Status> paramp)
  {
    BasicNameValuePair localBasicNameValuePair = new BasicNameValuePair("id", String.valueOf(paramLong));
    String str = a.a("/favorites/destroy", false);
    GParser localGParser = new GParser(Status.class);
    paramp = x.b(str, new BasicNameValuePair[] { localBasicNameValuePair }, paramp, localGParser);
    this.f.a(paramp);
    return paramp;
  }
  
  public final x<UserNotification> d(p<UserNotification> paramp)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("since_id", "-1");
    paramp = x.a(a.a("/statuses/paid_mention/last", false), localHashMap, paramp, new GParser("paid_mention_last", UserNotification.class));
    this.f.a(paramp);
    return paramp;
  }
  
  public final x<Status> e(long paramLong, p<Status> paramp)
  {
    BasicNameValuePair localBasicNameValuePair = new BasicNameValuePair("id", String.valueOf(paramLong));
    String str = a.a("/favorites/create", false);
    GParser localGParser = new GParser(Status.class);
    paramp = x.b(str, new BasicNameValuePair[] { localBasicNameValuePair }, paramp, localGParser);
    this.f.a(paramp);
    return paramp;
  }
  
  public final x<JsonObject> e(p<JsonObject> paramp)
  {
    BasicNameValuePair localBasicNameValuePair = new BasicNameValuePair("device_id", i.b());
    String str = a.a("/etc/luckymoney/sharing/comment", false);
    GParser localGParser = new GParser(JsonObject.class);
    paramp = x.b(str, new BasicNameValuePair[] { localBasicNameValuePair }, paramp, localGParser);
    this.f.a(paramp);
    return paramp;
  }
  
  public final n<Integer> f(long paramLong, p<Integer> paramp)
  {
    if (paramLong == 0L) {}
    for (Object localObject = null;; localObject = String.valueOf(paramLong))
    {
      localObject = new BasicNameValuePair("since_id", (String)localObject);
      String str = a.a("/statuses/livenews/unread_count", false);
      GParser localGParser = new GParser("unread_count", Integer.class);
      paramp = x.a(str, new BasicNameValuePair[] { localObject }, paramp, localGParser);
      this.f.a(paramp);
      return paramp;
    }
  }
  
  public final x<JsonObject> f(p<JsonObject> paramp)
  {
    BasicNameValuePair localBasicNameValuePair = new BasicNameValuePair("device_id", i.b());
    String str = a.a("/etc/luckymoney/sharing/comment/percentage", false);
    GParser localGParser = new GParser(JsonObject.class);
    paramp = x.a(str, new BasicNameValuePair[] { localBasicNameValuePair }, paramp, localGParser);
    this.f.a(paramp);
    return paramp;
  }
  
  public final x<PagedList<RewardCash>> g(long paramLong, p<PagedList<RewardCash>> paramp)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("status_id", String.valueOf(paramLong));
    localHashMap.put("size", "20");
    paramp = x.a(a.a("/statuses/reward/list_by_user", false), localHashMap, paramp, new GParser(new TypeToken() {}.getType()));
    this.f.a(paramp);
    return paramp;
  }
  
  public final x<PagedList<Question>> h(long paramLong, p<PagedList<Question>> paramp)
  {
    BasicNameValuePair localBasicNameValuePair1 = new BasicNameValuePair("user_id", String.valueOf(paramLong));
    BasicNameValuePair localBasicNameValuePair2 = new BasicNameValuePair("page", "1");
    BasicNameValuePair localBasicNameValuePair3 = new BasicNameValuePair("size", "1");
    String str = a.a("/statuses/user_timeline/answers", false);
    GParser localGParser = new GParser(new TypeToken() {}.getType());
    paramp = x.a(str, new BasicNameValuePair[] { localBasicNameValuePair1, localBasicNameValuePair2, localBasicNameValuePair3 }, paramp, localGParser);
    this.f.a(paramp);
    return paramp;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\base\b\aj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
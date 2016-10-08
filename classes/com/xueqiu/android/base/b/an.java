package com.xueqiu.android.base.b;

import com.android.volley.n;
import com.google.gson.JsonObject;
import com.google.gson.reflect.TypeToken;
import com.xueqiu.android.base.storage.prefs.UserLogonDataPrefs;
import com.xueqiu.android.base.u;
import com.xueqiu.android.base.util.au;
import com.xueqiu.android.base.util.v;
import com.xueqiu.android.base.util.w;
import com.xueqiu.android.common.model.BaseGroupInfo;
import com.xueqiu.android.common.model.OAuthBindResult;
import com.xueqiu.android.common.model.RequestResult;
import com.xueqiu.android.common.model.SNBJSONObject;
import com.xueqiu.android.common.model.SearchHots;
import com.xueqiu.android.common.model.parser.GParser;
import com.xueqiu.android.common.model.parser.GroupParser;
import com.xueqiu.android.common.model.parser.PagedGroupParser;
import com.xueqiu.android.common.model.parser.Parser;
import com.xueqiu.android.common.model.parser.SNBJsonObjectPaser;
import com.xueqiu.android.common.model.parser.UserListParser;
import com.xueqiu.android.common.model.parser.UserParser;
import com.xueqiu.android.community.model.FriendshipGroup;
import com.xueqiu.android.community.model.IndustryOfUser;
import com.xueqiu.android.community.model.InterestTopic;
import com.xueqiu.android.community.model.User;
import com.xueqiu.android.community.model.UserProp;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.apache.http.message.BasicNameValuePair;
import org.json.JSONArray;
import org.json.JSONObject;

public class an
  extends a
{
  private static final String g = an.class.getSimpleName();
  
  public an(ae paramae)
  {
    this.f = paramae;
  }
  
  public final n<ArrayList<User>> a(String paramString, int paramInt, p<ArrayList<User>> paramp)
  {
    paramString = new BasicNameValuePair("uid", paramString);
    BasicNameValuePair localBasicNameValuePair1 = new BasicNameValuePair("pageNo", String.valueOf(paramInt));
    BasicNameValuePair localBasicNameValuePair2 = new BasicNameValuePair("size", "20");
    String str = a.a("/friendships/friends", false);
    UserListParser localUserListParser = new UserListParser();
    paramString = x.a(str, new BasicNameValuePair[] { paramString, localBasicNameValuePair1, localBasicNameValuePair2 }, paramp, localUserListParser);
    this.f.a(paramString);
    return paramString;
  }
  
  public final x<ArrayList<User>> a(int paramInt1, int paramInt2, p<ArrayList<User>> paramp)
  {
    BasicNameValuePair localBasicNameValuePair1 = new BasicNameValuePair("id", String.valueOf(paramInt1));
    BasicNameValuePair localBasicNameValuePair2 = new BasicNameValuePair("count", "20");
    BasicNameValuePair localBasicNameValuePair3 = new BasicNameValuePair("detail", "1");
    BasicNameValuePair localBasicNameValuePair4 = new BasicNameValuePair("page", String.valueOf(paramInt2));
    Parser local14 = new Parser()
    {
      public final Object parse(JSONObject paramAnonymousJSONObject)
      {
        if ((paramAnonymousJSONObject.has("industries")) && (paramAnonymousJSONObject.getJSONArray("industries") != null) && (paramAnonymousJSONObject.getJSONArray("industries").length() > 0))
        {
          paramAnonymousJSONObject = (JSONObject)paramAnonymousJSONObject.getJSONArray("industries").get(0);
          if (paramAnonymousJSONObject.has("users")) {
            return new GroupParser(new UserParser()).parse(paramAnonymousJSONObject.getJSONArray("users"));
          }
        }
        return null;
      }
      
      public final ArrayList parse(JSONArray paramAnonymousJSONArray)
      {
        return null;
      }
    };
    paramp = x.a(a.a("/recommend/user/industry", false), new BasicNameValuePair[] { localBasicNameValuePair1, localBasicNameValuePair2, localBasicNameValuePair3, localBasicNameValuePair4 }, paramp, local14);
    this.f.a(paramp);
    return paramp;
  }
  
  public final x<ArrayList<User>> a(int paramInt, p<ArrayList<User>> paramp)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("page", String.valueOf(paramInt));
    localHashMap.put("size", "20");
    paramp = x.a(a.a("/user/white_list/list", false), localHashMap, paramp, new GParser(new TypeToken() {}.getType()));
    this.f.a(paramp);
    return paramp;
  }
  
  public final x<ArrayList<User>> a(int paramInt, String paramString, p<ArrayList<User>> paramp)
  {
    BasicNameValuePair localBasicNameValuePair1 = new BasicNameValuePair("size", "20");
    BasicNameValuePair localBasicNameValuePair2 = new BasicNameValuePair("page", String.valueOf(paramInt));
    paramString = new BasicNameValuePair("relation", paramString);
    String str = a.a("/recommend/user/weibo", false);
    Parser local3 = new Parser()
    {
      public final ArrayList parse(JSONArray paramAnonymousJSONArray)
      {
        return null;
      }
    };
    paramString = x.a(str, new BasicNameValuePair[] { localBasicNameValuePair1, localBasicNameValuePair2, paramString }, paramp, local3);
    this.f.a(paramString);
    return paramString;
  }
  
  public final x<User> a(long paramLong, p<User> paramp)
  {
    BasicNameValuePair localBasicNameValuePair = new BasicNameValuePair("id", String.valueOf(paramLong));
    String str = a.a("/user/show", false);
    UserParser localUserParser = new UserParser();
    paramp = x.a(str, new BasicNameValuePair[] { localBasicNameValuePair }, paramp, localUserParser);
    this.f.a(paramp);
    return paramp;
  }
  
  public final x<RequestResult> a(long paramLong, String paramString, p<RequestResult> paramp)
  {
    Object localObject = a.b("/friendships/create", false) + "?request_method=post&id=" + String.valueOf(paramLong);
    paramString = a.b("/remarks/setting", false) + "?request_method=post&user_id=" + String.valueOf(paramLong) + "&remark=" + paramString;
    paramString = new BasicNameValuePair("api", (String)localObject + "#47bce5c74f#" + paramString);
    localObject = new BasicNameValuePair("tasktype", "seq");
    String str = a.a("/apimerge/result", false);
    Parser local1 = new Parser()
    {
      public final ArrayList parse(JSONArray paramAnonymousJSONArray)
      {
        return null;
      }
    };
    paramString = x.b(str, new BasicNameValuePair[] { paramString, localObject }, paramp, local1);
    paramString.j = new z();
    this.f.a(paramString);
    return paramString;
  }
  
  public final x<RequestResult> a(long paramLong, List<Integer> paramList, p<RequestResult> paramp)
  {
    BasicNameValuePair localBasicNameValuePair = new BasicNameValuePair("uid", String.valueOf(paramLong));
    paramList = new BasicNameValuePair("gid", au.a(paramList.toArray(new Integer[paramList.size()]), ","));
    String str = a.a("/friendships/groups/members/update", false);
    GParser localGParser = new GParser(RequestResult.class);
    paramList = x.b(str, new BasicNameValuePair[] { localBasicNameValuePair, paramList }, paramp, localGParser);
    this.f.a(paramList);
    return paramList;
  }
  
  public final x<Integer> a(p<Integer> paramp)
  {
    u.a();
    BasicNameValuePair localBasicNameValuePair = new BasicNameValuePair("uid", String.valueOf(UserLogonDataPrefs.getLogonUserId()));
    String str = a.a("/user/setting/donate_amount", false);
    GParser localGParser = new GParser("amount", Integer.class);
    paramp = x.a(str, new BasicNameValuePair[] { localBasicNameValuePair }, paramp, localGParser);
    this.f.a(paramp);
    return paramp;
  }
  
  public final x<ArrayList<User>> a(p<ArrayList<User>> paramp, boolean paramBoolean)
  {
    HashMap localHashMap = new HashMap();
    if (paramBoolean) {}
    for (String str = "1";; str = "0")
    {
      localHashMap.put("paid_mention_ft", str);
      paramp = x.a(a.a("/users/autocompleteuser", false), localHashMap, paramp, new UserListParser());
      this.f.a(paramp);
      return paramp;
    }
  }
  
  public final x<ArrayList<User>> a(String paramString, int paramInt1, int paramInt2, p<ArrayList<User>> paramp)
  {
    paramString = new BasicNameValuePair("q", paramString);
    BasicNameValuePair localBasicNameValuePair1 = new BasicNameValuePair("page", String.valueOf(paramInt1));
    BasicNameValuePair localBasicNameValuePair2 = new BasicNameValuePair("count", String.valueOf(paramInt2));
    PagedGroupParser localPagedGroupParser = new PagedGroupParser(new UserParser(), "users");
    paramString = x.a(a.a("/users/search", false), new BasicNameValuePair[] { paramString, localBasicNameValuePair1, localBasicNameValuePair2 }, paramp, localPagedGroupParser);
    this.f.a(paramString);
    return paramString;
  }
  
  public final x<User> a(String paramString, long paramLong, p<User> paramp)
  {
    paramString = new BasicNameValuePair("source", paramString);
    BasicNameValuePair localBasicNameValuePair = new BasicNameValuePair("userid", String.valueOf(paramLong));
    String str = a.a("/account/oauth/user/show", false);
    UserParser localUserParser = new UserParser();
    paramString = x.a(str, new BasicNameValuePair[] { paramString, localBasicNameValuePair }, paramp, localUserParser);
    this.f.a(paramString);
    return paramString;
  }
  
  public final x<ArrayList<User>> a(String paramString, p<ArrayList<User>> paramp)
  {
    paramString = new BasicNameValuePair("q", paramString);
    BasicNameValuePair localBasicNameValuePair1 = new BasicNameValuePair("page", "1");
    BasicNameValuePair localBasicNameValuePair2 = new BasicNameValuePair("count", "20");
    BasicNameValuePair localBasicNameValuePair3 = new BasicNameValuePair("fo", "0");
    BasicNameValuePair localBasicNameValuePair4 = new BasicNameValuePair("fr", "0");
    BasicNameValuePair localBasicNameValuePair5 = new BasicNameValuePair("frPrior", "1");
    BasicNameValuePair localBasicNameValuePair6 = new BasicNameValuePair("hl", "0");
    String str = a.a("/users/search", false);
    UserListParser localUserListParser = new UserListParser();
    paramString = x.a(str, new BasicNameValuePair[] { paramString, localBasicNameValuePair1, localBasicNameValuePair2, localBasicNameValuePair3, localBasicNameValuePair4, localBasicNameValuePair5, localBasicNameValuePair6 }, paramp, localUserListParser);
    this.f.a(paramString);
    return paramString;
  }
  
  public final x<User> a(String paramString1, String paramString2, p<User> paramp)
  {
    paramString1 = new BasicNameValuePair("id", paramString1);
    paramString2 = new BasicNameValuePair("domain", paramString2);
    String str = a.a("/user/show", false);
    UserParser localUserParser = new UserParser();
    paramString1 = x.a(str, new BasicNameValuePair[] { paramString1, paramString2 }, paramp, localUserParser);
    this.f.a(paramString1);
    return paramString1;
  }
  
  public final x<OAuthBindResult> a(String paramString1, String paramString2, String paramString3, long paramLong, String paramString4, String paramString5, p<OAuthBindResult> paramp)
  {
    paramString1 = new BasicNameValuePair("password", paramString1);
    paramString2 = new BasicNameValuePair("source", paramString2);
    paramString3 = new BasicNameValuePair("openid", paramString3);
    paramString5 = new BasicNameValuePair("screenName", paramString5);
    BasicNameValuePair localBasicNameValuePair1 = new BasicNameValuePair("version", "2");
    paramString4 = new BasicNameValuePair("token2", paramString4);
    BasicNameValuePair localBasicNameValuePair2 = new BasicNameValuePair("refreshToken", null);
    BasicNameValuePair localBasicNameValuePair3 = new BasicNameValuePair("expireIn", String.valueOf(paramLong));
    String str = a.a("/account/oauth/bind", false);
    GParser localGParser = new GParser(OAuthBindResult.class);
    paramString1 = x.b(str, new BasicNameValuePair[] { paramString1, paramString2, paramString3, paramString5, localBasicNameValuePair1, paramString4, localBasicNameValuePair2, localBasicNameValuePair3 }, paramp, localGParser);
    this.f.a(paramString1);
    return paramString1;
  }
  
  public final x<RequestResult> a(String paramString1, String paramString2, String paramString3, p<RequestResult> paramp)
  {
    paramString1 = new BasicNameValuePair("oldpasswd", w.a(paramString1));
    paramString2 = new BasicNameValuePair("passwd1", w.a(paramString2));
    paramString3 = new BasicNameValuePair("passwd2", w.a(paramString3));
    String str = a.a("/account/change_password", false);
    GParser localGParser = new GParser(RequestResult.class);
    paramString1 = x.b(str, new BasicNameValuePair[] { paramString1, paramString2, paramString3 }, paramp, localGParser);
    this.f.a(paramString1);
    return paramString1;
  }
  
  public final x<RequestResult> a(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, p<RequestResult> paramp)
  {
    String str = a.a("/user/setting/profile", false);
    paramString1 = new BasicNameValuePair("screenName", paramString1);
    paramString2 = new BasicNameValuePair("gender", paramString2);
    paramString3 = new BasicNameValuePair("province", paramString3);
    paramString4 = new BasicNameValuePair("city", paramString4);
    paramString5 = new BasicNameValuePair("description", paramString5);
    GParser localGParser = new GParser(RequestResult.class);
    paramString1 = x.b(str, new BasicNameValuePair[] { paramString1, paramString2, paramString3, paramString4, paramString5 }, paramp, localGParser);
    this.f.a(paramString1);
    return paramString1;
  }
  
  public final x<RequestResult> a(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, p<RequestResult> paramp)
  {
    paramString1 = new BasicNameValuePair("access_token", paramString1);
    paramString2 = new BasicNameValuePair("areacode", paramString2);
    paramString3 = new BasicNameValuePair("telephone", paramString3);
    paramString6 = new BasicNameValuePair("code", paramString6);
    paramString4 = new BasicNameValuePair("passwd1", w.a(paramString4));
    paramString5 = new BasicNameValuePair("passwd2", w.a(paramString5));
    String str = a.a("/account/reset_passwd_by_telephone", false);
    GParser localGParser = new GParser(RequestResult.class);
    paramString1 = x.b(str, new BasicNameValuePair[] { paramString1, paramString2, paramString3, paramString6, paramString4, paramString5 }, paramp, localGParser);
    this.f.a(paramString1);
    return paramString1;
  }
  
  public final x<List<UserProp>> a(List<String> paramList, p<List<UserProp>> paramp)
  {
    paramList = new BasicNameValuePair("types", au.a(paramList, ","));
    String str = a.a("/user/setting/select", false);
    GParser localGParser = new GParser(new TypeToken() {}.getType());
    paramList = x.a(str, new BasicNameValuePair[] { paramList }, paramp, localGParser);
    this.f.a(paramList);
    return paramList;
  }
  
  public final x<RequestResult> a(Long[] paramArrayOfLong, p<RequestResult> paramp)
  {
    paramArrayOfLong = new BasicNameValuePair("id", au.a(paramArrayOfLong, ","));
    String str = a.a("/friendships/create", false);
    GParser localGParser = new GParser(RequestResult.class);
    paramArrayOfLong = x.b(str, new BasicNameValuePair[] { paramArrayOfLong }, paramp, localGParser);
    this.f.a(paramArrayOfLong);
    return paramArrayOfLong;
  }
  
  public final x<RequestResult> a(String[] paramArrayOfString1, String[] paramArrayOfString2, p<RequestResult> paramp)
  {
    paramArrayOfString1 = new BasicNameValuePair("type", au.a(paramArrayOfString1, ","));
    paramArrayOfString2 = new BasicNameValuePair("value", au.a(paramArrayOfString2, ","));
    String str = a.a("/user/setting/set_select", false);
    GParser localGParser = new GParser(RequestResult.class);
    paramArrayOfString1 = x.b(str, new BasicNameValuePair[] { paramArrayOfString1, paramArrayOfString2 }, paramp, localGParser);
    this.f.a(paramArrayOfString1);
    return paramArrayOfString1;
  }
  
  public final x<ArrayList<User>> a(BasicNameValuePair[] paramArrayOfBasicNameValuePair, p<ArrayList<User>> paramp)
  {
    paramArrayOfBasicNameValuePair = x.a(a.a("/friendships/followers", false), paramArrayOfBasicNameValuePair, paramp, new UserListParser());
    this.f.a(paramArrayOfBasicNameValuePair);
    return paramArrayOfBasicNameValuePair;
  }
  
  public final x<ArrayList<User>> b(int paramInt, p<ArrayList<User>> paramp)
  {
    BasicNameValuePair localBasicNameValuePair1 = new BasicNameValuePair("count", "20");
    BasicNameValuePair localBasicNameValuePair2 = new BasicNameValuePair("page", String.valueOf(paramInt));
    String str = a.a("/recommend/user/editor", false);
    GroupParser localGroupParser = new GroupParser(new UserParser());
    paramp = x.a(str, new BasicNameValuePair[] { localBasicNameValuePair1, localBasicNameValuePair2 }, paramp, localGroupParser);
    this.f.a(paramp);
    return paramp;
  }
  
  public final x<RequestResult> b(long paramLong, p<RequestResult> paramp)
  {
    BasicNameValuePair localBasicNameValuePair = new BasicNameValuePair("user_id", String.valueOf(paramLong));
    String str = a.a("/blocks/create", false);
    GParser localGParser = new GParser(RequestResult.class);
    paramp = x.b(str, new BasicNameValuePair[] { localBasicNameValuePair }, paramp, localGParser);
    this.f.a(paramp);
    return paramp;
  }
  
  public final x<RequestResult> b(long paramLong, String paramString, p<RequestResult> paramp)
  {
    BasicNameValuePair localBasicNameValuePair = new BasicNameValuePair("user_id", String.valueOf(paramLong));
    paramString = new BasicNameValuePair("remark", paramString);
    String str = a.a("/remarks/setting", false);
    GParser localGParser = new GParser(RequestResult.class);
    paramString = x.b(str, new BasicNameValuePair[] { localBasicNameValuePair, paramString }, paramp, localGParser);
    this.f.a(paramString);
    return paramString;
  }
  
  public final x<List<IndustryOfUser>> b(p<List<IndustryOfUser>> paramp)
  {
    BasicNameValuePair localBasicNameValuePair = new BasicNameValuePair("detail", "0");
    String str = a.a("/recommend/user/industry", false);
    GParser localGParser = new GParser("list", new TypeToken() {}.getType());
    paramp = x.a(str, new BasicNameValuePair[] { localBasicNameValuePair }, paramp, localGParser);
    this.f.a(paramp);
    return paramp;
  }
  
  public final x<ArrayList<User>> b(String paramString, int paramInt1, int paramInt2, p<ArrayList<User>> paramp)
  {
    paramString = new BasicNameValuePair("q", paramString);
    BasicNameValuePair localBasicNameValuePair1 = new BasicNameValuePair("page", String.valueOf(paramInt1));
    BasicNameValuePair localBasicNameValuePair2 = new BasicNameValuePair("count", "20");
    BasicNameValuePair localBasicNameValuePair3 = new BasicNameValuePair("fo", "0");
    BasicNameValuePair localBasicNameValuePair4 = new BasicNameValuePair("fr", "0");
    BasicNameValuePair localBasicNameValuePair5 = new BasicNameValuePair("frPrior", "1");
    BasicNameValuePair localBasicNameValuePair6 = new BasicNameValuePair("hl", "0");
    BasicNameValuePair localBasicNameValuePair7 = new BasicNameValuePair("blockft", "1");
    BasicNameValuePair localBasicNameValuePair8 = new BasicNameValuePair("paid_mention_ft", String.valueOf(paramInt2));
    String str = a.a("/users/search", false);
    UserListParser localUserListParser = new UserListParser();
    paramString = x.a(str, new BasicNameValuePair[] { paramString, localBasicNameValuePair1, localBasicNameValuePair2, localBasicNameValuePair3, localBasicNameValuePair4, localBasicNameValuePair5, localBasicNameValuePair6, localBasicNameValuePair7, localBasicNameValuePair8 }, paramp, localUserListParser);
    this.f.a(paramString);
    return paramString;
  }
  
  public final x<ArrayList<User>> b(String paramString, int paramInt, p<ArrayList<User>> paramp)
  {
    paramString = new BasicNameValuePair("symbol", paramString);
    BasicNameValuePair localBasicNameValuePair1 = new BasicNameValuePair("start", String.valueOf(paramInt));
    BasicNameValuePair localBasicNameValuePair2 = new BasicNameValuePair("count", "20");
    String str = a.a("/recommend/user/stock_hot_user", false);
    GroupParser localGroupParser = new GroupParser(new UserParser());
    paramString = x.a(str, new BasicNameValuePair[] { paramString, localBasicNameValuePair1, localBasicNameValuePair2 }, paramp, localGroupParser);
    this.f.a(paramString);
    return paramString;
  }
  
  public final x<RequestResult> b(String paramString, p<RequestResult> paramp)
  {
    paramString = new BasicNameValuePair("profileImageUrl", paramString);
    String str = a.a("/user/setting/face", false);
    GParser localGParser = new GParser(RequestResult.class);
    paramString = x.b(str, new BasicNameValuePair[] { paramString }, paramp, localGParser);
    this.f.a(paramString);
    return paramString;
  }
  
  public final x<RequestResult> b(String paramString1, String paramString2, p<RequestResult> paramp)
  {
    paramString1 = new BasicNameValuePair("areacode", paramString1);
    paramString2 = new BasicNameValuePair("telephone", paramString2);
    String str = a.a("/account/modify_telephone", false);
    GParser localGParser = new GParser(RequestResult.class);
    paramString1 = x.b(str, new BasicNameValuePair[] { paramString1, paramString2 }, paramp, localGParser);
    this.f.a(paramString1);
    return paramString1;
  }
  
  public final x<SNBJSONObject> b(List<BaseGroupInfo> paramList, p<SNBJSONObject> paramp)
  {
    Object localObject1 = a.b("/friendships/groups/destroy", false) + "?request_method=post&id=%s";
    String str = a.b("/friendships/groups/create_batch", false) + "?request_method=post&name=%s";
    Object localObject2 = a.b("/friendships/groups/update", false) + "?request_method=post&id=%s&name=%s";
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
    if (localStringBuilder3.length() > 0) {
      paramList.append(String.format((String)localObject2, new Object[] { localStringBuilder3.substring(0, localStringBuilder3.length() - 1), localStringBuilder4.substring(0, localStringBuilder4.length() - 1) }));
    }
    if (localStringBuilder2.length() > 0)
    {
      if (localStringBuilder3.length() > 0) {
        paramList.append("#47bce5c74f#");
      }
      paramList.append(String.format(str, new Object[] { localStringBuilder2.substring(0, localStringBuilder2.length() - 1) }));
    }
    if (localStringBuilder1.length() > 0)
    {
      if ((localStringBuilder3.length() > 0) || (localStringBuilder2.length() > 0)) {
        paramList.append("#47bce5c74f#");
      }
      paramList.append(String.format((String)localObject1, new Object[] { localStringBuilder1.substring(0, localStringBuilder1.length() - 1) }));
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
  
  public final x<List<User>> b(Long[] paramArrayOfLong, p<List<User>> paramp)
  {
    paramArrayOfLong = new BasicNameValuePair("id", au.a(paramArrayOfLong, ","));
    String str = a.a("/users/show", false);
    GParser localGParser = new GParser(new TypeToken() {}.getType());
    paramArrayOfLong = x.a(str, new BasicNameValuePair[] { paramArrayOfLong }, paramp, localGParser);
    this.f.a(paramArrayOfLong);
    return paramArrayOfLong;
  }
  
  public final x<ArrayList<User>> c(int paramInt, p<ArrayList<User>> paramp)
  {
    BasicNameValuePair localBasicNameValuePair1 = new BasicNameValuePair("start", String.valueOf(paramInt));
    BasicNameValuePair localBasicNameValuePair2 = new BasicNameValuePair("count", "20");
    String str = a.a("/recommend/pofriends", false);
    GroupParser localGroupParser = new GroupParser(new UserParser());
    paramp = x.a(str, new BasicNameValuePair[] { localBasicNameValuePair1, localBasicNameValuePair2 }, paramp, localGroupParser);
    this.f.a(paramp);
    return paramp;
  }
  
  public final x<RequestResult> c(long paramLong, p<RequestResult> paramp)
  {
    BasicNameValuePair localBasicNameValuePair = new BasicNameValuePair("user_id", String.valueOf(paramLong));
    String str = a.a("/blocks/destroy", false);
    GParser localGParser = new GParser(RequestResult.class);
    paramp = x.b(str, new BasicNameValuePair[] { localBasicNameValuePair }, paramp, localGParser);
    this.f.a(paramp);
    return paramp;
  }
  
  public final x<JsonObject> c(p<JsonObject> paramp)
  {
    String str = a.a("/user/setting/region", false);
    GParser localGParser = new GParser(JsonObject.class);
    paramp = x.a(str, new BasicNameValuePair[0], paramp, localGParser);
    this.f.a(paramp);
    return paramp;
  }
  
  public final x<ArrayList<User>> c(String paramString, int paramInt, p<ArrayList<User>> paramp)
  {
    paramString = new BasicNameValuePair("code", paramString);
    BasicNameValuePair localBasicNameValuePair1 = new BasicNameValuePair("pageNo", String.valueOf(paramInt));
    BasicNameValuePair localBasicNameValuePair2 = new BasicNameValuePair("size", "20");
    String str = a.a("/friendships/stockfollowers", false);
    UserListParser localUserListParser = new UserListParser();
    paramString = x.a(str, new BasicNameValuePair[] { paramString, localBasicNameValuePair1, localBasicNameValuePair2 }, paramp, localUserListParser);
    this.f.a(paramString);
    return paramString;
  }
  
  public final x<FriendshipGroup> c(String paramString, p<FriendshipGroup> paramp)
  {
    paramString = new BasicNameValuePair("name", paramString);
    String str = a.a("/friendships/groups/create", false);
    GParser localGParser = new GParser(FriendshipGroup.class);
    paramString = x.b(str, new BasicNameValuePair[] { paramString }, paramp, localGParser);
    this.f.a(paramString);
    return paramString;
  }
  
  public final x<RequestResult> c(String paramString1, String paramString2, p<RequestResult> paramp)
  {
    paramString1 = new BasicNameValuePair("areacode", paramString1);
    paramString2 = new BasicNameValuePair("telephone", paramString2);
    String str = a.a("/account/force_bind_telephone", false);
    GParser localGParser = new GParser(RequestResult.class);
    paramString1 = x.b(str, new BasicNameValuePair[] { paramString1, paramString2 }, paramp, localGParser);
    this.f.a(paramString1);
    return paramString1;
  }
  
  public final x<List<User>> c(Long[] paramArrayOfLong, p<List<User>> paramp)
  {
    paramArrayOfLong = new BasicNameValuePair("id", au.a(paramArrayOfLong, ","));
    BasicNameValuePair localBasicNameValuePair = new BasicNameValuePair("simple_user", "1");
    String str = a.a("/users/show", false);
    GParser localGParser = new GParser(new TypeToken() {}.getType());
    paramArrayOfLong = x.a(str, new BasicNameValuePair[] { paramArrayOfLong, localBasicNameValuePair }, paramp, localGParser);
    this.f.a(paramArrayOfLong);
    return paramArrayOfLong;
  }
  
  public final x<RequestResult> d(int paramInt, p<RequestResult> paramp)
  {
    BasicNameValuePair localBasicNameValuePair1 = new BasicNameValuePair("comment", String.valueOf(paramInt));
    BasicNameValuePair localBasicNameValuePair2 = new BasicNameValuePair("letter", "0");
    String str = a.a("/user/setting/privacy", false);
    GParser localGParser = new GParser(RequestResult.class);
    paramp = x.b(str, new BasicNameValuePair[] { localBasicNameValuePair1, localBasicNameValuePair2 }, paramp, localGParser);
    this.f.a(paramp);
    return paramp;
  }
  
  public final x<RequestResult> d(long paramLong, p<RequestResult> paramp)
  {
    BasicNameValuePair localBasicNameValuePair = new BasicNameValuePair("id", String.valueOf(paramLong));
    String str = a.a("/friendships/destroy", false);
    GParser localGParser = new GParser(RequestResult.class);
    paramp = x.b(str, new BasicNameValuePair[] { localBasicNameValuePair }, paramp, localGParser);
    this.f.a(paramp);
    return paramp;
  }
  
  public final x<JsonObject> d(p<JsonObject> paramp)
  {
    String str = a.a("/account/bind/show", false);
    GParser localGParser = new GParser(JsonObject.class);
    paramp = x.b(str, new BasicNameValuePair[0], paramp, localGParser);
    this.f.a(paramp);
    return paramp;
  }
  
  public final x<RequestResult> d(String paramString, p<RequestResult> paramp)
  {
    paramString = new BasicNameValuePair("source", paramString);
    String str = a.a("/account/oauth/unbind", false);
    GParser localGParser = new GParser(RequestResult.class);
    paramString = x.b(str, new BasicNameValuePair[] { paramString }, paramp, localGParser);
    this.f.a(paramString);
    return paramString;
  }
  
  public final x<JsonObject> d(String paramString1, String paramString2, p<JsonObject> paramp)
  {
    HashMap localHashMap = new HashMap();
    if (paramString1 != null) {
      localHashMap.put("uids", paramString1);
    }
    if (paramString2 != null) {
      localHashMap.put("symbols", paramString2);
    }
    paramString1 = x.a(a.a("/etc/relations/show", false), localHashMap, paramp, new GParser(JsonObject.class));
    this.f.a(paramString1);
    return paramString1;
  }
  
  public final x<RequestResult> e(int paramInt, p<RequestResult> paramp)
  {
    BasicNameValuePair localBasicNameValuePair1 = new BasicNameValuePair("st_color", String.valueOf(paramInt));
    BasicNameValuePair localBasicNameValuePair2 = new BasicNameValuePair("stock", "0");
    String str = a.a("/user/setting/st_privacy", false);
    GParser localGParser = new GParser(RequestResult.class);
    paramp = x.b(str, new BasicNameValuePair[] { localBasicNameValuePair1, localBasicNameValuePair2 }, paramp, localGParser);
    this.f.a(paramp);
    return paramp;
  }
  
  public final x<JsonObject> e(long paramLong, p<JsonObject> paramp)
  {
    GParser localGParser = new GParser(JsonObject.class);
    HashMap localHashMap = new HashMap();
    localHashMap.put("user_id", String.valueOf(paramLong));
    paramp = x.a(a.a("/user/white_list/select", false), localHashMap, paramp, localGParser);
    this.f.a(paramp);
    return paramp;
  }
  
  public final x<RequestResult> e(p<RequestResult> paramp)
  {
    String str = a.a("/account/unbind_telephone", false);
    GParser localGParser = new GParser(RequestResult.class);
    paramp = x.b(str, new BasicNameValuePair[0], paramp, localGParser);
    this.f.a(paramp);
    return paramp;
  }
  
  public final x<RequestResult> e(String paramString, p<RequestResult> paramp)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("id", paramString);
    paramString = x.b(a.a("/statuses/interest/select", false), localHashMap, paramp, new GParser(new TypeToken() {}.getType()));
    v.c(g, "submitInterestTopics fulUrl = " + a.a("/statuses/interest/select", false));
    this.f.a(paramString);
    return paramString;
  }
  
  public final x<JsonObject> f(long paramLong, p<JsonObject> paramp)
  {
    BasicNameValuePair localBasicNameValuePair = new BasicNameValuePair("id", String.valueOf(paramLong));
    String str = a.a("/statuses/push", false);
    GParser localGParser = new GParser(new TypeToken() {}.getType());
    paramp = x.b(str, new BasicNameValuePair[] { localBasicNameValuePair }, paramp, localGParser);
    this.f.a(paramp);
    return paramp;
  }
  
  public final x<List<InterestTopic>> f(p<List<InterestTopic>> paramp)
  {
    HashMap localHashMap = new HashMap();
    paramp = x.a(a.a("/statuses/interest/topics", false), localHashMap, paramp, new GParser("list", new TypeToken() {}.getType()));
    v.c(g, "getInterestTopics::fulUrl = " + a.a("/statuses/interest/topics", false));
    this.f.a(paramp);
    return paramp;
  }
  
  public final x<JsonObject> f(String paramString, p<JsonObject> paramp)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("uid", paramString);
    paramString = x.a(a.a("/user/setting/donate_amount", false), localHashMap, paramp, new GParser(new TypeToken() {}.getType()));
    this.f.a(paramString);
    return paramString;
  }
  
  public final x<List<FriendshipGroup>> g(long paramLong, p<List<FriendshipGroup>> paramp)
  {
    HashMap localHashMap = new HashMap();
    if (paramLong > 0L) {
      localHashMap.put("tid", String.valueOf(paramLong));
    }
    paramp = x.a(a.a("/friendships/groups", false), localHashMap, paramp, new GParser(new TypeToken() {}.getType()));
    this.f.a(paramp);
    return paramp;
  }
  
  public final x<JsonObject> g(p<JsonObject> paramp)
  {
    HashMap localHashMap = new HashMap();
    paramp = x.a(a.a("/statuses/interest/items", false), localHashMap, paramp, new GParser(new TypeToken() {}.getType()));
    this.f.a(paramp);
    return paramp;
  }
  
  public final x<Boolean> h(long paramLong, p<Boolean> paramp)
  {
    BasicNameValuePair localBasicNameValuePair = new BasicNameValuePair("exclude", String.valueOf(paramLong));
    String str = a.a("/recommend/excludefriend", false);
    Parser local4 = new Parser()
    {
      public final ArrayList parse(JSONArray paramAnonymousJSONArray)
      {
        return null;
      }
    };
    paramp = x.a(str, new BasicNameValuePair[] { localBasicNameValuePair }, paramp, local4);
    this.f.a(paramp);
    return paramp;
  }
  
  public final x<List<SearchHots>> h(p<List<SearchHots>> paramp)
  {
    HashMap localHashMap = new HashMap();
    paramp = x.a(a.a("/search/hots", false), localHashMap, paramp, new GParser("items", new TypeToken() {}.getType()));
    this.f.a(paramp);
    return paramp;
  }
  
  public final x<JsonObject> i(p<JsonObject> paramp)
  {
    HashMap localHashMap = new HashMap();
    paramp = x.a(a.a("/etc/private_fund/state", false), localHashMap, paramp, new GParser(new TypeToken() {}.getType()));
    this.f.a(paramp);
    return paramp;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\base\b\an.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
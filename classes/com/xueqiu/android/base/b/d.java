package com.xueqiu.android.base.b;

import com.google.gson.reflect.TypeToken;
import com.xueqiu.android.base.util.au;
import com.xueqiu.android.common.model.RequestResult;
import com.xueqiu.android.common.model.parser.GParser;
import com.xueqiu.android.common.model.parser.GroupParser;
import com.xueqiu.android.common.model.parser.PagedGroupParser;
import com.xueqiu.android.common.model.parser.ResultParser;
import com.xueqiu.android.common.model.parser.UserParser;
import com.xueqiu.android.community.model.User;
import com.xueqiu.android.message.model.Apply;
import com.xueqiu.android.message.model.Apply.ListParser;
import com.xueqiu.android.message.model.ApplyCount;
import com.xueqiu.android.message.model.ApplyCount.Parser;
import com.xueqiu.android.message.model.BatchResult;
import com.xueqiu.android.message.model.IMGroup;
import com.xueqiu.android.message.model.IMGroup.Parser;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import org.apache.http.message.BasicNameValuePair;

public final class d
  extends a
{
  public d(ae paramae)
  {
    this.f = paramae;
  }
  
  public final x<ArrayList<Apply>> a(int paramInt, p<ArrayList<Apply>> paramp)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("count", "20");
    if (paramInt > 0) {
      localHashMap.put("page", String.valueOf(paramInt));
    }
    paramp = x.a(a.a("/imgroup_applys/list", false), localHashMap, paramp, new Apply.ListParser());
    this.f.a(paramp);
    return paramp;
  }
  
  public final x<IMGroup> a(long paramLong, p<IMGroup> paramp)
  {
    BasicNameValuePair localBasicNameValuePair = new BasicNameValuePair("imgroup_id", String.valueOf(paramLong));
    String str = a.a("/imgroups/show", false);
    IMGroup.Parser localParser = new IMGroup.Parser();
    paramp = x.a(str, new BasicNameValuePair[] { localBasicNameValuePair }, paramp, localParser);
    this.f.a(paramp);
    return paramp;
  }
  
  public final x<IMGroup> a(long paramLong, String paramString, p<IMGroup> paramp)
  {
    BasicNameValuePair localBasicNameValuePair = new BasicNameValuePair("imgroup_id", String.valueOf(paramLong));
    paramString = new BasicNameValuePair("name", paramString);
    String str = a.a("/imgroups/update", false);
    IMGroup.Parser localParser = new IMGroup.Parser();
    paramString = x.b(str, new BasicNameValuePair[] { localBasicNameValuePair, paramString }, paramp, localParser);
    this.f.a(paramString);
    return paramString;
  }
  
  public final x<IMGroup> a(long paramLong, boolean paramBoolean, p<IMGroup> paramp)
  {
    BasicNameValuePair localBasicNameValuePair1 = new BasicNameValuePair("imgroup_id", String.valueOf(paramLong));
    if (paramBoolean) {}
    for (int i = 1;; i = 0)
    {
      BasicNameValuePair localBasicNameValuePair2 = new BasicNameValuePair("ispublic", String.valueOf(i));
      String str = a.a("/imgroups/update", false);
      IMGroup.Parser localParser = new IMGroup.Parser();
      paramp = x.b(str, new BasicNameValuePair[] { localBasicNameValuePair1, localBasicNameValuePair2 }, paramp, localParser);
      this.f.a(paramp);
      return paramp;
    }
  }
  
  public final x<BatchResult> a(long paramLong, long[] paramArrayOfLong, p<BatchResult> paramp)
  {
    BasicNameValuePair localBasicNameValuePair = new BasicNameValuePair("imgroup_id", String.valueOf(paramLong));
    paramArrayOfLong = new BasicNameValuePair("user_id", au.a(paramArrayOfLong, ","));
    String str = a.a("/imgroup_members/add_batch", false);
    GParser localGParser = new GParser(BatchResult.class);
    paramArrayOfLong = x.b(str, new BasicNameValuePair[] { localBasicNameValuePair, paramArrayOfLong }, paramp, localGParser);
    this.f.a(paramArrayOfLong);
    return paramArrayOfLong;
  }
  
  public final x<ApplyCount> a(p<ApplyCount> paramp)
  {
    String str = a.a("/imgroup_applys/count", false);
    ApplyCount.Parser localParser = new ApplyCount.Parser();
    paramp = x.a(str, new BasicNameValuePair[0], paramp, localParser);
    this.f.a(paramp);
    return paramp;
  }
  
  public final x<ArrayList<IMGroup>> a(String paramString, int paramInt, p<ArrayList<IMGroup>> paramp)
  {
    paramString = new BasicNameValuePair("symbol", paramString);
    BasicNameValuePair localBasicNameValuePair1 = new BasicNameValuePair("page", String.valueOf(paramInt));
    BasicNameValuePair localBasicNameValuePair2 = new BasicNameValuePair("size", "20");
    String str = a.a("/imgroups/show_batch", false);
    GParser localGParser = new GParser(new TypeToken() {}.getType());
    paramString = x.b(str, new BasicNameValuePair[] { paramString, localBasicNameValuePair1, localBasicNameValuePair2 }, paramp, localGParser);
    this.f.a(paramString);
    return paramString;
  }
  
  public final x<IMGroup> a(String paramString1, String paramString2, long[] paramArrayOfLong, p<IMGroup> paramp)
  {
    paramString1 = new BasicNameValuePair("name", paramString1);
    paramString2 = new BasicNameValuePair("description", paramString2);
    BasicNameValuePair localBasicNameValuePair = new BasicNameValuePair("ispublic", "0");
    paramArrayOfLong = new BasicNameValuePair("user_id", au.a(paramArrayOfLong, ","));
    String str = a.a("/imgroups/create", false);
    IMGroup.Parser localParser = new IMGroup.Parser();
    paramString1 = x.b(str, new BasicNameValuePair[] { paramString1, paramString2, localBasicNameValuePair, paramArrayOfLong }, paramp, localParser);
    this.f.a(paramString1);
    return paramString1;
  }
  
  public final x<List<IMGroup>> a(Long[] paramArrayOfLong, p<List<IMGroup>> paramp)
  {
    paramArrayOfLong = new BasicNameValuePair("imgroup_id", au.a(paramArrayOfLong, ","));
    String str = a.a("/imgroups/show_batch", false);
    GParser localGParser = new GParser(new TypeToken() {}.getType());
    paramArrayOfLong = x.b(str, new BasicNameValuePair[] { paramArrayOfLong }, paramp, localGParser);
    this.f.a(paramArrayOfLong);
    return paramArrayOfLong;
  }
  
  public final x<RequestResult> b(long paramLong, p<RequestResult> paramp)
  {
    BasicNameValuePair localBasicNameValuePair = new BasicNameValuePair("imgroup_id", String.valueOf(paramLong));
    String str = a.a("/imgroups/destroy", false);
    GParser localGParser = new GParser(RequestResult.class);
    paramp = x.b(str, new BasicNameValuePair[] { localBasicNameValuePair }, paramp, localGParser);
    this.f.a(paramp);
    return paramp;
  }
  
  public final x<Boolean> b(long paramLong, String paramString, p<Boolean> paramp)
  {
    BasicNameValuePair localBasicNameValuePair = new BasicNameValuePair("imgroup_id", String.valueOf(paramLong));
    paramString = new BasicNameValuePair("description", paramString);
    String str = a.a("/imgroup_applys/create", false);
    ResultParser localResultParser = new ResultParser();
    paramString = x.b(str, new BasicNameValuePair[] { localBasicNameValuePair, paramString }, paramp, localResultParser);
    this.f.a(paramString);
    return paramString;
  }
  
  public final x<IMGroup> b(long paramLong, boolean paramBoolean, p<IMGroup> paramp)
  {
    BasicNameValuePair localBasicNameValuePair1 = new BasicNameValuePair("imgroup_id", String.valueOf(paramLong));
    if (paramBoolean) {}
    for (int i = 1;; i = 0)
    {
      BasicNameValuePair localBasicNameValuePair2 = new BasicNameValuePair("allow_invite_user", String.valueOf(i));
      String str = a.a("/imgroups/update", false);
      IMGroup.Parser localParser = new IMGroup.Parser();
      paramp = x.b(str, new BasicNameValuePair[] { localBasicNameValuePair1, localBasicNameValuePair2 }, paramp, localParser);
      this.f.a(paramp);
      return paramp;
    }
  }
  
  public final x<BatchResult> b(long paramLong, long[] paramArrayOfLong, p<BatchResult> paramp)
  {
    BasicNameValuePair localBasicNameValuePair = new BasicNameValuePair("imgroup_id", String.valueOf(paramLong));
    paramArrayOfLong = new BasicNameValuePair("user_id", au.a(paramArrayOfLong, ","));
    String str = a.a("/imgroup_members/remove_batch", false);
    GParser localGParser = new GParser(BatchResult.class);
    paramArrayOfLong = x.b(str, new BasicNameValuePair[] { localBasicNameValuePair, paramArrayOfLong }, paramp, localGParser);
    this.f.a(paramArrayOfLong);
    return paramArrayOfLong;
  }
  
  public final x<ArrayList<IMGroup>> b(p<ArrayList<IMGroup>> paramp)
  {
    String str = a.a("/imgroups/joined_list", false);
    GParser localGParser = new GParser(new TypeToken() {}.getType());
    paramp = x.a(str, new BasicNameValuePair[0], paramp, localGParser);
    this.f.a(paramp);
    return paramp;
  }
  
  public final x<ArrayList<IMGroup>> b(String paramString, int paramInt, p<ArrayList<IMGroup>> paramp)
  {
    paramString = new BasicNameValuePair("q", paramString);
    BasicNameValuePair localBasicNameValuePair1 = new BasicNameValuePair("count", "20");
    BasicNameValuePair localBasicNameValuePair2 = new BasicNameValuePair("page", String.valueOf(paramInt));
    BasicNameValuePair localBasicNameValuePair3 = new BasicNameValuePair("hl", "0");
    PagedGroupParser localPagedGroupParser = new PagedGroupParser(new IMGroup.Parser(), "list");
    paramString = x.a(a.a("/imgroups/search", false), new BasicNameValuePair[] { paramString, localBasicNameValuePair1, localBasicNameValuePair2, localBasicNameValuePair3 }, paramp, localPagedGroupParser);
    this.f.a(paramString);
    return paramString;
  }
  
  public final x<Boolean> c(long paramLong, p<Boolean> paramp)
  {
    String str = a.a("/imgroup_applys/pass", false);
    BasicNameValuePair localBasicNameValuePair = new BasicNameValuePair("id", String.valueOf(paramLong));
    ResultParser localResultParser = new ResultParser();
    paramp = x.b(str, new BasicNameValuePair[] { localBasicNameValuePair }, paramp, localResultParser);
    this.f.a(paramp);
    return paramp;
  }
  
  public final x<Boolean> d(long paramLong, p<Boolean> paramp)
  {
    BasicNameValuePair[] arrayOfBasicNameValuePair;
    if (paramLong > 0L)
    {
      arrayOfBasicNameValuePair = new BasicNameValuePair[1];
      arrayOfBasicNameValuePair[0] = new BasicNameValuePair("id", String.valueOf(paramLong));
    }
    for (;;)
    {
      paramp = x.b(a.a("/imgroup_applys/destroy", false), arrayOfBasicNameValuePair, paramp, new ResultParser());
      this.f.a(paramp);
      return paramp;
      arrayOfBasicNameValuePair = new BasicNameValuePair[0];
    }
  }
  
  public final x<List<User>> e(long paramLong, p<List<User>> paramp)
  {
    BasicNameValuePair localBasicNameValuePair = new BasicNameValuePair("imgroup_id", String.valueOf(paramLong));
    String str = a.a("/imgroup_members/list", false);
    GParser localGParser = new GParser(new TypeToken() {}.getType());
    paramp = x.a(str, new BasicNameValuePair[] { localBasicNameValuePair }, paramp, localGParser);
    this.f.a(paramp);
    return paramp;
  }
  
  public final x<ArrayList<User>> f(long paramLong, p<ArrayList<User>> paramp)
  {
    BasicNameValuePair localBasicNameValuePair = new BasicNameValuePair("imgroup_id", String.valueOf(paramLong));
    String str = a.a("/imgroup_members/list", false);
    GroupParser localGroupParser = new GroupParser(new UserParser());
    paramp = x.a(str, new BasicNameValuePair[] { localBasicNameValuePair }, paramp, localGroupParser);
    this.f.a(paramp);
    return paramp;
  }
  
  public final x<List<String>> g(long paramLong, p<List<String>> paramp)
  {
    BasicNameValuePair localBasicNameValuePair = new BasicNameValuePair("imgroup_id", String.valueOf(paramLong));
    String str = a.a("/imgroup_members/list_profile_image_url", false);
    GParser localGParser = new GParser(new TypeToken() {}.getType());
    paramp = x.a(str, new BasicNameValuePair[] { localBasicNameValuePair }, paramp, localGParser);
    this.f.a(paramp);
    return paramp;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\base\b\d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
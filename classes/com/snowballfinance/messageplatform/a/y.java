package com.snowballfinance.messageplatform.a;

import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.snowballfinance.messageplatform.b.d;
import com.snowballfinance.messageplatform.data.Message;
import com.snowballfinance.messageplatform.data.MessageSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public final class y
  extends a
{
  public Integer c;
  public String d;
  public String e;
  public Long f;
  public byte[] g;
  public byte[] h;
  
  private static y a(v paramv, String paramString)
  {
    y localy = new y();
    localy.d = paramv.name();
    if (paramString != null) {
      localy.g = com.snowballfinance.messageplatform.b.a.a(paramString);
    }
    return localy;
  }
  
  public static y a(MessageSession paramMessageSession)
  {
    return a(v.h, d.a(paramMessageSession).toString());
  }
  
  public static y a(Long paramLong)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("menuUserId", paramLong);
    return a(v.b, d.a(localHashMap));
  }
  
  public static y a(Long paramLong1, Boolean paramBoolean, Integer paramInteger, Long paramLong2, Long paramLong3)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("target", paramLong1);
    localHashMap.put("group", paramBoolean);
    localHashMap.put("limit", paramInteger);
    localHashMap.put("since", paramLong2);
    localHashMap.put("until", paramLong3);
    return a(v.f, d.a(localHashMap));
  }
  
  public static y a(Long paramLong, String paramString)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("menuUserId", paramLong);
    localHashMap.put("menuItemId", paramString);
    return a(v.c, d.a(localHashMap));
  }
  
  public static y a(List<Message> paramList)
  {
    return a(v.e, d.a(paramList).toString());
  }
  
  public static y a(List<Long> paramList, String paramString)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("mids", paramList);
    localHashMap.put("deviceId", paramString);
    return a(v.g, d.a(localHashMap));
  }
  
  public static y a(List<String> paramList, boolean paramBoolean)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("op", Integer.valueOf(0));
    localHashMap.put("symbols", paramList);
    localHashMap.put("delay", Boolean.valueOf(paramBoolean));
    return a(v.o, d.a(localHashMap));
  }
  
  public final String toString()
  {
    return "Request{userId=" + this.f + ", version=" + this.c + ", endpoint='" + this.d + '\'' + ", accessToken='" + this.e + '\'' + ", deviceId='" + this.b + '\'' + '}';
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\snowballfinance\messageplatform\a\y.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
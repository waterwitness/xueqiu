package com.xueqiu.android.trade.model;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.xueqiu.android.base.b;
import com.xueqiu.android.base.storage.prefs.UserPrefs;
import com.xueqiu.android.base.util.au;
import com.xueqiu.android.base.util.m;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class SnowxTraderConfig
{
  public static final String ACCESS_TOKE_EXPIRES = "access_token_expires";
  public static final String INCOME_OPEN = "income_open";
  
  public static List<SnowxTraderConfigItem> getAccessTokeExpiresConfig()
  {
    return getSnowxTraderConfigItemList("access_token_expires");
  }
  
  public static List<SnowxTraderConfigItem> getSnowxTraderConfigItemList(String paramString)
  {
    b.a();
    paramString = UserPrefs.getString(b.d(), String.format("%s_%s", new Object[] { "snowx_trader_config", paramString }), "");
    if (au.a(paramString)) {
      return new ArrayList();
    }
    return parseJsonToSnowxTraderConfigMap(paramString);
  }
  
  public static boolean isIncomeOpen(String paramString)
  {
    Iterator localIterator = getSnowxTraderConfigItemList("income_open").iterator();
    while (localIterator.hasNext())
    {
      SnowxTraderConfigItem localSnowxTraderConfigItem = (SnowxTraderConfigItem)localIterator.next();
      if (paramString.equalsIgnoreCase(localSnowxTraderConfigItem.getTid())) {
        return ("1".equals(localSnowxTraderConfigItem.getConfigValue())) || ("true".equalsIgnoreCase(localSnowxTraderConfigItem.getConfigValue()));
      }
    }
    return false;
  }
  
  protected static List<SnowxTraderConfigItem> parseJsonToSnowxTraderConfigMap(String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    paramString = ((JsonArray)m.a().fromJson(paramString, JsonArray.class)).iterator();
    while (paramString.hasNext())
    {
      JsonElement localJsonElement = (JsonElement)paramString.next();
      localArrayList.add((SnowxTraderConfigItem)m.a().fromJson(localJsonElement, SnowxTraderConfigItem.class));
    }
    return localArrayList;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\trade\model\SnowxTraderConfig.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
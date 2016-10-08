package com.xueqiu.android.base.storage.prefs;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.text.TextUtils;
import android.util.Base64;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.xueqiu.android.base.b;
import com.xueqiu.android.base.util.m;
import com.xueqiu.android.trade.model.SemiTradeAccount;
import com.xueqiu.android.trade.model.TradeAccount;
import com.xueqiu.android.trade.model.TradeBroker;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

public class UserPrefs
{
  public static final String ANONYMOUS_PROFILE_MENU_CONFIG = "profile_menu_config_anonymous";
  public static final String ANONYMOUS_PROFILE_MENU_CONFIG_UPDATED = "profile_menu_config_updated_anonymous";
  public static final String APP_SHARE_CONTENT = "app_share_content";
  private static final String CACHE_KEY_BROKERS = "cache_key_brokers";
  private static final String CACHE_KEY_CURRENT_ACCOUNT = "cache_key_current_account";
  private static final String CACHE_KEY_EXCHANGE_MAP = "cache_key_exchange_map";
  private static final String CACHE_KEY_TRADE_ACCOUNT = "cache_key_trade_account";
  private static final String CACHE_KEY_TRADE_ACCOUNT_SEMI = "cache_key_trade_account_semi";
  public static final String CUBE_RANK_CONFIG = "cube_rank_config";
  public static final String CUBE_RANK_CONFIG_UPDATE = "cube_rank_config_update";
  public static final String CUBE_RANK_FILTER = "cube_rank_filter";
  public static final String CUBE_RANK_FILTER_UPDATED = "cube_rank_filter_updated";
  public static final String DISCOVER_HEADER_IMG_HEIGHT = "discover_header_img_height";
  public static final String FIRST_ANSWER_PAID_QUESTION = "first_answer_paid_question";
  public static final String FIRST_PAY_AT_AUTHOR = "first_pay_at_author";
  public static final String KEY_FRIENDSHIP_GROUPS = "key_friendship_groups";
  public static final String KEY_IS_NEW_USER = "key_is_new_user";
  public static final String KEY_LAST_COMMENT = "key_last_comment";
  public static final String KEY_LAST_MENTION = "key_last_mention";
  public static final String KEY_LAST_PAID_MENTION = "key_new_paid_mention";
  public static final String KEY_LAST_PUSH = "key_new_push";
  public static final String KEY_LAST_TRADE_NOTIFICATION = "key_last_trade_notification";
  public static final String KEY_NEW_FOLLOWER = "key_new_follower";
  public static final String KEY_PORTFOLIOS = "key_portfolios";
  public static final String KEY_PORTFOLIO_STOCKS = "key_portfolio_stocks";
  public static final String KEY_PORTFOLIO_STOCK_QUOTE = "key_portfolio_stock_quote";
  public static final String KEY_QUOTES_CENTER_NEW_STRATEGY_CLEAR_TS = "key_quotes_center_new_strategy_clear_ts";
  public static final String KEY_REMIND = "key_remind";
  public static final String KEY_SELECTED_PORTFOLIO = "key_selected_portfolio";
  public static final String KEY_SELECTED_TIMELINE_GROUP = "key_selected_timeline_group";
  public static final String LAST_ORDER_TID = "last_order_tid";
  public static final String PAID_MENTION_AVAILABILITY = "paid_mention_availability";
  public static final String PAID_PAGE_TYPE = "paid_page_type";
  public static final String PAY_ASK_FIRST_IN = "pay_ask_first_in";
  public static final String PAY_ASK_FIRST_IN_WRITE = "pay_ask_first_in_write";
  public static final String PORTFOLIO_PAGE_TYPE = "portfolio_page_type";
  public static final String PORTFOLIO_SORT = "portfolio_sort";
  public static final String POST_LONG_STATUS_TAG = "post_long_status_tag";
  public static final String PROFILE_MENU_CONFIG = "profile_menu_config";
  public static final String PROFILE_MENU_CONFIG_UPDATED = "profile_menu_config_updated";
  public static final String SNOWX_TRADER_CONFIG = "snowx_trader_config";
  public static final String STOCK_TAB_SELECTED = "stock_tab_selected";
  public static final String TRADE_KEY = "trade_key";
  public static final String TRADE_PAGE_TYPE = "trade_page_type";
  public static final String TRADE_TOKENS = "trade_tokens";
  public static final String TRADE_WRITE_TOKEN_EXPIRES = "trade_write_token_expires";
  public static final String USER_CUBE_LEVEL = "user_cube_level";
  private static String jumpAccountTid;
  
  public static void clear(Context paramContext)
  {
    getSharePreference(paramContext).edit().clear().apply();
  }
  
  public static void clearCurrentJumpAccountTid()
  {
    jumpAccountTid = null;
  }
  
  public static boolean getBoolean(Context paramContext, String paramString, boolean paramBoolean)
  {
    return getSharePreference(paramContext).getBoolean(paramString, paramBoolean);
  }
  
  public static ArrayList<TradeAccount> getBoundBrokers()
  {
    b.a();
    Object localObject1 = getString(b.d(), "cache_key_trade_account", "");
    localObject1 = (ArrayList)m.a().fromJson((String)localObject1, new TypeToken() {}.getType());
    if (localObject1 == null) {
      localObject1 = new ArrayList();
    }
    for (;;)
    {
      b.a();
      Object localObject2 = getString(b.d(), "cache_key_trade_account_semi", "");
      localObject2 = (ArrayList)m.a().fromJson((String)localObject2, new TypeToken() {}.getType());
      if ((localObject2 != null) && (((ArrayList)localObject2).size() > 0)) {
        ((ArrayList)localObject1).addAll((Collection)localObject2);
      }
      return (ArrayList<TradeAccount>)localObject1;
    }
  }
  
  public static byte[] getBytes(Context paramContext, String paramString)
  {
    return Base64.decode(getString(paramContext, paramString, ""), 0);
  }
  
  public static TradeAccount getCurrentExchangeBroker(String paramString)
  {
    Object localObject = null;
    if (paramString == null) {}
    ArrayList localArrayList;
    TradeAccount localTradeAccount;
    do
    {
      do
      {
        return (TradeAccount)localObject;
        localArrayList = getTradableBrokers(paramString);
      } while (localArrayList.size() == 0);
      localTradeAccount = getTradeAccount(getCurrentTradeAccountTid());
      if ((localTradeAccount == null) || (localTradeAccount.getTradeBroker() == null)) {
        break;
      }
      localObject = localTradeAccount;
    } while (localTradeAccount.getTradeBroker().getEtype().contains(paramString));
    return (TradeAccount)localArrayList.get(0);
  }
  
  public static String getCurrentJumpAccountTid()
  {
    return jumpAccountTid;
  }
  
  public static String getCurrentTradeAccountTid()
  {
    b.a();
    return getString(b.d(), "cache_key_current_account", "");
  }
  
  public static double getDouble(Context paramContext, String paramString, double paramDouble)
  {
    return Double.longBitsToDouble(getLong(paramContext, paramString, Double.doubleToLongBits(paramDouble)));
  }
  
  public static float getFloat(Context paramContext, String paramString, float paramFloat)
  {
    return getSharePreference(paramContext).getFloat(paramString, paramFloat);
  }
  
  public static int getInt(Context paramContext, String paramString, int paramInt)
  {
    return getSharePreference(paramContext).getInt(paramString, paramInt);
  }
  
  public static long getLong(Context paramContext, String paramString, long paramLong)
  {
    return getSharePreference(paramContext).getLong(paramString, paramLong);
  }
  
  public static SharedPreferences getSharePreference(Context paramContext)
  {
    long l = UserLogonDataPrefs.getLogonUserId();
    Context localContext = paramContext;
    if (paramContext == null)
    {
      b.a();
      localContext = b.d();
    }
    return localContext.getSharedPreferences(String.valueOf(l), 0);
  }
  
  public static String getString(Context paramContext, String paramString1, String paramString2)
  {
    return getSharePreference(paramContext).getString(paramString1, paramString2);
  }
  
  public static ArrayList<TradeAccount> getTradableBrokers()
  {
    ArrayList localArrayList1 = getBoundBrokers();
    ArrayList localArrayList2 = new ArrayList();
    int i = 0;
    while (i < localArrayList1.size())
    {
      if (((TradeAccount)localArrayList1.get(i)).isSuccessBondStatus()) {
        localArrayList2.add(localArrayList1.get(i));
      }
      i += 1;
    }
    return localArrayList2;
  }
  
  public static ArrayList<TradeAccount> getTradableBrokers(String paramString)
  {
    b.a();
    Object localObject1 = getString(b.d(), "cache_key_exchange_map", "");
    Object localObject2 = (HashMap)m.a().fromJson((String)localObject1, new TypeToken() {}.getType());
    localObject1 = localObject2;
    if (localObject2 == null) {
      localObject1 = new HashMap();
    }
    localObject1 = (ArrayList)((HashMap)localObject1).get(paramString);
    if (localObject1 == null)
    {
      paramString = new ArrayList();
      return paramString;
    }
    localObject2 = getBoundBrokers();
    int k = ((ArrayList)localObject2).size();
    int i = 0;
    for (;;)
    {
      paramString = (String)localObject1;
      if (i >= ((ArrayList)localObject1).size()) {
        break;
      }
      int j = 0;
      while (j < k)
      {
        if (((TradeAccount)((ArrayList)localObject1).get(i)).getTid().equals(((TradeAccount)((ArrayList)localObject2).get(j)).getTid())) {
          ((ArrayList)localObject1).set(i, ((ArrayList)localObject2).get(j));
        }
        j += 1;
      }
      i += 1;
    }
  }
  
  public static ArrayList<TradeAccount> getTradableBrokers(List<String> paramList)
  {
    if ((paramList == null) || (paramList.size() == 0)) {
      return new ArrayList();
    }
    ArrayList localArrayList1 = getTradableBrokers();
    ArrayList localArrayList2 = new ArrayList();
    int i = 0;
    while (i < paramList.size())
    {
      int j = 0;
      while (j < localArrayList1.size())
      {
        if (TextUtils.equals((CharSequence)paramList.get(i), ((TradeAccount)localArrayList1.get(j)).getTid())) {
          localArrayList2.add(localArrayList1.get(j));
        }
        j += 1;
      }
      i += 1;
    }
    return localArrayList2;
  }
  
  public static TradeAccount getTradeAccount(String paramString)
  {
    if (paramString == null) {
      return null;
    }
    ArrayList localArrayList = getTradableBrokers();
    int i = 0;
    while (i < localArrayList.size())
    {
      if (paramString.equals(((TradeAccount)localArrayList.get(i)).getTid())) {
        return (TradeAccount)localArrayList.get(i);
      }
      i += 1;
    }
    return null;
  }
  
  public static TradeAccount getTradeAccountByStockBrokers(List<String> paramList)
  {
    String str = getCurrentTradeAccountTid();
    paramList = getTradableBrokers(paramList);
    if ((paramList != null) && (paramList.size() > 0))
    {
      if (((str == null) || (str.isEmpty())) && (paramList.size() > 0)) {
        return (TradeAccount)paramList.get(0);
      }
      int i = 0;
      while (i < paramList.size())
      {
        if (TextUtils.equals(str, ((TradeAccount)paramList.get(i)).getTid())) {
          return (TradeAccount)paramList.get(i);
        }
        i += 1;
      }
      return (TradeAccount)paramList.get(0);
    }
    return null;
  }
  
  public static boolean paidMentionAvailable()
  {
    b.a();
    return getBoolean(b.d(), "paid_mention_availability", true);
  }
  
  public static void setBoolean(Context paramContext, String paramString, boolean paramBoolean)
  {
    getSharePreference(paramContext).edit().putBoolean(paramString, paramBoolean).apply();
  }
  
  public static void setBytes(Context paramContext, String paramString, byte[] paramArrayOfByte)
  {
    String str = null;
    if (paramArrayOfByte != null) {
      str = Base64.encodeToString(paramArrayOfByte, 0);
    }
    setString(paramContext, paramString, str);
  }
  
  public static void setCurrentJumpAccountTid(String paramString)
  {
    jumpAccountTid = paramString;
  }
  
  public static void setCurrentTradeAccountTid(String paramString)
  {
    b.a();
    setString(b.d(), "cache_key_current_account", paramString);
  }
  
  public static void setDouble(Context paramContext, String paramString, double paramDouble)
  {
    getSharePreference(paramContext).edit().putLong(paramString, Double.doubleToLongBits(paramDouble)).apply();
  }
  
  public static void setFloat(Context paramContext, String paramString, float paramFloat)
  {
    getSharePreference(paramContext).edit().putFloat(paramString, paramFloat).apply();
  }
  
  public static void setInt(Context paramContext, String paramString, int paramInt)
  {
    getSharePreference(paramContext).edit().putInt(paramString, paramInt).apply();
  }
  
  public static void setLong(Context paramContext, String paramString, long paramLong)
  {
    getSharePreference(paramContext).edit().putLong(paramString, paramLong).apply();
  }
  
  public static void setString(Context paramContext, String paramString1, String paramString2)
  {
    getSharePreference(paramContext).edit().putString(paramString1, paramString2).apply();
  }
  
  public static void storeBoundBrokers(ArrayList<TradeAccount> paramArrayList)
  {
    ArrayList localArrayList2 = new ArrayList();
    ArrayList localArrayList1 = new ArrayList();
    paramArrayList = paramArrayList.iterator();
    while (paramArrayList.hasNext())
    {
      TradeAccount localTradeAccount = (TradeAccount)paramArrayList.next();
      if ((localTradeAccount instanceof SemiTradeAccount)) {
        localArrayList1.add(localTradeAccount);
      } else {
        localArrayList2.add(localTradeAccount);
      }
    }
    if (localArrayList2.size() > 0)
    {
      paramArrayList = m.a().toJson(localArrayList2, new TypeToken() {}.getType());
      b.a();
      setString(b.d(), "cache_key_trade_account", paramArrayList);
      if (localArrayList1.size() <= 0) {
        break label156;
      }
    }
    label156:
    for (paramArrayList = m.a().toJson(localArrayList1, new TypeToken() {}.getType());; paramArrayList = "")
    {
      b.a();
      setString(b.d(), "cache_key_trade_account_semi", paramArrayList);
      return;
      paramArrayList = "";
      break;
    }
  }
  
  public static void storeExchangeMap(HashMap<String, ArrayList<TradeAccount>> paramHashMap)
  {
    paramHashMap = m.a().toJson(paramHashMap);
    b.a();
    setString(b.d(), "cache_key_exchange_map", paramHashMap);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\base\storage\prefs\UserPrefs.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
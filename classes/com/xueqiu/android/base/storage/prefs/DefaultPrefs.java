package com.xueqiu.android.base.storage.prefs;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.preference.PreferenceManager;
import com.google.gson.Gson;
import com.google.gson.JsonSyntaxException;
import com.xueqiu.android.base.b;
import com.xueqiu.android.base.f;
import com.xueqiu.android.base.g;
import com.xueqiu.android.base.t;
import com.xueqiu.android.base.u;
import java.lang.reflect.Type;
import java.util.Set;

public class DefaultPrefs
{
  public static final String AD_LAUNCH_JSON = "ad_launch_json";
  public static final String AD_PULL_DOWN = "ad_pull_down";
  public static final String AD_SEARCH_BANNER_JSON = "ad_search_banner_json";
  public static final String AD_SEARCH_TEXT_JSON = "ad_search_text_json";
  public static final String ANDROID_APK_VERSION_CANCEL_TIME = "android_apk_version_cancel_time";
  public static final String ANDROID_APK_VERSION_CONFIG = "android_apk_version_config";
  public static final String ANDROID_APK_VERSION_CONFIG_UPDATE = "android_apk_version_config_update";
  public static final String BOUND_INFO = "bound_info";
  public static final String COMMENT_SORT = "comment_sort";
  public static final String CURRENT_VERSION_CODE = "current_version_code";
  public static final String DEFAULT_PATTERN_SHA1 = null;
  public static final String DEVELOPER_MODE = "developer_mode";
  public static final String DEVICE_ID = "device_id";
  public static final String ENTER_BUTTON_CONFIG = "enter_button_config";
  public static final String ENTER_BUTTON_CONFIG_UPDATED = "enter_button_config_updated";
  public static final String GENERAL_NOTICE_JSON = "general_notice_json";
  public static final String HAS_VISITED_USER_GUIDE = "has_visited_user_guide";
  public static final String HISTORY_SEARCH_KEY = "hostory_Search";
  public static final String INVESTMENT_CALENDAR_DATA_CACHE_OBJ = "investment_calendar_data_cache_obj";
  public static final String KEY_PATTERN_SHA1 = "pref_key_pattern_sha1";
  public static final String LAST_UPDATE_FRIENDS_TIME = "last_update_friends_time";
  public static final String LOGON_USER_INFO_FILE_NAME = "logon_user_info_file_name";
  public static final String PAY_MENTION_ANSWER_POSTFIX = "pay_mention_answer_postfix";
  public static final String PAY_MENTION_REFUSE_POSTFIX = "pay_mention_refuse_postfix";
  public static final String PRIVATE_FUND_CERTIFICIED = "private_fund_certified";
  private static final String QMAS_ROUTES = "qmas_routes";
  public static final String QMAS_ROUTES_UPDATED_TIME = "qmas_routes_updated_time";
  public static final String QUOTE_TYPE_FILED_MAP_CONFIG = "quote_type_filed_map_config";
  public static final String QUOTE_TYPE_FILED_MAP_CONFIG_UPDATED = "quote_type_filed_map_config_updated";
  public static final String RECENTLY_MENTIONED_STOCK = "recently_mentioned_stock";
  public static final String RECENTLY_MENTIONED_USER = "recently_mentioned_user";
  public static final String SEARCH_HISTORY = "search_history";
  public static final String SERVER_IP_ADDRESS_FILE_NAME = "server_ip_address_file_name";
  public static final String SERVICE_MENU_FILENAME = "service_menu";
  private static final String TAG = "Preferences";
  public static final String TIME_ZONE = "time_zone";
  public static final String USER_ACCOUNT = "user_account";
  public static final String USER_GROUPS_CACHE_DATA = "user_groups_cache_data";
  public static final String USER_MOBILE_SETTING = "user_mobile_setting";
  public static final String US_ETF_CATEGORY = "us_etf_category";
  public static final String US_ETF_CATEGORY_UPDATED = "us_etf_category_updated";
  
  public static void clear(Context paramContext)
  {
    getEditor(paramContext).clear().apply();
  }
  
  public static boolean getBoolean(String paramString, boolean paramBoolean, Context paramContext)
  {
    return getPreferences(paramContext).getBoolean(paramString, paramBoolean);
  }
  
  public static SharedPreferences.Editor getEditor(Context paramContext)
  {
    return getPreferences(paramContext).edit();
  }
  
  public static float getFloat(String paramString, float paramFloat, Context paramContext)
  {
    return getPreferences(paramContext).getFloat(paramString, paramFloat);
  }
  
  public static int getInt(String paramString, int paramInt, Context paramContext)
  {
    return getPreferences(paramContext).getInt(paramString, paramInt);
  }
  
  public static long getLong(String paramString, long paramLong, Context paramContext)
  {
    return getPreferences(paramContext).getLong(paramString, paramLong);
  }
  
  @SuppressLint({"NewApi"})
  public static Object getObject(SharedPreferences paramSharedPreferences, String paramString, Class paramClass)
  {
    paramSharedPreferences = paramSharedPreferences.getString(paramString, "");
    if (!paramSharedPreferences.equals(""))
    {
      paramString = new Gson();
      try
      {
        paramSharedPreferences = paramString.fromJson(paramSharedPreferences, paramClass);
        return paramSharedPreferences;
      }
      catch (JsonSyntaxException paramSharedPreferences) {}
    }
    return null;
  }
  
  @SuppressLint({"NewApi"})
  public static Object getObject(SharedPreferences paramSharedPreferences, String paramString, Type paramType)
  {
    paramSharedPreferences = paramSharedPreferences.getString(paramString, "");
    if (!paramSharedPreferences.equals(""))
    {
      paramString = new Gson();
      try
      {
        paramSharedPreferences = paramString.fromJson(paramSharedPreferences, paramType);
        return paramSharedPreferences;
      }
      catch (JsonSyntaxException paramSharedPreferences) {}
    }
    return null;
  }
  
  public static SharedPreferences getPreferences(Context paramContext)
  {
    return PreferenceManager.getDefaultSharedPreferences(paramContext);
  }
  
  public static String getString(String paramString1, String paramString2, Context paramContext)
  {
    return getPreferences(paramContext).getString(paramString1, paramString2);
  }
  
  public static Set<String> getStringSet(String paramString, Set<String> paramSet, Context paramContext)
  {
    return getPreferences(paramContext).getStringSet(paramString, paramSet);
  }
  
  public static SharedPreferences getUserPreferences(Context paramContext)
  {
    if (u.a().a == null) {
      throw new RuntimeException("you must be logged in when getting a user preferences.");
    }
    u.a();
    return paramContext.getSharedPreferences(String.format("user_%d", new Object[] { Long.valueOf(UserLogonDataPrefs.getLogonUserId()) }), 0);
  }
  
  public static int getVersionCode(Context paramContext)
  {
    return PreferenceManager.getDefaultSharedPreferences(paramContext).getInt("current_version_code", 0);
  }
  
  public static void putBoolean(String paramString, boolean paramBoolean, Context paramContext)
  {
    getEditor(paramContext).putBoolean(paramString, paramBoolean).apply();
  }
  
  public static void putFloat(String paramString, float paramFloat, Context paramContext)
  {
    getEditor(paramContext).putFloat(paramString, paramFloat).apply();
  }
  
  public static void putInt(String paramString, int paramInt, Context paramContext)
  {
    getEditor(paramContext).putInt(paramString, paramInt).apply();
  }
  
  public static void putLong(String paramString, long paramLong, Context paramContext)
  {
    getEditor(paramContext).putLong(paramString, paramLong).apply();
  }
  
  public static void putString(String paramString1, String paramString2, Context paramContext)
  {
    getEditor(paramContext).putString(paramString1, paramString2).apply();
  }
  
  public static void putStringSet(String paramString, Set<String> paramSet, Context paramContext)
  {
    getEditor(paramContext).putStringSet(paramString, paramSet).apply();
  }
  
  public static String qmasRoutesKey()
  {
    g.a();
    b.a();
    return String.format("%s_%s", new Object[] { "qmas_routes", f.a(b.d()) });
  }
  
  public static String qmasRoutesUpdateTimeKey()
  {
    g.a();
    b.a();
    return String.format("%s_%s", new Object[] { "qmas_routes_updated_time", f.a(b.d()) });
  }
  
  public static void remove(String paramString, Context paramContext)
  {
    getEditor(paramContext).remove(paramString).apply();
  }
  
  @SuppressLint({"NewApi"})
  public static void storeObject(SharedPreferences paramSharedPreferences, Object paramObject, String paramString)
  {
    paramSharedPreferences = paramSharedPreferences.edit();
    if (paramObject != null) {
      paramSharedPreferences.putString(paramString, new Gson().toJson(paramObject));
    }
    for (;;)
    {
      paramSharedPreferences.commit();
      return;
      paramSharedPreferences.putString(paramString, null);
    }
  }
  
  @SuppressLint({"NewApi"})
  public static void storeObject(SharedPreferences paramSharedPreferences, Object paramObject, Type paramType, String paramString)
  {
    paramSharedPreferences = paramSharedPreferences.edit();
    if (paramType != null) {
      paramSharedPreferences.putString(paramString, new Gson().toJson(paramObject, paramType));
    }
    for (;;)
    {
      paramSharedPreferences.commit();
      return;
      paramSharedPreferences.putString(paramString, null);
    }
  }
  
  public static void updateVersionCode(Context paramContext)
  {
    PreferenceManager.getDefaultSharedPreferences(paramContext).edit().putInt("current_version_code", 101).apply();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\base\storage\prefs\DefaultPrefs.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
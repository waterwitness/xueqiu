package com.xueqiu.android.base.storage.prefs;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.xueqiu.android.base.b;

public class UserLogonDataPrefs
{
  private static final String ACCESS_TOKEN = "access_token_encrypted";
  private static final String EXPIRES_IN = "expires_in";
  private static final String FETCH_TOKEN_TIME = "get_token_time";
  private static final String IS_SPAM_USER = "is_spam_user";
  private static final String REFRESH_TOKEN = "refresh_token";
  private static final String USER_ID = "userid";
  private static final String USER_TELEPHONE = "user_telphone";
  private static final String USER_TYPE_ANONYMOUS = "user_type_anonymous";
  
  public static void clear()
  {
    b.a().f().edit().clear().apply();
  }
  
  public static String getAccessToken()
  {
    return b.a().f().getString("access_token_encrypted", "");
  }
  
  public static long getFetchTokenTime()
  {
    return b.a().f().getLong("get_token_time", 0L);
  }
  
  public static long getLogonUserId()
  {
    return b.a().f().getLong("userid", 0L);
  }
  
  public static String getRefreshToken()
  {
    return b.a().f().getString("refresh_token", "");
  }
  
  public static long getTokenExpiresIn()
  {
    return b.a().f().getLong("expires_in", 0L);
  }
  
  public static String getUserTelephone()
  {
    return b.a().f().getString("user_telphone", "");
  }
  
  public static boolean isAnonymousUser()
  {
    return b.a().f().getBoolean("user_type_anonymous", true);
  }
  
  public static boolean isSpamUser()
  {
    return b.a().f().getBoolean("is_spam_user", false);
  }
  
  public static void storeAccessToken(String paramString)
  {
    b.a().f().edit().putString("access_token_encrypted", paramString).apply();
  }
  
  public static void storeFetchTokenTime(long paramLong)
  {
    b.a().f().edit().putLong("get_token_time", paramLong).apply();
  }
  
  public static void storeIsSpamUser(boolean paramBoolean)
  {
    b.a().f().edit().putBoolean("is_spam_user", paramBoolean).apply();
  }
  
  public static void storeLogonUserId(long paramLong)
  {
    b.a().f().edit().putLong("userid", paramLong).apply();
  }
  
  public static void storeRefreshToken(String paramString)
  {
    b.a().f().edit().putString("refresh_token", paramString).apply();
  }
  
  public static void storeTokenExpiresIn(long paramLong)
  {
    b.a().f().edit().putLong("expires_in", paramLong).apply();
  }
  
  public static void storeUserIsAnonymous(boolean paramBoolean)
  {
    b.a().f().edit().putBoolean("user_type_anonymous", paramBoolean).apply();
  }
  
  public static void storeUserTelephone(String paramString)
  {
    b.a().f().edit().putString("user_telphone", paramString).apply();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\base\storage\prefs\UserLogonDataPrefs.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
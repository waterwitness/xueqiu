package com.tencent.open;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.util.Log;
import android.widget.Toast;
import java.lang.ref.WeakReference;

public class ServerSetting
{
  public static final int ASK_URL = 8;
  public static final int AUTHORIZE_CGI = 2;
  public static final int BRAG_URL = 7;
  private static final String DEFAULT_CGI_AUTHORIZE = "https://openmobile.qq.com/oauth2.0/m_authorize?";
  private static final String DEFAULT_LOCAL_STORAGE_URI = "http://qzs.qq.com";
  private static final String DEFAULT_REDIRECT_URI = "auth://tauth.qq.com/";
  private static final String DEFAULT_URL_ASK = "http://qzs.qq.com/open/mobile/request/sdk_request.html?";
  private static final String DEFAULT_URL_BRAG = "http://qzs.qq.com/open/mobile/brag/sdk_brag.html?";
  private static final String DEFAULT_URL_GIFT = "http://qzs.qq.com/open/mobile/request/sdk_request.html?";
  private static final String DEFAULT_URL_GRAPH_BASE = "https://openmobile.qq.com/";
  private static final String DEFAULT_URL_INVITE = "http://qzs.qq.com/open/mobile/invite/sdk_invite.html?";
  private static final String DEFAULT_URL_REPORT = "http://wspeed.qq.com/w.cgi";
  private static final String DEFAULT_URL_SEND_STORY = "http://qzs.qq.com/open/mobile/sendstory/sdk_sendstory_v1.3.html?";
  public static final int ENVIRONMENT_EXPERIENCE = 1;
  public static final int ENVIRONMENT_NORMOL = 0;
  public static final int GIFT_URL = 9;
  public static final int GRAPH_BASE_URL = 6;
  public static final int INVITE_URL = 4;
  private static final String KEY_ASK_URL = "AskUrl";
  private static final String KEY_AUTHORIZE_CGI = "AuthorizeCgi";
  private static final String KEY_BRAG_URL = "BragUrl";
  private static final String KEY_GIFT_URL = "GiftUrl";
  private static final String KEY_GRAPH_BASE_URL = "GraphBaseUrl";
  private static final String KEY_INVITE_URL = "InviteUrl";
  private static final String KEY_LOCAL_STORAGE_URl = "LocalStorageUrl";
  private static final String KEY_REDIRECT_URL = "RedirectUrl";
  private static final String KEY_REPORT_URL = "ReportUrl";
  private static final String KEY_STORY_URL = "StoryUrl";
  public static final int LOCAL_STORAGE_URL = 10;
  public static final int REDIRECT_URL = 1;
  public static final int REPORT_URL = 5;
  private static final String SERVER_PREFS = "ServerPrefs";
  private static final String SERVER_TYPE = "ServerType";
  public static final int STORY_URL = 3;
  private static final String TAG = ServerSetting.class.getName();
  private static ServerSetting sServerSetting = null;
  private String sAskUrl = null;
  private String sAuthorizeCgi = null;
  private String sBragUrl = null;
  private String sGiftUrl = null;
  private String sGraphBaseUrl = null;
  private String sInviteUrl = null;
  private String sLocalStorageUrl = null;
  private String sRedirectUrl = null;
  private String sReportUrl = null;
  private String sSendStoryUrl = null;
  private WeakReference sWeakSharedPrefs = null;
  
  public static ServerSetting getInstance()
  {
    if (sServerSetting == null) {
      sServerSetting = new ServerSetting();
    }
    return sServerSetting;
  }
  
  public void changeServer()
  {
    this.sWeakSharedPrefs = null;
    this.sRedirectUrl = null;
    this.sAuthorizeCgi = null;
    this.sSendStoryUrl = null;
    this.sInviteUrl = null;
    this.sReportUrl = null;
    this.sGraphBaseUrl = null;
    this.sBragUrl = null;
    this.sAskUrl = null;
    this.sGiftUrl = null;
    this.sLocalStorageUrl = null;
  }
  
  public String getSettingUrl(Context paramContext, int paramInt)
  {
    if ((paramContext != null) && ((this.sWeakSharedPrefs == null) || (this.sWeakSharedPrefs.get() == null))) {
      this.sWeakSharedPrefs = new WeakReference(paramContext.getSharedPreferences("ServerPrefs", 0));
    }
    switch (paramInt)
    {
    default: 
      return "";
    case 1: 
      if (paramContext == null) {
        return "auth://tauth.qq.com/";
      }
      if (this.sRedirectUrl == null) {
        this.sRedirectUrl = ((SharedPreferences)this.sWeakSharedPrefs.get()).getString("RedirectUrl", "auth://tauth.qq.com/");
      }
      return this.sRedirectUrl;
    case 2: 
      if (paramContext == null) {
        return "https://openmobile.qq.com/oauth2.0/m_authorize?";
      }
      if (this.sAuthorizeCgi == null) {
        this.sAuthorizeCgi = ((SharedPreferences)this.sWeakSharedPrefs.get()).getString("AuthorizeCgi", "https://openmobile.qq.com/oauth2.0/m_authorize?");
      }
      return this.sAuthorizeCgi;
    case 3: 
      if (paramContext == null) {
        return "http://qzs.qq.com/open/mobile/sendstory/sdk_sendstory_v1.3.html?";
      }
      if (this.sSendStoryUrl == null) {
        this.sSendStoryUrl = ((SharedPreferences)this.sWeakSharedPrefs.get()).getString("StoryUrl", "http://qzs.qq.com/open/mobile/sendstory/sdk_sendstory_v1.3.html?");
      }
      return this.sSendStoryUrl;
    case 4: 
      if (paramContext == null) {
        return "http://qzs.qq.com/open/mobile/invite/sdk_invite.html?";
      }
      if (this.sInviteUrl == null) {
        this.sInviteUrl = ((SharedPreferences)this.sWeakSharedPrefs.get()).getString("InviteUrl", "http://qzs.qq.com/open/mobile/invite/sdk_invite.html?");
      }
      return this.sInviteUrl;
    case 5: 
      if (paramContext == null) {
        return "http://wspeed.qq.com/w.cgi";
      }
      if (this.sReportUrl == null) {
        this.sReportUrl = ((SharedPreferences)this.sWeakSharedPrefs.get()).getString("ReportUrl", "http://wspeed.qq.com/w.cgi");
      }
      return this.sReportUrl;
    case 6: 
      if (paramContext == null) {
        return "https://openmobile.qq.com/";
      }
      if (this.sGraphBaseUrl == null) {
        this.sGraphBaseUrl = ((SharedPreferences)this.sWeakSharedPrefs.get()).getString("GraphBaseUrl", "https://openmobile.qq.com/");
      }
      return this.sGraphBaseUrl;
    case 7: 
      if (paramContext == null) {
        return "http://qzs.qq.com/open/mobile/brag/sdk_brag.html?";
      }
      if (this.sBragUrl == null) {
        this.sBragUrl = ((SharedPreferences)this.sWeakSharedPrefs.get()).getString("BragUrl", "http://qzs.qq.com/open/mobile/brag/sdk_brag.html?");
      }
      return this.sBragUrl;
    case 8: 
      if (paramContext == null) {
        return "http://qzs.qq.com/open/mobile/request/sdk_request.html?";
      }
      if (this.sAskUrl == null) {
        this.sAskUrl = ((SharedPreferences)this.sWeakSharedPrefs.get()).getString("AskUrl", "http://qzs.qq.com/open/mobile/request/sdk_request.html?");
      }
      return this.sAskUrl;
    case 9: 
      if (paramContext == null) {
        return "http://qzs.qq.com/open/mobile/request/sdk_request.html?";
      }
      if (this.sGiftUrl == null) {
        this.sGiftUrl = ((SharedPreferences)this.sWeakSharedPrefs.get()).getString("GiftUrl", "http://qzs.qq.com/open/mobile/request/sdk_request.html?");
      }
      return this.sGiftUrl;
    }
    if (paramContext == null) {
      return "http://qzs.qq.com";
    }
    if (this.sLocalStorageUrl == null) {
      this.sLocalStorageUrl = ((SharedPreferences)this.sWeakSharedPrefs.get()).getString("LocalStorageUrl", "http://qzs.qq.com");
    }
    return this.sLocalStorageUrl;
  }
  
  public void setEnvironment(Context paramContext, int paramInt)
  {
    if ((paramContext != null) && ((this.sWeakSharedPrefs == null) || (this.sWeakSharedPrefs.get() == null))) {
      this.sWeakSharedPrefs = new WeakReference(paramContext.getSharedPreferences("ServerPrefs", 0));
    }
    if ((paramInt != 0) && (paramInt != 1))
    {
      Log.e(TAG, "切换环境参数错误，正式环境为0，体验环境为1");
      return;
    }
    switch (paramInt)
    {
    default: 
      return;
    case 0: 
      localEditor = ((SharedPreferences)this.sWeakSharedPrefs.get()).edit();
      localEditor.putInt("ServerType", 0);
      localEditor.putString("RedirectUrl", "auth://tauth.qq.com/");
      localEditor.putString("AuthorizeCgi", "https://openmobile.qq.com/oauth2.0/m_authorize?");
      localEditor.putString("StoryUrl", "http://qzs.qq.com/open/mobile/sendstory/sdk_sendstory_v1.3.html?");
      localEditor.putString("InviteUrl", "http://qzs.qq.com/open/mobile/invite/sdk_invite.html?");
      localEditor.putString("ReportUrl", "http://wspeed.qq.com/w.cgi");
      localEditor.putString("GraphBaseUrl", "https://openmobile.qq.com/");
      localEditor.putString("BragUrl", "http://qzs.qq.com/open/mobile/brag/sdk_brag.html?");
      localEditor.putString("AskUrl", "http://qzs.qq.com/open/mobile/request/sdk_request.html?");
      localEditor.putString("GiftUrl", "http://qzs.qq.com/open/mobile/request/sdk_request.html?");
      localEditor.putString("LocalStorageUrl", "http://qzs.qq.com");
      localEditor.commit();
      changeServer();
      Toast.makeText(paramContext, "已切换到正式环境", 0).show();
      return;
    }
    SharedPreferences.Editor localEditor = ((SharedPreferences)this.sWeakSharedPrefs.get()).edit();
    localEditor.putInt("ServerType", 1);
    localEditor.putString("RedirectUrl", "auth://tauth.qq.com/");
    localEditor.putString("AuthorizeCgi", "https://test.openmobile.qq.com/oauth2.0/m_authorize?");
    localEditor.putString("StoryUrl", "http://testmobile.qq.com/open/mobile/sendstory/sdk_sendstory_v1.3.html?");
    localEditor.putString("InviteUrl", "http://testmobile.qq.com/open/mobile/invite/sdk_invite.html?");
    localEditor.putString("ReportUrl", "http://wspeed.qq.com/w.cgi");
    localEditor.putString("GraphBaseUrl", "https://test.openmobile.qq.com/");
    localEditor.putString("BragUrl", "http://testmobile.qq.com/open/mobile/brag/sdk_brag.html?");
    localEditor.putString("AskUrl", "http://testmobile.qq.com/open/mobile/request/sdk_request.html?");
    localEditor.putString("GiftUrl", "http://testmobile.qq.com/open/mobile/request/sdk_request.html?");
    localEditor.putString("LocalStorageUrl", "http://test.openmobile.qq.com");
    localEditor.commit();
    changeServer();
    Toast.makeText(paramContext, "已切换到体验环境", 0).show();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\open\ServerSetting.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
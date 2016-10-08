package com.sina.weibo.sdk.openapi;

import android.text.TextUtils;
import com.sina.weibo.sdk.auth.Oauth2AccessToken;
import com.sina.weibo.sdk.net.RequestListener;
import com.sina.weibo.sdk.net.WeiboParameters;
import com.sina.weibo.sdk.utils.LogUtil;
import org.json.JSONObject;

public class InviteAPI
  extends AbsOpenAPI
{
  public static final String KEY_INVITE_LOGO = "invite_logo";
  public static final String KEY_TEXT = "text";
  public static final String KEY_URL = "url";
  private static final String TAG = InviteAPI.class.getName();
  private final String INVITE_URL = "https://m.api.weibo.com/2/messages/invite.json";
  
  public InviteAPI(Oauth2AccessToken paramOauth2AccessToken)
  {
    super(paramOauth2AccessToken);
  }
  
  public void sendInvite(String paramString, JSONObject paramJSONObject, RequestListener paramRequestListener)
  {
    if ((!TextUtils.isEmpty(paramString)) && (paramJSONObject != null) && (!TextUtils.isEmpty(paramJSONObject.toString())))
    {
      WeiboParameters localWeiboParameters = new WeiboParameters();
      localWeiboParameters.put("uid", paramString);
      localWeiboParameters.put("data", paramJSONObject.toString());
      requestAsync("https://m.api.weibo.com/2/messages/invite.json", localWeiboParameters, "POST", paramRequestListener);
      return;
    }
    LogUtil.d(TAG, "Invite args error!");
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sina\weibo\sdk\openapi\InviteAPI.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
package com.tencent.tauth;

import android.os.Bundle;
import com.tencent.tauth.http.AsyncHttpPostRunner;
import com.tencent.tauth.http.AsyncHttpRequestRunner;
import com.tencent.tauth.http.Callback;
import com.tencent.tauth.http.IRequestListener;
import com.tencent.tauth.http.RequestListenerImpl.AddAlbumListener;
import com.tencent.tauth.http.RequestListenerImpl.AddShareListener;
import com.tencent.tauth.http.RequestListenerImpl.AddTopicListener;
import com.tencent.tauth.http.RequestListenerImpl.ListAlbumListener;
import com.tencent.tauth.http.RequestListenerImpl.OpenIDListener;
import com.tencent.tauth.http.RequestListenerImpl.UploadPicListener;
import com.tencent.tauth.http.RequestListenerImpl.UserInfoListener;
import com.tencent.tauth.http.RequestListenerImpl.UserProfileListener;
import com.tencent.tauth.http.TDebug;

public class TencentOpenAPI
{
  private static final String TAG = "TencentOpenAPI";
  
  public static void addAlbum(String paramString1, String paramString2, String paramString3, Bundle paramBundle, Callback paramCallback)
  {
    paramBundle.putString("format", "json");
    paramBundle.putString("access_token", paramString1);
    paramBundle.putString("oauth_consumer_key", paramString2);
    paramBundle.putString("openid", paramString3);
    asyncPost("https://graph.qq.com/photo/add_album", paramBundle, new AddAlbumListener(paramCallback));
  }
  
  public static void addShare(String paramString1, String paramString2, String paramString3, Bundle paramBundle, Callback paramCallback)
  {
    paramBundle.putString("format", "json");
    paramBundle.putString("source", "2");
    paramBundle.putString("access_token", paramString1);
    paramBundle.putString("oauth_consumer_key", paramString2);
    paramBundle.putString("openid", paramString3);
    asyncPost("https://graph.qq.com/share/add_share", paramBundle, new AddShareListener(paramCallback));
  }
  
  public static void addTopic(String paramString1, String paramString2, String paramString3, Bundle paramBundle, Callback paramCallback)
  {
    paramBundle.putString("format", "json");
    paramBundle.putString("access_token", paramString1);
    paramBundle.putString("oauth_consumer_key", paramString2);
    paramBundle.putString("openid", paramString3);
    asyncPost("https://graph.qq.com/shuoshuo/add_topic", paramBundle, new AddTopicListener(paramCallback));
  }
  
  private static void asyncPost(String paramString, Bundle paramBundle, IRequestListener paramIRequestListener)
  {
    TDebug.i("TencentOpenAPI", paramString);
    new AsyncHttpPostRunner().request(paramString, paramBundle, paramIRequestListener);
  }
  
  private static void asyncRequest(String paramString, IRequestListener paramIRequestListener)
  {
    TDebug.i("TencentOpenAPI", paramString);
    new AsyncHttpRequestRunner().request(paramString, null, paramIRequestListener);
  }
  
  public static void listAlbum(String paramString1, String paramString2, String paramString3, Callback paramCallback)
  {
    asyncRequest(String.format("https://graph.qq.com/photo/list_album?access_token=%s&oauth_consumer_key=%s&openid=%s", new Object[] { paramString1, paramString2, paramString3 }), new ListAlbumListener(paramCallback));
  }
  
  public static void openid(String paramString, Callback paramCallback)
  {
    asyncRequest(String.format("https://graph.qq.com/oauth2.0/me?access_token=%s", new Object[] { paramString }), new OpenIDListener(paramCallback));
  }
  
  public static void uploadPic(String paramString1, String paramString2, String paramString3, Bundle paramBundle, Callback paramCallback)
  {
    paramBundle.putString("format", "json");
    paramBundle.putString("access_token", paramString1);
    paramBundle.putString("oauth_consumer_key", paramString2);
    paramBundle.putString("openid", paramString3);
    asyncPost("https://graph.qq.com/photo/upload_pic", paramBundle, new UploadPicListener(paramCallback));
  }
  
  public static void userInfo(String paramString1, String paramString2, String paramString3, Callback paramCallback)
  {
    asyncRequest(String.format("https://graph.qq.com/user/get_user_info?access_token=%s&oauth_consumer_key=%s&openid=%s", new Object[] { paramString1, paramString2, paramString3 }), new UserInfoListener(paramCallback));
  }
  
  public static void userProfile(String paramString1, String paramString2, String paramString3, Callback paramCallback)
  {
    asyncRequest(String.format("https://graph.qq.com/user/get_user_profile?access_token=%s&oauth_consumer_key=%s&openid=%s", new Object[] { paramString1, paramString2, paramString3 }), new UserProfileListener(paramCallback));
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\tauth\TencentOpenAPI.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
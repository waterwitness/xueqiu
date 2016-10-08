package com.tencent.tauth;

public class TencentOpenHost
{
  public static final String GRAPH_ACCESS_TOKEN_URL = "https://graph.qq.com/oauth2.0/authorize?response_type=token&display=mobile&client_id=%s&scope=%s&redirect_uri=%s&status_userip=%s&status_os=%s&status_machine=%s&status_version=%s";
  public static final String GRAPH_ADD_ALBUM = "https://graph.qq.com/photo/add_album";
  public static final String GRAPH_ADD_SHARE = "https://graph.qq.com/share/add_share";
  public static final String GRAPH_ADD_TOPIC = "https://graph.qq.com/shuoshuo/add_topic";
  static final String GRAPH_ADD_WEIBO = "https://graph.qq.com/wb/add_weibo";
  public static final String GRAPH_LIST_ALBUM = "https://graph.qq.com/photo/list_album?access_token=%s&oauth_consumer_key=%s&openid=%s";
  public static final String GRAPH_OPENID_URL = "https://graph.qq.com/oauth2.0/me?access_token=%s";
  public static final String GRAPH_UPLOAD_PIC = "https://graph.qq.com/photo/upload_pic";
  public static final String GRAPH_USERINFO_URL = "https://graph.qq.com/user/get_user_info?access_token=%s&oauth_consumer_key=%s&openid=%s";
  public static final String GRAPH_USERPROFILE_URL = "https://graph.qq.com/user/get_user_profile?access_token=%s&oauth_consumer_key=%s&openid=%s";
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\tauth\TencentOpenHost.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
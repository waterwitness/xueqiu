package com.xueqiu.android.community.model;

public class UserLogonData
{
  private String accessToken;
  private long expiresInByInMillis;
  private long getTokenTime;
  private boolean isAnonymousUser;
  private boolean isSpamUser = false;
  private String refreshToken;
  private String telephone;
  private long userId;
  
  public String getAccessToken()
  {
    return this.accessToken;
  }
  
  public long getExpiresInByInMillis()
  {
    return this.expiresInByInMillis;
  }
  
  public long getFetchTokenTime()
  {
    return this.getTokenTime;
  }
  
  public String getRefreshToken()
  {
    return this.refreshToken;
  }
  
  public String getTelephone()
  {
    return this.telephone;
  }
  
  public long getUserId()
  {
    return this.userId;
  }
  
  public boolean isAnonymousUser()
  {
    return this.isAnonymousUser;
  }
  
  public boolean isSpamUser()
  {
    return this.isSpamUser;
  }
  
  public void setAccessToken(String paramString)
  {
    this.accessToken = paramString;
  }
  
  public void setAnonymousUser(boolean paramBoolean)
  {
    this.isAnonymousUser = paramBoolean;
  }
  
  public void setExpiresInByInMillis(long paramLong)
  {
    this.expiresInByInMillis = paramLong;
  }
  
  public void setGetTokenTime(long paramLong)
  {
    this.getTokenTime = paramLong;
  }
  
  public void setRefreshToken(String paramString)
  {
    this.refreshToken = paramString;
  }
  
  public void setSpamUser(boolean paramBoolean)
  {
    this.isSpamUser = paramBoolean;
  }
  
  public void setTelephone(String paramString)
  {
    this.telephone = paramString;
  }
  
  public void setUserId(long paramLong)
  {
    this.userId = paramLong;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\community\model\UserLogonData.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
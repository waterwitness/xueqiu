package com.xueqiu.android.common.model;

import com.google.gson.annotations.Expose;

public class OAuthBindResult
{
  @Expose
  private String accessToken;
  @Expose
  private long expiresIn;
  @Expose
  private String refreshToken;
  @Expose
  private String scope;
  
  public String getAccessToken()
  {
    return this.accessToken;
  }
  
  public long getExpiresIn()
  {
    return this.expiresIn;
  }
  
  public String getRefreshToken()
  {
    return this.refreshToken;
  }
  
  public String getScope()
  {
    return this.scope;
  }
  
  public void setAccessToken(String paramString)
  {
    this.accessToken = paramString;
  }
  
  public void setExpiresIn(long paramLong)
  {
    this.expiresIn = paramLong;
  }
  
  public void setRefreshToken(String paramString)
  {
    this.refreshToken = paramString;
  }
  
  public void setScope(String paramString)
  {
    this.scope = paramString;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\model\OAuthBindResult.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
package com.xueqiu.android.common.model;

import com.google.gson.annotations.Expose;
import com.xueqiu.android.community.model.User;

public class LoginResult
{
  public static final long USER_STATE_SPAM = 110002L;
  @Expose
  private String accessToken;
  @Expose
  private long expiresIn;
  @Expose
  private String refreshToken;
  @Expose
  private String scope;
  @Expose
  private String telephoneBinded;
  @Expose
  private User user;
  @Expose
  private long userState;
  
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
  
  public String getTelephoneBinded()
  {
    if (this.telephoneBinded == null) {
      return "";
    }
    return this.telephoneBinded;
  }
  
  public User getUser()
  {
    return this.user;
  }
  
  public long getUserState()
  {
    return this.userState;
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
  
  public void setTelephoneBinded(String paramString)
  {
    this.telephoneBinded = paramString;
  }
  
  public void setUser(User paramUser)
  {
    this.user = paramUser;
  }
  
  public void setUserState(long paramLong)
  {
    this.userState = paramLong;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\model\LoginResult.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
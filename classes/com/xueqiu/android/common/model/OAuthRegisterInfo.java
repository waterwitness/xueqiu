package com.xueqiu.android.common.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class OAuthRegisterInfo
  implements Parcelable
{
  public static final Parcelable.Creator<OAuthRegisterInfo> CREATOR = new Parcelable.Creator()
  {
    public final OAuthRegisterInfo createFromParcel(Parcel paramAnonymousParcel)
    {
      OAuthRegisterInfo localOAuthRegisterInfo = new OAuthRegisterInfo();
      OAuthRegisterInfo.access$002(localOAuthRegisterInfo, paramAnonymousParcel.readString());
      OAuthRegisterInfo.access$102(localOAuthRegisterInfo, paramAnonymousParcel.readString());
      OAuthRegisterInfo.access$202(localOAuthRegisterInfo, paramAnonymousParcel.readString());
      OAuthRegisterInfo.access$302(localOAuthRegisterInfo, paramAnonymousParcel.readString());
      OAuthRegisterInfo.access$402(localOAuthRegisterInfo, paramAnonymousParcel.readLong());
      OAuthRegisterInfo.access$502(localOAuthRegisterInfo, paramAnonymousParcel.readString());
      OAuthRegisterInfo.access$602(localOAuthRegisterInfo, paramAnonymousParcel.readString());
      OAuthRegisterInfo.access$702(localOAuthRegisterInfo, paramAnonymousParcel.readString());
      return localOAuthRegisterInfo;
    }
    
    public final OAuthRegisterInfo[] newArray(int paramAnonymousInt)
    {
      return new OAuthRegisterInfo[paramAnonymousInt];
    }
  };
  private long oAuthExpiredIn;
  private String oAuthToken;
  private String oauthScreeName;
  private String openid;
  private String password;
  private String profileImageUrl;
  private String screenName;
  private String source;
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getOauthScreeName()
  {
    return this.oauthScreeName;
  }
  
  public String getOpenid()
  {
    return this.openid;
  }
  
  public String getPassword()
  {
    return this.password;
  }
  
  public String getProfileImageUrl()
  {
    return this.profileImageUrl;
  }
  
  public String getScreenName()
  {
    return this.screenName;
  }
  
  public String getSource()
  {
    return this.source;
  }
  
  public long getoAuthExpiredIn()
  {
    return this.oAuthExpiredIn;
  }
  
  public String getoAuthToken()
  {
    return this.oAuthToken;
  }
  
  public void setOauthScreeName(String paramString)
  {
    this.oauthScreeName = paramString;
  }
  
  public void setOpenid(String paramString)
  {
    this.openid = paramString;
  }
  
  public void setPassword(String paramString)
  {
    this.password = paramString;
  }
  
  public void setProfileImageUrl(String paramString)
  {
    this.profileImageUrl = paramString;
  }
  
  public void setScreenName(String paramString)
  {
    this.screenName = paramString;
  }
  
  public void setSource(String paramString)
  {
    this.source = paramString;
  }
  
  public void setoAuthExpiredIn(long paramLong)
  {
    this.oAuthExpiredIn = paramLong;
  }
  
  public void setoAuthToken(String paramString)
  {
    this.oAuthToken = paramString;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.openid);
    paramParcel.writeString(this.screenName);
    paramParcel.writeString(this.profileImageUrl);
    paramParcel.writeString(this.oAuthToken);
    paramParcel.writeLong(this.oAuthExpiredIn);
    paramParcel.writeString(this.oauthScreeName);
    paramParcel.writeString(this.password);
    paramParcel.writeString(this.source);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\model\OAuthRegisterInfo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
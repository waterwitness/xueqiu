package com.xueqiu.android.trade.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.gson.annotations.Expose;

public class Broker$OauthConfig
  implements Parcelable
{
  public static final Parcelable.Creator<OauthConfig> CREATOR = new Parcelable.Creator()
  {
    public final Broker.OauthConfig createFromParcel(Parcel paramAnonymousParcel)
    {
      return new Broker.OauthConfig(paramAnonymousParcel, null);
    }
    
    public final Broker.OauthConfig[] newArray(int paramAnonymousInt)
    {
      return new Broker.OauthConfig[paramAnonymousInt];
    }
  };
  @Expose
  private String accountLabel;
  @Expose
  private String oauthAuthorizeUrl;
  @Expose
  private String oauthCaptchaUrl;
  @Expose
  private String oauthRefreshTokenUrl;
  
  private Broker$OauthConfig(Parcel paramParcel)
  {
    this.accountLabel = paramParcel.readString();
    this.oauthAuthorizeUrl = paramParcel.readString();
    this.oauthRefreshTokenUrl = paramParcel.readString();
    this.oauthCaptchaUrl = paramParcel.readString();
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getAccountLabel()
  {
    return this.accountLabel;
  }
  
  public String getOauthAuthorizeUrl()
  {
    return this.oauthAuthorizeUrl;
  }
  
  public String getOauthCaptchaUrl()
  {
    return this.oauthCaptchaUrl;
  }
  
  public String getOauthRefreshTokenUrl()
  {
    return this.oauthRefreshTokenUrl;
  }
  
  public void setAccountLabel(String paramString)
  {
    this.accountLabel = paramString;
  }
  
  public void setOauthAuthorizeUrl(String paramString)
  {
    this.oauthAuthorizeUrl = paramString;
  }
  
  public void setOauthCaptchaUrl(String paramString)
  {
    this.oauthCaptchaUrl = paramString;
  }
  
  public void setOauthRefreshTokenUrl(String paramString)
  {
    this.oauthRefreshTokenUrl = paramString;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.accountLabel);
    paramParcel.writeString(this.oauthAuthorizeUrl);
    paramParcel.writeString(this.oauthRefreshTokenUrl);
    paramParcel.writeString(this.oauthCaptchaUrl);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\trade\model\Broker$OauthConfig.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
package com.xueqiu.android.trade.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import com.google.gson.annotations.Expose;

public class TradeBroker
  implements Parcelable
{
  public static final Parcelable.Creator<TradeBroker> CREATOR = new Parcelable.Creator()
  {
    public final TradeBroker createFromParcel(Parcel paramAnonymousParcel)
    {
      return new TradeBroker(paramAnonymousParcel);
    }
    
    public final TradeBroker[] newArray(int paramAnonymousInt)
    {
      return new TradeBroker[paramAnonymousInt];
    }
  };
  @Expose
  private String etype;
  @Expose
  private TradeBroker.OauthConfig oauthConfig;
  @Expose
  private int pageType;
  @Expose
  private String renewUrl;
  @Expose
  private boolean switchExchangeMantaince;
  @Expose
  private String switchExchangeMsg;
  @Expose
  private String traderLogo;
  @Expose
  private String traderName;
  
  public TradeBroker() {}
  
  protected TradeBroker(Parcel paramParcel)
  {
    this.traderName = paramParcel.readString();
    this.traderLogo = paramParcel.readString();
    this.pageType = paramParcel.readInt();
    this.oauthConfig = ((TradeBroker.OauthConfig)paramParcel.readParcelable(TradeBroker.OauthConfig.class.getClassLoader()));
    this.renewUrl = paramParcel.readString();
    if (paramParcel.readByte() != 0) {}
    for (boolean bool = true;; bool = false)
    {
      this.switchExchangeMantaince = bool;
      this.switchExchangeMsg = paramParcel.readString();
      this.etype = paramParcel.readString();
      return;
    }
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getEtype()
  {
    return this.etype;
  }
  
  public TradeBroker.OauthConfig getOauthConfig()
  {
    return this.oauthConfig;
  }
  
  public int getPageType()
  {
    return this.pageType;
  }
  
  public String getRenewUrl()
  {
    return this.renewUrl;
  }
  
  public String getSmallTraderLogo()
  {
    if (TextUtils.isEmpty(this.traderLogo)) {}
    StringBuilder localStringBuilder;
    do
    {
      return null;
      localStringBuilder = new StringBuilder(this.traderLogo);
    } while (localStringBuilder.lastIndexOf("/") == -1);
    return localStringBuilder.insert(localStringBuilder.lastIndexOf("/"), "/small").toString();
  }
  
  public String getSwitchExchangeMsg()
  {
    return this.switchExchangeMsg;
  }
  
  public String getTraderLogo()
  {
    return this.traderLogo;
  }
  
  public String getTraderName()
  {
    return this.traderName;
  }
  
  public boolean isSwitchExchangeMantaince()
  {
    return this.switchExchangeMantaince;
  }
  
  public void setEtype(String paramString)
  {
    this.etype = paramString;
  }
  
  public void setOauthConfig(TradeBroker.OauthConfig paramOauthConfig)
  {
    this.oauthConfig = paramOauthConfig;
  }
  
  public void setPageType(int paramInt)
  {
    this.pageType = paramInt;
  }
  
  public void setRenewUrl(String paramString)
  {
    this.renewUrl = paramString;
  }
  
  public void setSwitchExchangeMantaince(boolean paramBoolean)
  {
    this.switchExchangeMantaince = paramBoolean;
  }
  
  public void setSwitchExchangeMsg(String paramString)
  {
    this.switchExchangeMsg = paramString;
  }
  
  public void setTraderLogo(String paramString)
  {
    this.traderLogo = paramString;
  }
  
  public void setTraderName(String paramString)
  {
    this.traderName = paramString;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.traderName);
    paramParcel.writeString(this.traderLogo);
    paramParcel.writeInt(this.pageType);
    paramParcel.writeParcelable(this.oauthConfig, paramInt);
    paramParcel.writeString(this.renewUrl);
    if (this.switchExchangeMantaince) {}
    for (byte b = 1;; b = 0)
    {
      paramParcel.writeByte(b);
      paramParcel.writeString(this.switchExchangeMsg);
      paramParcel.writeString(this.etype);
      return;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\trade\model\TradeBroker.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
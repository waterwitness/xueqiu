package com.xueqiu.android.trade.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.gson.annotations.Expose;
import java.util.HashMap;
import java.util.Map;

public class TradeAccount
  implements Parcelable
{
  public static final Parcelable.Creator<TradeAccount> CREATOR = new Parcelable.Creator()
  {
    public final TradeAccount createFromParcel(Parcel paramAnonymousParcel)
    {
      return new TradeAccount(paramAnonymousParcel);
    }
    
    public final TradeAccount[] newArray(int paramAnonymousInt)
    {
      return new TradeAccount[paramAnonymousInt];
    }
  };
  public static final String FIRST_TRADE_TID = "DYZQ";
  public static final String IB_TID = "IB";
  public static final int PAGE_H5 = 1;
  public static final int PAGE_NATIVE = 2;
  public static final String PAMID = "PAMID";
  public static final String PINGAN_TID = "PINGAN";
  @Expose
  private String accessTokenExpiredAt;
  @Expose
  private String aid;
  @Expose
  private String bindUrl;
  private boolean isCreateByMyself;
  @Expose
  private Map<String, String> oauthParams;
  @Expose
  private String realAccountId;
  @Expose
  private String refreshUrl;
  @Expose
  private String tid;
  @Expose
  private TradeBroker tradeBroker;
  
  public TradeAccount() {}
  
  protected TradeAccount(Parcel paramParcel)
  {
    this.tid = paramParcel.readString();
    this.aid = paramParcel.readString();
    this.realAccountId = paramParcel.readString();
    this.oauthParams = new HashMap();
    paramParcel.readMap(this.oauthParams, Map.class.getClassLoader());
    this.accessTokenExpiredAt = paramParcel.readString();
    this.tradeBroker = ((TradeBroker)paramParcel.readParcelable(TradeBroker.class.getClassLoader()));
    this.refreshUrl = paramParcel.readString();
    if (paramParcel.readByte() != 0) {}
    for (boolean bool = true;; bool = false)
    {
      this.isCreateByMyself = bool;
      return;
    }
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getAccessTokenExpiredAt()
  {
    return this.accessTokenExpiredAt;
  }
  
  public String getAid()
  {
    return this.aid;
  }
  
  public String getBindUrl()
  {
    return this.bindUrl;
  }
  
  public Map<String, String> getOauthParams()
  {
    return this.oauthParams;
  }
  
  public String getRealAccountId()
  {
    return this.realAccountId;
  }
  
  public String getRefreshUrl()
  {
    return this.refreshUrl;
  }
  
  public String getTid()
  {
    return this.tid;
  }
  
  public TradeBroker getTradeBroker()
  {
    return this.tradeBroker;
  }
  
  public boolean isCreateByMyself()
  {
    return this.isCreateByMyself;
  }
  
  public boolean isFirstTrade()
  {
    return "DYZQ".equals(getTid());
  }
  
  public boolean isIB()
  {
    return "IB".equals(getTid());
  }
  
  public boolean isSuccessBondStatus()
  {
    return true;
  }
  
  public boolean isUSType()
  {
    return ("IB".equals(getTid())) || ("DYZQ".equals(getTid()));
  }
  
  public void setAccessTokenExpiredAt(String paramString)
  {
    this.accessTokenExpiredAt = paramString;
  }
  
  public void setAid(String paramString)
  {
    this.aid = paramString;
  }
  
  public void setBindUrl(String paramString)
  {
    this.bindUrl = paramString;
  }
  
  public void setCreateByMyself(boolean paramBoolean)
  {
    this.isCreateByMyself = paramBoolean;
  }
  
  public void setOauthParams(Map<String, String> paramMap)
  {
    this.oauthParams = paramMap;
  }
  
  public void setRealAccountId(String paramString)
  {
    this.realAccountId = paramString;
  }
  
  public void setRefreshUrl(String paramString)
  {
    this.refreshUrl = paramString;
  }
  
  public void setTid(String paramString)
  {
    this.tid = paramString;
  }
  
  public void setTradeBroker(TradeBroker paramTradeBroker)
  {
    this.tradeBroker = paramTradeBroker;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.tid);
    paramParcel.writeString(this.aid);
    paramParcel.writeString(this.realAccountId);
    paramParcel.writeMap(this.oauthParams);
    paramParcel.writeString(this.accessTokenExpiredAt);
    paramParcel.writeParcelable(this.tradeBroker, paramInt);
    paramParcel.writeString(this.refreshUrl);
    if (this.isCreateByMyself) {}
    for (byte b = 1;; b = 0)
    {
      paramParcel.writeByte(b);
      return;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\trade\model\TradeAccount.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
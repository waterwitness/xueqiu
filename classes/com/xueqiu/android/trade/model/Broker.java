package com.xueqiu.android.trade.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import com.google.gson.annotations.Expose;
import com.xueqiu.android.base.util.ab;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class Broker
  implements Parcelable
{
  public static final Parcelable.Creator<Broker> CREATOR = new Parcelable.Creator()
  {
    public final Broker createFromParcel(Parcel paramAnonymousParcel)
    {
      return new Broker(paramAnonymousParcel, null);
    }
    
    public final Broker[] newArray(int paramAnonymousInt)
    {
      return new Broker[paramAnonymousInt];
    }
  };
  public static final String FIRST_TRADE_TID = "DYZQ";
  public static final String GJ_TID = "GJZQ";
  public static final String GL_TID = "GLZQ";
  public static final String IB_TID = "IB";
  public static final int PAGE_H5 = 1;
  public static final int PAGE_NATIVE = 2;
  public static final String PAMID = "PAMID";
  public static final String PINGAN_TID = "PINGAN";
  @Expose
  private String aid;
  @Expose
  private boolean bankTrans;
  @Expose
  private String bindUrl;
  @Expose
  private String etype;
  @Expose
  private boolean isDefault;
  @Expose
  private Broker.OauthConfig oauthConfig;
  @Expose
  private Map<String, String> oauthParams;
  @Expose
  private String openingUrl;
  @Expose
  private int pageType;
  @Expose
  private String realAccountId;
  @Expose
  private String refreshUrl;
  @Expose
  private Broker.Status status;
  @Expose
  private String statusMsg;
  @Expose
  private String statusName;
  @Expose
  private String statusTitle;
  @Expose
  private boolean switchExchangeMantaince;
  @Expose
  private String switchExchangeMsg;
  @Expose
  private String tid;
  @Expose
  private String traderDesc;
  @Expose
  private String traderLogo;
  @Expose
  private String traderName;
  
  public Broker() {}
  
  private Broker(Parcel paramParcel)
  {
    this.tid = paramParcel.readString();
    this.traderName = paramParcel.readString();
    this.traderLogo = paramParcel.readString();
    this.traderDesc = paramParcel.readString();
    this.aid = paramParcel.readString();
    this.oauthParams = new HashMap();
    paramParcel.readMap(this.oauthParams, Map.class.getClassLoader());
    this.oauthConfig = ((Broker.OauthConfig)paramParcel.readParcelable(Broker.OauthConfig.class.getClassLoader()));
    this.refreshUrl = paramParcel.readString();
    this.status = readStatusFromParcel(paramParcel);
    this.pageType = paramParcel.readInt();
    this.bankTrans = ab.b(paramParcel);
    this.isDefault = ab.b(paramParcel);
    this.statusMsg = paramParcel.readString();
    this.openingUrl = paramParcel.readString();
    this.etype = paramParcel.readString();
    this.realAccountId = paramParcel.readString();
  }
  
  private static Broker.Status readStatusFromParcel(Parcel paramParcel)
  {
    if (paramParcel.readInt() == 1) {
      return Broker.Status.valueOf(paramParcel.readString());
    }
    return null;
  }
  
  private static void writeStatusParcel(Parcel paramParcel, Broker.Status paramStatus)
  {
    if (paramStatus != null)
    {
      paramParcel.writeInt(1);
      paramParcel.writeString(paramStatus.toString());
      return;
    }
    paramParcel.writeInt(0);
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getAid()
  {
    return this.aid;
  }
  
  public String getBindUrl()
  {
    return this.bindUrl;
  }
  
  public String getEtype()
  {
    return this.etype;
  }
  
  public List<String> getEtypeList()
  {
    ArrayList localArrayList = new ArrayList();
    if (this.etype.contains(",")) {
      return Arrays.asList(this.etype.split(","));
    }
    localArrayList.add(this.etype);
    return localArrayList;
  }
  
  public Broker.OauthConfig getOauthConfig()
  {
    return this.oauthConfig;
  }
  
  public Map<String, String> getOauthParams()
  {
    return this.oauthParams;
  }
  
  public String getOpeningUrl()
  {
    return this.openingUrl;
  }
  
  public int getPageType()
  {
    return this.pageType;
  }
  
  public String getRealAccountId()
  {
    return this.realAccountId;
  }
  
  public String getRefreshUrl()
  {
    return this.refreshUrl;
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
  
  public Broker.Status getStatus()
  {
    return this.status;
  }
  
  public String getStatusMsg()
  {
    return this.statusMsg;
  }
  
  public String getStatusName()
  {
    return this.statusName;
  }
  
  public String getStatusTitle()
  {
    return this.statusTitle;
  }
  
  public String getSwitchExchangeMsg()
  {
    return this.switchExchangeMsg;
  }
  
  public String getTid()
  {
    return this.tid;
  }
  
  public String getTraderDesc()
  {
    return this.traderDesc;
  }
  
  public String getTraderLogo()
  {
    return this.traderLogo;
  }
  
  public String getTraderName()
  {
    return this.traderName;
  }
  
  public boolean isBankTrans()
  {
    return this.bankTrans;
  }
  
  public boolean isDefault()
  {
    return this.isDefault;
  }
  
  public boolean isFirstTrade()
  {
    return "DYZQ".equals(getTid());
  }
  
  public boolean isGJGL()
  {
    return ("GJZQ".equals(getTid())) || ("GLZQ".equals(getTid()));
  }
  
  public boolean isIB()
  {
    return "IB".equals(getTid());
  }
  
  public boolean isSuccessBondStatus()
  {
    return (getStatus() == null) || (getStatus() == Broker.Status.SUCCESS) || (getStatus() == Broker.Status.BOUND);
  }
  
  public boolean isSwitchExchangeMantaince()
  {
    return this.switchExchangeMantaince;
  }
  
  public boolean isUSType()
  {
    return ("IB".equals(getTid())) || ("DYZQ".equals(getTid()));
  }
  
  public void setAid(String paramString)
  {
    this.aid = paramString;
  }
  
  public void setBankTrans(boolean paramBoolean)
  {
    this.bankTrans = paramBoolean;
  }
  
  public void setBindUrl(String paramString)
  {
    this.bindUrl = paramString;
  }
  
  public void setEtype(String paramString)
  {
    this.etype = paramString;
  }
  
  public void setIsDefault(boolean paramBoolean)
  {
    this.isDefault = paramBoolean;
  }
  
  public void setOauthConfig(Broker.OauthConfig paramOauthConfig)
  {
    this.oauthConfig = paramOauthConfig;
  }
  
  public void setOauthParams(Map<String, String> paramMap)
  {
    this.oauthParams = paramMap;
  }
  
  public void setOpeningUrl(String paramString)
  {
    this.openingUrl = paramString;
  }
  
  public void setPageType(int paramInt)
  {
    this.pageType = paramInt;
  }
  
  public void setRealAccountId(String paramString)
  {
    this.realAccountId = paramString;
  }
  
  public void setRefreshUrl(String paramString)
  {
    this.refreshUrl = paramString;
  }
  
  public void setStatus(Broker.Status paramStatus)
  {
    this.status = paramStatus;
  }
  
  public void setStatusMsg(String paramString)
  {
    this.statusMsg = paramString;
  }
  
  public void setStatusName(String paramString)
  {
    this.statusName = paramString;
  }
  
  public void setStatusTitle(String paramString)
  {
    this.statusTitle = paramString;
  }
  
  public void setSwitchExchangeMantaince(boolean paramBoolean)
  {
    this.switchExchangeMantaince = paramBoolean;
  }
  
  public void setSwitchExchangeMsg(String paramString)
  {
    this.switchExchangeMsg = paramString;
  }
  
  public void setTid(String paramString)
  {
    this.tid = paramString;
  }
  
  public void setTraderDesc(String paramString)
  {
    this.traderDesc = paramString;
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
    paramParcel.writeString(this.tid);
    paramParcel.writeString(this.traderName);
    paramParcel.writeString(this.traderLogo);
    paramParcel.writeString(this.traderDesc);
    paramParcel.writeString(this.aid);
    paramParcel.writeMap(this.oauthParams);
    paramParcel.writeParcelable(this.oauthConfig, paramInt);
    paramParcel.writeString(this.refreshUrl);
    writeStatusParcel(paramParcel, this.status);
    paramParcel.writeInt(this.pageType);
    ab.a(paramParcel, this.bankTrans);
    ab.a(paramParcel, this.isDefault);
    paramParcel.writeString(this.statusMsg);
    paramParcel.writeString(this.openingUrl);
    paramParcel.writeString(this.etype);
    paramParcel.writeString(this.realAccountId);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\trade\model\Broker.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
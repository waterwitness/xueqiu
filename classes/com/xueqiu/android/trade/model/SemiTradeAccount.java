package com.xueqiu.android.trade.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;

public class SemiTradeAccount
  extends TradeAccount
{
  public static final Parcelable.Creator<SemiTradeAccount> CREATOR = new Parcelable.Creator()
  {
    public final SemiTradeAccount createFromParcel(Parcel paramAnonymousParcel)
    {
      return new SemiTradeAccount(paramAnonymousParcel);
    }
    
    public final SemiTradeAccount[] newArray(int paramAnonymousInt)
    {
      return new SemiTradeAccount[paramAnonymousInt];
    }
  };
  @Expose
  @SerializedName("mid")
  private String mobileId;
  @Expose
  private String openingUrl;
  @Expose
  private SemiTradeAccount.Status status;
  @Expose
  private String statusMsg;
  @Expose
  private String statusName;
  @Expose
  private String statusTitle;
  
  public SemiTradeAccount() {}
  
  protected SemiTradeAccount(Parcel paramParcel)
  {
    super(paramParcel);
    this.mobileId = paramParcel.readString();
    this.statusTitle = paramParcel.readString();
    this.statusName = paramParcel.readString();
    this.statusMsg = paramParcel.readString();
    this.openingUrl = paramParcel.readString();
    this.status = readStatusFromParcel(paramParcel);
  }
  
  private static SemiTradeAccount.Status readStatusFromParcel(Parcel paramParcel)
  {
    if (paramParcel.readInt() == 1) {
      return SemiTradeAccount.Status.safeValueOf(paramParcel.readString());
    }
    return null;
  }
  
  private static void writeStatusParcel(Parcel paramParcel, SemiTradeAccount.Status paramStatus)
  {
    if (paramStatus != null)
    {
      paramParcel.writeInt(1);
      paramParcel.writeString(paramStatus.toString());
      return;
    }
    paramParcel.writeInt(0);
  }
  
  public String getMobileId()
  {
    return this.mobileId;
  }
  
  public String getOpeningUrl()
  {
    return this.openingUrl;
  }
  
  public SemiTradeAccount.Status getStatus()
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
  
  public boolean isSuccessBondStatus()
  {
    return false;
  }
  
  public void setMobileId(String paramString)
  {
    this.mobileId = paramString;
  }
  
  public void setOpeningUrl(String paramString)
  {
    this.openingUrl = paramString;
  }
  
  public void setStatus(SemiTradeAccount.Status paramStatus)
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
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeString(this.mobileId);
    paramParcel.writeString(this.statusTitle);
    paramParcel.writeString(this.statusName);
    paramParcel.writeString(this.statusMsg);
    paramParcel.writeString(this.openingUrl);
    writeStatusParcel(paramParcel, this.status);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\trade\model\SemiTradeAccount.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
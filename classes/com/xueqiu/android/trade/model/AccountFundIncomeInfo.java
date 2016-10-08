package com.xueqiu.android.trade.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.gson.annotations.Expose;

public class AccountFundIncomeInfo
  implements Parcelable
{
  public static final Parcelable.Creator<AccountFundIncomeInfo> CREATOR = new Parcelable.Creator()
  {
    public final AccountFundIncomeInfo createFromParcel(Parcel paramAnonymousParcel)
    {
      return new AccountFundIncomeInfo(paramAnonymousParcel);
    }
    
    public final AccountFundIncomeInfo[] newArray(int paramAnonymousInt)
    {
      return new AccountFundIncomeInfo[paramAnonymousInt];
    }
  };
  @Expose
  private String assetBalance;
  @Expose
  private String dayIncomeBalance;
  @Expose
  private String dayIncomeRate;
  @Expose
  private String unrealizedPnl;
  @Expose
  private String unrealizedPnlRate;
  
  protected AccountFundIncomeInfo(Parcel paramParcel)
  {
    this.assetBalance = paramParcel.readString();
    this.dayIncomeBalance = paramParcel.readString();
    this.dayIncomeRate = paramParcel.readString();
    this.unrealizedPnl = paramParcel.readString();
    this.unrealizedPnlRate = paramParcel.readString();
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getAssetBalance()
  {
    return this.assetBalance;
  }
  
  public String getDayIncomeBalance()
  {
    return this.dayIncomeBalance;
  }
  
  public String getDayIncomeRate()
  {
    return this.dayIncomeRate;
  }
  
  public String getUnrealizedPnl()
  {
    return this.unrealizedPnl;
  }
  
  public String getUnrealizedPnlRate()
  {
    return this.unrealizedPnlRate;
  }
  
  public void setAssetBalance(String paramString)
  {
    this.assetBalance = paramString;
  }
  
  public void setDayIncomeBalance(String paramString)
  {
    this.dayIncomeBalance = paramString;
  }
  
  public void setDayIncomeRate(String paramString)
  {
    this.dayIncomeRate = paramString;
  }
  
  public void setUnrealizedPnl(String paramString)
  {
    this.unrealizedPnl = paramString;
  }
  
  public void setUnrealizedPnlRate(String paramString)
  {
    this.unrealizedPnlRate = paramString;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.assetBalance);
    paramParcel.writeString(this.dayIncomeBalance);
    paramParcel.writeString(this.dayIncomeRate);
    paramParcel.writeString(this.unrealizedPnl);
    paramParcel.writeString(this.unrealizedPnlRate);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\trade\model\AccountFundIncomeInfo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
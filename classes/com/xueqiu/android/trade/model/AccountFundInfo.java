package com.xueqiu.android.trade.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.gson.annotations.Expose;

public class AccountFundInfo
  implements Parcelable
{
  public static final Parcelable.Creator<AccountFundInfo> CREATOR = new Parcelable.Creator()
  {
    public final AccountFundInfo createFromParcel(Parcel paramAnonymousParcel)
    {
      return new AccountFundInfo(paramAnonymousParcel, null);
    }
    
    public final AccountFundInfo[] newArray(int paramAnonymousInt)
    {
      return new AccountFundInfo[paramAnonymousInt];
    }
  };
  @Expose
  private String assetBalance;
  @Expose
  private String availableFund;
  @Expose
  private String beginBalance;
  @Expose
  private String buyFrozenBalance;
  @Expose
  private String buyPower;
  @Expose
  private String cashBalance;
  @Expose
  private String cur;
  @Expose
  private String currentBalance;
  @Expose
  private String dayIncomeBalance;
  @Expose
  private String dayIncomeRate;
  @Expose
  private String enableBalance;
  @Expose
  private String equityValue;
  @Expose
  private String excessLiquidity;
  @Expose
  private String fetchBalance;
  @Expose
  private String foregiftBalance;
  @Expose
  private String frozenBalance;
  @Expose
  private String fundBalance;
  @Expose
  private String initMargin;
  @Expose
  private String maintMargin;
  @Expose
  private String marginBalance;
  @Expose
  private String marginBuyingPower;
  @Expose
  private String marketValue;
  @Expose
  private String moneyLockedByPendingOrders;
  @Expose
  private String mortgageBalance;
  @Expose
  private String netLiquidation;
  @Expose
  private String nonMarginBuyingPower;
  @Expose
  private String sma;
  @Expose
  private String tipInfo;
  @Expose
  private int tipType;
  @Expose
  private String totalIncomeBalance;
  @Expose
  private String totalIncomeRate;
  @Expose
  private String unfrozenBalance;
  @Expose
  private String unrealizedPnl;
  @Expose
  private String unrealizedPnlRate;
  
  public AccountFundInfo() {}
  
  private AccountFundInfo(Parcel paramParcel)
  {
    this.cur = paramParcel.readString();
    this.currentBalance = paramParcel.readString();
    this.beginBalance = paramParcel.readString();
    this.enableBalance = paramParcel.readString();
    this.foregiftBalance = paramParcel.readString();
    this.mortgageBalance = paramParcel.readString();
    this.frozenBalance = paramParcel.readString();
    this.unfrozenBalance = paramParcel.readString();
    this.fetchBalance = paramParcel.readString();
    this.buyFrozenBalance = paramParcel.readString();
    this.marketValue = paramParcel.readString();
    this.assetBalance = paramParcel.readString();
    this.fundBalance = paramParcel.readString();
    this.unrealizedPnl = paramParcel.readString();
    this.unrealizedPnlRate = paramParcel.readString();
    this.tipType = paramParcel.readInt();
    this.tipInfo = paramParcel.readString();
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getAssetBalance()
  {
    return this.assetBalance;
  }
  
  public String getAvailableFund()
  {
    return this.availableFund;
  }
  
  public String getBeginBalance()
  {
    return this.beginBalance;
  }
  
  public String getBuyFrozenBalance()
  {
    return this.buyFrozenBalance;
  }
  
  public String getBuyPower()
  {
    return this.buyPower;
  }
  
  public String getCashBalance()
  {
    return this.cashBalance;
  }
  
  public String getCur()
  {
    return this.cur;
  }
  
  public String getCurrentBalance()
  {
    return this.currentBalance;
  }
  
  public String getDayIncomeBalance()
  {
    return this.dayIncomeBalance;
  }
  
  public String getDayIncomeRate()
  {
    return this.dayIncomeRate;
  }
  
  public String getEnableBalance()
  {
    return this.enableBalance;
  }
  
  public String getEquityValue()
  {
    return this.equityValue;
  }
  
  public String getExcessLiquidity()
  {
    return this.excessLiquidity;
  }
  
  public String getFetchBalance()
  {
    return this.fetchBalance;
  }
  
  public String getForegiftBalance()
  {
    return this.foregiftBalance;
  }
  
  public String getFrozenBalance()
  {
    return this.frozenBalance;
  }
  
  public String getFundBalance()
  {
    return this.fundBalance;
  }
  
  public String getInitMargin()
  {
    return this.initMargin;
  }
  
  public String getMaintMargin()
  {
    return this.maintMargin;
  }
  
  public String getMarginBalance()
  {
    return this.marginBalance;
  }
  
  public String getMarginBuyingPower()
  {
    return this.marginBuyingPower;
  }
  
  public String getMarketValue()
  {
    return this.marketValue;
  }
  
  public String getMoneyLockedByPendingOrders()
  {
    return this.moneyLockedByPendingOrders;
  }
  
  public String getMortgageBalance()
  {
    return this.mortgageBalance;
  }
  
  public String getNetLiquidation()
  {
    return this.netLiquidation;
  }
  
  public String getNonMarginBuyingPower()
  {
    return this.nonMarginBuyingPower;
  }
  
  public String getSma()
  {
    return this.sma;
  }
  
  public String getTipInfo()
  {
    return this.tipInfo;
  }
  
  public int getTipType()
  {
    return this.tipType;
  }
  
  public String getTotalIncomeBalance()
  {
    return this.totalIncomeBalance;
  }
  
  public String getTotalIncomeRate()
  {
    return this.totalIncomeRate;
  }
  
  public String getUnfrozenBalance()
  {
    return this.unfrozenBalance;
  }
  
  public String getUnrealizedPnl()
  {
    return this.unrealizedPnl;
  }
  
  public String getUnrealizedPnlRate()
  {
    return this.unrealizedPnlRate;
  }
  
  public boolean hasTip()
  {
    return getTipType() == 1;
  }
  
  public void setAssetBalance(String paramString)
  {
    this.assetBalance = paramString;
  }
  
  public void setAvailableFund(String paramString)
  {
    this.availableFund = paramString;
  }
  
  public void setBeginBalance(String paramString)
  {
    this.beginBalance = paramString;
  }
  
  public void setBuyFrozenBalance(String paramString)
  {
    this.buyFrozenBalance = paramString;
  }
  
  public void setBuyPower(String paramString)
  {
    this.buyPower = paramString;
  }
  
  public void setCashBalance(String paramString)
  {
    this.cashBalance = paramString;
  }
  
  public void setCur(String paramString)
  {
    this.cur = paramString;
  }
  
  public void setCurrentBalance(String paramString)
  {
    this.currentBalance = paramString;
  }
  
  public void setDayIncomeBalance(String paramString)
  {
    this.dayIncomeBalance = paramString;
  }
  
  public void setDayIncomeRate(String paramString)
  {
    this.dayIncomeRate = paramString;
  }
  
  public void setEnableBalance(String paramString)
  {
    this.enableBalance = paramString;
  }
  
  public void setEquityValue(String paramString)
  {
    this.equityValue = paramString;
  }
  
  public void setExcessLiquidity(String paramString)
  {
    this.excessLiquidity = paramString;
  }
  
  public void setFetchBalance(String paramString)
  {
    this.fetchBalance = paramString;
  }
  
  public void setForegiftBalance(String paramString)
  {
    this.foregiftBalance = paramString;
  }
  
  public void setFrozenBalance(String paramString)
  {
    this.frozenBalance = paramString;
  }
  
  public void setFundBalance(String paramString)
  {
    this.fundBalance = paramString;
  }
  
  public void setInitMargin(String paramString)
  {
    this.initMargin = paramString;
  }
  
  public void setMaintMargin(String paramString)
  {
    this.maintMargin = paramString;
  }
  
  public void setMarginBalance(String paramString)
  {
    this.marginBalance = paramString;
  }
  
  public void setMarginBuyingPower(String paramString)
  {
    this.marginBuyingPower = paramString;
  }
  
  public void setMarketValue(String paramString)
  {
    this.marketValue = paramString;
  }
  
  public void setMoneyLockedByPendingOrders(String paramString)
  {
    this.moneyLockedByPendingOrders = paramString;
  }
  
  public void setMortgageBalance(String paramString)
  {
    this.mortgageBalance = paramString;
  }
  
  public void setNetLiquidation(String paramString)
  {
    this.netLiquidation = paramString;
  }
  
  public void setNonMarginBuyingPower(String paramString)
  {
    this.nonMarginBuyingPower = paramString;
  }
  
  public void setSma(String paramString)
  {
    this.sma = paramString;
  }
  
  public void setTipInfo(String paramString)
  {
    this.tipInfo = paramString;
  }
  
  public void setTipType(int paramInt)
  {
    this.tipType = paramInt;
  }
  
  public void setTotalIncomeBalance(String paramString)
  {
    this.totalIncomeBalance = paramString;
  }
  
  public void setTotalIncomeRate(String paramString)
  {
    this.totalIncomeRate = paramString;
  }
  
  public void setUnfrozenBalance(String paramString)
  {
    this.unfrozenBalance = paramString;
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
    paramParcel.writeString(this.cur);
    paramParcel.writeString(this.currentBalance);
    paramParcel.writeString(this.beginBalance);
    paramParcel.writeString(this.enableBalance);
    paramParcel.writeString(this.foregiftBalance);
    paramParcel.writeString(this.mortgageBalance);
    paramParcel.writeString(this.frozenBalance);
    paramParcel.writeString(this.unfrozenBalance);
    paramParcel.writeString(this.fetchBalance);
    paramParcel.writeString(this.buyFrozenBalance);
    paramParcel.writeString(this.marketValue);
    paramParcel.writeString(this.assetBalance);
    paramParcel.writeString(this.fundBalance);
    paramParcel.writeString(this.unrealizedPnl);
    paramParcel.writeString(this.unrealizedPnlRate);
    paramParcel.writeInt(this.tipType);
    paramParcel.writeString(this.tipInfo);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\trade\model\AccountFundInfo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
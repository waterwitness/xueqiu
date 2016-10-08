package com.xueqiu.android.trade.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;

public class RepoPosition
  implements Parcelable
{
  public static final Parcelable.Creator<RepoPosition> CREATOR = new Parcelable.Creator()
  {
    public final RepoPosition createFromParcel(Parcel paramAnonymousParcel)
    {
      return new RepoPosition(paramAnonymousParcel, null);
    }
    
    public final RepoPosition[] newArray(int paramAnonymousInt)
    {
      return new RepoPosition[paramAnonymousInt];
    }
  };
  @Expose
  private String costBalance;
  @Expose
  private String enableDay;
  @Expose
  @SerializedName("etype")
  private String exchange;
  @Expose
  private String itemIncome;
  @Expose
  private String itemRate;
  @Expose
  private String marketValue;
  @Expose
  private String retrievableDay;
  @Expose
  private String scode;
  @Expose
  private String sname;
  @Expose
  private String stockAccount;
  @Expose
  private String symbol;
  
  private RepoPosition(Parcel paramParcel)
  {
    this.stockAccount = paramParcel.readString();
    this.scode = paramParcel.readString();
    this.sname = paramParcel.readString();
    this.symbol = paramParcel.readString();
    this.marketValue = paramParcel.readString();
    this.costBalance = paramParcel.readString();
    this.enableDay = paramParcel.readString();
    this.retrievableDay = paramParcel.readString();
    this.itemRate = paramParcel.readString();
    this.itemIncome = paramParcel.readString();
    this.exchange = paramParcel.readString();
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getCostBalance()
  {
    return this.costBalance;
  }
  
  public String getEnableDay()
  {
    return this.enableDay;
  }
  
  public String getExchange()
  {
    return this.exchange;
  }
  
  public String getItemIncome()
  {
    return this.itemIncome;
  }
  
  public String getItemRate()
  {
    return this.itemRate;
  }
  
  public String getMarketValue()
  {
    return this.marketValue;
  }
  
  public String getRetrievableDay()
  {
    return this.retrievableDay;
  }
  
  public String getScode()
  {
    return this.scode;
  }
  
  public String getSname()
  {
    return this.sname;
  }
  
  public String getStockAccount()
  {
    return this.stockAccount;
  }
  
  public String getSymbol()
  {
    return this.symbol;
  }
  
  public void setCostBalance(String paramString)
  {
    this.costBalance = paramString;
  }
  
  public void setEnableDay(String paramString)
  {
    this.enableDay = paramString;
  }
  
  public void setExchange(String paramString)
  {
    this.exchange = paramString;
  }
  
  public void setItemIncome(String paramString)
  {
    this.itemIncome = paramString;
  }
  
  public void setItemRate(String paramString)
  {
    this.itemRate = paramString;
  }
  
  public void setMarketValue(String paramString)
  {
    this.marketValue = paramString;
  }
  
  public void setRetrievableDay(String paramString)
  {
    this.retrievableDay = paramString;
  }
  
  public void setScode(String paramString)
  {
    this.scode = paramString;
  }
  
  public void setSname(String paramString)
  {
    this.sname = paramString;
  }
  
  public void setStockAccount(String paramString)
  {
    this.stockAccount = paramString;
  }
  
  public void setSymbol(String paramString)
  {
    this.symbol = paramString;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.stockAccount);
    paramParcel.writeString(this.scode);
    paramParcel.writeString(this.sname);
    paramParcel.writeString(this.symbol);
    paramParcel.writeString(this.marketValue);
    paramParcel.writeString(this.costBalance);
    paramParcel.writeString(this.enableDay);
    paramParcel.writeString(this.retrievableDay);
    paramParcel.writeString(this.itemRate);
    paramParcel.writeString(this.itemIncome);
    paramParcel.writeString(this.exchange);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\trade\model\RepoPosition.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
package com.xueqiu.android.trade.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;

public class TradePosition
  implements Parcelable
{
  public static final Parcelable.Creator<TradePosition> CREATOR = new Parcelable.Creator()
  {
    public final TradePosition createFromParcel(Parcel paramAnonymousParcel)
    {
      return new TradePosition(paramAnonymousParcel, null);
    }
    
    public final TradePosition[] newArray(int paramAnonymousInt)
    {
      return new TradePosition[paramAnonymousInt];
    }
  };
  @Expose
  private double costBalance;
  @Expose
  private double costPrice;
  @Expose
  private double currentAmount;
  @Expose
  private double enableAmount;
  @Expose
  @SerializedName("etype")
  private String exchange;
  @Expose
  private double incomeBalance;
  @Expose
  private double incomeRate;
  @Expose
  private double lastPrice;
  @Expose
  private double marketValue;
  @Expose
  private String pos;
  @Expose
  private String scode;
  @Expose
  private String sname;
  @Expose
  private String stockAccount;
  @Expose
  private String symbol;
  
  public TradePosition() {}
  
  private TradePosition(Parcel paramParcel)
  {
    this.stockAccount = paramParcel.readString();
    this.scode = paramParcel.readString();
    this.sname = paramParcel.readString();
    this.symbol = paramParcel.readString();
    this.currentAmount = paramParcel.readLong();
    this.enableAmount = paramParcel.readLong();
    this.lastPrice = paramParcel.readDouble();
    this.costPrice = paramParcel.readDouble();
    this.incomeBalance = paramParcel.readDouble();
    this.marketValue = paramParcel.readDouble();
    this.costBalance = paramParcel.readDouble();
    this.incomeRate = paramParcel.readDouble();
    this.pos = paramParcel.readString();
    this.exchange = paramParcel.readString();
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public double getCostBalance()
  {
    return this.costBalance;
  }
  
  public double getCostPrice()
  {
    return this.costPrice;
  }
  
  public double getCurrentAmount()
  {
    return this.currentAmount;
  }
  
  public double getEnableAmount()
  {
    return this.enableAmount;
  }
  
  public String getExchange()
  {
    return this.exchange;
  }
  
  public double getIncomeBalance()
  {
    return this.incomeBalance;
  }
  
  public double getIncomeRate()
  {
    return this.incomeRate;
  }
  
  public double getLastPrice()
  {
    return this.lastPrice;
  }
  
  public double getMarketValue()
  {
    return this.marketValue;
  }
  
  public String getPos()
  {
    return this.pos;
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
  
  public void setCostBalance(double paramDouble)
  {
    this.costBalance = paramDouble;
  }
  
  public void setCostPrice(double paramDouble)
  {
    this.costPrice = paramDouble;
  }
  
  public void setCurrentAmount(double paramDouble)
  {
    this.currentAmount = paramDouble;
  }
  
  public void setEnableAmount(double paramDouble)
  {
    this.enableAmount = paramDouble;
  }
  
  public void setExchange(String paramString)
  {
    this.exchange = paramString;
  }
  
  public void setIncomeBalance(double paramDouble)
  {
    this.incomeBalance = paramDouble;
  }
  
  public void setIncomeRate(double paramDouble)
  {
    this.incomeRate = paramDouble;
  }
  
  public void setLastPrice(double paramDouble)
  {
    this.lastPrice = paramDouble;
  }
  
  public void setMarketValue(double paramDouble)
  {
    this.marketValue = paramDouble;
  }
  
  public void setPos(String paramString)
  {
    this.pos = paramString;
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
    paramParcel.writeDouble(this.currentAmount);
    paramParcel.writeDouble(this.enableAmount);
    paramParcel.writeDouble(this.lastPrice);
    paramParcel.writeDouble(this.costPrice);
    paramParcel.writeDouble(this.incomeBalance);
    paramParcel.writeDouble(this.marketValue);
    paramParcel.writeDouble(this.costBalance);
    paramParcel.writeDouble(this.incomeRate);
    paramParcel.writeString(this.pos);
    paramParcel.writeString(this.exchange);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\trade\model\TradePosition.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
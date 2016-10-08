package com.xueqiu.android.trade.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import com.xueqiu.android.base.util.ab;
import java.io.Serializable;

public class TakingPosition
  implements Parcelable, Serializable
{
  public static final Parcelable.Creator<TakingPosition> CREATOR = new Parcelable.Creator()
  {
    public final TakingPosition createFromParcel(Parcel paramAnonymousParcel)
    {
      return new TakingPosition(paramAnonymousParcel, null);
    }
    
    public final TakingPosition[] newArray(int paramAnonymousInt)
    {
      return new TakingPosition[paramAnonymousInt];
    }
  };
  public static final int TYPE_MARKET = 2;
  public static final int TYPE_STOCK = 1;
  private static final long serialVersionUID = 1L;
  @Expose
  @SerializedName("accumAmount")
  private double accumAmount;
  @Expose
  @SerializedName("accumRate")
  private double accumRate;
  @Expose
  @SerializedName("avgPrice")
  private double avgPrice;
  @Expose
  private double cost;
  @Expose
  @SerializedName("dayfloatAmount")
  private double dayFloatAmount;
  @Expose
  @SerializedName("dayfloatRate")
  private double dayfloatRate;
  @Expose
  @SerializedName("floatAmount")
  private double floatAmount;
  @Expose
  @SerializedName("floatRate")
  private double floatRate;
  @Expose
  @SerializedName("marketValue")
  private double marketValue;
  @Expose
  private String name = null;
  @Expose
  @SerializedName("quotePrice")
  private double quotePrice;
  @Expose
  private double shares;
  @Expose
  private String symbol = null;
  
  public TakingPosition() {}
  
  private TakingPosition(Parcel paramParcel)
  {
    this.name = ab.a(paramParcel);
    this.symbol = ab.a(paramParcel);
    this.shares = paramParcel.readDouble();
    this.avgPrice = paramParcel.readDouble();
    this.floatAmount = paramParcel.readDouble();
    this.floatRate = paramParcel.readDouble();
    this.accumRate = paramParcel.readDouble();
    this.accumAmount = paramParcel.readDouble();
    this.marketValue = paramParcel.readDouble();
    this.cost = paramParcel.readDouble();
    this.dayFloatAmount = paramParcel.readDouble();
    this.dayfloatRate = paramParcel.readDouble();
    this.quotePrice = paramParcel.readDouble();
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public double getAccumAmount()
  {
    return this.accumAmount;
  }
  
  public double getAccumRate()
  {
    return this.accumRate;
  }
  
  public double getAvgPricel()
  {
    return this.avgPrice;
  }
  
  public double getCost()
  {
    return this.cost;
  }
  
  public double getDayFloatAmount()
  {
    return this.dayFloatAmount;
  }
  
  public double getDayfloatRate()
  {
    return this.dayfloatRate;
  }
  
  public double getFloatAmount()
  {
    return this.floatAmount;
  }
  
  public double getFloatRate()
  {
    return this.floatRate;
  }
  
  public double getMarketValue()
  {
    return this.marketValue;
  }
  
  public String getName()
  {
    return this.name;
  }
  
  public double getQuotePrice()
  {
    return this.quotePrice;
  }
  
  public double getShares()
  {
    return this.shares;
  }
  
  public String getSymbol()
  {
    return this.symbol;
  }
  
  public void setAccumAmount(double paramDouble)
  {
    this.accumAmount = paramDouble;
  }
  
  public void setAccumRate(double paramDouble)
  {
    this.accumRate = paramDouble;
  }
  
  public void setAvgPrice(double paramDouble)
  {
    this.avgPrice = paramDouble;
  }
  
  public void setCost(double paramDouble)
  {
    this.cost = paramDouble;
  }
  
  public void setDayFloatAmount(double paramDouble)
  {
    this.dayFloatAmount = paramDouble;
  }
  
  public void setDayfloatRate(double paramDouble)
  {
    this.dayfloatRate = paramDouble;
  }
  
  public void setFloatAmount(double paramDouble)
  {
    this.floatAmount = paramDouble;
  }
  
  public void setFloatRate(double paramDouble)
  {
    this.floatRate = paramDouble;
  }
  
  public void setMarketValue(double paramDouble)
  {
    this.marketValue = paramDouble;
  }
  
  public void setName(String paramString)
  {
    this.name = paramString;
  }
  
  public void setQuotePrice(double paramDouble)
  {
    this.quotePrice = paramDouble;
  }
  
  public void setShares(double paramDouble)
  {
    this.shares = paramDouble;
  }
  
  public void setSymbol(String paramString)
  {
    this.symbol = paramString;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    ab.a(paramParcel, this.name);
    ab.a(paramParcel, this.symbol);
    paramParcel.writeDouble(this.shares);
    paramParcel.writeDouble(this.avgPrice);
    paramParcel.writeDouble(this.floatAmount);
    paramParcel.writeDouble(this.floatRate);
    paramParcel.writeDouble(this.accumRate);
    paramParcel.writeDouble(this.accumAmount);
    paramParcel.writeDouble(this.marketValue);
    paramParcel.writeDouble(this.cost);
    paramParcel.writeDouble(this.dayFloatAmount);
    paramParcel.writeDouble(this.dayfloatRate);
    paramParcel.writeDouble(this.quotePrice);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\trade\model\TakingPosition.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
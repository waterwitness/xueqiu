package com.xueqiu.android.stock.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import java.util.Date;

public class PortfolioStock
  implements Parcelable
{
  public static final Parcelable.Creator<PortfolioStock> CREATOR = new Parcelable.Creator()
  {
    public final PortfolioStock createFromParcel(Parcel paramAnonymousParcel)
    {
      PortfolioStock localPortfolioStock = new PortfolioStock();
      PortfolioStock.access$002(localPortfolioStock, paramAnonymousParcel.readString());
      PortfolioStock.access$102(localPortfolioStock, paramAnonymousParcel.readString());
      PortfolioStock.access$202(localPortfolioStock, paramAnonymousParcel.readString());
      PortfolioStock.access$302(localPortfolioStock, paramAnonymousParcel.readString());
      PortfolioStock.access$402(localPortfolioStock, paramAnonymousParcel.readDouble());
      PortfolioStock.access$502(localPortfolioStock, paramAnonymousParcel.readDouble());
      PortfolioStock.access$602(localPortfolioStock, new Date(paramAnonymousParcel.readLong()));
      PortfolioStock.access$702(localPortfolioStock, paramAnonymousParcel.readInt());
      PortfolioStock.access$802(localPortfolioStock, paramAnonymousParcel.readDouble());
      PortfolioStock.access$902(localPortfolioStock, paramAnonymousParcel.readString());
      return localPortfolioStock;
    }
    
    public final PortfolioStock[] newArray(int paramAnonymousInt)
    {
      return new PortfolioStock[paramAnonymousInt];
    }
  };
  @Expose
  @SerializedName("buyPrice")
  private double buyPrice = -1.0D;
  @Expose
  private String code;
  @Expose
  private String comment;
  @Expose
  @SerializedName("createAt")
  private Date createAt;
  @Expose
  private String exchange;
  @Expose
  @SerializedName("isNotice")
  private int isNotice;
  @Expose
  @SerializedName("portfolioIds")
  private String portfolioIds;
  @Expose
  @SerializedName("sellPrice")
  private double sellPrice = -1.0D;
  @Expose
  @SerializedName("stockName")
  private String stockName;
  @Expose
  @SerializedName("targetPercent")
  private double targetPercent;
  
  public int describeContents()
  {
    return 0;
  }
  
  public double getBuyPrice()
  {
    return this.buyPrice;
  }
  
  public String getCode()
  {
    return this.code;
  }
  
  public String getComment()
  {
    return this.comment;
  }
  
  public Date getCreateAt()
  {
    return this.createAt;
  }
  
  public String getExchange()
  {
    return this.exchange;
  }
  
  public int getIsNotice()
  {
    return this.isNotice;
  }
  
  public String getPortfolioIds()
  {
    return this.portfolioIds;
  }
  
  public double getSellPrice()
  {
    return this.sellPrice;
  }
  
  public String getStockName()
  {
    return this.stockName;
  }
  
  public double getTargetPercent()
  {
    return this.targetPercent;
  }
  
  public void setBuyPrice(double paramDouble)
  {
    this.buyPrice = paramDouble;
  }
  
  public void setCode(String paramString)
  {
    this.code = paramString;
  }
  
  public void setComment(String paramString)
  {
    this.comment = paramString;
  }
  
  public void setCreateAt(Date paramDate)
  {
    this.createAt = paramDate;
  }
  
  public void setExchange(String paramString)
  {
    this.exchange = paramString;
  }
  
  public void setIsNotice(int paramInt)
  {
    this.isNotice = paramInt;
  }
  
  public void setPortfolioIds(String paramString)
  {
    this.portfolioIds = paramString;
  }
  
  public void setSellPrice(double paramDouble)
  {
    this.sellPrice = paramDouble;
  }
  
  public void setStockName(String paramString)
  {
    this.stockName = paramString;
  }
  
  public void setTargetPercent(double paramDouble)
  {
    this.targetPercent = paramDouble;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.code);
    paramParcel.writeString(this.stockName);
    paramParcel.writeString(this.comment);
    paramParcel.writeString(this.portfolioIds);
    paramParcel.writeDouble(this.sellPrice);
    paramParcel.writeDouble(this.buyPrice);
    if (this.createAt == null) {}
    for (long l = 0L;; l = this.createAt.getTime())
    {
      paramParcel.writeLong(l);
      paramParcel.writeInt(this.isNotice);
      paramParcel.writeDouble(this.targetPercent);
      paramParcel.writeString(this.exchange);
      return;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\stock\model\PortfolioStock.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
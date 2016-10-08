package com.xueqiu.android.cube.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.gson.annotations.Expose;
import java.util.Date;
import java.util.List;

public class RebalancingHistory
  implements Parcelable
{
  public static final Parcelable.Creator<RebalancingHistory> CREATOR = new Parcelable.Creator()
  {
    public final RebalancingHistory createFromParcel(Parcel paramAnonymousParcel)
    {
      return new RebalancingHistory(paramAnonymousParcel);
    }
    
    public final RebalancingHistory[] newArray(int paramAnonymousInt)
    {
      return new RebalancingHistory[paramAnonymousInt];
    }
  };
  @Expose
  private Date createdAt;
  @Expose
  private long id;
  @Expose
  private double netValue;
  @Expose
  private double prevNetValue;
  @Expose
  private double prevPrice;
  @Expose
  private double prevTargetWeight;
  @Expose
  private double prevVolume;
  @Expose
  private double prevWeight;
  @Expose
  private double prevWeightAdjusted;
  @Expose
  private Double price;
  @Expose
  private long rebalancingId;
  @Expose
  private long stockId;
  @Expose
  private List<String> stockLabel;
  @Expose
  private String stockName;
  @Expose
  private String stockSymbol;
  @Expose
  private double targetVolume;
  @Expose
  private double targetWeight;
  @Expose
  private Date updatedAt;
  @Expose
  private double volume;
  @Expose
  private double weight;
  
  public RebalancingHistory() {}
  
  protected RebalancingHistory(Parcel paramParcel)
  {
    this.id = paramParcel.readLong();
    this.rebalancingId = paramParcel.readLong();
    this.stockId = paramParcel.readLong();
    this.stockName = paramParcel.readString();
    this.stockSymbol = paramParcel.readString();
    this.volume = paramParcel.readDouble();
    this.prevVolume = paramParcel.readDouble();
    this.price = ((Double)paramParcel.readValue(Double.class.getClassLoader()));
    this.prevPrice = paramParcel.readDouble();
    this.netValue = paramParcel.readDouble();
    this.prevNetValue = paramParcel.readDouble();
    this.weight = paramParcel.readDouble();
    this.targetWeight = paramParcel.readDouble();
    this.targetVolume = paramParcel.readDouble();
    this.prevWeight = paramParcel.readDouble();
    this.prevTargetWeight = paramParcel.readDouble();
    this.prevWeightAdjusted = paramParcel.readDouble();
    long l = paramParcel.readLong();
    if (l == -1L)
    {
      localObject1 = null;
      this.createdAt = ((Date)localObject1);
      l = paramParcel.readLong();
      if (l != -1L) {
        break label216;
      }
    }
    label216:
    for (Object localObject1 = localObject2;; localObject1 = new Date(l))
    {
      this.updatedAt = ((Date)localObject1);
      this.stockLabel = paramParcel.createStringArrayList();
      return;
      localObject1 = new Date(l);
      break;
    }
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public Date getCreatedAt()
  {
    return this.createdAt;
  }
  
  public long getId()
  {
    return this.id;
  }
  
  public double getNetValue()
  {
    return this.netValue;
  }
  
  public double getPrevNetValue()
  {
    return this.prevNetValue;
  }
  
  public double getPrevPrice()
  {
    return this.prevPrice;
  }
  
  public double getPrevTargetWeight()
  {
    return this.prevTargetWeight;
  }
  
  public double getPrevVolume()
  {
    return this.prevVolume;
  }
  
  public double getPrevWeight()
  {
    return this.prevWeight;
  }
  
  public double getPrevWeightAdjusted()
  {
    return this.prevWeightAdjusted;
  }
  
  public Double getPrice()
  {
    return this.price;
  }
  
  public long getRebalancingId()
  {
    return this.rebalancingId;
  }
  
  public long getStockId()
  {
    return this.stockId;
  }
  
  public List<String> getStockLabel()
  {
    return this.stockLabel;
  }
  
  public String getStockName()
  {
    return this.stockName;
  }
  
  public String getStockSymbol()
  {
    return this.stockSymbol;
  }
  
  public double getTargetVolume()
  {
    return this.targetVolume;
  }
  
  public double getTargetWeight()
  {
    return this.targetWeight;
  }
  
  public Date getUpdatedAt()
  {
    return this.updatedAt;
  }
  
  public double getVolume()
  {
    return this.volume;
  }
  
  public double getWeight()
  {
    return this.weight;
  }
  
  public void setCreatedAt(Date paramDate)
  {
    this.createdAt = paramDate;
  }
  
  public void setId(long paramLong)
  {
    this.id = paramLong;
  }
  
  public void setNetValue(double paramDouble)
  {
    this.netValue = paramDouble;
  }
  
  public void setPrevNetValue(double paramDouble)
  {
    this.prevNetValue = paramDouble;
  }
  
  public void setPrevPrice(double paramDouble)
  {
    this.prevPrice = paramDouble;
  }
  
  public void setPrevTargetWeight(double paramDouble)
  {
    this.prevTargetWeight = paramDouble;
  }
  
  public void setPrevVolume(double paramDouble)
  {
    this.prevVolume = paramDouble;
  }
  
  public void setPrevWeight(double paramDouble)
  {
    this.prevWeight = paramDouble;
  }
  
  public void setPrevWeightAdjusted(double paramDouble)
  {
    this.prevWeightAdjusted = paramDouble;
  }
  
  public void setPrice(Double paramDouble)
  {
    this.price = paramDouble;
  }
  
  public void setRebalancingId(long paramLong)
  {
    this.rebalancingId = paramLong;
  }
  
  public void setStockId(long paramLong)
  {
    this.stockId = paramLong;
  }
  
  public void setStockLabel(List<String> paramList)
  {
    this.stockLabel = paramList;
  }
  
  public void setStockName(String paramString)
  {
    this.stockName = paramString;
  }
  
  public void setStockSymbol(String paramString)
  {
    this.stockSymbol = paramString;
  }
  
  public void setTargetVolume(double paramDouble)
  {
    this.targetVolume = paramDouble;
  }
  
  public void setTargetWeight(double paramDouble)
  {
    this.targetWeight = paramDouble;
  }
  
  public void setUpdatedAt(Date paramDate)
  {
    this.updatedAt = paramDate;
  }
  
  public void setVolume(double paramDouble)
  {
    this.volume = paramDouble;
  }
  
  public void setWeight(double paramDouble)
  {
    this.weight = paramDouble;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    long l2 = -1L;
    paramParcel.writeLong(this.id);
    paramParcel.writeLong(this.rebalancingId);
    paramParcel.writeLong(this.stockId);
    paramParcel.writeString(this.stockName);
    paramParcel.writeString(this.stockSymbol);
    paramParcel.writeDouble(this.volume);
    paramParcel.writeDouble(this.prevVolume);
    paramParcel.writeValue(this.price);
    paramParcel.writeDouble(this.prevPrice);
    paramParcel.writeDouble(this.netValue);
    paramParcel.writeDouble(this.prevNetValue);
    paramParcel.writeDouble(this.weight);
    paramParcel.writeDouble(this.targetWeight);
    paramParcel.writeDouble(this.targetVolume);
    paramParcel.writeDouble(this.prevWeight);
    paramParcel.writeDouble(this.prevTargetWeight);
    paramParcel.writeDouble(this.prevWeightAdjusted);
    if (this.createdAt != null) {}
    for (long l1 = this.createdAt.getTime();; l1 = -1L)
    {
      paramParcel.writeLong(l1);
      l1 = l2;
      if (this.updatedAt != null) {
        l1 = this.updatedAt.getTime();
      }
      paramParcel.writeLong(l1);
      paramParcel.writeStringList(this.stockLabel);
      return;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\cube\model\RebalancingHistory.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
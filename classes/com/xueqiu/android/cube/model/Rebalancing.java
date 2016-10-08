package com.xueqiu.android.cube.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.gson.annotations.Expose;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class Rebalancing
  implements Parcelable
{
  public static final Parcelable.Creator<Rebalancing> CREATOR = new Parcelable.Creator()
  {
    public final Rebalancing createFromParcel(Parcel paramAnonymousParcel)
    {
      Rebalancing localRebalancing = new Rebalancing();
      Rebalancing.access$002(localRebalancing, paramAnonymousParcel.readLong());
      Rebalancing.access$102(localRebalancing, Rebalancing.Status.valueOf(paramAnonymousParcel.readString()));
      Rebalancing.access$202(localRebalancing, paramAnonymousParcel.readLong());
      Rebalancing.access$302(localRebalancing, paramAnonymousParcel.readLong());
      Rebalancing.access$402(localRebalancing, Rebalancing.Category.valueOf(paramAnonymousParcel.readString()));
      Rebalancing.access$502(localRebalancing, paramAnonymousParcel.readString());
      Rebalancing.access$602(localRebalancing, new Date(paramAnonymousParcel.readLong()));
      Rebalancing.access$702(localRebalancing, new Date(paramAnonymousParcel.readLong()));
      Rebalancing.access$802(localRebalancing, paramAnonymousParcel.readDouble());
      Rebalancing.access$902(localRebalancing, paramAnonymousParcel.readDouble());
      Rebalancing.access$1002(localRebalancing, paramAnonymousParcel.readString());
      Rebalancing.access$1102(localRebalancing, paramAnonymousParcel.readString());
      Rebalancing.access$1202(localRebalancing, paramAnonymousParcel.readString());
      Rebalancing.access$1302(localRebalancing, paramAnonymousParcel.readString());
      Rebalancing.access$1402(localRebalancing, new ArrayList());
      paramAnonymousParcel.readTypedList(localRebalancing.holdings, Holding.CREATOR);
      Rebalancing.access$1502(localRebalancing, new ArrayList());
      paramAnonymousParcel.readTypedList(localRebalancing.rebalancingHistories, RebalancingHistory.CREATOR);
      return localRebalancing;
    }
    
    public final Rebalancing[] newArray(int paramAnonymousInt)
    {
      return new Rebalancing[paramAnonymousInt];
    }
  };
  @Expose
  private double cash;
  @Expose
  private double cashValue;
  @Expose
  private Rebalancing.Category category;
  @Expose
  private String comment;
  @Expose
  private Date createdAt;
  @Expose
  private long cubeId;
  @Expose
  private String errorCode;
  @Expose
  private String errorMessage;
  @Expose
  private String errorStatus;
  @Expose
  private String exeStrategy;
  @Expose
  private List<Holding> holdings;
  @Expose
  private long id;
  @Expose
  private long prevRebalancingId;
  @Expose
  private List<RebalancingHistory> rebalancingHistories;
  @Expose
  private Rebalancing.Status status;
  @Expose
  private Date updatedAt;
  
  public int describeContents()
  {
    return 0;
  }
  
  public double getCash()
  {
    return this.cash;
  }
  
  public double getCashValue()
  {
    return this.cashValue;
  }
  
  public Rebalancing.Category getCategory()
  {
    return this.category;
  }
  
  public String getComment()
  {
    return this.comment;
  }
  
  public Date getCreatedAt()
  {
    return this.createdAt;
  }
  
  public long getCubeId()
  {
    return this.cubeId;
  }
  
  public String getErrorCode()
  {
    return this.errorCode;
  }
  
  public String getErrorMessage()
  {
    return this.errorMessage;
  }
  
  public String getErrorStatus()
  {
    return this.errorStatus;
  }
  
  public String getExeStrategy()
  {
    return this.exeStrategy;
  }
  
  public List<Holding> getHoldings()
  {
    return this.holdings;
  }
  
  public long getId()
  {
    return this.id;
  }
  
  public long getPrevRebalancingId()
  {
    return this.prevRebalancingId;
  }
  
  public List<RebalancingHistory> getRebalancingHistories()
  {
    return this.rebalancingHistories;
  }
  
  public Rebalancing.Status getStatus()
  {
    return this.status;
  }
  
  public Date getUpdatedAt()
  {
    return this.updatedAt;
  }
  
  public void setCash(double paramDouble)
  {
    this.cash = paramDouble;
  }
  
  public void setCashValue(double paramDouble)
  {
    this.cashValue = paramDouble;
  }
  
  public void setCategory(Rebalancing.Category paramCategory)
  {
    this.category = paramCategory;
  }
  
  public void setComment(String paramString)
  {
    this.comment = paramString;
  }
  
  public void setCreatedAt(Date paramDate)
  {
    this.createdAt = paramDate;
  }
  
  public void setCubeId(long paramLong)
  {
    this.cubeId = paramLong;
  }
  
  public void setErrorCode(String paramString)
  {
    this.errorCode = paramString;
  }
  
  public void setErrorMessage(String paramString)
  {
    this.errorMessage = paramString;
  }
  
  public void setErrorStatus(String paramString)
  {
    this.errorStatus = paramString;
  }
  
  public void setExeStrategy(String paramString)
  {
    this.exeStrategy = paramString;
  }
  
  public void setHoldings(List<Holding> paramList)
  {
    this.holdings = paramList;
  }
  
  public void setId(long paramLong)
  {
    this.id = paramLong;
  }
  
  public void setPrevRebalancingId(long paramLong)
  {
    this.prevRebalancingId = paramLong;
  }
  
  public void setRebalancingHistories(List<RebalancingHistory> paramList)
  {
    this.rebalancingHistories = paramList;
  }
  
  public void setStatus(Rebalancing.Status paramStatus)
  {
    this.status = paramStatus;
  }
  
  public void setUpdatedAt(Date paramDate)
  {
    this.updatedAt = paramDate;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    long l2 = 0L;
    paramParcel.writeLong(this.id);
    paramParcel.writeString(this.status.toString());
    paramParcel.writeLong(this.cubeId);
    paramParcel.writeLong(this.prevRebalancingId);
    paramParcel.writeString(this.category.toString());
    paramParcel.writeString(this.exeStrategy);
    if (this.createdAt != null) {}
    for (long l1 = this.createdAt.getTime();; l1 = 0L)
    {
      paramParcel.writeLong(l1);
      l1 = l2;
      if (this.updatedAt != null) {
        l1 = this.updatedAt.getTime();
      }
      paramParcel.writeLong(l1);
      paramParcel.writeDouble(this.cash);
      paramParcel.writeDouble(this.cashValue);
      paramParcel.writeString(this.errorCode);
      paramParcel.writeString(this.errorStatus);
      paramParcel.writeString(this.errorMessage);
      paramParcel.writeString(this.comment);
      paramParcel.writeTypedList(this.holdings);
      paramParcel.writeTypedList(this.rebalancingHistories);
      return;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\cube\model\Rebalancing.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
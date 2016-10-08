package com.xueqiu.android.cube.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.gson.annotations.Expose;
import java.util.List;

public class Holding
  implements Parcelable, Cloneable
{
  public static final Parcelable.Creator<Holding> CREATOR = new Parcelable.Creator()
  {
    public final Holding createFromParcel(Parcel paramAnonymousParcel)
    {
      return new Holding(paramAnonymousParcel);
    }
    
    public final Holding[] newArray(int paramAnonymousInt)
    {
      return new Holding[paramAnonymousInt];
    }
  };
  @Expose
  private boolean proactive;
  @Expose
  private String segmentColor;
  @Expose
  private long segmentId;
  @Expose
  private String segmentName;
  @Expose
  private long stockId;
  @Expose
  private List<String> stockLabel;
  @Expose
  private String stockName;
  @Expose
  private String stockSymbol;
  @Expose
  private double volume;
  @Expose
  private double weight;
  
  public Holding() {}
  
  protected Holding(Parcel paramParcel)
  {
    this.stockId = paramParcel.readLong();
    this.stockName = paramParcel.readString();
    this.stockSymbol = paramParcel.readString();
    this.weight = paramParcel.readDouble();
    this.volume = paramParcel.readDouble();
    this.segmentName = paramParcel.readString();
    this.segmentId = paramParcel.readLong();
    this.segmentColor = paramParcel.readString();
    if (paramParcel.readByte() != 0) {}
    for (boolean bool = true;; bool = false)
    {
      this.proactive = bool;
      this.stockLabel = paramParcel.createStringArrayList();
      return;
    }
  }
  
  protected Object clone()
  {
    return super.clone();
  }
  
  public Holding copy()
  {
    try
    {
      Holding localHolding = (Holding)clone();
      return localHolding;
    }
    catch (CloneNotSupportedException localCloneNotSupportedException)
    {
      localCloneNotSupportedException.printStackTrace();
    }
    return null;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getSegmentColor()
  {
    return this.segmentColor;
  }
  
  public long getSegmentId()
  {
    return this.segmentId;
  }
  
  public String getSegmentName()
  {
    return this.segmentName;
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
  
  public double getVolume()
  {
    return this.volume;
  }
  
  public double getWeight()
  {
    return this.weight;
  }
  
  public boolean isProactive()
  {
    return this.proactive;
  }
  
  public void setProactive(boolean paramBoolean)
  {
    this.proactive = paramBoolean;
  }
  
  public void setSegmentColor(String paramString)
  {
    this.segmentColor = paramString;
  }
  
  public void setSegmentId(long paramLong)
  {
    this.segmentId = paramLong;
  }
  
  public void setSegmentName(String paramString)
  {
    this.segmentName = paramString;
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
    paramParcel.writeLong(this.stockId);
    paramParcel.writeString(this.stockName);
    paramParcel.writeString(this.stockSymbol);
    paramParcel.writeDouble(this.weight);
    paramParcel.writeDouble(this.volume);
    paramParcel.writeString(this.segmentName);
    paramParcel.writeLong(this.segmentId);
    paramParcel.writeString(this.segmentColor);
    if (this.proactive) {}
    for (byte b = 1;; b = 0)
    {
      paramParcel.writeByte(b);
      paramParcel.writeStringList(this.stockLabel);
      return;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\cube\model\Holding.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
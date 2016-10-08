package com.xueqiu.android.cube.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.gson.annotations.Expose;

public class Performance
  implements Parcelable
{
  public static final Parcelable.Creator<Performance> CREATOR = new Parcelable.Creator()
  {
    public final Performance createFromParcel(Parcel paramAnonymousParcel)
    {
      Performance localPerformance = new Performance();
      Performance.access$002(localPerformance, paramAnonymousParcel.readString());
      Performance.access$102(localPerformance, paramAnonymousParcel.readString());
      Performance.access$202(localPerformance, paramAnonymousParcel.readInt());
      Performance.access$302(localPerformance, paramAnonymousParcel.readInt());
      return localPerformance;
    }
    
    public final Performance[] newArray(int paramAnonymousInt)
    {
      return new Performance[paramAnonymousInt];
    }
  };
  @Expose
  private int gainCount;
  @Expose
  private int lossCount;
  @Expose
  private String topGainerName;
  @Expose
  private String topGainerSymbol;
  
  public int describeContents()
  {
    return 0;
  }
  
  public int getGainCount()
  {
    return this.gainCount;
  }
  
  public int getLossCount()
  {
    return this.lossCount;
  }
  
  public String getTopGainerName()
  {
    return this.topGainerName;
  }
  
  public String getTopGainerSymbol()
  {
    return this.topGainerSymbol;
  }
  
  public void setGainCount(int paramInt)
  {
    this.gainCount = paramInt;
  }
  
  public void setLossCount(int paramInt)
  {
    this.lossCount = paramInt;
  }
  
  public void setTopGainerName(String paramString)
  {
    this.topGainerName = paramString;
  }
  
  public void setTopGainerSymbol(String paramString)
  {
    this.topGainerSymbol = paramString;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.topGainerSymbol);
    paramParcel.writeString(this.topGainerName);
    paramParcel.writeInt(this.gainCount);
    paramParcel.writeInt(this.lossCount);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\cube\model\Performance.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
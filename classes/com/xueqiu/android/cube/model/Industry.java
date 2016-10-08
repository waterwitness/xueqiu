package com.xueqiu.android.cube.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.gson.annotations.Expose;

public class Industry
  implements Parcelable
{
  public static final Parcelable.Creator<Industry> CREATOR = new Parcelable.Creator()
  {
    public final Industry createFromParcel(Parcel paramAnonymousParcel)
    {
      Industry localIndustry = new Industry();
      Industry.access$002(localIndustry, paramAnonymousParcel.readString());
      Industry.access$102(localIndustry, Double.valueOf(paramAnonymousParcel.readDouble()));
      Industry.access$202(localIndustry, paramAnonymousParcel.readString());
      return localIndustry;
    }
    
    public final Industry[] newArray(int paramAnonymousInt)
    {
      return new Industry[paramAnonymousInt];
    }
  };
  @Expose
  private Double avgStockProfit;
  @Expose
  private String color;
  @Expose
  private String name;
  
  public int describeContents()
  {
    return 0;
  }
  
  public Double getAvgStockProfit()
  {
    return this.avgStockProfit;
  }
  
  public String getColor()
  {
    return this.color;
  }
  
  public String getName()
  {
    return this.name;
  }
  
  public void setAvgStockProfit(Double paramDouble)
  {
    this.avgStockProfit = paramDouble;
  }
  
  public void setColor(String paramString)
  {
    this.color = paramString;
  }
  
  public void setName(String paramString)
  {
    this.name = paramString;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.name);
    paramParcel.writeDouble(this.avgStockProfit.doubleValue());
    paramParcel.writeString(this.color);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\cube\model\Industry.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
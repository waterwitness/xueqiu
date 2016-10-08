package com.xueqiu.android.trade.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.gson.annotations.Expose;

public class PerformanceGroup
  implements Parcelable
{
  public static final Parcelable.Creator<PerformanceGroup> CREATOR = new Parcelable.Creator()
  {
    public final PerformanceGroup createFromParcel(Parcel paramAnonymousParcel)
    {
      return new PerformanceGroup(paramAnonymousParcel, null);
    }
    
    public final PerformanceGroup[] newArray(int paramAnonymousInt)
    {
      return new PerformanceGroup[paramAnonymousInt];
    }
  };
  @Expose
  private long id;
  @Expose
  private String name;
  
  public PerformanceGroup() {}
  
  private PerformanceGroup(Parcel paramParcel)
  {
    this.id = paramParcel.readInt();
    this.name = paramParcel.readString();
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public long getId()
  {
    return this.id;
  }
  
  public String getName()
  {
    return this.name;
  }
  
  public void setId(long paramLong)
  {
    this.id = paramLong;
  }
  
  public void setName(String paramString)
  {
    this.name = paramString;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeLong(this.id);
    paramParcel.writeString(this.name);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\trade\model\PerformanceGroup.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
package com.xueqiu.android.community.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.gson.annotations.Expose;

public class RemindItem
  implements Parcelable
{
  public static final Parcelable.Creator<RemindItem> CREATOR = new Parcelable.Creator()
  {
    public final RemindItem createFromParcel(Parcel paramAnonymousParcel)
    {
      return new RemindItem(paramAnonymousParcel, null);
    }
    
    public final RemindItem[] newArray(int paramAnonymousInt)
    {
      return new RemindItem[paramAnonymousInt];
    }
  };
  @Expose
  private int count;
  @Expose
  private long ts;
  
  public RemindItem()
  {
    this.count = 0;
    this.ts = 0L;
  }
  
  private RemindItem(Parcel paramParcel)
  {
    this.count = paramParcel.readInt();
    this.ts = paramParcel.readLong();
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public int getCount()
  {
    return this.count;
  }
  
  public long getTs()
  {
    return this.ts;
  }
  
  public void setCount(int paramInt)
  {
    this.count = paramInt;
  }
  
  public void setTs(long paramLong)
  {
    this.ts = paramLong;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(this.count);
    paramParcel.writeLong(this.ts);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\community\model\RemindItem.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
package com.xueqiu.android.message.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.snowballfinance.messageplatform.a.q;
import com.snowballfinance.messageplatform.data.MessageSessionExt;

public class Read
  implements Parcelable
{
  public static final Parcelable.Creator<Read> CREATOR = new Parcelable.Creator()
  {
    public final Read createFromParcel(Parcel paramAnonymousParcel)
    {
      return new Read(paramAnonymousParcel);
    }
    
    public final Read[] newArray(int paramAnonymousInt)
    {
      return new Read[paramAnonymousInt];
    }
  };
  private long fromId;
  private boolean isToGroup;
  private long timestamp;
  private long toId;
  
  public Read() {}
  
  public Read(Parcel paramParcel)
  {
    this.fromId = paramParcel.readLong();
    this.toId = paramParcel.readLong();
    if (paramParcel.readInt() == 1) {}
    for (;;)
    {
      this.isToGroup = bool;
      this.timestamp = paramParcel.readLong();
      return;
      bool = false;
    }
  }
  
  public Read(q paramq)
  {
    this.fromId = paramq.c.longValue();
    this.toId = paramq.d.longValue();
    this.isToGroup = paramq.e.booleanValue();
    this.timestamp = -1L;
  }
  
  public Read(MessageSessionExt paramMessageSessionExt)
  {
    this.toId = paramMessageSessionExt.getOwnerId().longValue();
    this.fromId = paramMessageSessionExt.getTargetId().longValue();
    this.isToGroup = false;
    this.timestamp = paramMessageSessionExt.getTargetLastReadTimestamp().longValue();
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public long getFromId()
  {
    return this.fromId;
  }
  
  public long getTimestamp()
  {
    return this.timestamp;
  }
  
  public long getToId()
  {
    return this.toId;
  }
  
  public boolean isToGroup()
  {
    return this.isToGroup;
  }
  
  public void setFromId(long paramLong)
  {
    this.fromId = paramLong;
  }
  
  public void setTimestamp(long paramLong)
  {
    this.timestamp = paramLong;
  }
  
  public void setToGroup(boolean paramBoolean)
  {
    this.isToGroup = paramBoolean;
  }
  
  public void setToId(long paramLong)
  {
    this.toId = paramLong;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeLong(this.fromId);
    paramParcel.writeLong(this.toId);
    if (this.isToGroup) {}
    for (paramInt = 1;; paramInt = 0)
    {
      paramParcel.writeInt(paramInt);
      paramParcel.writeLong(this.timestamp);
      return;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\message\model\Read.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
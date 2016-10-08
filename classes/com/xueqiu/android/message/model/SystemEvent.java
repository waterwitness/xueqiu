package com.xueqiu.android.message.model;

import android.os.Parcel;
import android.os.Parcelable;

public class SystemEvent
  implements Parcelable
{
  private long id;
  private long sequence;
  private String text;
  
  public SystemEvent() {}
  
  public SystemEvent(Parcel paramParcel)
  {
    this.id = paramParcel.readLong();
    this.sequence = paramParcel.readLong();
    this.text = paramParcel.readString();
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public long getId()
  {
    return this.id;
  }
  
  public long getSequence()
  {
    return this.sequence;
  }
  
  public String getText()
  {
    return this.text;
  }
  
  public void setId(long paramLong)
  {
    this.id = paramLong;
  }
  
  public void setSequence(long paramLong)
  {
    this.sequence = paramLong;
  }
  
  public void setText(String paramString)
  {
    this.text = paramString;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeLong(this.id);
    paramParcel.writeLong(this.sequence);
    paramParcel.writeString(this.text);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\message\model\SystemEvent.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
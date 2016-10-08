package com.xueqiu.android.community.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.gson.annotations.Expose;

public class HotEvent
  implements Parcelable
{
  public static final Parcelable.Creator<HotEvent> CREATOR = new Parcelable.Creator()
  {
    public final HotEvent createFromParcel(Parcel paramAnonymousParcel)
    {
      HotEvent localHotEvent = new HotEvent();
      HotEvent.access$002(localHotEvent, paramAnonymousParcel.readLong());
      HotEvent.access$102(localHotEvent, paramAnonymousParcel.readString());
      HotEvent.access$202(localHotEvent, paramAnonymousParcel.readString());
      HotEvent.access$302(localHotEvent, paramAnonymousParcel.readInt());
      HotEvent.access$402(localHotEvent, paramAnonymousParcel.readInt());
      return localHotEvent;
    }
    
    public final HotEvent[] newArray(int paramAnonymousInt)
    {
      return new HotEvent[paramAnonymousInt];
    }
  };
  @Expose
  private String content;
  @Expose
  private int hot;
  @Expose
  private long id;
  @Expose
  private int sort;
  @Expose
  private String tag;
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getContent()
  {
    return this.content;
  }
  
  public int getHot()
  {
    return this.hot;
  }
  
  public long getId()
  {
    return this.id;
  }
  
  public int getSort()
  {
    return this.sort;
  }
  
  public String getTag()
  {
    return this.tag;
  }
  
  public void setContent(String paramString)
  {
    this.content = paramString;
  }
  
  public void setHot(int paramInt)
  {
    this.hot = paramInt;
  }
  
  public void setId(long paramLong)
  {
    this.id = paramLong;
  }
  
  public void setSort(int paramInt)
  {
    this.sort = paramInt;
  }
  
  public void setTag(String paramString)
  {
    this.tag = paramString;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeLong(this.id);
    paramParcel.writeString(this.tag);
    paramParcel.writeString(this.content);
    paramParcel.writeInt(this.sort);
    paramParcel.writeInt(this.hot);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\community\model\HotEvent.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
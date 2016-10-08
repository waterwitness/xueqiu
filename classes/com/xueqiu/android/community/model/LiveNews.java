package com.xueqiu.android.community.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.gson.annotations.Expose;
import java.util.Date;

public class LiveNews
  implements Parcelable
{
  public static final Parcelable.Creator<LiveNews> CREATOR = new Parcelable.Creator()
  {
    public final LiveNews createFromParcel(Parcel paramAnonymousParcel)
    {
      return new LiveNews(paramAnonymousParcel, null);
    }
    
    public final LiveNews[] newArray(int paramAnonymousInt)
    {
      return new LiveNews[paramAnonymousInt];
    }
  };
  private static final int MARK_VALUE_IMPORTANT = 1;
  @Expose
  private Date createdAt;
  @Expose
  private long id;
  @Expose
  private int mark;
  @Expose
  private String target;
  @Expose
  private String text;
  
  public LiveNews() {}
  
  private LiveNews(Parcel paramParcel)
  {
    this.id = paramParcel.readLong();
    this.text = paramParcel.readString();
    this.createdAt = new Date(paramParcel.readLong());
    this.target = paramParcel.readString();
    this.mark = paramParcel.readInt();
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
  
  public String getTarget()
  {
    return this.target;
  }
  
  public String getText()
  {
    return this.text;
  }
  
  public boolean isImportant()
  {
    return this.mark == 1;
  }
  
  public void setCreatedAt(Date paramDate)
  {
    this.createdAt = paramDate;
  }
  
  public void setId(long paramLong)
  {
    this.id = paramLong;
  }
  
  public void setMark(int paramInt)
  {
    this.mark = paramInt;
  }
  
  public void setText(String paramString)
  {
    this.text = paramString;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeLong(this.id);
    paramParcel.writeString(this.text);
    paramParcel.writeLong(this.createdAt.getTime());
    paramParcel.writeString(this.target);
    paramParcel.writeInt(this.mark);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\community\model\LiveNews.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
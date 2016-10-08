package com.xueqiu.android.trade.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.gson.annotations.Expose;
import java.util.Date;

public class TradeNotification
  implements Parcelable
{
  public static final Parcelable.Creator<Transaction> CREATOR = new Parcelable.Creator()
  {
    public final Transaction createFromParcel(Parcel paramAnonymousParcel)
    {
      return new Transaction(paramAnonymousParcel);
    }
    
    public final Transaction[] newArray(int paramAnonymousInt)
    {
      return new Transaction[paramAnonymousInt];
    }
  };
  @Expose
  private String body;
  @Expose
  private long id;
  @Expose
  private Date occurTime;
  @Expose
  private String summary;
  @Expose
  private String title;
  @Expose
  private String url;
  
  public TradeNotification() {}
  
  protected TradeNotification(Parcel paramParcel)
  {
    this.id = paramParcel.readLong();
    this.title = paramParcel.readString();
    this.summary = paramParcel.readString();
    this.body = paramParcel.readString();
    this.url = paramParcel.readString();
    this.occurTime = new Date(paramParcel.readLong());
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getBody()
  {
    return this.body;
  }
  
  public long getId()
  {
    return this.id;
  }
  
  public Date getOccurTime()
  {
    return this.occurTime;
  }
  
  public String getSummary()
  {
    return this.summary;
  }
  
  public String getTitle()
  {
    return this.title;
  }
  
  public String getUrl()
  {
    return this.url;
  }
  
  public void setBody(String paramString)
  {
    this.body = paramString;
  }
  
  public void setId(long paramLong)
  {
    this.id = paramLong;
  }
  
  public void setOccurTime(Date paramDate)
  {
    this.occurTime = paramDate;
  }
  
  public void setSummary(String paramString)
  {
    this.summary = paramString;
  }
  
  public void setTitle(String paramString)
  {
    this.title = paramString;
  }
  
  public void setUrl(String paramString)
  {
    this.url = paramString;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeLong(this.id);
    paramParcel.writeString(this.title);
    paramParcel.writeString(this.summary);
    paramParcel.writeString(this.body);
    paramParcel.writeString(this.url);
    paramParcel.writeLong(this.occurTime.getTime());
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\trade\model\TradeNotification.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
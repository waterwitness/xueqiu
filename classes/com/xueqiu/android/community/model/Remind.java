package com.xueqiu.android.community.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;

public class Remind
  implements Parcelable
{
  public static final Parcelable.Creator<Remind> CREATOR = new Parcelable.Creator()
  {
    public final Remind createFromParcel(Parcel paramAnonymousParcel)
    {
      return new Remind(paramAnonymousParcel, null);
    }
    
    public final Remind[] newArray(int paramAnonymousInt)
    {
      return new Remind[paramAnonymousInt];
    }
  };
  @Expose
  private RemindItem comments;
  @Expose
  private RemindItem followers;
  @Expose
  private RemindItem mentions;
  @Expose
  private RemindItem notices;
  @Expose
  private RemindItem paidMentions;
  @Expose
  private RemindItem pmComments;
  @Expose
  private RemindItem status;
  @Expose
  private RemindItem strategy;
  @Expose
  @SerializedName("tcnotify")
  private RemindItem tradeNotification;
  
  public Remind()
  {
    this.comments = new RemindItem();
    this.followers = new RemindItem();
    this.mentions = new RemindItem();
    this.paidMentions = new RemindItem();
    this.pmComments = new RemindItem();
    this.status = new RemindItem();
    this.notices = new RemindItem();
    this.strategy = new RemindItem();
    this.tradeNotification = new RemindItem();
  }
  
  private Remind(Parcel paramParcel)
  {
    this.comments = ((RemindItem)paramParcel.readParcelable(RemindItem.class.getClassLoader()));
    this.followers = ((RemindItem)paramParcel.readParcelable(RemindItem.class.getClassLoader()));
    this.mentions = ((RemindItem)paramParcel.readParcelable(RemindItem.class.getClassLoader()));
    this.paidMentions = ((RemindItem)paramParcel.readParcelable(RemindItem.class.getClassLoader()));
    this.pmComments = ((RemindItem)paramParcel.readParcelable(RemindItem.class.getClassLoader()));
    this.status = ((RemindItem)paramParcel.readParcelable(RemindItem.class.getClassLoader()));
    this.strategy = ((RemindItem)paramParcel.readParcelable(RemindItem.class.getClassLoader()));
    this.notices = ((RemindItem)paramParcel.readParcelable(RemindItem.class.getClassLoader()));
    this.tradeNotification = ((RemindItem)paramParcel.readParcelable(RemindItem.class.getClassLoader()));
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public RemindItem getComments()
  {
    return this.comments;
  }
  
  public RemindItem getFollowers()
  {
    return this.followers;
  }
  
  public RemindItem getMentions()
  {
    return this.mentions;
  }
  
  public RemindItem getNotices()
  {
    return this.notices;
  }
  
  public RemindItem getPaidMentions()
  {
    return this.paidMentions;
  }
  
  public RemindItem getPmComments()
  {
    return this.pmComments;
  }
  
  public RemindItem getStatus()
  {
    return this.status;
  }
  
  public RemindItem getStrategy()
  {
    return this.strategy;
  }
  
  public RemindItem getTradeNotification()
  {
    return this.tradeNotification;
  }
  
  public boolean isLegal()
  {
    return (this.comments != null) && (this.followers != null) && (this.mentions != null) && (this.status != null) && (this.notices != null) && (this.strategy != null) && (this.paidMentions != null) && (this.pmComments != null) && (this.tradeNotification != null);
  }
  
  public void reset()
  {
    this.comments = new RemindItem();
    this.followers = new RemindItem();
    this.mentions = new RemindItem();
    this.paidMentions = new RemindItem();
    this.pmComments = new RemindItem();
    this.status = new RemindItem();
    this.notices = new RemindItem();
    this.strategy = new RemindItem();
    this.tradeNotification = new RemindItem();
  }
  
  public void setComments(RemindItem paramRemindItem)
  {
    this.comments = paramRemindItem;
  }
  
  public void setFollowers(RemindItem paramRemindItem)
  {
    this.followers = paramRemindItem;
  }
  
  public void setMentions(RemindItem paramRemindItem)
  {
    this.mentions = paramRemindItem;
  }
  
  public void setNotices(RemindItem paramRemindItem)
  {
    this.notices = paramRemindItem;
  }
  
  public void setPaidMentions(RemindItem paramRemindItem)
  {
    this.paidMentions = paramRemindItem;
  }
  
  public void setPmComments(RemindItem paramRemindItem)
  {
    this.pmComments = paramRemindItem;
  }
  
  public void setStatus(RemindItem paramRemindItem)
  {
    this.status = paramRemindItem;
  }
  
  public void setStrategy(RemindItem paramRemindItem)
  {
    this.strategy = paramRemindItem;
  }
  
  public void setTradeNotification(RemindItem paramRemindItem)
  {
    this.tradeNotification = paramRemindItem;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeParcelable(this.comments, paramInt);
    paramParcel.writeParcelable(this.followers, paramInt);
    paramParcel.writeParcelable(this.mentions, paramInt);
    paramParcel.writeParcelable(this.paidMentions, paramInt);
    paramParcel.writeParcelable(this.pmComments, paramInt);
    paramParcel.writeParcelable(this.status, paramInt);
    paramParcel.writeParcelable(this.strategy, paramInt);
    paramParcel.writeParcelable(this.notices, paramInt);
    paramParcel.writeParcelable(this.tradeNotification, paramInt);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\community\model\Remind.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
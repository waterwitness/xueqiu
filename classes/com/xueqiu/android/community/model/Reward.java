package com.xueqiu.android.community.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.xueqiu.android.base.util.ab;
import java.util.Date;

public class Reward
  implements Parcelable
{
  public static final Parcelable.Creator<Reward> CREATOR = new Parcelable.Creator()
  {
    public final Reward createFromParcel(Parcel paramAnonymousParcel)
    {
      return new Reward(paramAnonymousParcel, null);
    }
    
    public final Reward[] newArray(int paramAnonymousInt)
    {
      return new Reward[paramAnonymousInt];
    }
  };
  private Date createAt;
  private long id;
  private String message;
  private long payTradeId;
  private int snowCoin;
  private long toId;
  private String toType;
  private long toUserId;
  private User user;
  private long userId;
  
  public Reward() {}
  
  private Reward(Parcel paramParcel)
  {
    this.id = paramParcel.readLong();
    this.userId = paramParcel.readLong();
    this.toUserId = paramParcel.readLong();
    this.toId = paramParcel.readLong();
    this.toType = ab.a(paramParcel);
    this.snowCoin = paramParcel.readInt();
    this.message = ab.a(paramParcel);
    this.payTradeId = paramParcel.readLong();
    this.createAt = new Date(paramParcel.readLong());
    this.user = ((User)paramParcel.readParcelable(User.class.getClassLoader()));
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public Date getCreateAt()
  {
    return this.createAt;
  }
  
  public long getId()
  {
    return this.id;
  }
  
  public String getMessage()
  {
    return this.message;
  }
  
  public long getPayTradeId()
  {
    return this.payTradeId;
  }
  
  public int getSnowCoin()
  {
    return this.snowCoin;
  }
  
  public long getToId()
  {
    return this.toId;
  }
  
  public String getToType()
  {
    return this.toType;
  }
  
  public long getToUserId()
  {
    return this.toUserId;
  }
  
  public User getUser()
  {
    return this.user;
  }
  
  public long getUserId()
  {
    return this.userId;
  }
  
  public void setCreateAt(Date paramDate)
  {
    this.createAt = paramDate;
  }
  
  public void setId(long paramLong)
  {
    this.id = paramLong;
  }
  
  public void setMessage(String paramString)
  {
    this.message = paramString;
  }
  
  public void setPayTradeId(long paramLong)
  {
    this.payTradeId = paramLong;
  }
  
  public void setSnowCoin(int paramInt)
  {
    this.snowCoin = paramInt;
  }
  
  public void setToId(long paramLong)
  {
    this.toId = paramLong;
  }
  
  public void setToType(String paramString)
  {
    this.toType = paramString;
  }
  
  public void setToUserId(long paramLong)
  {
    this.toUserId = paramLong;
  }
  
  public void setUser(User paramUser)
  {
    this.user = paramUser;
  }
  
  public void setUserId(long paramLong)
  {
    this.userId = paramLong;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeLong(this.id);
    paramParcel.writeLong(this.userId);
    paramParcel.writeLong(this.toUserId);
    paramParcel.writeLong(this.toId);
    ab.a(paramParcel, this.toType);
    paramParcel.writeInt(this.snowCoin);
    ab.a(paramParcel, this.message);
    paramParcel.writeLong(this.payTradeId);
    if (this.createAt == null) {}
    for (long l = 0L;; l = this.createAt.getTime())
    {
      paramParcel.writeLong(l);
      paramParcel.writeParcelable(this.user, paramInt);
      return;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\community\model\Reward.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
package com.xueqiu.android.community.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.gson.annotations.Expose;
import java.util.Date;

public class FriendshipGroup
  implements Parcelable
{
  public static final Parcelable.Creator<FriendshipGroup> CREATOR = new Parcelable.Creator()
  {
    public final FriendshipGroup createFromParcel(Parcel paramAnonymousParcel)
    {
      boolean bool = true;
      FriendshipGroup localFriendshipGroup = new FriendshipGroup();
      FriendshipGroup.access$002(localFriendshipGroup, paramAnonymousParcel.readInt());
      FriendshipGroup.access$102(localFriendshipGroup, paramAnonymousParcel.readString());
      if (paramAnonymousParcel.readByte() == 1) {}
      for (;;)
      {
        FriendshipGroup.access$202(localFriendshipGroup, bool);
        FriendshipGroup.access$302(localFriendshipGroup, paramAnonymousParcel.readInt());
        FriendshipGroup.access$402(localFriendshipGroup, paramAnonymousParcel.readLong());
        FriendshipGroup.access$502(localFriendshipGroup, new Date(paramAnonymousParcel.readLong()));
        FriendshipGroup.access$602(localFriendshipGroup, paramAnonymousParcel.readInt());
        return localFriendshipGroup;
        bool = false;
      }
    }
    
    public final FriendshipGroup[] newArray(int paramAnonymousInt)
    {
      return new FriendshipGroup[paramAnonymousInt];
    }
  };
  @Expose
  private Date createdAt;
  @Expose
  private int id;
  @Expose
  private boolean isMember;
  @Expose
  private int memberCount;
  @Expose
  private String name;
  @Expose
  private int orderId;
  @Expose
  private long userId;
  
  public int describeContents()
  {
    return 0;
  }
  
  public Date getCreatedAt()
  {
    return this.createdAt;
  }
  
  public int getId()
  {
    return this.id;
  }
  
  public int getMemberCount()
  {
    return this.memberCount;
  }
  
  public String getName()
  {
    return this.name;
  }
  
  public int getOrderId()
  {
    return this.orderId;
  }
  
  public long getUserId()
  {
    return this.userId;
  }
  
  public boolean isMember()
  {
    return this.isMember;
  }
  
  public void setCreatedAt(Date paramDate)
  {
    this.createdAt = paramDate;
  }
  
  public void setId(int paramInt)
  {
    this.id = paramInt;
  }
  
  public void setMember(boolean paramBoolean)
  {
    this.isMember = paramBoolean;
  }
  
  public void setMemberCount(int paramInt)
  {
    this.memberCount = paramInt;
  }
  
  public void setName(String paramString)
  {
    this.name = paramString;
  }
  
  public void setOrderId(int paramInt)
  {
    this.orderId = paramInt;
  }
  
  public void setUserId(long paramLong)
  {
    this.userId = paramLong;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(this.id);
    paramParcel.writeString(this.name);
    if (this.isMember)
    {
      paramInt = 1;
      paramParcel.writeByte((byte)paramInt);
      paramParcel.writeInt(this.memberCount);
      paramParcel.writeLong(this.userId);
      if (this.createdAt != null) {
        break label75;
      }
    }
    label75:
    for (long l = 0L;; l = this.createdAt.getTime())
    {
      paramParcel.writeLong(l);
      paramParcel.writeInt(this.orderId);
      return;
      paramInt = 0;
      break;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\community\model\FriendshipGroup.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
package com.xueqiu.android.community.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class UserGroup
  implements Parcelable
{
  public static final Parcelable.Creator<UserGroup> CREATOR = new Parcelable.Creator()
  {
    public final UserGroup createFromParcel(Parcel paramAnonymousParcel)
    {
      return new UserGroup(paramAnonymousParcel, null);
    }
    
    public final UserGroup[] newArray(int paramAnonymousInt)
    {
      return new UserGroup[paramAnonymousInt];
    }
  };
  private long groupId;
  private int memberCount;
  private String name;
  private int orderId;
  private long userId;
  
  public UserGroup() {}
  
  private UserGroup(Parcel paramParcel)
  {
    this.groupId = paramParcel.readLong();
    this.name = paramParcel.readString();
    this.userId = paramParcel.readLong();
    this.orderId = paramParcel.readInt();
    this.memberCount = paramParcel.readInt();
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public long getGroupId()
  {
    return this.groupId;
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
  
  public void setGroupId(long paramLong)
  {
    this.groupId = paramLong;
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
    paramParcel.writeLong(this.groupId);
    paramParcel.writeString(this.name);
    paramParcel.writeLong(this.userId);
    paramParcel.writeInt(this.orderId);
    paramParcel.writeInt(this.memberCount);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\community\model\UserGroup.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
package com.xueqiu.android.community.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.xueqiu.android.base.util.ab;

public class FriendshipGroupInfo
  implements Parcelable
{
  public static final String CREATE_AT = "created_at";
  public static final Parcelable.Creator<FriendshipGroupInfo> CREATOR = new Parcelable.Creator()
  {
    public final FriendshipGroupInfo createFromParcel(Parcel paramAnonymousParcel)
    {
      return new FriendshipGroupInfo(paramAnonymousParcel, null);
    }
    
    public final FriendshipGroupInfo[] newArray(int paramAnonymousInt)
    {
      return new FriendshipGroupInfo[paramAnonymousInt];
    }
  };
  public static final String ID = "id";
  public static final String IS_MEMBER = "is_member";
  public static final String MEMBER_COUNT = "member_count";
  public static final String NAME = "name";
  public static final String ORDER_ID = "order_id";
  public static final String USER_ID = "user_id";
  public long mCreate_at;
  public long mId;
  public boolean mIsChecked;
  public boolean mIs_member;
  public int mMember_count;
  public String mName;
  public int mOrder_id;
  public long mUser_id;
  
  public FriendshipGroupInfo() {}
  
  private FriendshipGroupInfo(Parcel paramParcel)
  {
    this.mId = paramParcel.readLong();
    this.mName = ab.a(paramParcel);
    this.mUser_id = paramParcel.readLong();
    this.mOrder_id = paramParcel.readInt();
    this.mCreate_at = paramParcel.readLong();
    this.mMember_count = paramParcel.readInt();
    if (paramParcel.readInt() == 1)
    {
      bool1 = true;
      this.mIs_member = bool1;
      if (paramParcel.readInt() != 1) {
        break label90;
      }
    }
    label90:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      this.mIsChecked = bool1;
      return;
      bool1 = false;
      break;
    }
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public long getmCreate_at()
  {
    return this.mCreate_at;
  }
  
  public long getmId()
  {
    return this.mId;
  }
  
  public int getmMember_count()
  {
    return this.mMember_count;
  }
  
  public String getmName()
  {
    return this.mName;
  }
  
  public int getmOrder_id()
  {
    return this.mOrder_id;
  }
  
  public long getmUser_id()
  {
    return this.mUser_id;
  }
  
  public boolean ismIsChecked()
  {
    return this.mIsChecked;
  }
  
  public boolean ismIs_member()
  {
    return this.mIs_member;
  }
  
  public void setmCreate_at(long paramLong)
  {
    this.mCreate_at = paramLong;
  }
  
  public void setmId(long paramLong)
  {
    this.mId = paramLong;
  }
  
  public void setmIsChecked(boolean paramBoolean)
  {
    this.mIsChecked = paramBoolean;
  }
  
  public void setmIs_member(boolean paramBoolean)
  {
    this.mIs_member = paramBoolean;
  }
  
  public void setmMember_count(int paramInt)
  {
    this.mMember_count = paramInt;
  }
  
  public void setmName(String paramString)
  {
    this.mName = paramString;
  }
  
  public void setmOrder_id(int paramInt)
  {
    this.mOrder_id = paramInt;
  }
  
  public void setmUser_id(long paramLong)
  {
    this.mUser_id = paramLong;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    int i = 1;
    paramParcel.writeLong(this.mId);
    ab.a(paramParcel, this.mName);
    paramParcel.writeLong(this.mUser_id);
    paramParcel.writeInt(this.mOrder_id);
    paramParcel.writeLong(this.mCreate_at);
    paramParcel.writeLong(this.mMember_count);
    if (this.mIs_member)
    {
      paramInt = 1;
      paramParcel.writeInt(paramInt);
      if (!this.mIsChecked) {
        break label85;
      }
    }
    label85:
    for (paramInt = i;; paramInt = 0)
    {
      paramParcel.writeInt(paramInt);
      return;
      paramInt = 0;
      break;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\community\model\FriendshipGroupInfo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
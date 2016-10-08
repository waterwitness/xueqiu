package com.xueqiu.android.common.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.xueqiu.android.base.util.ab;

public class BaseGroupInfo
  implements Parcelable
{
  public static final Parcelable.Creator<BaseGroupInfo> CREATOR = new Parcelable.Creator()
  {
    public final BaseGroupInfo createFromParcel(Parcel paramAnonymousParcel)
    {
      return new BaseGroupInfo(paramAnonymousParcel, null);
    }
    
    public final BaseGroupInfo[] newArray(int paramAnonymousInt)
    {
      return new BaseGroupInfo[paramAnonymousInt];
    }
  };
  public static final String ID = "id";
  public static final String NAME = "name";
  public static final String ORDER_ID = "orderId";
  public long mId;
  public boolean mIsAdd;
  public boolean mIsDelete;
  public boolean mIsUpdate;
  public String mName;
  public int mOrderId;
  public String mViewTag;
  
  public BaseGroupInfo() {}
  
  private BaseGroupInfo(Parcel paramParcel)
  {
    this.mId = paramParcel.readLong();
    this.mName = ab.a(paramParcel);
    this.mOrderId = paramParcel.readInt();
    if (paramParcel.readInt() == 1)
    {
      bool1 = true;
      this.mIsAdd = bool1;
      if (paramParcel.readInt() != 1) {
        break label81;
      }
      bool1 = true;
      label55:
      this.mIsUpdate = bool1;
      if (paramParcel.readInt() != 1) {
        break label86;
      }
    }
    label81:
    label86:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      this.mIsDelete = bool1;
      return;
      bool1 = false;
      break;
      bool1 = false;
      break label55;
    }
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    int i = 1;
    paramParcel.writeLong(this.mId);
    ab.a(paramParcel, this.mName);
    paramParcel.writeInt(this.mOrderId);
    if (this.mIsAdd)
    {
      paramInt = 1;
      paramParcel.writeInt(paramInt);
      if (!this.mIsUpdate) {
        break label74;
      }
      paramInt = 1;
      label49:
      paramParcel.writeInt(paramInt);
      if (!this.mIsDelete) {
        break label79;
      }
    }
    label74:
    label79:
    for (paramInt = i;; paramInt = 0)
    {
      paramParcel.writeInt(paramInt);
      return;
      paramInt = 0;
      break;
      paramInt = 0;
      break label49;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\model\BaseGroupInfo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
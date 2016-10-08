package com.xueqiu.android.tactic.d;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.gson.annotations.Expose;

public class f
  implements Parcelable
{
  public static final Parcelable.Creator<f> CREATOR = new Parcelable.Creator() {};
  @Expose
  private long price;
  @Expose
  public int quantity;
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(this.quantity);
    paramParcel.writeLong(this.price);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\tactic\d\f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
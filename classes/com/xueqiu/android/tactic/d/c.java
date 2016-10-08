package com.xueqiu.android.tactic.d;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public final class c
  implements Parcelable
{
  public static final Parcelable.Creator<c> CREATOR = new Parcelable.Creator() {};
  public int a;
  public String b;
  public String c;
  public String d;
  
  public c() {}
  
  protected c(Parcel paramParcel)
  {
    this.a = paramParcel.readInt();
    this.b = paramParcel.readString();
    this.c = paramParcel.readString();
    this.d = paramParcel.readString();
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(this.a);
    paramParcel.writeString(this.b);
    paramParcel.writeString(this.c);
    paramParcel.writeString(this.d);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\tactic\d\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
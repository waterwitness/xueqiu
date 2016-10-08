package com.xueqiu.android.common.imagepicker;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public final class c
  implements Parcelable
{
  public static final Parcelable.Creator<c> CREATOR = new Parcelable.Creator() {};
  String a;
  String b;
  String c;
  public String d;
  String e;
  String f;
  long g;
  private String h;
  
  public c() {}
  
  public c(Parcel paramParcel)
  {
    this.a = paramParcel.readString();
    this.b = paramParcel.readString();
    this.c = paramParcel.readString();
    this.d = paramParcel.readString();
    this.h = paramParcel.readString();
    this.e = paramParcel.readString();
    this.f = paramParcel.readString();
    this.g = paramParcel.readLong();
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.a);
    paramParcel.writeString(this.b);
    paramParcel.writeString(this.c);
    paramParcel.writeString(this.d);
    paramParcel.writeString(this.h);
    paramParcel.writeString(this.e);
    paramParcel.writeString(this.f);
    paramParcel.writeLong(this.g);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\imagepicker\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
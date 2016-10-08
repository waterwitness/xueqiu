package com.xueqiu.android.common.camera;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.xueqiu.android.base.d;

public final class g
  implements Parcelable
{
  public static final Parcelable.Creator<g> CREATOR = new Parcelable.Creator() {};
  public String a = d.a + "cache/tmp.jpeg";
  int b = 0;
  public int c = 0;
  public String d = "idCard";
  public String e;
  private int f = 0;
  private int g = 0;
  
  public g() {}
  
  protected g(Parcel paramParcel)
  {
    this.a = paramParcel.readString();
    this.b = paramParcel.readInt();
    this.f = paramParcel.readInt();
    this.g = paramParcel.readInt();
    this.c = paramParcel.readInt();
    this.d = paramParcel.readString();
    this.e = paramParcel.readString();
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.a);
    paramParcel.writeInt(this.b);
    paramParcel.writeInt(this.f);
    paramParcel.writeInt(this.g);
    paramParcel.writeInt(this.c);
    paramParcel.writeString(this.d);
    paramParcel.writeString(this.e);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\camera\g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
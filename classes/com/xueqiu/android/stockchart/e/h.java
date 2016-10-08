package com.xueqiu.android.stockchart.e;

import android.os.Parcel;
import android.os.Parcelable;

public final class h
  implements Parcelable
{
  public String a;
  public String b;
  public int c;
  public float d;
  public float e;
  public float f;
  public double g;
  public String h;
  public double i;
  
  public final void a(String paramString)
  {
    this.d = Float.parseFloat(paramString);
  }
  
  public final void b(String paramString)
  {
    this.c = Integer.parseInt(paramString);
  }
  
  public final void c(String paramString)
  {
    this.e = Float.parseFloat(paramString);
  }
  
  public final void d(String paramString)
  {
    this.f = Float.parseFloat(paramString);
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final void e(String paramString)
  {
    this.g = Double.parseDouble(paramString);
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.a);
    paramParcel.writeString(this.b);
    paramParcel.writeInt(this.c);
    paramParcel.writeDouble(this.d);
    paramParcel.writeFloat(this.e);
    paramParcel.writeFloat(this.f);
    paramParcel.writeDouble(this.g);
    paramParcel.writeString(this.h);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\stockchart\e\h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
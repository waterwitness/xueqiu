package com.xueqiu.android.base.h5;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public final class b
  implements Parcelable
{
  public static final Parcelable.Creator<b> CREATOR = new Parcelable.Creator() {};
  private static int e = 0;
  public int a;
  public String b;
  int c = -1;
  private String d;
  
  public b()
  {
    this.a = a();
  }
  
  private b(int paramInt)
  {
    this.a = paramInt;
  }
  
  private static int a()
  {
    try
    {
      int i = e + 1;
      e = i;
      if (i == 10000) {
        e = 0;
      }
      i = e;
      return i;
    }
    finally {}
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final String toString()
  {
    int i = this.a;
    String str1;
    if (this.d != null)
    {
      str1 = this.d;
      if (this.b == null) {
        break label60;
      }
    }
    label60:
    for (String str2 = this.b;; str2 = "")
    {
      return String.format("H5Event[%d:%s:%s]", new Object[] { Integer.valueOf(i), str1, str2 });
      str1 = "";
      break;
    }
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(this.a);
    paramParcel.writeString(this.d);
    paramParcel.writeString(this.b);
    paramParcel.writeInt(this.c);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\base\h5\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
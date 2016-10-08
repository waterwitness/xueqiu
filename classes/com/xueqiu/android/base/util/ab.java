package com.xueqiu.android.base.util;

import android.os.Parcel;
import java.util.Date;

public final class ab
{
  public static String a(Parcel paramParcel)
  {
    if (paramParcel.readInt() == 1) {
      return paramParcel.readString();
    }
    return null;
  }
  
  public static void a(Parcel paramParcel, String paramString)
  {
    if (paramString != null)
    {
      paramParcel.writeInt(1);
      paramParcel.writeString(paramString);
      return;
    }
    paramParcel.writeInt(0);
  }
  
  public static void a(Parcel paramParcel, Date paramDate)
  {
    if (paramDate == null) {}
    for (long l = 0L;; l = paramDate.getTime())
    {
      paramParcel.writeLong(l);
      return;
    }
  }
  
  public static void a(Parcel paramParcel, boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (int i = 1;; i = 0)
    {
      paramParcel.writeByte((byte)i);
      return;
    }
  }
  
  public static boolean b(Parcel paramParcel)
  {
    return paramParcel.readByte() != 0;
  }
  
  public static Date c(Parcel paramParcel)
  {
    return new Date(paramParcel.readLong());
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\base\util\ab.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
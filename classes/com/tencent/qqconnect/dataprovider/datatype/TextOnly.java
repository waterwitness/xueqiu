package com.tencent.qqconnect.dataprovider.datatype;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class TextOnly
  implements Parcelable
{
  public static final Parcelable.Creator CREATOR = new b();
  private String mText;
  
  private TextOnly(Parcel paramParcel)
  {
    this.mText = paramParcel.readString();
  }
  
  public TextOnly(String paramString)
  {
    this.mText = paramString;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getText()
  {
    return this.mText;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.mText);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\qqconnect\dataprovider\datatype\TextOnly.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
package com.tencent.qqconnect.dataprovider.datatype;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class TextAndMediaPath
  implements Parcelable
{
  public static final Parcelable.Creator CREATOR = new a();
  private String mMediaPath;
  private String mText;
  
  private TextAndMediaPath(Parcel paramParcel)
  {
    this.mText = paramParcel.readString();
    this.mMediaPath = paramParcel.readString();
  }
  
  public TextAndMediaPath(String paramString1, String paramString2)
  {
    this.mText = paramString1;
    this.mMediaPath = paramString2;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getMediaPath()
  {
    return this.mMediaPath;
  }
  
  public String getText()
  {
    return this.mText;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.mText);
    paramParcel.writeString(this.mMediaPath);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\qqconnect\dataprovider\datatype\TextAndMediaPath.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
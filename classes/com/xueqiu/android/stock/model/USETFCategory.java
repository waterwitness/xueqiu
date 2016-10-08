package com.xueqiu.android.stock.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class USETFCategory
  implements Parcelable
{
  public static final Parcelable.Creator<USETFCategory> CREATOR = new Parcelable.Creator()
  {
    public final USETFCategory createFromParcel(Parcel paramAnonymousParcel)
    {
      USETFCategory localUSETFCategory = new USETFCategory();
      localUSETFCategory.title = paramAnonymousParcel.readString();
      paramAnonymousParcel.readStringArray(localUSETFCategory.types);
      return localUSETFCategory;
    }
    
    public final USETFCategory[] newArray(int paramAnonymousInt)
    {
      return new USETFCategory[paramAnonymousInt];
    }
  };
  String title;
  String[] types;
  
  public USETFCategory() {}
  
  public USETFCategory(String paramString, String[] paramArrayOfString)
  {
    this.title = paramString;
    this.types = paramArrayOfString;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getTitle()
  {
    return this.title;
  }
  
  public String[] getTypes()
  {
    return this.types;
  }
  
  public void setTitle(String paramString)
  {
    this.title = paramString;
  }
  
  public void setTypes(String[] paramArrayOfString)
  {
    this.types = paramArrayOfString;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.title);
    paramParcel.writeStringArray(this.types);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\stock\model\USETFCategory.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
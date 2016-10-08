package com.xueqiu.android.cube.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.gson.annotations.Expose;

public class Style
  implements Parcelable
{
  public static final Parcelable.Creator<Style> CREATOR = new Parcelable.Creator()
  {
    public final Style createFromParcel(Parcel paramAnonymousParcel)
    {
      Style localStyle = new Style();
      Style.access$002(localStyle, paramAnonymousParcel.readString());
      Style.access$102(localStyle, paramAnonymousParcel.readString());
      Style.access$202(localStyle, paramAnonymousParcel.readString());
      Style.access$302(localStyle, paramAnonymousParcel.readInt());
      return localStyle;
    }
    
    public final Style[] newArray(int paramAnonymousInt)
    {
      return new Style[paramAnonymousInt];
    }
  };
  @Expose
  private String color0;
  @Expose
  private String color1;
  @Expose
  private int degreee;
  @Expose
  private String name;
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getColor0()
  {
    return this.color0;
  }
  
  public String getColor1()
  {
    return this.color1;
  }
  
  public int getDegreee()
  {
    return this.degreee;
  }
  
  public String getName()
  {
    return this.name;
  }
  
  public void setColor0(String paramString)
  {
    this.color0 = paramString;
  }
  
  public void setColor1(String paramString)
  {
    this.color1 = paramString;
  }
  
  public void setDegreee(int paramInt)
  {
    this.degreee = paramInt;
  }
  
  public void setName(String paramString)
  {
    this.name = paramString;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.name);
    paramParcel.writeString(this.color0);
    paramParcel.writeString(this.color1);
    paramParcel.writeInt(this.degreee);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\cube\model\Style.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
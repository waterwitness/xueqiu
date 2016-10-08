package com.xueqiu.android.community.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class Draft
  implements Parcelable
{
  public static final Parcelable.Creator<Draft> CREATOR = new Parcelable.Creator()
  {
    public final Draft createFromParcel(Parcel paramAnonymousParcel)
    {
      Draft localDraft = new Draft();
      Draft.access$002(localDraft, paramAnonymousParcel.readInt());
      Draft.access$102(localDraft, paramAnonymousParcel.readInt());
      Draft.access$202(localDraft, paramAnonymousParcel.readString());
      Draft.access$302(localDraft, paramAnonymousParcel.readString());
      Draft.access$402(localDraft, paramAnonymousParcel.readString());
      Draft.access$502(localDraft, paramAnonymousParcel.readLong());
      return localDraft;
    }
    
    public final Draft[] newArray(int paramAnonymousInt)
    {
      return new Draft[paramAnonymousInt];
    }
  };
  private int id;
  private String imageName;
  private String text;
  private long timestamp = System.currentTimeMillis();
  private String title;
  private int type;
  
  public int describeContents()
  {
    return 0;
  }
  
  public int getId()
  {
    return this.id;
  }
  
  public String getImageName()
  {
    return this.imageName;
  }
  
  public String getText()
  {
    return this.text;
  }
  
  public long getTimestamp()
  {
    return this.timestamp;
  }
  
  public String getTitle()
  {
    return this.title;
  }
  
  public int getType()
  {
    return this.type;
  }
  
  public void setId(int paramInt)
  {
    this.id = paramInt;
  }
  
  public void setImageName(String paramString)
  {
    this.imageName = paramString;
  }
  
  public void setText(String paramString)
  {
    this.text = paramString;
  }
  
  public void setTimestamp(long paramLong)
  {
    this.timestamp = paramLong;
  }
  
  public void setTitle(String paramString)
  {
    this.title = paramString;
  }
  
  public void setType(int paramInt)
  {
    this.type = paramInt;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(this.id);
    paramParcel.writeInt(this.type);
    paramParcel.writeString(this.text);
    paramParcel.writeString(this.title);
    paramParcel.writeString(this.imageName);
    paramParcel.writeLong(this.timestamp);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\community\model\Draft.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
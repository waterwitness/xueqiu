package com.xueqiu.android.community.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.gson.annotations.Expose;

public class InterestTopic
  implements Parcelable
{
  public static final Parcelable.Creator<InterestTopic> CREATOR = new Parcelable.Creator()
  {
    public final InterestTopic createFromParcel(Parcel paramAnonymousParcel)
    {
      InterestTopic localInterestTopic = new InterestTopic();
      InterestTopic.access$002(localInterestTopic, paramAnonymousParcel.readInt());
      InterestTopic.access$102(localInterestTopic, paramAnonymousParcel.readString());
      return localInterestTopic;
    }
    
    public final InterestTopic[] newArray(int paramAnonymousInt)
    {
      return new InterestTopic[paramAnonymousInt];
    }
  };
  @Expose
  private int id;
  @Expose
  private String name;
  
  public int describeContents()
  {
    return 0;
  }
  
  public int getId()
  {
    return this.id;
  }
  
  public String getName()
  {
    return this.name;
  }
  
  public void setId(int paramInt)
  {
    this.id = paramInt;
  }
  
  public void setName(String paramString)
  {
    this.name = paramString;
  }
  
  public String toString()
  {
    return "InterestTopic{id=" + this.id + ", name='" + this.name + '\'' + '}';
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(this.id);
    paramParcel.writeString(this.name);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\community\model\InterestTopic.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
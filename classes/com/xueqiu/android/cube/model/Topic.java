package com.xueqiu.android.cube.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.gson.annotations.Expose;

public class Topic
  implements Parcelable
{
  public static final Parcelable.Creator<Topic> CREATOR = new Parcelable.Creator()
  {
    public final Topic createFromParcel(Parcel paramAnonymousParcel)
    {
      boolean bool = true;
      Topic localTopic = new Topic();
      Topic.access$002(localTopic, paramAnonymousParcel.readString());
      if (paramAnonymousParcel.readInt() == 1) {}
      for (;;)
      {
        Topic.access$102(localTopic, bool);
        Topic.access$202(localTopic, paramAnonymousParcel.readString());
        Topic.access$302(localTopic, paramAnonymousParcel.readInt());
        Topic.access$402(localTopic, paramAnonymousParcel.readString());
        return localTopic;
        bool = false;
      }
    }
    
    public final Topic[] newArray(int paramAnonymousInt)
    {
      return new Topic[paramAnonymousInt];
    }
  };
  @Expose
  private String color;
  @Expose
  private int cubeCount;
  @Expose
  private boolean hot;
  @Expose
  private String image;
  @Expose
  private String name;
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getColor()
  {
    return this.color;
  }
  
  public int getCubeCount()
  {
    return this.cubeCount;
  }
  
  public String getImage()
  {
    return this.image;
  }
  
  public String getName()
  {
    return this.name;
  }
  
  public boolean isHot()
  {
    return this.hot;
  }
  
  public void setColor(String paramString)
  {
    this.color = paramString;
  }
  
  public void setCubeCount(int paramInt)
  {
    this.cubeCount = paramInt;
  }
  
  public void setHot(boolean paramBoolean)
  {
    this.hot = paramBoolean;
  }
  
  public void setImage(String paramString)
  {
    this.image = paramString;
  }
  
  public void setName(String paramString)
  {
    this.name = paramString;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.name);
    if (this.hot) {}
    for (paramInt = 1;; paramInt = 0)
    {
      paramParcel.writeInt(paramInt);
      paramParcel.writeString(this.color);
      paramParcel.writeInt(this.cubeCount);
      paramParcel.writeString(this.image);
      return;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\cube\model\Topic.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
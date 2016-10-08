package com.xueqiu.android.community.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import java.util.ArrayList;
import java.util.List;

public class Interview
  implements Parcelable
{
  public static final Parcelable.Creator<Interview> CREATOR = new Parcelable.Creator()
  {
    public final Interview createFromParcel(Parcel paramAnonymousParcel)
    {
      Interview localInterview = new Interview();
      Interview.access$002(localInterview, paramAnonymousParcel.readLong());
      Interview.access$102(localInterview, paramAnonymousParcel.readString());
      Interview.access$202(localInterview, paramAnonymousParcel.readString());
      Interview.access$302(localInterview, paramAnonymousParcel.readString());
      Interview.access$402(localInterview, new ArrayList());
      paramAnonymousParcel.readTypedList(localInterview.users, User.CREATOR);
      localInterview.imageUrl = paramAnonymousParcel.readString();
      Interview.access$502(localInterview, paramAnonymousParcel.readString());
      Interview.access$602(localInterview, paramAnonymousParcel.readInt());
      return localInterview;
    }
    
    public final Interview[] newArray(int paramAnonymousInt)
    {
      return new Interview[paramAnonymousInt];
    }
  };
  @Expose
  private String date;
  @Expose
  private String description;
  @Expose
  @SerializedName("pic")
  String imageUrl;
  @Expose
  @SerializedName("id")
  private long interviewId;
  @Expose
  private JsonElement picSize;
  @Expose
  private int picType;
  @Expose
  private String title;
  @Expose
  private String url;
  @Expose
  private List<User> users;
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getDate()
  {
    return this.date;
  }
  
  public String getDescription()
  {
    return this.description;
  }
  
  public String getImageUrl()
  {
    return this.imageUrl;
  }
  
  public long getInterviewId()
  {
    return this.interviewId;
  }
  
  public int getPicType()
  {
    return this.picType;
  }
  
  public String getTitle()
  {
    return this.title;
  }
  
  public String getUrl()
  {
    return this.url;
  }
  
  public List<User> getUsers()
  {
    return this.users;
  }
  
  public double proportion()
  {
    if (this.picSize != null)
    {
      JsonObject localJsonObject = (JsonObject)this.picSize;
      if ((localJsonObject.has("height")) && (localJsonObject.has("width")))
      {
        int i = localJsonObject.get("height").getAsInt();
        int j = localJsonObject.get("width").getAsInt();
        return i / j;
      }
      return 0.525D;
    }
    return 0.525D;
  }
  
  public void setDate(String paramString)
  {
    this.date = paramString;
  }
  
  public void setDescription(String paramString)
  {
    this.description = paramString;
  }
  
  public void setImageUrl(String paramString)
  {
    this.imageUrl = paramString;
  }
  
  public void setInterviewId(long paramLong)
  {
    this.interviewId = paramLong;
  }
  
  public void setPicType(int paramInt)
  {
    this.picType = paramInt;
  }
  
  public void setTitle(String paramString)
  {
    this.title = paramString;
  }
  
  public void setUrl(String paramString)
  {
    this.url = paramString;
  }
  
  public void setUsers(List<User> paramList)
  {
    this.users = paramList;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeLong(this.interviewId);
    paramParcel.writeString(this.title);
    paramParcel.writeString(this.description);
    paramParcel.writeString(this.url);
    paramParcel.writeTypedList(this.users);
    paramParcel.writeString(this.imageUrl);
    paramParcel.writeString(this.date);
    paramParcel.writeInt(this.picType);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\community\model\Interview.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
package com.xueqiu.android.cube.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import com.xueqiu.android.community.model.User;

public class RecommendCube
  implements Parcelable
{
  public static final Parcelable.Creator<RecommendCube> CREATOR = new Parcelable.Creator()
  {
    public final RecommendCube createFromParcel(Parcel paramAnonymousParcel)
    {
      RecommendCube localRecommendCube = new RecommendCube();
      RecommendCube.access$002(localRecommendCube, paramAnonymousParcel.readString());
      RecommendCube.access$102(localRecommendCube, (Cube)paramAnonymousParcel.readParcelable(Cube.class.getClassLoader()));
      RecommendCube.access$202(localRecommendCube, (User)paramAnonymousParcel.readParcelable(User.class.getClassLoader()));
      if (paramAnonymousParcel.readInt() == 1) {}
      for (boolean bool = true;; bool = false)
      {
        RecommendCube.access$302(localRecommendCube, bool);
        RecommendCube.access$402(localRecommendCube, paramAnonymousParcel.readString());
        return localRecommendCube;
      }
    }
    
    public final RecommendCube[] newArray(int paramAnonymousInt)
    {
      return new RecommendCube[paramAnonymousInt];
    }
  };
  @Expose
  private Cube cube;
  @Expose
  @SerializedName("has_exist")
  private boolean hasExist;
  @Expose
  private String id;
  @Expose
  private User owner;
  @Expose
  @SerializedName("recommend_reason")
  private String recommendReason;
  
  public int describeContents()
  {
    return 0;
  }
  
  public Cube getCube()
  {
    return this.cube;
  }
  
  public String getId()
  {
    return this.id;
  }
  
  public User getOwner()
  {
    return this.owner;
  }
  
  public String getRecommendReason()
  {
    return this.recommendReason;
  }
  
  public boolean isHasExist()
  {
    return this.hasExist;
  }
  
  public void setCube(Cube paramCube)
  {
    this.cube = paramCube;
  }
  
  public void setHasExist(boolean paramBoolean)
  {
    this.hasExist = paramBoolean;
  }
  
  public void setId(String paramString)
  {
    this.id = paramString;
  }
  
  public void setOwner(User paramUser)
  {
    this.owner = paramUser;
  }
  
  public void setRecommendReason(String paramString)
  {
    this.recommendReason = paramString;
  }
  
  public String toString()
  {
    return "RecommendCube{id=" + this.id + ", cube=" + this.cube + ", owner=" + this.owner + ", hasExist=" + this.hasExist + ", recommendReason='" + this.recommendReason + '\'' + '}';
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.id);
    paramParcel.writeParcelable(this.cube, paramInt);
    paramParcel.writeParcelable(this.owner, paramInt);
    if (this.hasExist) {}
    for (paramInt = 1;; paramInt = 0)
    {
      paramParcel.writeInt(paramInt);
      paramParcel.writeString(this.recommendReason);
      return;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\cube\model\RecommendCube.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
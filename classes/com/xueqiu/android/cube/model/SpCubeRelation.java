package com.xueqiu.android.cube.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.gson.annotations.Expose;
import com.xueqiu.android.community.model.User;

public class SpCubeRelation
  implements Parcelable
{
  public static final Parcelable.Creator<SpCubeRelation> CREATOR = new Parcelable.Creator()
  {
    public final SpCubeRelation createFromParcel(Parcel paramAnonymousParcel)
    {
      return new SpCubeRelation(paramAnonymousParcel);
    }
    
    public final SpCubeRelation[] newArray(int paramAnonymousInt)
    {
      return new SpCubeRelation[paramAnonymousInt];
    }
  };
  @Expose
  private int followersCount;
  @Expose
  private boolean following;
  @Expose
  private User owner;
  
  public SpCubeRelation() {}
  
  protected SpCubeRelation(Parcel paramParcel)
  {
    this.owner = ((User)paramParcel.readParcelable(User.class.getClassLoader()));
    this.followersCount = paramParcel.readInt();
    if (paramParcel.readByte() != 0) {}
    for (boolean bool = true;; bool = false)
    {
      this.following = bool;
      return;
    }
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public int getFollowersCount()
  {
    return this.followersCount;
  }
  
  public User getOwner()
  {
    return this.owner;
  }
  
  public boolean isFollowing()
  {
    return this.following;
  }
  
  public void setFollowersCount(int paramInt)
  {
    this.followersCount = paramInt;
  }
  
  public void setFollowing(boolean paramBoolean)
  {
    this.following = paramBoolean;
  }
  
  public void setOwner(User paramUser)
  {
    this.owner = paramUser;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeParcelable(this.owner, paramInt);
    paramParcel.writeInt(this.followersCount);
    if (this.following) {}
    for (byte b = 1;; b = 0)
    {
      paramParcel.writeByte(b);
      return;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\cube\model\SpCubeRelation.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
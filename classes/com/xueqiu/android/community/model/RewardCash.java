package com.xueqiu.android.community.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import com.google.gson.annotations.Expose;
import java.util.Date;

public class RewardCash
  implements Parcelable
{
  public static final Parcelable.Creator<RewardCash> CREATOR = new Parcelable.Creator()
  {
    public final RewardCash createFromParcel(Parcel paramAnonymousParcel)
    {
      RewardCash localRewardCash = new RewardCash();
      RewardCash.access$002(localRewardCash, paramAnonymousParcel.readInt());
      RewardCash.access$102(localRewardCash, new Date(paramAnonymousParcel.readLong()));
      RewardCash.access$202(localRewardCash, paramAnonymousParcel.readString());
      RewardCash.access$302(localRewardCash, paramAnonymousParcel.readString());
      localRewardCash.photoDomain = paramAnonymousParcel.readString();
      RewardCash.access$402(localRewardCash, paramAnonymousParcel.readLong());
      RewardCash.access$502(localRewardCash, paramAnonymousParcel.readString());
      return localRewardCash;
    }
    
    public final RewardCash[] newArray(int paramAnonymousInt)
    {
      return new RewardCash[paramAnonymousInt];
    }
  };
  @Expose
  private int amount;
  @Expose
  private Date createAt;
  @Expose
  private String description;
  @Expose
  private String name;
  @Expose
  String photoDomain;
  @Expose
  private String profileImageUrl;
  @Expose
  private long userId;
  
  public int describeContents()
  {
    return 0;
  }
  
  public int getAmount()
  {
    return this.amount;
  }
  
  public Date getCreateAt()
  {
    return this.createAt;
  }
  
  public String getDescription()
  {
    return this.description;
  }
  
  public String getLargeImageUrl()
  {
    return getUserProfileImage(true);
  }
  
  public String getName()
  {
    return this.name;
  }
  
  public String getPhotoDomain()
  {
    return this.photoDomain;
  }
  
  public String getProfileImageUrl()
  {
    return this.profileImageUrl;
  }
  
  public String getSmallImageUrl()
  {
    return getUserProfileImage(false);
  }
  
  public long getUserId()
  {
    return this.userId;
  }
  
  public String getUserProfileImage(boolean paramBoolean)
  {
    int i = 0;
    if ((!TextUtils.isEmpty(this.profileImageUrl)) && (!TextUtils.isEmpty(this.photoDomain)))
    {
      String[] arrayOfString = this.profileImageUrl.split(",");
      if (arrayOfString.length == 1) {
        return arrayOfString[0];
      }
      if (arrayOfString.length > 0)
      {
        int j = arrayOfString.length;
        while (i < j)
        {
          String str = arrayOfString[i];
          if (str.contains("50x50")) {
            return this.photoDomain + str;
          }
          if (str.contains("180x180")) {
            return this.photoDomain + str;
          }
          i += 1;
        }
      }
    }
    return null;
  }
  
  public void setAmount(int paramInt)
  {
    this.amount = paramInt;
  }
  
  public void setCreateAt(Date paramDate)
  {
    this.createAt = paramDate;
  }
  
  public void setDescription(String paramString)
  {
    this.description = paramString;
  }
  
  public void setName(String paramString)
  {
    this.name = paramString;
  }
  
  public void setPhotoDomain(String paramString)
  {
    this.photoDomain = paramString;
  }
  
  public void setProfileImageUrl(String paramString)
  {
    this.profileImageUrl = paramString;
  }
  
  public void setUserId(long paramLong)
  {
    this.userId = paramLong;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(this.amount);
    if (this.createAt == null) {}
    for (long l = 0L;; l = this.createAt.getTime())
    {
      paramParcel.writeLong(l);
      paramParcel.writeString(this.name);
      paramParcel.writeString(this.profileImageUrl);
      paramParcel.writeString(this.photoDomain);
      paramParcel.writeLong(this.userId);
      paramParcel.writeString(this.description);
      return;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\community\model\RewardCash.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
package com.xueqiu.android.message.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import com.xueqiu.android.base.util.v;
import com.xueqiu.android.community.model.User;
import java.util.Date;

public class IMGroup
  implements Parcelable
{
  public static Parcelable.Creator CREATOR = new Parcelable.Creator()
  {
    public final IMGroup createFromParcel(Parcel paramAnonymousParcel)
    {
      return new IMGroup(paramAnonymousParcel);
    }
    
    public final IMGroup[] newArray(int paramAnonymousInt)
    {
      return new IMGroup[paramAnonymousInt];
    }
  };
  @Expose
  private boolean allowInviteUser;
  @Expose
  private int count;
  @Expose
  private Date createdAt;
  @Expose
  private String description;
  @Expose
  private boolean emptyName;
  @Expose
  private long id;
  @Expose
  private boolean joined;
  @Expose
  private int limitCount;
  private User master;
  @Expose
  @SerializedName("owner_id")
  private long masterId;
  @Expose
  private String name;
  private String pinyinHeaders;
  @Expose
  @SerializedName("profile_image_url_100")
  private String profileImageUrl;
  @Expose
  @SerializedName("ispublic")
  private boolean pub;
  @Expose
  private int star;
  @Expose
  private boolean truncated;
  
  public IMGroup()
  {
    this.createdAt = new Date();
  }
  
  public IMGroup(Parcel paramParcel)
  {
    try
    {
      this.id = paramParcel.readLong();
      this.name = paramParcel.readString();
      this.description = paramParcel.readString();
      this.profileImageUrl = paramParcel.readString();
      this.count = paramParcel.readInt();
      this.masterId = paramParcel.readLong();
      if (paramParcel.readInt() == 1)
      {
        bool1 = true;
        this.pub = bool1;
        if (paramParcel.readInt() != 1) {
          break label166;
        }
        bool1 = true;
        label79:
        this.truncated = bool1;
        if (paramParcel.readInt() != 1) {
          break label171;
        }
        bool1 = true;
        label94:
        this.joined = bool1;
        if (paramParcel.readInt() != 1) {
          break label176;
        }
        bool1 = true;
        label109:
        this.emptyName = bool1;
        this.limitCount = paramParcel.readInt();
        if (paramParcel.readInt() != 1) {
          break label181;
        }
      }
      label166:
      label171:
      label176:
      label181:
      for (boolean bool1 = bool2;; bool1 = false)
      {
        this.allowInviteUser = bool1;
        this.createdAt = new Date(paramParcel.readLong());
        this.star = paramParcel.readInt();
        return;
        bool1 = false;
        break;
        bool1 = false;
        break label79;
        bool1 = false;
        break label94;
        bool1 = false;
        break label109;
      }
      return;
    }
    catch (Exception paramParcel)
    {
      v.e("IMGroup", paramParcel.getMessage());
    }
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public int getCount()
  {
    return this.count;
  }
  
  public Date getCreatedAt()
  {
    return this.createdAt;
  }
  
  public String getDescription()
  {
    return this.description;
  }
  
  public long getId()
  {
    return this.id;
  }
  
  public int getLimitCount()
  {
    return this.limitCount;
  }
  
  public User getMaster()
  {
    return this.master;
  }
  
  public long getMasterId()
  {
    return this.masterId;
  }
  
  public String getName()
  {
    return this.name;
  }
  
  public String getPinyinHeaders()
  {
    return this.pinyinHeaders;
  }
  
  public String getProfileImageUrl()
  {
    return this.profileImageUrl;
  }
  
  public int getStar()
  {
    return this.star;
  }
  
  public boolean isAllowInviteUser()
  {
    return this.allowInviteUser;
  }
  
  public boolean isEmptyName()
  {
    return this.emptyName;
  }
  
  public boolean isJoined()
  {
    return this.joined;
  }
  
  public boolean isPub()
  {
    return this.pub;
  }
  
  public boolean isTruncated()
  {
    return this.truncated;
  }
  
  public void setAllowInviteUser(boolean paramBoolean)
  {
    this.allowInviteUser = paramBoolean;
  }
  
  public void setCount(int paramInt)
  {
    this.count = paramInt;
  }
  
  public void setCreatedAt(Date paramDate)
  {
    this.createdAt = paramDate;
  }
  
  public void setDescription(String paramString)
  {
    this.description = paramString;
  }
  
  public void setEmptyName(boolean paramBoolean)
  {
    this.emptyName = paramBoolean;
  }
  
  public void setId(long paramLong)
  {
    this.id = paramLong;
  }
  
  public void setJoined(boolean paramBoolean)
  {
    this.joined = paramBoolean;
  }
  
  public void setLimitCount(int paramInt)
  {
    this.limitCount = paramInt;
  }
  
  public void setMaster(User paramUser)
  {
    this.master = paramUser;
  }
  
  public void setMasterId(long paramLong)
  {
    this.masterId = paramLong;
  }
  
  public void setName(String paramString)
  {
    this.name = paramString;
  }
  
  public void setPinyinHeaders(String paramString)
  {
    this.pinyinHeaders = paramString;
  }
  
  public void setProfileImageUrl(String paramString)
  {
    this.profileImageUrl = paramString;
  }
  
  public void setPub(boolean paramBoolean)
  {
    this.pub = paramBoolean;
  }
  
  public void setStar(int paramInt)
  {
    this.star = paramInt;
  }
  
  public void setTruncated(boolean paramBoolean)
  {
    this.truncated = paramBoolean;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    int i = 1;
    paramParcel.writeLong(this.id);
    paramParcel.writeString(this.name);
    paramParcel.writeString(this.description);
    paramParcel.writeString(this.profileImageUrl);
    paramParcel.writeInt(this.count);
    paramParcel.writeLong(this.masterId);
    if (this.pub)
    {
      paramInt = 1;
      paramParcel.writeInt(paramInt);
      if (!this.truncated) {
        break label153;
      }
      paramInt = 1;
      label73:
      paramParcel.writeInt(paramInt);
      if (!this.joined) {
        break label158;
      }
      paramInt = 1;
      label87:
      paramParcel.writeInt(paramInt);
      if (!this.emptyName) {
        break label163;
      }
      paramInt = 1;
      label101:
      paramParcel.writeInt(paramInt);
      paramParcel.writeInt(this.limitCount);
      if (!this.allowInviteUser) {
        break label168;
      }
    }
    label153:
    label158:
    label163:
    label168:
    for (paramInt = i;; paramInt = 0)
    {
      paramParcel.writeInt(paramInt);
      paramParcel.writeLong(this.createdAt.getTime());
      paramParcel.writeInt(this.star);
      return;
      paramInt = 0;
      break;
      paramInt = 0;
      break label73;
      paramInt = 0;
      break label87;
      paramInt = 0;
      break label101;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\message\model\IMGroup.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
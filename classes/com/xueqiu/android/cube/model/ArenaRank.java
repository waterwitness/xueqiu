package com.xueqiu.android.cube.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.gson.annotations.Expose;
import java.util.Date;

public class ArenaRank
  implements Parcelable
{
  public static final Parcelable.Creator<ArenaRank> CREATOR = new Parcelable.Creator()
  {
    public final ArenaRank createFromParcel(Parcel paramAnonymousParcel)
    {
      ArenaRank localArenaRank = new ArenaRank();
      ArenaRank.access$002(localArenaRank, paramAnonymousParcel.readString());
      ArenaRank.access$102(localArenaRank, paramAnonymousParcel.readString());
      ArenaRank.access$202(localArenaRank, new Date(paramAnonymousParcel.readLong()));
      ArenaRank.access$302(localArenaRank, paramAnonymousParcel.readInt());
      ArenaRank.access$402(localArenaRank, new Date(paramAnonymousParcel.readLong()));
      ArenaRank.access$502(localArenaRank, paramAnonymousParcel.readString());
      ArenaRank.access$602(localArenaRank, paramAnonymousParcel.readString());
      ArenaRank.access$702(localArenaRank, paramAnonymousParcel.readString());
      ArenaRank.access$802(localArenaRank, paramAnonymousParcel.readString());
      ArenaRank.access$902(localArenaRank, paramAnonymousParcel.readString());
      ArenaRank.access$1002(localArenaRank, paramAnonymousParcel.readString());
      ArenaRank.access$1102(localArenaRank, paramAnonymousParcel.readString());
      ArenaRank.access$1202(localArenaRank, paramAnonymousParcel.readInt());
      ArenaRank.access$1302(localArenaRank, paramAnonymousParcel.readString());
      ArenaRank.access$1402(localArenaRank, paramAnonymousParcel.readString());
      return localArenaRank;
    }
    
    public final ArenaRank[] newArray(int paramAnonymousInt)
    {
      return new ArenaRank[paramAnonymousInt];
    }
  };
  @Expose
  private String bgColor;
  @Expose
  private String bigBgIcon;
  @Expose
  private String bigIconGray;
  @Expose
  private String bigIconUrl;
  @Expose
  private Date configUpdatedAt;
  @Expose
  private String description;
  @Expose
  private String listName;
  @Expose
  private String listParam;
  @Expose
  private int memberCount;
  @Expose
  private int rank;
  @Expose
  private Date scoreUpdatedAt;
  @Expose
  private String smallBgIcon;
  @Expose
  private String smallIconGray;
  @Expose
  private String smallIconUrl;
  @Expose
  private String subTitle;
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getBgColor()
  {
    return this.bgColor;
  }
  
  public String getBigBgIcon()
  {
    return this.bigBgIcon;
  }
  
  public String getBigIconGray()
  {
    return this.bigIconGray;
  }
  
  public String getBigIconUrl()
  {
    return this.bigIconUrl;
  }
  
  public Date getConfigUpdatedAt()
  {
    return this.configUpdatedAt;
  }
  
  public String getDescription()
  {
    return this.description;
  }
  
  public String getListName()
  {
    return this.listName;
  }
  
  public String getListParam()
  {
    return this.listParam;
  }
  
  public int getMemberCount()
  {
    return this.memberCount;
  }
  
  public int getRank()
  {
    return this.rank;
  }
  
  public Date getScoreUpdatedAt()
  {
    return this.scoreUpdatedAt;
  }
  
  public String getSmallBgIcon()
  {
    return this.smallBgIcon;
  }
  
  public String getSmallIconGray()
  {
    return this.smallIconGray;
  }
  
  public String getSmallIconUrl()
  {
    return this.smallIconUrl;
  }
  
  public String getSubTitle()
  {
    return this.subTitle;
  }
  
  public void setBgColor(String paramString)
  {
    this.bgColor = paramString;
  }
  
  public void setBigBgIcon(String paramString)
  {
    this.bigBgIcon = paramString;
  }
  
  public void setBigIconGray(String paramString)
  {
    this.bigIconGray = paramString;
  }
  
  public void setBigIconUrl(String paramString)
  {
    this.bigIconUrl = paramString;
  }
  
  public void setConfigUpdatedAt(Date paramDate)
  {
    this.configUpdatedAt = paramDate;
  }
  
  public void setDescription(String paramString)
  {
    this.description = paramString;
  }
  
  public void setListName(String paramString)
  {
    this.listName = paramString;
  }
  
  public void setListParam(String paramString)
  {
    this.listParam = paramString;
  }
  
  public void setMemberCount(int paramInt)
  {
    this.memberCount = paramInt;
  }
  
  public void setRank(int paramInt)
  {
    this.rank = paramInt;
  }
  
  public void setScoreUpdatedAt(Date paramDate)
  {
    this.scoreUpdatedAt = paramDate;
  }
  
  public void setSmallBgIcon(String paramString)
  {
    this.smallBgIcon = paramString;
  }
  
  public void setSmallIconGray(String paramString)
  {
    this.smallIconGray = paramString;
  }
  
  public void setSmallIconUrl(String paramString)
  {
    this.smallIconUrl = paramString;
  }
  
  public void setSubTitle(String paramString)
  {
    this.subTitle = paramString;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    long l2 = 0L;
    paramParcel.writeString(this.listName);
    paramParcel.writeString(this.listParam);
    if (this.scoreUpdatedAt != null) {}
    for (long l1 = this.scoreUpdatedAt.getTime();; l1 = 0L)
    {
      paramParcel.writeLong(l1);
      paramParcel.writeInt(this.memberCount);
      l1 = l2;
      if (this.configUpdatedAt != null) {
        l1 = this.configUpdatedAt.getTime();
      }
      paramParcel.writeLong(l1);
      paramParcel.writeString(this.bigIconUrl);
      paramParcel.writeString(this.smallIconUrl);
      paramParcel.writeString(this.bgColor);
      paramParcel.writeString(this.bigBgIcon);
      paramParcel.writeString(this.smallBgIcon);
      paramParcel.writeString(this.subTitle);
      paramParcel.writeString(this.description);
      paramParcel.writeInt(this.rank);
      paramParcel.writeString(this.bigIconGray);
      paramParcel.writeString(this.smallIconGray);
      return;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\cube\model\ArenaRank.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
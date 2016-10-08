package com.xueqiu.android.community.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.gson.annotations.SerializedName;
import com.xueqiu.android.base.util.ab;
import com.xueqiu.android.base.util.v;
import com.xueqiu.android.common.model.IAlphabetSortable;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;

public class User
  implements Parcelable, IAlphabetSortable, Serializable, Comparable<User>
{
  public static final Parcelable.Creator<User> CREATOR = new Parcelable.Creator()
  {
    public final User createFromParcel(Parcel paramAnonymousParcel)
    {
      return new User(paramAnonymousParcel, null);
    }
    
    public final User[] newArray(int paramAnonymousInt)
    {
      return new User[paramAnonymousInt];
    }
  };
  private static final long serialVersionUID = 1L;
  private boolean allowAllActMsg;
  @SerializedName("block_status")
  private int blockStatus = 0;
  private boolean blocking = false;
  private String blogUrl;
  private String city;
  private int commonCount;
  private Date createdAt;
  private int cubeCount;
  private String description;
  private String domain;
  private int favouritesCount;
  private boolean followMe = false;
  private int followersCount;
  private boolean following = false;
  private int friendsCount;
  private User.Gender gender = User.Gender.UNKNOW;
  private boolean geoEnabled;
  private String location;
  private long oAuthUserId = 0L;
  private String pinyinRemark = null;
  private String pinyinScreenName = null;
  private String profileImageUrl;
  private String profileLargeImageUrl;
  private String province;
  private String recExtraMsg = null;
  private ArrayList<Status> recentStatus = null;
  private String recommend;
  private String recommendReason;
  private String remark = null;
  private String screenName;
  private int statusesCount;
  private String step = null;
  private int stockStatusCount;
  private int stocksCount;
  private String telephone = null;
  private String topDisscusStocks = null;
  private int type;
  private long userId;
  private boolean verified;
  private String verifiedDescription;
  @SerializedName("verified_realname")
  private boolean verifiedRealName;
  private boolean verifiedRealname;
  private UserVerifyType verifyType = UserVerifyType.OTHERS;
  
  public User() {}
  
  private User(Parcel paramParcel)
  {
    try
    {
      this.userId = paramParcel.readLong();
      this.type = paramParcel.readInt();
      this.screenName = ab.a(paramParcel);
      this.description = ab.a(paramParcel);
      this.domain = ab.a(paramParcel);
      this.gender = User.Gender.valueOf(ab.a(paramParcel));
      this.province = ab.a(paramParcel);
      this.city = ab.a(paramParcel);
      this.location = ab.a(paramParcel);
      this.blogUrl = ab.a(paramParcel);
      this.profileImageUrl = ab.a(paramParcel);
      this.profileLargeImageUrl = ab.a(paramParcel);
      this.followersCount = paramParcel.readInt();
      this.friendsCount = paramParcel.readInt();
      this.statusesCount = paramParcel.readInt();
      this.stocksCount = paramParcel.readInt();
      this.favouritesCount = paramParcel.readInt();
      this.createdAt = new Date(paramParcel.readLong());
      if (paramParcel.readInt() == 1)
      {
        bool1 = true;
        this.following = bool1;
        if (paramParcel.readInt() != 1) {
          break label425;
        }
        bool1 = true;
        label264:
        this.verified = bool1;
        if (paramParcel.readInt() != 1) {
          break label430;
        }
        bool1 = true;
        label279:
        this.verifiedRealName = bool1;
        this.verifiedDescription = ab.a(paramParcel);
        if (paramParcel.readInt() != 1) {
          break label435;
        }
        bool1 = true;
        label302:
        this.allowAllActMsg = bool1;
        if (paramParcel.readInt() != 1) {
          break label440;
        }
        bool1 = true;
        label317:
        this.geoEnabled = bool1;
        this.recommend = ab.a(paramParcel);
        this.recommendReason = ab.a(paramParcel);
        this.commonCount = paramParcel.readInt();
        this.recExtraMsg = ab.a(paramParcel);
        this.verifyType = UserVerifyType.fromValue(paramParcel.readInt());
        if (paramParcel.readInt() != 1) {
          break label445;
        }
        bool1 = true;
        label375:
        this.followMe = bool1;
        this.remark = ab.a(paramParcel);
        if (paramParcel.readInt() != 1) {
          break label450;
        }
      }
      label425:
      label430:
      label435:
      label440:
      label445:
      label450:
      for (boolean bool1 = bool2;; bool1 = false)
      {
        this.verifiedRealname = bool1;
        this.blockStatus = paramParcel.readInt();
        this.cubeCount = paramParcel.readInt();
        return;
        bool1 = false;
        break;
        bool1 = false;
        break label264;
        bool1 = false;
        break label279;
        bool1 = false;
        break label302;
        bool1 = false;
        break label317;
        bool1 = false;
        break label375;
      }
      return;
    }
    catch (Exception paramParcel)
    {
      v.e("UserTable", paramParcel.getMessage());
    }
  }
  
  public int compareTo(User paramUser)
  {
    if ((getAlphabets() == null) || (getAlphabets().length() == 0)) {
      return -1;
    }
    if ((paramUser.getAlphabets() == null) || (paramUser.getAlphabets().length() == 0)) {
      return 1;
    }
    char[] arrayOfChar = getAlphabets().toCharArray();
    paramUser = paramUser.getAlphabets().toCharArray();
    int i = 0;
    while (i < Math.min(arrayOfChar.length, paramUser.length))
    {
      if (arrayOfChar[i] != paramUser[i]) {
        return arrayOfChar[i] - paramUser[i];
      }
      i += 1;
    }
    return arrayOfChar.length - paramUser.length;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    if ((paramObject == null) || (!(paramObject instanceof User))) {}
    while (this.userId != ((User)paramObject).userId) {
      return false;
    }
    return true;
  }
  
  public String getAlphabets()
  {
    if (this.pinyinScreenName == null) {
      return "a";
    }
    return this.pinyinScreenName;
  }
  
  public int getBlockStatus()
  {
    return this.blockStatus;
  }
  
  public String getBlogUrl()
  {
    return this.blogUrl;
  }
  
  public String getCity()
  {
    return this.city;
  }
  
  public int getCommonCount()
  {
    return this.commonCount;
  }
  
  public Date getCreatedAt()
  {
    return this.createdAt;
  }
  
  public int getCubeCount()
  {
    return this.cubeCount;
  }
  
  public String getDescription()
  {
    return this.description;
  }
  
  public String getDomain()
  {
    return this.domain;
  }
  
  public int getFavouritesCount()
  {
    return this.favouritesCount;
  }
  
  public int getFollowersCount()
  {
    return this.followersCount;
  }
  
  public int getFriendsCount()
  {
    return this.friendsCount;
  }
  
  public User.Gender getGender()
  {
    return this.gender;
  }
  
  public String getLocation()
  {
    return this.location;
  }
  
  public String getPinyinRemark()
  {
    return this.pinyinRemark;
  }
  
  public String getPinyinScreenName()
  {
    return this.pinyinScreenName;
  }
  
  public String getProfileImageUrl()
  {
    if ((this.profileImageUrl != null) && (this.profileImageUrl.contains("community/default/avatar.png"))) {
      return null;
    }
    return this.profileImageUrl;
  }
  
  public String getProfileImageWidth_100()
  {
    if (getProfileImageUrl() != null) {
      return getProfileImageUrl().replace("50x50", "100x100");
    }
    return null;
  }
  
  public String getProfileLargeImageUrl()
  {
    if ((this.profileLargeImageUrl != null) && (this.profileLargeImageUrl.contains("community/default/avatar.png"))) {
      return null;
    }
    return this.profileLargeImageUrl;
  }
  
  public String getProvince()
  {
    return this.province;
  }
  
  public String getRecExtraMsg()
  {
    return this.recExtraMsg;
  }
  
  public ArrayList<Status> getRecentStatus()
  {
    return this.recentStatus;
  }
  
  public String getRecommend()
  {
    return this.recommend;
  }
  
  public String getRecommendReason()
  {
    return this.recommendReason;
  }
  
  public String getRemark()
  {
    return this.remark;
  }
  
  public String getScreenName()
  {
    return this.screenName;
  }
  
  public int getStatusesCount()
  {
    return this.statusesCount;
  }
  
  public String getStep()
  {
    return this.step;
  }
  
  public int getStockStatusCount()
  {
    return this.stockStatusCount;
  }
  
  public int getStocksCount()
  {
    return this.stocksCount;
  }
  
  public String getTelephone()
  {
    return this.telephone;
  }
  
  public String getTopDisscusStocks()
  {
    return this.topDisscusStocks;
  }
  
  public int getType()
  {
    return this.type;
  }
  
  public long getUserId()
  {
    return this.userId;
  }
  
  public String getVerifiedDescription()
  {
    return this.verifiedDescription;
  }
  
  public UserVerifyType getVerifyType()
  {
    return this.verifyType;
  }
  
  public long getoAuthUserId()
  {
    return this.oAuthUserId;
  }
  
  public int hashCode()
  {
    return (int)(this.userId ^ this.userId >>> 32) * 37;
  }
  
  public boolean isAllowAllActMsg()
  {
    return this.allowAllActMsg;
  }
  
  public boolean isBlocking()
  {
    return this.blocking;
  }
  
  public boolean isFemale()
  {
    return User.Gender.FEMALE.equals(this.gender);
  }
  
  public boolean isFollowMe()
  {
    return this.followMe;
  }
  
  public boolean isFollowing()
  {
    return this.following;
  }
  
  public boolean isGeoEnabled()
  {
    return this.geoEnabled;
  }
  
  public boolean isMale()
  {
    return User.Gender.MALE.equals(this.gender);
  }
  
  public boolean isVerified()
  {
    return this.verified;
  }
  
  public boolean isVerifiedRealName()
  {
    return this.verifiedRealName;
  }
  
  public boolean isVerifiedRealname()
  {
    return this.verifiedRealname;
  }
  
  public void setAllowAllActMsg(boolean paramBoolean)
  {
    this.allowAllActMsg = paramBoolean;
  }
  
  public void setBlockStatus(int paramInt)
  {
    this.blockStatus = paramInt;
  }
  
  public void setBlocking(boolean paramBoolean)
  {
    this.blocking = paramBoolean;
  }
  
  public void setBlogUrl(String paramString)
  {
    this.blogUrl = paramString;
  }
  
  public void setCity(String paramString)
  {
    this.city = paramString;
  }
  
  public void setCommonCount(int paramInt)
  {
    this.commonCount = paramInt;
  }
  
  public void setCreatedAt(Date paramDate)
  {
    this.createdAt = paramDate;
  }
  
  public void setCubeCount(int paramInt)
  {
    this.cubeCount = paramInt;
  }
  
  public void setDescription(String paramString)
  {
    this.description = paramString;
  }
  
  public void setDomain(String paramString)
  {
    this.domain = paramString;
  }
  
  public void setFavouritesCount(int paramInt)
  {
    this.favouritesCount = paramInt;
  }
  
  public void setFollowMe(boolean paramBoolean)
  {
    this.followMe = paramBoolean;
  }
  
  public void setFollowersCount(int paramInt)
  {
    this.followersCount = paramInt;
  }
  
  public void setFollowing(boolean paramBoolean)
  {
    this.following = paramBoolean;
  }
  
  public void setFriendsCount(int paramInt)
  {
    this.friendsCount = paramInt;
  }
  
  public void setGender(User.Gender paramGender)
  {
    this.gender = paramGender;
  }
  
  public void setGeoEnabled(boolean paramBoolean)
  {
    this.geoEnabled = paramBoolean;
  }
  
  public void setLocation(String paramString)
  {
    this.location = paramString;
  }
  
  public void setPinyinRemark(String paramString)
  {
    this.pinyinRemark = paramString;
  }
  
  public void setPinyinScreenName(String paramString)
  {
    this.pinyinScreenName = paramString;
  }
  
  public void setProfileImageUrl(String paramString)
  {
    this.profileImageUrl = paramString;
  }
  
  public void setProfileLargeImageUrl(String paramString)
  {
    this.profileLargeImageUrl = paramString;
  }
  
  public void setProvince(String paramString)
  {
    this.province = paramString;
  }
  
  public void setRecExtraMsg(String paramString)
  {
    this.recExtraMsg = paramString;
  }
  
  public void setRecentStatus(ArrayList<Status> paramArrayList)
  {
    this.recentStatus = paramArrayList;
  }
  
  public void setRecommend(String paramString)
  {
    this.recommend = paramString;
  }
  
  public void setRecommendReason(String paramString)
  {
    this.recommendReason = paramString;
  }
  
  public void setRemark(String paramString)
  {
    this.remark = paramString;
  }
  
  public void setScreenName(String paramString)
  {
    this.screenName = paramString;
  }
  
  public void setStatusesCount(int paramInt)
  {
    this.statusesCount = paramInt;
  }
  
  public void setStep(String paramString)
  {
    this.step = paramString;
  }
  
  public void setStockStatusCount(int paramInt)
  {
    this.stockStatusCount = paramInt;
  }
  
  public void setStocksCount(int paramInt)
  {
    this.stocksCount = paramInt;
  }
  
  public void setTelephone(String paramString)
  {
    this.telephone = paramString;
  }
  
  public void setTopDisscusStocks(String paramString)
  {
    this.topDisscusStocks = paramString;
  }
  
  public void setType(int paramInt)
  {
    this.type = paramInt;
  }
  
  public void setUserId(long paramLong)
  {
    this.userId = paramLong;
  }
  
  public void setVerified(boolean paramBoolean)
  {
    this.verified = paramBoolean;
  }
  
  public void setVerifiedDescription(String paramString)
  {
    this.verifiedDescription = paramString;
  }
  
  public void setVerifiedRealName(boolean paramBoolean)
  {
    this.verifiedRealName = paramBoolean;
  }
  
  public void setVerifiedRealname(boolean paramBoolean)
  {
    this.verifiedRealname = paramBoolean;
  }
  
  public void setVerifyType(UserVerifyType paramUserVerifyType)
  {
    this.verifyType = paramUserVerifyType;
  }
  
  public void setoAuthUserId(long paramLong)
  {
    this.oAuthUserId = paramLong;
  }
  
  public String showName()
  {
    return this.screenName;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    int i = 1;
    paramParcel.writeLong(this.userId);
    paramParcel.writeInt(this.type);
    ab.a(paramParcel, this.screenName);
    ab.a(paramParcel, this.description);
    ab.a(paramParcel, this.domain);
    ab.a(paramParcel, this.gender.toString());
    ab.a(paramParcel, this.province);
    ab.a(paramParcel, this.city);
    ab.a(paramParcel, this.location);
    ab.a(paramParcel, this.blogUrl);
    ab.a(paramParcel, this.profileImageUrl);
    ab.a(paramParcel, this.profileLargeImageUrl);
    paramParcel.writeInt(this.followersCount);
    paramParcel.writeInt(this.friendsCount);
    paramParcel.writeInt(this.statusesCount);
    paramParcel.writeInt(this.stocksCount);
    paramParcel.writeInt(this.favouritesCount);
    long l;
    if (this.createdAt == null)
    {
      l = System.currentTimeMillis();
      paramParcel.writeLong(l);
      if (!this.following) {
        break label345;
      }
      paramInt = 1;
      label168:
      paramParcel.writeInt(paramInt);
      if (!this.verified) {
        break label350;
      }
      paramInt = 1;
      label182:
      paramParcel.writeInt(paramInt);
      if (!this.verifiedRealName) {
        break label355;
      }
      paramInt = 1;
      label196:
      paramParcel.writeInt(paramInt);
      ab.a(paramParcel, this.verifiedDescription);
      if (!this.allowAllActMsg) {
        break label360;
      }
      paramInt = 1;
      label218:
      paramParcel.writeInt(paramInt);
      if (!this.geoEnabled) {
        break label365;
      }
      paramInt = 1;
      label232:
      paramParcel.writeInt(paramInt);
      ab.a(paramParcel, this.recommend);
      ab.a(paramParcel, this.recommendReason);
      paramParcel.writeInt(this.commonCount);
      ab.a(paramParcel, this.recExtraMsg);
      paramParcel.writeInt(this.verifyType.getValue());
      if (!this.followMe) {
        break label370;
      }
      paramInt = 1;
      label289:
      paramParcel.writeInt(paramInt);
      ab.a(paramParcel, this.remark);
      if (!this.verifiedRealname) {
        break label375;
      }
    }
    label345:
    label350:
    label355:
    label360:
    label365:
    label370:
    label375:
    for (paramInt = i;; paramInt = 2)
    {
      paramParcel.writeInt(paramInt);
      paramParcel.writeInt(this.blockStatus);
      paramParcel.writeInt(this.cubeCount);
      return;
      l = this.createdAt.getTime();
      break;
      paramInt = 2;
      break label168;
      paramInt = 2;
      break label182;
      paramInt = 2;
      break label196;
      paramInt = 2;
      break label218;
      paramInt = 2;
      break label232;
      paramInt = 2;
      break label289;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\community\model\User.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
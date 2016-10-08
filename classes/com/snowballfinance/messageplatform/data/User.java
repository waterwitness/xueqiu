package com.snowballfinance.messageplatform.data;

import java.io.Serializable;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;

public class User
  implements Serializable
{
  public static final User SYSTEM_USER;
  public static Set<Long> robotIds = new HashSet(Arrays.asList(new Long[] { Long.valueOf(6090343412L), Long.valueOf(8152922548L), Long.valueOf(3255104228L), Long.valueOf(4829391444L), Long.valueOf(1676206424L), Long.valueOf(1777199486L), Long.valueOf(6776464888L), Long.valueOf(5467503050L), Long.valueOf(5665257737L), Long.valueOf(2552920054L), Long.valueOf(4226803442L), Long.valueOf(6666666666L), Long.valueOf(7777777777L), Long.valueOf(8888888888L), Long.valueOf(9999999999L), Long.valueOf(7961123322L), Long.valueOf(5881624230L), Long.valueOf(1747067378L) }));
  private static final long serialVersionUID = -3695321489350163994L;
  private static Set<Long> testUserIds;
  private Integer areaCode;
  private String city;
  private String description;
  private String domain;
  private String email;
  private Integer followersCount;
  private Integer friendsCount;
  private String gender;
  private Long id;
  private String profileImageUrl;
  private String province;
  private String screenName;
  private Integer statusCount;
  private UserType type;
  private Boolean verified;
  private VerifiedType verifiedType;
  
  static
  {
    User localUser = new User();
    SYSTEM_USER = localUser;
    localUser.setScreenName("系统用户");
    SYSTEM_USER.setId(Predef.SYSTEM_USER_ID);
    SYSTEM_USER.setType(UserType.SERVICE_ACCOUNT);
    testUserIds = new HashSet(Arrays.asList(new Long[] { Long.valueOf(9685982492L), Long.valueOf(9955197018L), Long.valueOf(5592687045L), Long.valueOf(3129142094L), Long.valueOf(6170321280L), Long.valueOf(3340940262L), Long.valueOf(9255413612L), Long.valueOf(5958638259L), Long.valueOf(4595363793L), Long.valueOf(1238393246L), Long.valueOf(9220789803L), Long.valueOf(2727355848L), Long.valueOf(1955602780L), Long.valueOf(9273796548L), Long.valueOf(1209223696L), Long.valueOf(8269074944L) }));
  }
  
  public static Set<Long> getTestUserIds()
  {
    return testUserIds;
  }
  
  public static boolean isTestUser(Long paramLong)
  {
    return testUserIds.contains(paramLong);
  }
  
  public static void setTestUserIds(Set<Long> paramSet)
  {
    testUserIds = paramSet;
  }
  
  public Integer getAreaCode()
  {
    return this.areaCode;
  }
  
  public String getCity()
  {
    return this.city;
  }
  
  public String getDescription()
  {
    return this.description;
  }
  
  public String getDomain()
  {
    return this.domain;
  }
  
  public String getEmail()
  {
    return this.email;
  }
  
  public Integer getFollowersCount()
  {
    return this.followersCount;
  }
  
  public Integer getFriendsCount()
  {
    return this.friendsCount;
  }
  
  public String getGender()
  {
    return this.gender;
  }
  
  public Long getId()
  {
    return this.id;
  }
  
  public String getProfileImageUrl()
  {
    return this.profileImageUrl;
  }
  
  public String getProvince()
  {
    return this.province;
  }
  
  public String getScreenName()
  {
    return this.screenName;
  }
  
  public Integer getStatusCount()
  {
    return this.statusCount;
  }
  
  public UserType getType()
  {
    return this.type;
  }
  
  public Boolean getVerified()
  {
    return this.verified;
  }
  
  public VerifiedType getVerifiedType()
  {
    return this.verifiedType;
  }
  
  public void setAreaCode(Integer paramInteger)
  {
    this.areaCode = paramInteger;
  }
  
  public void setCity(String paramString)
  {
    this.city = paramString;
  }
  
  public void setDescription(String paramString)
  {
    this.description = paramString;
  }
  
  public void setDomain(String paramString)
  {
    this.domain = paramString;
  }
  
  public void setEmail(String paramString)
  {
    this.email = paramString;
  }
  
  public void setFollowersCount(Integer paramInteger)
  {
    this.followersCount = paramInteger;
  }
  
  public void setFriendsCount(Integer paramInteger)
  {
    this.friendsCount = paramInteger;
  }
  
  public void setGender(String paramString)
  {
    this.gender = paramString;
  }
  
  public void setId(Long paramLong)
  {
    this.id = paramLong;
  }
  
  public void setProfileImageUrl(String paramString)
  {
    this.profileImageUrl = paramString;
  }
  
  public void setProvince(String paramString)
  {
    this.province = paramString;
  }
  
  public void setScreenName(String paramString)
  {
    this.screenName = paramString;
  }
  
  public void setStatusCount(Integer paramInteger)
  {
    this.statusCount = paramInteger;
  }
  
  public void setType(UserType paramUserType)
  {
    this.type = paramUserType;
  }
  
  public void setVerified(Boolean paramBoolean)
  {
    this.verified = paramBoolean;
  }
  
  public void setVerifiedType(VerifiedType paramVerifiedType)
  {
    this.verifiedType = paramVerifiedType;
  }
  
  public String toString()
  {
    return "User{screenName='" + this.screenName + '\'' + ", type=" + this.type + ", id=" + this.id + ", verifiedType=" + this.verifiedType + '}';
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\snowballfinance\messageplatform\data\User.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
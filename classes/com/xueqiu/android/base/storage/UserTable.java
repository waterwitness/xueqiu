package com.xueqiu.android.base.storage;

import android.content.ContentValues;
import android.database.Cursor;
import android.provider.BaseColumns;
import com.xueqiu.android.community.model.User;
import com.xueqiu.android.community.model.User.Gender;
import com.xueqiu.android.community.model.UserVerifyType;
import java.util.Date;

public final class UserTable
  implements BaseColumns
{
  public static final String ALLOW_ALL_ACT_MSG = "allowAllActMsg";
  public static final String CITY = "city";
  public static final String CREATED_AT = "createdAt";
  public static final String CREATE_TABLE = "CREATE TABLE sn_user (userId INTEGER,type INTEGER,screenName STRING,province STRING,city STRING,location STRING,description TEXT,url STRING,profileImageUrl STRING,domain STRING,gender TEXT,followersCount INTEGER,friendsCount INTEGER,statusesCount INTEGER,favoritesCount INTEGER,createdAt INTEGER,following TINYINT(1) DEFAULT 0,verified TINYINT(1) DEFAULT 0,allowAllActMsg TINYINT(1) DEFAULT 0,geoEnabled TINYINT(1) DEFAULT 0,stocksCount INTEGER,verifiedDescription TEXT,step TEXT,verifyType INTEGER,remark STRING,follow_me TINYINT(1) DEFAULT 0,pinyin_screename TEXT,pinyin_remark TEXT,PRIMARY KEY(userId, screenName))";
  public static final String DESCRIPTION = "description";
  public static final String DOMAIN = "domain";
  public static final String FAVORITES_COUNT = "favoritesCount";
  public static final String FOLLOWERS_COUNT = "followersCount";
  public static final String FOLLOWING = "following";
  public static final String FOLLOW_ME = "follow_me";
  public static final String FRIENDS_COUNT = "friendsCount";
  public static final String GENDER = "gender";
  public static final String GEO_ENABLED = "geoEnabled";
  public static final String LOCATION = "location";
  public static final String PINYIN_REMARK = "pinyin_remark";
  public static final String PINYIN_SCREENAME = "pinyin_screename";
  public static final String PROFILE_IMAGE_URL = "profileImageUrl";
  public static final String PROVINCE = "province";
  public static final String REMARK = "remark";
  public static final String SCREEN_NAME = "screenName";
  public static final String STATUSES_COUNT = "statusesCount";
  public static final String STEP = "step";
  public static final String STOCKS_COUNT = "stocksCount";
  public static final String[] TABLE_COLUMNS = { "userId", "type", "screenName", "province", "city", "location", "description", "url", "profileImageUrl", "domain", "gender", "followersCount", "friendsCount", "statusesCount", "favoritesCount", "createdAt", "following", "verified", "allowAllActMsg", "geoEnabled", "stocksCount", "verifiedDescription", "step", "verifyType", "remark", "follow_me", "pinyin_screename", "pinyin_remark" };
  public static final String TABLE_NAME = "sn_user";
  private static final String TAG = "UserTable";
  public static final String TYPE = "type";
  public static final String URL = "url";
  public static final String USER_ID = "userId";
  public static final String VERIFIED = "verified";
  public static final String VERIFIED_DESCRIPTION = "verifiedDescription";
  public static final String VERIFYTYPE = "verifyType";
  
  public static ContentValues contentValues(User paramUser)
  {
    int j = 1;
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("userId", Long.valueOf(paramUser.getUserId()));
    localContentValues.put("type", Integer.valueOf(paramUser.getType()));
    localContentValues.put("screenName", paramUser.getScreenName());
    localContentValues.put("province", paramUser.getProvince());
    localContentValues.put("city", paramUser.getCity());
    localContentValues.put("location", paramUser.getLocation());
    localContentValues.put("description", paramUser.getDescription());
    localContentValues.put("url", paramUser.getBlogUrl());
    localContentValues.put("profileImageUrl", paramUser.getProfileImageUrl());
    localContentValues.put("domain", paramUser.getDomain());
    localContentValues.put("gender", paramUser.getGender().toString());
    localContentValues.put("followersCount", Integer.valueOf(paramUser.getFollowersCount()));
    localContentValues.put("friendsCount", Integer.valueOf(paramUser.getFriendsCount()));
    localContentValues.put("statusesCount", Integer.valueOf(paramUser.getStatusesCount()));
    localContentValues.put("favoritesCount", Integer.valueOf(paramUser.getFavouritesCount()));
    if (paramUser.getCreatedAt() != null) {
      localContentValues.put("createdAt", Long.valueOf(paramUser.getCreatedAt().getTime()));
    }
    if (paramUser.isFollowing())
    {
      i = 1;
      localContentValues.put("following", Integer.valueOf(i));
      if (!paramUser.isVerified()) {
        break label379;
      }
      i = 1;
      label232:
      localContentValues.put("verified", Integer.valueOf(i));
      if (!paramUser.isAllowAllActMsg()) {
        break label384;
      }
      i = 1;
      label251:
      localContentValues.put("allowAllActMsg", Integer.valueOf(i));
      if (!paramUser.isGeoEnabled()) {
        break label389;
      }
    }
    label379:
    label384:
    label389:
    for (int i = j;; i = 0)
    {
      localContentValues.put("geoEnabled", Integer.valueOf(i));
      localContentValues.put("stocksCount", Integer.valueOf(paramUser.getStocksCount()));
      localContentValues.put("verifiedDescription", paramUser.getVerifiedDescription());
      localContentValues.put("step", paramUser.getStep());
      localContentValues.put("verifyType", Integer.valueOf(paramUser.getVerifyType().getValue()));
      localContentValues.put("remark", paramUser.getRemark());
      localContentValues.put("follow_me", Boolean.valueOf(paramUser.isFollowMe()));
      localContentValues.put("pinyin_screename", paramUser.getPinyinScreenName());
      localContentValues.put("pinyin_remark", paramUser.getPinyinRemark());
      return localContentValues;
      i = 0;
      break;
      i = 0;
      break label232;
      i = 0;
      break label251;
    }
  }
  
  public static User parseCursor(Cursor paramCursor)
  {
    boolean bool2 = false;
    paramCursor.getCount();
    if ((paramCursor == null) || (paramCursor.getCount() == 0)) {
      return null;
    }
    if (-1 == paramCursor.getPosition()) {
      paramCursor.moveToFirst();
    }
    User localUser = new User();
    localUser.setUserId(paramCursor.getLong(paramCursor.getColumnIndex("userId")));
    localUser.setType(paramCursor.getInt(paramCursor.getColumnIndex("type")));
    localUser.setScreenName(paramCursor.getString(paramCursor.getColumnIndex("screenName")));
    localUser.setProvince(paramCursor.getString(paramCursor.getColumnIndex("province")));
    localUser.setCity(paramCursor.getString(paramCursor.getColumnIndex("city")));
    localUser.setLocation(paramCursor.getString(paramCursor.getColumnIndex("location")));
    localUser.setDescription(paramCursor.getString(paramCursor.getColumnIndex("description")));
    localUser.setBlogUrl(paramCursor.getString(paramCursor.getColumnIndex("url")));
    localUser.setProfileImageUrl(paramCursor.getString(paramCursor.getColumnIndex("profileImageUrl")));
    localUser.setDomain(paramCursor.getString(paramCursor.getColumnIndex("domain")));
    localUser.setGender(User.Gender.valueOf(paramCursor.getString(paramCursor.getColumnIndex("gender"))));
    localUser.setFollowersCount(paramCursor.getInt(paramCursor.getColumnIndex("followersCount")));
    localUser.setFriendsCount(paramCursor.getInt(paramCursor.getColumnIndex("friendsCount")));
    localUser.setStatusesCount(paramCursor.getInt(paramCursor.getColumnIndex("statusesCount")));
    localUser.setFavouritesCount(paramCursor.getInt(paramCursor.getColumnIndex("favoritesCount")));
    localUser.setCreatedAt(new Date(paramCursor.getLong(paramCursor.getColumnIndex("createdAt"))));
    if (paramCursor.getInt(paramCursor.getColumnIndex("following")) == 0)
    {
      bool1 = false;
      localUser.setFollowing(bool1);
      if (paramCursor.getInt(paramCursor.getColumnIndex("verified")) != 0) {
        break label603;
      }
      bool1 = false;
      label390:
      localUser.setVerified(bool1);
      if (paramCursor.getInt(paramCursor.getColumnIndex("allowAllActMsg")) != 0) {
        break label608;
      }
      bool1 = false;
      label414:
      localUser.setAllowAllActMsg(bool1);
      if (paramCursor.getInt(paramCursor.getColumnIndex("geoEnabled")) != 0) {
        break label613;
      }
      bool1 = false;
      label438:
      localUser.setGeoEnabled(bool1);
      localUser.setStocksCount(paramCursor.getInt(paramCursor.getColumnIndex("stocksCount")));
      localUser.setVerifiedDescription(paramCursor.getString(paramCursor.getColumnIndex("verifiedDescription")));
      localUser.setStep(paramCursor.getString(paramCursor.getColumnIndex("step")));
      localUser.setVerifyType(UserVerifyType.fromValue(paramCursor.getInt(paramCursor.getColumnIndex("verifyType"))));
      localUser.setRemark(paramCursor.getString(paramCursor.getColumnIndex("remark")));
      if (paramCursor.getInt(paramCursor.getColumnIndex("follow_me")) != 0) {
        break label618;
      }
    }
    label603:
    label608:
    label613:
    label618:
    for (boolean bool1 = bool2;; bool1 = true)
    {
      localUser.setFollowMe(bool1);
      localUser.setPinyinScreenName(paramCursor.getString(paramCursor.getColumnIndex("pinyin_screename")));
      localUser.setPinyinRemark(paramCursor.getString(paramCursor.getColumnIndex("pinyin_remark")));
      return localUser;
      bool1 = true;
      break;
      bool1 = true;
      break label390;
      bool1 = true;
      break label414;
      bool1 = true;
      break label438;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\base\storage\UserTable.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
package com.xueqiu.android.common.model.parser;

import com.xueqiu.android.community.model.User;
import com.xueqiu.android.community.model.User.Gender;
import com.xueqiu.android.community.model.UserVerifyType;
import java.util.Date;
import org.json.JSONObject;

public class UserParser
  extends AbstractParser<User>
{
  public User parse(JSONObject paramJSONObject)
  {
    User localUser = new User();
    if (hasKeyAndValueNotNull(paramJSONObject, "screen_name")) {
      localUser.setScreenName(paramJSONObject.getString("screen_name"));
    }
    if (hasKeyAndValueNotNull(paramJSONObject, "id")) {
      localUser.setUserId(paramJSONObject.getLong("id"));
    }
    if (hasKeyAndValueNotNull(paramJSONObject, "type")) {
      localUser.setType(paramJSONObject.getInt("type"));
    }
    if (hasKeyAndValueNotNull(paramJSONObject, "created_at")) {
      localUser.setCreatedAt(new Date(paramJSONObject.getLong("created_at")));
    }
    if (hasKeyAndValueNotNull(paramJSONObject, "location")) {
      localUser.setLocation(paramJSONObject.getString("location"));
    }
    if (hasKeyAndValueNotNull(paramJSONObject, "description")) {
      localUser.setDescription(paramJSONObject.getString("description"));
    }
    if (hasKeyAndValueNotNull(paramJSONObject, "verified_description")) {
      localUser.setVerifiedDescription(paramJSONObject.getString("verified_description"));
    }
    if (hasKeyAndValueNotNull(paramJSONObject, "url")) {
      localUser.setBlogUrl(paramJSONObject.getString("url"));
    }
    String str1;
    String[] arrayOfString;
    if (hasKeyAndValueNotNull(paramJSONObject, "profile_image_url"))
    {
      str1 = "";
      if (hasKeyAndValueNotNull(paramJSONObject, "photo_domain")) {
        str1 = paramJSONObject.getString("photo_domain");
      }
      arrayOfString = paramJSONObject.getString("profile_image_url").split(",");
      if (arrayOfString.length == 1)
      {
        localUser.setProfileImageUrl(String.format("%s%s!50x50.png", new Object[] { str1, arrayOfString[0] }));
        localUser.setProfileLargeImageUrl(String.format("%s%s!180x180.png", new Object[] { str1, arrayOfString[0] }));
      }
    }
    else
    {
      if (hasKeyAndValueNotNull(paramJSONObject, "verified_realname")) {
        localUser.setVerifiedRealName(paramJSONObject.getBoolean("verified_realname"));
      }
      if (hasKeyAndValueNotNull(paramJSONObject, "domain")) {
        localUser.setDomain(paramJSONObject.getString("domain"));
      }
      if (hasKeyAndValueNotNull(paramJSONObject, "gender"))
      {
        str1 = paramJSONObject.getString("gender");
        if (!str1.equals("m")) {
          break label1057;
        }
        localUser.setGender(User.Gender.MALE);
      }
    }
    for (;;)
    {
      if (hasKeyAndValueNotNull(paramJSONObject, "followers_count")) {
        localUser.setFollowersCount(paramJSONObject.getInt("followers_count"));
      }
      if (hasKeyAndValueNotNull(paramJSONObject, "friends_count")) {
        localUser.setFriendsCount(paramJSONObject.getInt("friends_count"));
      }
      if (hasKeyAndValueNotNull(paramJSONObject, "status_count")) {
        localUser.setStatusesCount(paramJSONObject.getInt("status_count"));
      }
      if (hasKeyAndValueNotNull(paramJSONObject, "favourites_count")) {
        localUser.setFavouritesCount(paramJSONObject.getInt("favourites_count"));
      }
      if (hasKeyAndValueNotNull(paramJSONObject, "stocks_count")) {
        localUser.setStocksCount(paramJSONObject.getInt("stocks_count"));
      }
      if (hasKeyAndValueNotNull(paramJSONObject, "cube_count")) {
        localUser.setCubeCount(paramJSONObject.getInt("cube_count"));
      }
      if (hasKeyAndValueNotNull(paramJSONObject, "following")) {
        localUser.setFollowing(paramJSONObject.getBoolean("following"));
      }
      if (hasKeyAndValueNotNull(paramJSONObject, "verified")) {
        localUser.setVerified(paramJSONObject.getBoolean("verified"));
      }
      if (hasKeyAndValueNotNull(paramJSONObject, "verified_type")) {
        localUser.setVerifyType(UserVerifyType.fromValue(paramJSONObject.getInt("verified_type")));
      }
      if (hasKeyAndValueNotNull(paramJSONObject, "allow_all_act_msg")) {
        localUser.setAllowAllActMsg(paramJSONObject.getBoolean("allow_all_act_msg"));
      }
      if (hasKeyAndValueNotNull(paramJSONObject, "geo_enabled")) {
        localUser.setGeoEnabled(paramJSONObject.getBoolean("geo_enabled"));
      }
      if (hasKeyAndValueNotNull(paramJSONObject, "province")) {
        localUser.setProvince(paramJSONObject.getString("province"));
      }
      if (hasKeyAndValueNotNull(paramJSONObject, "city")) {
        localUser.setCity(paramJSONObject.getString("city"));
      }
      if (hasKeyAndValueNotNull(paramJSONObject, "step")) {
        localUser.setStep(paramJSONObject.getString("step"));
      }
      if (hasKeyAndValueNotNull(paramJSONObject, "recommend")) {
        localUser.setRecommend(paramJSONObject.getString("recommend"));
      }
      if (hasKeyAndValueNotNull(paramJSONObject, "recommend_reason")) {
        localUser.setRecommendReason(paramJSONObject.getString("recommend_reason"));
      }
      if (hasKeyAndValueNotNull(paramJSONObject, "common_count")) {
        localUser.setCommonCount(paramJSONObject.getInt("common_count"));
      }
      if (hasKeyAndValueNotNull(paramJSONObject, "rec_extra_msg")) {
        localUser.setRecExtraMsg(paramJSONObject.getString("rec_extra_msg"));
      }
      if (hasKeyAndValueNotNull(paramJSONObject, "stock_status_count")) {
        localUser.setStockStatusCount(paramJSONObject.getInt("stock_status_count"));
      }
      if (hasKeyAndValueNotNull(paramJSONObject, "blocking")) {
        localUser.setBlocking(paramJSONObject.getBoolean("blocking"));
      }
      if (hasKeyAndValueNotNull(paramJSONObject, "block_status")) {
        localUser.setBlockStatus(paramJSONObject.getInt("block_status"));
      }
      if (hasKeyAndValueNotNull(paramJSONObject, "follow_me")) {
        localUser.setFollowMe(paramJSONObject.getBoolean("follow_me"));
      }
      if (hasKeyAndValueNotNull(paramJSONObject, "remark")) {
        localUser.setRemark(paramJSONObject.getString("remark"));
      }
      if (hasKeyAndValueNotNull(paramJSONObject, "screenname_pinyin")) {
        localUser.setPinyinScreenName(paramJSONObject.getString("screenname_pinyin"));
      }
      if (hasKeyAndValueNotNull(paramJSONObject, "name_pinyin")) {
        localUser.setPinyinRemark(paramJSONObject.getString("name_pinyin"));
      }
      if (hasKeyAndValueNotNull(paramJSONObject, "telephone")) {
        localUser.setTelephone(paramJSONObject.getString("telephone"));
      }
      if (hasKeyAndValueNotNull(paramJSONObject, "openid")) {
        localUser.setoAuthUserId(Long.parseLong(paramJSONObject.getString("openid")));
      }
      if (hasKeyAndValueNotNull(paramJSONObject, "verified_realname")) {
        localUser.setVerifiedRealname(paramJSONObject.getBoolean("verified_realname"));
      }
      return localUser;
      if (arrayOfString.length <= 0) {
        break;
      }
      int j = arrayOfString.length;
      int i = 0;
      label942:
      String str3;
      String str2;
      if (i < j)
      {
        str3 = arrayOfString[i];
        if (!str3.matches("(?:ftp://|https://|http://|www\\.)[a-zA-Z0-9?%&=#./_!+:\\-\\[\\]~,@;\\*]*\\.[a-zA-Z0-9?%&=#./_!+:\\-\\[\\]~,@;\\*]*?")) {
          break label1014;
        }
        str2 = "";
        label970:
        if (!str3.contains("50x50")) {
          break label1019;
        }
        localUser.setProfileImageUrl(str2 + str3);
      }
      for (;;)
      {
        i += 1;
        break label942;
        break;
        label1014:
        str2 = str1;
        break label970;
        label1019:
        if (str3.contains("180x180")) {
          localUser.setProfileLargeImageUrl(str2 + str3);
        }
      }
      label1057:
      if (str1.equals("f")) {
        localUser.setGender(User.Gender.FEMALE);
      } else {
        localUser.setGender(User.Gender.UNKNOW);
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\model\parser\UserParser.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
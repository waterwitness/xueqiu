package com.xueqiu.android.base.storage;

import android.content.ContentValues;
import android.database.Cursor;
import android.provider.BaseColumns;
import android.text.TextUtils;
import com.google.gson.Gson;
import com.xueqiu.android.base.util.m;
import com.xueqiu.android.base.util.v;
import com.xueqiu.android.community.model.Card;
import com.xueqiu.android.community.model.Status;
import com.xueqiu.android.community.model.User;
import java.util.Date;

public final class StatusTable
  implements BaseColumns
{
  public static final String ANDTHUMB_PIC = "andthumb_pic";
  public static final String BMIDDLE_PIC = "bmiddle_pic";
  public static final String COMMENTS_COUNT = "comments_count";
  public static final String CREATED_AT = "created_at";
  public static final String CREATE_TABLE = "CREATE TABLE sn_status(status_id INTEGER,created_at INTEGER,text TEXT,source STRING,target STRING,source_url STRING,favorited TINYINT(1) DEFAULT 0,truncated TINYINT(1) DEFAULT 0,latitude FLOAT,longitude FLOAT,in_reply_to_status_id INTEGER,in_reply_to_user_id INTEGER,in_reply_to_screen_name STRING,thumbnail_pic STRING,bmiddle_pic STRING,original_pic STRING,user_screen_name STRING,comments_count INTEGER,retweets_count INTEGER,retweeted_status_id INTEGER,has_reply TINYINT(1) DEFAULT 0,description TEXT,title STRING,type TINYINT(1) DEFAULT 0,andthumb_pic STRING,user_id INTEGER,topic_title STRING,topic_desc STRING,topic_pic STRING,topic_pic_head STRING,reward_count INTEGER,reward_snowcoin INTEGER,status_card STRING,PRIMARY KEY(status_id, type))";
  public static final String DESCRIPTION = "description";
  public static final String FAVORITED = "favorited";
  public static final String HAS_REPLY = "has_reply";
  public static final String IN_REPLY_TO_SCREEN_NAME = "in_reply_to_screen_name";
  public static final String IN_REPLY_TO_STATUS_ID = "in_reply_to_status_id";
  public static final String IN_REPLY_TO_USER_ID = "in_reply_to_user_id";
  public static final String LATITUDE = "latitude";
  public static final String LONGITUDE = "longitude";
  public static final String ORIGINAL_PIC = "original_pic";
  public static final String RETWEETED_STATUS_ID = "retweeted_status_id";
  public static final String RETWEETS_COUNT = "retweets_count";
  public static final String REWARD_COUNT = "reward_count";
  public static final String REWARD_SNOWCOIN = "reward_snowcoin";
  public static final String SOURCE = "source";
  public static final String SOURCE_URL = "source_url";
  public static final String STATUS_CARD = "status_card";
  public static final String STATUS_ID = "status_id";
  public static final int STATUS_TYPE_ALL = 1;
  public static final int STATUS_TYPE_DISCUSS = 2;
  public static final int STATUS_TYPE_FAVORITE = 7;
  public static final int STATUS_TYPE_FINANCICAL_MANAGEMENT = 12;
  public static final int STATUS_TYPE_METTION_ME = 5;
  public static final int STATUS_TYPE_NEWS = 3;
  public static final int STATUS_TYPE_NOTICE = 4;
  public static final int STATUS_TYPE_REPORT = 13;
  public static final int STATUS_TYPE_TOPIC_ALL = 8;
  public static final int STATUS_TYPE_TOPIC_HK = 11;
  public static final int STATUS_TYPE_TOPIC_HS = 9;
  public static final int STATUS_TYPE_TOPIC_US = 10;
  public static final int STATUS_TYPE_TRADE = 6;
  public static final String[] TABLE_COLUMNS = { "status_id", "created_at", "text", "source", "target", "source_url", "favorited", "truncated", "latitude", "longitude", "in_reply_to_status_id", "in_reply_to_user_id", "in_reply_to_screen_name", "thumbnail_pic", "bmiddle_pic", "original_pic", "user_screen_name", "comments_count", "retweets_count", "retweeted_status_id", "has_reply", "description", "title", "andthumb_pic", "user_id", "topic_title", "topic_desc", "topic_pic", "topic_pic_head", "reward_count", "reward_snowcoin", "status_card" };
  public static final String TABLE_NAME = "sn_status";
  private static final String TAG = "StatusTable";
  public static final String TARGET = "target";
  public static final String TEXT = "text";
  public static final String THUMBNAIL_PIC = "thumbnail_pic";
  public static final String TITLE = "title";
  public static final String TOPIC_DESC = "topic_desc";
  public static final String TOPIC_PIC = "topic_pic";
  public static final String TOPIC_PIC_HEAD = "topic_pic_head";
  public static final String TOPIC_TITLE = "topic_title";
  public static final String TRUNCATED = "truncated";
  public static final String TYPE = "type";
  public static final String USER_ID = "user_id";
  public static final String USER_SCREEN_NAME = "user_screen_name";
  
  public static ContentValues contentValues(Status paramStatus)
  {
    int j = 1;
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("status_id", Long.valueOf(paramStatus.getStatusId()));
    localContentValues.put("created_at", Long.valueOf(paramStatus.getCreatedAt().getTime()));
    localContentValues.put("text", paramStatus.getText());
    localContentValues.put("source", paramStatus.getSource());
    localContentValues.put("target", paramStatus.getTarget());
    localContentValues.put("source_url", paramStatus.getSourceUrl());
    int i;
    if (paramStatus.isFavorited())
    {
      i = 1;
      localContentValues.put("favorited", Integer.valueOf(i));
      if (!paramStatus.isTruncated()) {
        break label397;
      }
      i = j;
      label107:
      localContentValues.put("truncated", Integer.valueOf(i));
      localContentValues.put("in_reply_to_status_id", Long.valueOf(paramStatus.getInReplyToStatusId()));
      localContentValues.put("in_reply_to_user_id", Long.valueOf(paramStatus.getInReplyToUserId()));
      localContentValues.put("in_reply_to_screen_name", paramStatus.getInReplyToScreenName());
      localContentValues.put("thumbnail_pic", paramStatus.getThumbnailPic());
      localContentValues.put("bmiddle_pic", paramStatus.getBmiddlePic());
      localContentValues.put("original_pic", paramStatus.getOriginalPic());
      localContentValues.put("user_screen_name", paramStatus.getUser().getScreenName());
      localContentValues.put("comments_count", Integer.valueOf(paramStatus.getCommentsCount()));
      localContentValues.put("retweets_count", Integer.valueOf(paramStatus.getRetweetsCount()));
      if (paramStatus.getRetweetedStatus() == null) {
        break label402;
      }
      localContentValues.put("retweeted_status_id", Long.valueOf(paramStatus.getRetweetedStatus().getStatusId()));
    }
    for (;;)
    {
      localContentValues.put("has_reply", Boolean.valueOf(paramStatus.isHasReply()));
      localContentValues.put("description", paramStatus.getDescription());
      localContentValues.put("title", paramStatus.getTitle());
      localContentValues.put("andthumb_pic", paramStatus.getAndthumbPic());
      localContentValues.put("user_id", Long.valueOf(paramStatus.getUserId()));
      localContentValues.put("topic_title", paramStatus.getTopicTitle());
      localContentValues.put("topic_desc", paramStatus.getTopicDesc());
      localContentValues.put("topic_pic", paramStatus.getTopicPicThumbnail());
      localContentValues.put("topic_pic_head", paramStatus.getTopicPicHead());
      localContentValues.put("reward_count", Integer.valueOf(paramStatus.getDonateCount()));
      localContentValues.put("reward_snowcoin", Integer.valueOf(paramStatus.getDonateSnowCoin()));
      if (paramStatus.card != null) {
        localContentValues.put("status_card", m.a().toJson(paramStatus.card));
      }
      return localContentValues;
      i = 0;
      break;
      label397:
      i = 0;
      break label107;
      label402:
      localContentValues.put("retweeted_status_id", Integer.valueOf(0));
    }
  }
  
  public static Status parseCursor(Cursor paramCursor)
  {
    boolean bool2 = false;
    if ((paramCursor == null) || (paramCursor.getCount() == 0))
    {
      v.d("StatusTable", "Cann't parse Cursor, bacause cursor is null or empty.");
      return null;
    }
    if (-1 == paramCursor.getPosition()) {
      paramCursor.moveToFirst();
    }
    Status localStatus = new Status();
    localStatus.setStatusId(paramCursor.getLong(paramCursor.getColumnIndex("status_id")));
    localStatus.setCreatedAt(new Date(paramCursor.getLong(paramCursor.getColumnIndex("created_at"))));
    localStatus.setText(paramCursor.getString(paramCursor.getColumnIndex("text")));
    localStatus.setSource(paramCursor.getString(paramCursor.getColumnIndex("source")));
    localStatus.setTarget(paramCursor.getString(paramCursor.getColumnIndex("target")));
    localStatus.setSourceUrl(paramCursor.getString(paramCursor.getColumnIndex("source_url")));
    if (paramCursor.getInt(paramCursor.getColumnIndex("favorited")) == 0)
    {
      bool1 = false;
      localStatus.setFavorited(bool1);
      if (paramCursor.getInt(paramCursor.getColumnIndex("truncated")) != 0) {
        break label590;
      }
      bool1 = false;
      label208:
      localStatus.setTruncated(bool1);
      localStatus.setInReplyToStatusId(paramCursor.getLong(paramCursor.getColumnIndex("in_reply_to_status_id")));
      localStatus.setInReplyToUserId(paramCursor.getLong(paramCursor.getColumnIndex("in_reply_to_user_id")));
      localStatus.setInReplyToScreenName(paramCursor.getString(paramCursor.getColumnIndex("in_reply_to_screen_name")));
      localStatus.setThumbnailPic(paramCursor.getString(paramCursor.getColumnIndex("thumbnail_pic")));
      localStatus.setScreenName(paramCursor.getString(paramCursor.getColumnIndex("user_screen_name")));
      localStatus.setCommentsCount(paramCursor.getInt(paramCursor.getColumnIndex("comments_count")));
      localStatus.setRetweetsCount(paramCursor.getInt(paramCursor.getColumnIndex("retweets_count")));
      localStatus.setReTweetStatusId(paramCursor.getInt(paramCursor.getColumnIndex("retweeted_status_id")));
      if (paramCursor.getInt(paramCursor.getColumnIndex("has_reply")) != 0) {
        break label595;
      }
    }
    label590:
    label595:
    for (boolean bool1 = bool2;; bool1 = true)
    {
      localStatus.setHasReply(bool1);
      localStatus.setDescription(paramCursor.getString(paramCursor.getColumnIndex("description")));
      localStatus.setTitle(paramCursor.getString(paramCursor.getColumnIndex("title")));
      localStatus.setUserId(paramCursor.getLong(paramCursor.getColumnIndex("user_id")));
      localStatus.setTopicTitle(paramCursor.getString(paramCursor.getColumnIndex("topic_title")));
      localStatus.setTopicDesc(paramCursor.getString(paramCursor.getColumnIndex("topic_desc")));
      localStatus.setTopicPicThumbnail(paramCursor.getString(paramCursor.getColumnIndex("topic_pic")));
      localStatus.setTopicPicHead(paramCursor.getString(paramCursor.getColumnIndex("topic_pic_head")));
      localStatus.setDonateCount(paramCursor.getInt(paramCursor.getColumnIndex("reward_count")));
      localStatus.setDonateSnowCoin(paramCursor.getInt(paramCursor.getColumnIndex("reward_snowcoin")));
      paramCursor = paramCursor.getString(paramCursor.getColumnIndex("status_card"));
      if (!TextUtils.isEmpty(paramCursor)) {
        localStatus.card = ((Card)m.a().fromJson(paramCursor, Card.class));
      }
      return localStatus;
      bool1 = true;
      break;
      bool1 = true;
      break label208;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\base\storage\StatusTable.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
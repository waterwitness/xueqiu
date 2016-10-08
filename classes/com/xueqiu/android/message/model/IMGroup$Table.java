package com.xueqiu.android.message.model;

import android.content.ContentValues;
import android.database.Cursor;
import android.provider.BaseColumns;
import java.util.Date;

public class IMGroup$Table
  implements BaseColumns
{
  public static final String ALLOW_INVITE_USER = "allow_invite_user";
  public static final String COUNT = "count";
  public static final String CREATED_AT = "createdAt";
  public static final String CREATE_TABLE = "CREATE TABLE sn_organize (id INTEGER,name STRING,description TEXT,profileImageUrl STRING,count INTEGER,limit_count INTEGER,masterId INTEGER,pub TINYINT(1) DEFAULT 0,truncated TINYINT(1) DEFAULT 0,joined TINYINT(1) DEFAULT 0,empty_name TINYINT(1) DEFAULT 0,allow_invite_user TINYINT(1) DEFAULT 0,createdAt INTEGER,PRIMARY KEY(id))";
  public static final String DESCRIPTION = "description";
  public static final String EMPTY_NAME = "empty_name";
  public static final String ID = "id";
  public static final String JOINED = "joined";
  public static final String LIMIT_COUNT = "limit_count";
  public static final String MASTER_ID = "masterId";
  public static final String NAME = "name";
  public static final String PROFILE_IMAGE_URL = "profileImageUrl";
  public static final String PUB = "pub";
  public static final String[] TABLE_COLUMNS = { "id", "name", "description", "profileImageUrl", "count", "masterId", "pub", "truncated", "joined", "empty_name", "limit_count", "allow_invite_user", "createdAt" };
  public static final String TABLE_NAME = "sn_organize";
  private static final String TAG = "IMGroupTable";
  public static final String TRUNCATED = "truncated";
  
  public static ContentValues contentValues(IMGroup paramIMGroup)
  {
    int j = 1;
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("id", Long.valueOf(paramIMGroup.getId()));
    localContentValues.put("name", paramIMGroup.getName());
    localContentValues.put("description", paramIMGroup.getDescription());
    localContentValues.put("profileImageUrl", paramIMGroup.getProfileImageUrl());
    localContentValues.put("count", Integer.valueOf(paramIMGroup.getCount()));
    localContentValues.put("masterId", Long.valueOf(paramIMGroup.getMasterId()));
    if (paramIMGroup.isPub())
    {
      i = 1;
      localContentValues.put("pub", Integer.valueOf(i));
      if (!paramIMGroup.isTruncated()) {
        break label217;
      }
      i = 1;
      label107:
      localContentValues.put("truncated", Integer.valueOf(i));
      if (!paramIMGroup.isJoined()) {
        break label222;
      }
      i = 1;
      label126:
      localContentValues.put("joined", Integer.valueOf(i));
      if (!paramIMGroup.isEmptyName()) {
        break label227;
      }
      i = 1;
      label145:
      localContentValues.put("empty_name", Integer.valueOf(i));
      localContentValues.put("limit_count", Integer.valueOf(paramIMGroup.getLimitCount()));
      if (!paramIMGroup.isAllowInviteUser()) {
        break label232;
      }
    }
    label217:
    label222:
    label227:
    label232:
    for (int i = j;; i = 0)
    {
      localContentValues.put("allow_invite_user", Integer.valueOf(i));
      if (paramIMGroup.getCreatedAt() != null) {
        localContentValues.put("createdAt", Long.valueOf(paramIMGroup.getCreatedAt().getTime()));
      }
      return localContentValues;
      i = 0;
      break;
      i = 0;
      break label107;
      i = 0;
      break label126;
      i = 0;
      break label145;
    }
  }
  
  public static IMGroup parseCursor(Cursor paramCursor)
  {
    boolean bool2 = true;
    if ((paramCursor == null) || (paramCursor.getCount() == 0)) {
      return null;
    }
    if (-1 == paramCursor.getPosition()) {
      paramCursor.moveToFirst();
    }
    IMGroup localIMGroup = new IMGroup();
    localIMGroup.setId(paramCursor.getLong(paramCursor.getColumnIndex("id")));
    localIMGroup.setName(paramCursor.getString(paramCursor.getColumnIndex("name")));
    localIMGroup.setDescription(paramCursor.getString(paramCursor.getColumnIndex("description")));
    localIMGroup.setProfileImageUrl(paramCursor.getString(paramCursor.getColumnIndex("profileImageUrl")));
    localIMGroup.setCount(paramCursor.getInt(paramCursor.getColumnIndex("count")));
    localIMGroup.setMasterId(paramCursor.getLong(paramCursor.getColumnIndex("masterId")));
    if (paramCursor.getInt(paramCursor.getColumnIndex("pub")) != 0)
    {
      bool1 = true;
      localIMGroup.setPub(bool1);
      if (paramCursor.getInt(paramCursor.getColumnIndex("truncated")) == 0) {
        break label320;
      }
      bool1 = true;
      label193:
      localIMGroup.setTruncated(bool1);
      if (paramCursor.getInt(paramCursor.getColumnIndex("joined")) == 0) {
        break label325;
      }
      bool1 = true;
      label217:
      localIMGroup.setJoined(bool1);
      if (paramCursor.getInt(paramCursor.getColumnIndex("empty_name")) == 0) {
        break label330;
      }
      bool1 = true;
      label241:
      localIMGroup.setEmptyName(bool1);
      localIMGroup.setLimitCount(paramCursor.getInt(paramCursor.getColumnIndex("limit_count")));
      if (paramCursor.getInt(paramCursor.getColumnIndex("allow_invite_user")) == 0) {
        break label335;
      }
    }
    label320:
    label325:
    label330:
    label335:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      localIMGroup.setAllowInviteUser(bool1);
      localIMGroup.setCreatedAt(new Date(paramCursor.getLong(paramCursor.getColumnIndex("createdAt"))));
      return localIMGroup;
      bool1 = false;
      break;
      bool1 = false;
      break label193;
      bool1 = false;
      break label217;
      bool1 = false;
      break label241;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\message\model\IMGroup$Table.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
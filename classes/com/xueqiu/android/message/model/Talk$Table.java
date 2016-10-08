package com.xueqiu.android.message.model;

import android.content.ContentValues;
import android.database.Cursor;
import android.provider.BaseColumns;
import java.util.Date;

public class Talk$Table
  implements BaseColumns
{
  public static final String ACTIVE = "active";
  public static final String COLLAPSED = "collapsed";
  public static final String CREATE_TABLE = "CREATE TABLE im_talk (ID INTEGER,TOP TINYINT(1) DEFAULT 0,NOTIFY TINYINT(1) DEFAULT 0,UNREAD INTEGER DEFAULT 0,summary TEXT,is_group TINYINT(1) DEFAULT 0,last_time INTEGER DEFAULT 0,target_read_at INTEGER DEFAULT 0,read_at INTEGER DEFAULT 0,active TINYINT(1) DEFAULT 1,collapsed TINYINT(1) DEFAULT 0,status TINYINT(1) DEFAULT 0,PRIMARY KEY(ID, is_group));" + String.format("CREATE INDEX `idx_talk_last_time` ON `%s` (`%s` DESC);", new Object[] { "im_talk", "last_time" });
  public static final String ID = "ID";
  public static final String IS_GROUP = "is_group";
  public static final String LAST_TIME = "last_time";
  public static final String NOTIFY = "NOTIFY";
  public static final String READ_AT = "read_at";
  public static final String STATUS = "status";
  public static final String SUMMARY = "summary";
  public static final String[] TABLE_COLUMNS = { "ID", "TOP", "NOTIFY", "UNREAD", "summary", "is_group", "last_time", "target_read_at", "read_at", "active", "collapsed", "status" };
  public static final String TABLE_NAME = "im_talk";
  private static final String TAG = "Talk.Table";
  public static final String TARGET_READ_AT = "target_read_at";
  public static final String TOP = "TOP";
  public static final String UNREAD = "UNREAD";
  
  public static ContentValues contentValues(Talk paramTalk)
  {
    int j = 1;
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("ID", Long.valueOf(paramTalk.getId()));
    label51:
    label93:
    long l;
    if (Talk.access$000(paramTalk))
    {
      i = 1;
      localContentValues.put("TOP", Integer.valueOf(i));
      if (!paramTalk.isNotify()) {
        break label228;
      }
      i = 1;
      localContentValues.put("NOTIFY", Integer.valueOf(i));
      localContentValues.put("UNREAD", Integer.valueOf(paramTalk.getUnread()));
      localContentValues.put("summary", paramTalk.getSummary());
      if (!paramTalk.isGroup()) {
        break label233;
      }
      i = 1;
      localContentValues.put("is_group", Integer.valueOf(i));
      if (paramTalk.getLastTime() != null) {
        break label238;
      }
      l = 0L;
      label113:
      localContentValues.put("last_time", Long.valueOf(l));
      if (paramTalk.getTargetReadAt() == null) {
        break label250;
      }
      localContentValues.put("target_read_at", Long.valueOf(paramTalk.getTargetReadAt().getTime()));
      label147:
      if (paramTalk.getReadAt() == null) {
        break label265;
      }
      localContentValues.put("read_at", Long.valueOf(paramTalk.getReadAt().getTime()));
      label170:
      if (!paramTalk.isActive()) {
        break label280;
      }
      i = 1;
      label179:
      localContentValues.put("active", Integer.valueOf(i));
      if (!paramTalk.isCollapsed()) {
        break label285;
      }
    }
    label228:
    label233:
    label238:
    label250:
    label265:
    label280:
    label285:
    for (int i = j;; i = 0)
    {
      localContentValues.put("collapsed", Integer.valueOf(i));
      localContentValues.put("status", Integer.valueOf(paramTalk.getStatus()));
      return localContentValues;
      i = 0;
      break;
      i = 0;
      break label51;
      i = 0;
      break label93;
      l = paramTalk.getLastTime().getTime();
      break label113;
      localContentValues.put("target_read_at", localContentValues.getAsLong("last_time"));
      break label147;
      localContentValues.put("read_at", localContentValues.getAsLong("last_time"));
      break label170;
      i = 0;
      break label179;
    }
  }
  
  public static Talk parseCursor(Cursor paramCursor)
  {
    boolean bool2 = true;
    if ((paramCursor == null) || (paramCursor.getCount() == 0)) {
      return null;
    }
    if (-1 == paramCursor.getPosition()) {
      paramCursor.moveToFirst();
    }
    Talk localTalk = new Talk();
    localTalk.setId(paramCursor.getLong(paramCursor.getColumnIndex("ID")));
    if (paramCursor.getInt(paramCursor.getColumnIndex("TOP")) == 1)
    {
      bool1 = true;
      localTalk.setTop(bool1);
      if (paramCursor.getInt(paramCursor.getColumnIndex("NOTIFY")) != 1) {
        break label322;
      }
      bool1 = true;
      label105:
      localTalk.setNotify(bool1);
      localTalk.setUnread(paramCursor.getInt(paramCursor.getColumnIndex("UNREAD")));
      localTalk.setSummary(paramCursor.getString(paramCursor.getColumnIndex("summary")));
      if (paramCursor.getInt(paramCursor.getColumnIndex("is_group")) != 1) {
        break label327;
      }
      bool1 = true;
      label167:
      localTalk.setGroup(bool1);
      localTalk.setTargetReadAt(new Date(paramCursor.getLong(paramCursor.getColumnIndex("target_read_at"))));
      localTalk.setReadAt(new Date(paramCursor.getLong(paramCursor.getColumnIndex("read_at"))));
      localTalk.setLastTime(new Date(paramCursor.getLong(paramCursor.getColumnIndex("last_time"))));
      if (paramCursor.getInt(paramCursor.getColumnIndex("active")) != 1) {
        break label332;
      }
      bool1 = true;
      label267:
      localTalk.setActive(bool1);
      if (paramCursor.getInt(paramCursor.getColumnIndex("collapsed")) != 1) {
        break label337;
      }
    }
    label322:
    label327:
    label332:
    label337:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      localTalk.setCollapsed(bool1);
      localTalk.setStatus(paramCursor.getInt(paramCursor.getColumnIndex("status")));
      return localTalk;
      bool1 = false;
      break;
      bool1 = false;
      break label105;
      bool1 = false;
      break label167;
      bool1 = false;
      break label267;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\message\model\Talk$Table.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
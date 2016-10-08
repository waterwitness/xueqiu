package com.xueqiu.android.message.model;

import android.content.ContentValues;
import android.database.Cursor;
import android.provider.BaseColumns;
import java.util.Date;

public class Message$Table
  implements BaseColumns
{
  public static final String CREATED_AT = "created_at";
  public static final String CREATE_TABLE = "CREATE TABLE im_message(id INTEGER,sequence INTEGER, type INTEGER,status INTEGER,text TEXT,summary TEXT,from_id INTEGER,to_id INTEGER,is_to_group TINYINT(1) DEFAULT 0,is_from_group TINYINT(1) DEFAULT 0,created_at INTEGER, PRIMARY KEY(id, sequence));" + String.format("CREATE INDEX `idx_message_from_to_ts` ON `%s` (`%s`, `%s`, `%s` DESC);", new Object[] { "im_message", "from_id", "to_id", "created_at" });
  public static final String FROM_ID = "from_id";
  public static final String ID = "id";
  public static final String IS_FROM_GROUP = "is_from_group";
  public static final String IS_TO_GROUP = "is_to_group";
  public static final String SEQUENCE = "sequence";
  public static final String STATUS = "status";
  public static final String SUMMARY = "summary";
  public static final String[] TABLE_COLUMNS = { "id", "sequence", "type", "status", "text", "summary", "from_id", "to_id", "is_to_group", "is_from_group", "created_at" };
  public static final String TABLE_NAME = "im_message";
  public static final String TEXT = "text";
  public static final String TO_ID = "to_id";
  public static final String TYPE = "type";
  
  public static ContentValues contentValues(Message paramMessage)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("id", Long.valueOf(paramMessage.getId()));
    localContentValues.put("sequence", Long.valueOf(paramMessage.getSequence()));
    localContentValues.put("type", Integer.valueOf(paramMessage.getType()));
    localContentValues.put("status", Integer.valueOf(paramMessage.getStatus()));
    localContentValues.put("text", paramMessage.getText());
    localContentValues.put("summary", paramMessage.getSummary());
    localContentValues.put("from_id", Long.valueOf(paramMessage.getFromId()));
    localContentValues.put("to_id", Long.valueOf(paramMessage.getToId()));
    localContentValues.put("is_from_group", Boolean.valueOf(paramMessage.isFromGroup()));
    localContentValues.put("is_to_group", Boolean.valueOf(paramMessage.isToGroup()));
    localContentValues.put("created_at", Long.valueOf(paramMessage.getCreatedAt().getTime()));
    return localContentValues;
  }
  
  public static Message parseCursor(Cursor paramCursor)
  {
    boolean bool2 = true;
    if ((paramCursor == null) || (paramCursor.getCount() == 0)) {
      return null;
    }
    if (-1 == paramCursor.getPosition()) {
      paramCursor.moveToFirst();
    }
    Message localMessage = new Message();
    localMessage.setId(paramCursor.getLong(paramCursor.getColumnIndex("id")));
    localMessage.setSequence(paramCursor.getLong(paramCursor.getColumnIndex("sequence")));
    localMessage.setType(paramCursor.getInt(paramCursor.getColumnIndex("type")));
    localMessage.setStatus(paramCursor.getInt(paramCursor.getColumnIndex("status")));
    localMessage.setText(paramCursor.getString(paramCursor.getColumnIndex("text")));
    localMessage.setSummary(paramCursor.getString(paramCursor.getColumnIndex("summary")));
    localMessage.setFromId(paramCursor.getLong(paramCursor.getColumnIndex("from_id")));
    localMessage.setToId(paramCursor.getLong(paramCursor.getColumnIndex("to_id")));
    if (paramCursor.getInt(paramCursor.getColumnIndex("is_from_group")) == 1)
    {
      bool1 = true;
      localMessage.setFromGroup(bool1);
      if (paramCursor.getInt(paramCursor.getColumnIndex("is_to_group")) != 1) {
        break label268;
      }
    }
    label268:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      localMessage.setToGroup(bool1);
      localMessage.setCreatedAt(new Date(paramCursor.getLong(paramCursor.getColumnIndex("created_at"))));
      return localMessage;
      bool1 = false;
      break;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\message\model\Message$Table.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
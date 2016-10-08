package com.xueqiu.android.message.model;

import android.content.ContentValues;
import android.database.Cursor;
import android.provider.BaseColumns;

public class SystemEvent$Table
  implements BaseColumns
{
  public static final String CREATE_TABLE = String.format("CREATE TABLE %s (%s INTEGER, %s INTEGER, %s TEXT, PRIMARY KEY(%s));", new Object[] { "system_event", "id", "sequence", "text", "id" });
  public static final String ID = "id";
  public static final String SEQUENCE = "sequence";
  public static String[] TABLE_COLUMNS = { "id", "sequence", "text" };
  public static final String TABLE_NAME = "system_event";
  public static final String TEXT = "text";
  
  public static ContentValues contentValues(SystemEvent paramSystemEvent)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("id", Long.valueOf(paramSystemEvent.getId()));
    localContentValues.put("sequence", Long.valueOf(paramSystemEvent.getSequence()));
    localContentValues.put("text", paramSystemEvent.getText());
    return localContentValues;
  }
  
  public static SystemEvent parseCursor(Cursor paramCursor)
  {
    SystemEvent localSystemEvent = new SystemEvent();
    localSystemEvent.setId(paramCursor.getLong(paramCursor.getColumnIndex("id")));
    localSystemEvent.setSequence(paramCursor.getLong(paramCursor.getColumnIndex("sequence")));
    localSystemEvent.setText(paramCursor.getString(paramCursor.getColumnIndex("text")));
    return localSystemEvent;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\message\model\SystemEvent$Table.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
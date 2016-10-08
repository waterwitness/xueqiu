package com.xueqiu.android.base.storage;

import android.content.ContentValues;
import android.database.Cursor;
import android.provider.BaseColumns;
import com.xueqiu.android.base.util.v;
import com.xueqiu.android.community.model.Draft;

public final class DraftTable
  implements BaseColumns
{
  public static final String CREATE_TABLE = "CREATE TABLE t_draft_table(draft_id INTEGER PRIMARY KEY AUTOINCREMENT,title STRING,text TEXT,type INTEGER,img_name STRING,timestamp INTEGER)";
  public static final String DRAFT_ID = "draft_id";
  public static final String IMG_NAME = "img_name";
  public static final String[] TABLE_COLUMNS = { "draft_id", "title", "text", "type", "img_name", "timestamp" };
  public static final String TABLE_NAME = "t_draft_table";
  private static final String TAG = "DraftTable";
  public static final String TEXT = "text";
  public static final String TIMESTAMP = "timestamp";
  public static final String TITLE = "title";
  public static final String TYPE = "type";
  
  public static ContentValues contentValues(Draft paramDraft)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("text", paramDraft.getText());
    localContentValues.put("title", paramDraft.getTitle());
    localContentValues.put("type", Integer.valueOf(paramDraft.getType()));
    localContentValues.put("img_name", paramDraft.getImageName());
    localContentValues.put("timestamp", Long.valueOf(paramDraft.getTimestamp()));
    return localContentValues;
  }
  
  public static Draft parseCursor(Cursor paramCursor)
  {
    if ((paramCursor == null) || (paramCursor.getCount() == 0))
    {
      v.d("DraftTable", "Cann't parse Cursor, bacause cursor is null or empty.");
      return null;
    }
    if (-1 == paramCursor.getPosition()) {
      paramCursor.moveToFirst();
    }
    Draft localDraft = new Draft();
    localDraft.setId(paramCursor.getInt(paramCursor.getColumnIndex("draft_id")));
    localDraft.setTitle(paramCursor.getString(paramCursor.getColumnIndex("title")));
    localDraft.setText(paramCursor.getString(paramCursor.getColumnIndex("text")));
    localDraft.setType(paramCursor.getInt(paramCursor.getColumnIndex("type")));
    localDraft.setImageName(paramCursor.getString(paramCursor.getColumnIndex("img_name")));
    localDraft.setTimestamp(paramCursor.getLong(paramCursor.getColumnIndex("timestamp")));
    return localDraft;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\base\storage\DraftTable.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
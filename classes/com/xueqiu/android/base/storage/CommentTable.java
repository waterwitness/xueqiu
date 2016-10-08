package com.xueqiu.android.base.storage;

import android.content.ContentValues;
import android.database.Cursor;
import android.provider.BaseColumns;
import com.xueqiu.android.base.util.v;
import com.xueqiu.android.community.model.Comment;
import com.xueqiu.android.community.model.Status;
import com.xueqiu.android.community.model.User;
import java.util.Date;

public final class CommentTable
  implements BaseColumns
{
  public static final String COMMENT_ID = "comment_id";
  public static final String CREATED_AT = "created_at";
  public static final String CREATE_TABLE = "CREATE TABLE sn_comment(comment_id INTEGER,text TEXT,created_at INTEGER,source STRING,favorited TINYINT(1) DEFAULT 0,truncated TINYINT(1) DEFAULT 0,user_id INTEGER,status_id INTEGER,retweet_status_id INTEGER,reply_comment_id INTEGER,reply_screen_name STRING,type TINYINT(1) DEFAULT 0, PRIMARY KEY(comment_id, type))";
  public static final String FAVORITED = "favorited";
  public static final String REPLY_COMMENT_ID = "reply_comment_id";
  public static final String REPLY_SCREEN_NAME = "reply_screen_name";
  public static final String RETWEET_STATUS_ID = "retweet_status_id";
  public static final String SOURCE = "source";
  public static final String STATUS_ID = "status_id";
  public static final String[] TABLE_COLUMNS = { "comment_id", "text", "created_at", "source", "favorited", "truncated", "user_id", "status_id", "retweet_status_id", "reply_comment_id", "reply_screen_name" };
  public static final String TABLE_NAME = "sn_comment";
  private static final String TAG = "CommentTable";
  public static final String TEXT = "text";
  public static final String TRUNCATED = "truncated";
  public static final String TYPE = "type";
  public static final int TYPE_RECEIVE = 1;
  public static final int TYPE_SEND = 2;
  public static final String USER_ID = "user_id";
  
  public static ContentValues contentValues(Comment paramComment)
  {
    int j = 1;
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("comment_id", Long.valueOf(paramComment.getId()));
    localContentValues.put("text", paramComment.getText());
    localContentValues.put("created_at", Long.valueOf(paramComment.getCreatedAt().getTime()));
    localContentValues.put("source", paramComment.getSource());
    if (paramComment.isTruncated())
    {
      i = 1;
      localContentValues.put("truncated", Integer.valueOf(i));
      if (!paramComment.isFavorited()) {
        break label196;
      }
    }
    label196:
    for (int i = j;; i = 0)
    {
      localContentValues.put("favorited", Integer.valueOf(i));
      localContentValues.put("retweet_status_id", Long.valueOf(paramComment.getRetweetStatusId()));
      localContentValues.put("reply_screen_name", paramComment.getReplyScreenName());
      if (paramComment.getUser() != null) {
        localContentValues.put("user_id", Long.valueOf(paramComment.getUser().getUserId()));
      }
      if (paramComment.getStatus() != null) {
        localContentValues.put("status_id", Long.valueOf(paramComment.getStatus().getStatusId()));
      }
      if (paramComment.getReplyComment() != null) {
        localContentValues.put("reply_comment_id", Long.valueOf(paramComment.getReplyComment().getId()));
      }
      return localContentValues;
      i = 0;
      break;
    }
  }
  
  public static Comment parseCursor(Cursor paramCursor)
  {
    boolean bool2 = false;
    if ((paramCursor == null) || (paramCursor.getCount() == 0))
    {
      v.d("CommentTable", "Cann't parse Cursor, bacause cursor is null or empty.");
      return null;
    }
    if (-1 == paramCursor.getPosition()) {
      paramCursor.moveToFirst();
    }
    Comment localComment = new Comment();
    localComment.setId(paramCursor.getLong(paramCursor.getColumnIndex("comment_id")));
    localComment.setText(paramCursor.getString(paramCursor.getColumnIndex("text")));
    localComment.setCreatedAt(new Date(paramCursor.getLong(paramCursor.getColumnIndex("created_at"))));
    localComment.setSource(paramCursor.getString(paramCursor.getColumnIndex("source")));
    if (paramCursor.getInt(paramCursor.getColumnIndex("favorited")) == 0)
    {
      bool1 = false;
      localComment.setFavorited(bool1);
      if (paramCursor.getInt(paramCursor.getColumnIndex("truncated")) != 0) {
        break label273;
      }
    }
    label273:
    for (boolean bool1 = bool2;; bool1 = true)
    {
      localComment.setTruncated(bool1);
      localComment.setRetweetStatusId(paramCursor.getLong(paramCursor.getColumnIndex("retweet_status_id")));
      localComment.setReplyScreenName(paramCursor.getString(paramCursor.getColumnIndex("reply_screen_name")));
      localComment.setUserId(paramCursor.getLong(paramCursor.getColumnIndex("user_id")));
      localComment.setStatusId(paramCursor.getLong(paramCursor.getColumnIndex("status_id")));
      localComment.setReplyCommentId(paramCursor.getLong(paramCursor.getColumnIndex("reply_comment_id")));
      return localComment;
      bool1 = true;
      break;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\base\storage\CommentTable.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
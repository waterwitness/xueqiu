package net.sqlcipher.database;

import android.os.Process;
import java.util.concurrent.locks.ReentrantLock;
import net.sqlcipher.CursorWindow;

final class SQLiteCursor$QueryThread
  implements Runnable
{
  private final int mThreadState;
  
  SQLiteCursor$QueryThread(SQLiteCursor paramSQLiteCursor, int paramInt)
  {
    this.mThreadState = paramInt;
  }
  
  private void sendMessage()
  {
    if (this.this$0.mNotificationHandler != null)
    {
      this.this$0.mNotificationHandler.sendEmptyMessage(1);
      SQLiteCursor.access$002(this.this$0, false);
      return;
    }
    SQLiteCursor.access$002(this.this$0, true);
  }
  
  public final void run()
  {
    CursorWindow localCursorWindow = SQLiteCursor.access$100(this.this$0);
    Process.setThreadPriority(Process.myTid(), 10);
    for (;;)
    {
      SQLiteCursor.access$200(this.this$0).lock();
      if (SQLiteCursor.access$300(this.this$0) != this.mThreadState)
      {
        SQLiteCursor.access$200(this.this$0).unlock();
        return;
      }
      try
      {
        int i = SQLiteCursor.access$600(this.this$0).fillWindow(localCursorWindow, SQLiteCursor.access$400(this.this$0), SQLiteCursor.access$500(this.this$0));
        if (i != 0)
        {
          if (i == -1)
          {
            SQLiteCursor.access$512(this.this$0, SQLiteCursor.access$400(this.this$0));
            sendMessage();
            SQLiteCursor.access$200(this.this$0).unlock();
            continue;
          }
          SQLiteCursor.access$502(this.this$0, i);
          sendMessage();
          return;
        }
        return;
      }
      catch (Exception localException) {}finally
      {
        SQLiteCursor.access$200(this.this$0).unlock();
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\net\sqlcipher\database\SQLiteCursor$QueryThread.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
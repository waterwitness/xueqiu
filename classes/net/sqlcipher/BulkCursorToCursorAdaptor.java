package net.sqlcipher;

import android.database.CharArrayBuffer;
import android.database.ContentObserver;
import android.database.DataSetObserver;
import android.os.Bundle;
import android.os.RemoteException;
import android.util.Log;
import java.util.HashMap;
import java.util.Map;

public final class BulkCursorToCursorAdaptor
  extends AbstractWindowedCursor
{
  private static final String TAG = "BulkCursor";
  private IBulkCursor mBulkCursor;
  private String[] mColumns;
  private int mCount;
  private AbstractCursor.SelfContentObserver mObserverBridge;
  private boolean mWantsAllOnMoveCalls;
  
  public static int findRowIdColumnIndex(String[] paramArrayOfString)
  {
    int j = paramArrayOfString.length;
    int i = 0;
    while (i < j)
    {
      if (paramArrayOfString[i].equals("_id")) {
        return i;
      }
      i += 1;
    }
    return -1;
  }
  
  public final void close()
  {
    super.close();
    try
    {
      this.mBulkCursor.close();
      this.mWindow = null;
      return;
    }
    catch (RemoteException localRemoteException)
    {
      for (;;)
      {
        Log.w("BulkCursor", "Remote process exception when closing");
      }
    }
  }
  
  public final boolean commitUpdates(Map<? extends Long, ? extends Map<String, Object>> paramMap)
  {
    if (!supportsUpdates())
    {
      Log.e("BulkCursor", "commitUpdates not supported on this cursor, did you include the _id column?");
      return false;
    }
    HashMap localHashMap = this.mUpdatedRows;
    if (paramMap != null) {}
    try
    {
      this.mUpdatedRows.putAll(paramMap);
      if (this.mUpdatedRows.size() <= 0) {
        return false;
      }
    }
    finally {}
    try
    {
      boolean bool = this.mBulkCursor.updateRows(this.mUpdatedRows);
      if (bool == true)
      {
        this.mUpdatedRows.clear();
        onChange(true);
      }
      return bool;
    }
    catch (RemoteException paramMap)
    {
      Log.e("BulkCursor", "Unable to commit updates because the remote process is dead");
    }
    return false;
  }
  
  public final void copyStringToBuffer(int paramInt, CharArrayBuffer paramCharArrayBuffer) {}
  
  public final void deactivate()
  {
    super.deactivate();
    try
    {
      this.mBulkCursor.deactivate();
      this.mWindow = null;
      return;
    }
    catch (RemoteException localRemoteException)
    {
      for (;;)
      {
        Log.w("BulkCursor", "Remote process exception when deactivating");
      }
    }
  }
  
  public final boolean deleteRow()
  {
    try
    {
      boolean bool2 = this.mBulkCursor.deleteRow(this.mPos);
      boolean bool1 = bool2;
      if (bool2)
      {
        this.mWindow = null;
        this.mCount = this.mBulkCursor.count();
        if (this.mPos < this.mCount)
        {
          int i = this.mPos;
          this.mPos = -1;
          moveToPosition(i);
        }
        for (;;)
        {
          onChange(true);
          return bool2;
          this.mPos = this.mCount;
        }
      }
      return bool1;
    }
    catch (RemoteException localRemoteException)
    {
      Log.e("BulkCursor", "Unable to delete row because the remote process is dead");
      bool1 = false;
    }
  }
  
  public final String[] getColumnNames()
  {
    if (this.mColumns == null) {}
    try
    {
      this.mColumns = this.mBulkCursor.getColumnNames();
      return this.mColumns;
    }
    catch (RemoteException localRemoteException)
    {
      Log.e("BulkCursor", "Unable to fetch column names because the remote process is dead");
    }
    return null;
  }
  
  public final int getCount()
  {
    return this.mCount;
  }
  
  public final Bundle getExtras()
  {
    try
    {
      Bundle localBundle = this.mBulkCursor.getExtras();
      return localBundle;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeException(localRemoteException);
    }
  }
  
  public final IContentObserver getObserver()
  {
    try
    {
      if (this.mObserverBridge == null) {
        this.mObserverBridge = new AbstractCursor.SelfContentObserver(this);
      }
      return null;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public final boolean onMove(int paramInt1, int paramInt2)
  {
    for (;;)
    {
      try
      {
        if (this.mWindow != null)
        {
          if ((paramInt2 < this.mWindow.getStartPosition()) || (paramInt2 >= this.mWindow.getStartPosition() + this.mWindow.getNumRows()))
          {
            this.mWindow = this.mBulkCursor.getWindow(paramInt2);
            if (this.mWindow != null) {
              break;
            }
            return false;
          }
          if (!this.mWantsAllOnMoveCalls) {
            continue;
          }
          this.mBulkCursor.onMove(paramInt2);
          continue;
        }
        this.mWindow = this.mBulkCursor.getWindow(paramInt2);
      }
      catch (RemoteException localRemoteException)
      {
        Log.e("BulkCursor", "Unable to get window because the remote process is dead");
        return false;
      }
    }
    return true;
  }
  
  public final void registerContentObserver(ContentObserver paramContentObserver) {}
  
  public final void registerDataSetObserver(DataSetObserver paramDataSetObserver) {}
  
  public final boolean requery()
  {
    try
    {
      this.mCount = this.mBulkCursor.requery(getObserver(), new CursorWindow(false));
      if (this.mCount != -1)
      {
        this.mPos = -1;
        this.mWindow = null;
        super.requery();
        return true;
      }
      deactivate();
      return false;
    }
    catch (Exception localException)
    {
      Log.e("BulkCursor", "Unable to requery because the remote process exception " + localException.getMessage());
      deactivate();
    }
    return false;
  }
  
  public final Bundle respond(Bundle paramBundle)
  {
    try
    {
      paramBundle = this.mBulkCursor.respond(paramBundle);
      return paramBundle;
    }
    catch (RemoteException paramBundle)
    {
      Log.w("BulkCursor", "respond() threw RemoteException, returning an empty bundle.", paramBundle);
    }
    return Bundle.EMPTY;
  }
  
  public final void set(IBulkCursor paramIBulkCursor)
  {
    this.mBulkCursor = paramIBulkCursor;
    try
    {
      this.mCount = this.mBulkCursor.count();
      this.mWantsAllOnMoveCalls = this.mBulkCursor.getWantsAllOnMoveCalls();
      this.mColumns = this.mBulkCursor.getColumnNames();
      this.mRowIdColumnIndex = findRowIdColumnIndex(this.mColumns);
      return;
    }
    catch (RemoteException paramIBulkCursor)
    {
      Log.e("BulkCursor", "Setup failed because the remote process is dead");
    }
  }
  
  public final void set(IBulkCursor paramIBulkCursor, int paramInt1, int paramInt2)
  {
    this.mBulkCursor = paramIBulkCursor;
    this.mColumns = null;
    this.mCount = paramInt1;
    this.mRowIdColumnIndex = paramInt2;
  }
  
  public final void unregisterContentObserver(ContentObserver paramContentObserver) {}
  
  public final void unregisterDataSetObserver(DataSetObserver paramDataSetObserver) {}
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\net\sqlcipher\BulkCursorToCursorAdaptor.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
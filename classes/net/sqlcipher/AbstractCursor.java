package net.sqlcipher;

import android.content.ContentResolver;
import android.database.CharArrayBuffer;
import android.database.ContentObservable;
import android.database.ContentObserver;
import android.database.CrossProcessCursor;
import android.database.DataSetObservable;
import android.database.DataSetObserver;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import java.util.HashMap;
import java.util.Map;

public abstract class AbstractCursor
  implements CrossProcessCursor, Cursor
{
  private static final String TAG = "Cursor";
  protected boolean mClosed = false;
  ContentObservable mContentObservable = new ContentObservable();
  protected ContentResolver mContentResolver;
  public Long mCurrentRowID = null;
  DataSetObservable mDataSetObservable = new DataSetObservable();
  private Uri mNotifyUri;
  public int mPos = -1;
  public int mRowIdColumnIndex = -1;
  private ContentObserver mSelfObserver;
  private final Object mSelfObserverLock = new Object();
  private boolean mSelfObserverRegistered;
  public HashMap<Long, Map<String, Object>> mUpdatedRows = new HashMap();
  
  public void abortUpdates()
  {
    synchronized (this.mUpdatedRows)
    {
      this.mUpdatedRows.clear();
      return;
    }
  }
  
  protected void checkPosition()
  {
    if ((-1 == this.mPos) || (getCount() == this.mPos)) {
      throw new CursorIndexOutOfBoundsException(this.mPos, getCount());
    }
  }
  
  public void close()
  {
    this.mClosed = true;
    this.mContentObservable.unregisterAll();
    deactivateInternal();
  }
  
  public boolean commitUpdates()
  {
    return commitUpdates(null);
  }
  
  public boolean commitUpdates(Map<? extends Long, ? extends Map<String, Object>> paramMap)
  {
    return false;
  }
  
  public void copyStringToBuffer(int paramInt, CharArrayBuffer paramCharArrayBuffer)
  {
    String str = getString(paramInt);
    if (str != null)
    {
      char[] arrayOfChar = paramCharArrayBuffer.data;
      if ((arrayOfChar == null) || (arrayOfChar.length < str.length())) {
        paramCharArrayBuffer.data = str.toCharArray();
      }
      for (;;)
      {
        paramCharArrayBuffer.sizeCopied = str.length();
        return;
        str.getChars(0, str.length(), arrayOfChar, 0);
      }
    }
    paramCharArrayBuffer.sizeCopied = 0;
  }
  
  public void deactivate()
  {
    deactivateInternal();
  }
  
  public void deactivateInternal()
  {
    if (this.mSelfObserver != null)
    {
      this.mContentResolver.unregisterContentObserver(this.mSelfObserver);
      this.mSelfObserverRegistered = false;
    }
    this.mDataSetObservable.notifyInvalidated();
  }
  
  public boolean deleteRow()
  {
    return false;
  }
  
  public void fillWindow(int paramInt, android.database.CursorWindow paramCursorWindow)
  {
    DatabaseUtils.cursorFillWindow(this, paramInt, paramCursorWindow);
  }
  
  public void finalize()
  {
    if ((this.mSelfObserver != null) && (this.mSelfObserverRegistered == true)) {
      this.mContentResolver.unregisterContentObserver(this.mSelfObserver);
    }
  }
  
  public byte[] getBlob(int paramInt)
  {
    throw new UnsupportedOperationException("getBlob is not supported");
  }
  
  public int getColumnCount()
  {
    return getColumnNames().length;
  }
  
  public int getColumnIndex(String paramString)
  {
    int i = paramString.lastIndexOf('.');
    Object localObject = paramString;
    if (i != -1)
    {
      localObject = new Exception();
      Log.e("Cursor", "requesting column name with table name -- " + paramString, (Throwable)localObject);
      localObject = paramString.substring(i + 1);
    }
    paramString = getColumnNames();
    int j = paramString.length;
    i = 0;
    while (i < j)
    {
      if (paramString[i].equalsIgnoreCase((String)localObject)) {
        return i;
      }
      i += 1;
    }
    return -1;
  }
  
  public int getColumnIndexOrThrow(String paramString)
  {
    int i = getColumnIndex(paramString);
    if (i < 0) {
      throw new IllegalArgumentException("column '" + paramString + "' does not exist");
    }
    return i;
  }
  
  public String getColumnName(int paramInt)
  {
    return getColumnNames()[paramInt];
  }
  
  public abstract String[] getColumnNames();
  
  public abstract int getCount();
  
  protected DataSetObservable getDataSetObservable()
  {
    return this.mDataSetObservable;
  }
  
  public abstract double getDouble(int paramInt);
  
  public Bundle getExtras()
  {
    return Bundle.EMPTY;
  }
  
  public abstract float getFloat(int paramInt);
  
  public abstract int getInt(int paramInt);
  
  public abstract long getLong(int paramInt);
  
  public Uri getNotificationUri()
  {
    return this.mNotifyUri;
  }
  
  public final int getPosition()
  {
    return this.mPos;
  }
  
  public abstract short getShort(int paramInt);
  
  public abstract String getString(int paramInt);
  
  public abstract int getType(int paramInt);
  
  protected Object getUpdatedField(int paramInt)
  {
    return ((Map)this.mUpdatedRows.get(this.mCurrentRowID)).get(getColumnNames()[paramInt]);
  }
  
  public boolean getWantsAllOnMoveCalls()
  {
    return false;
  }
  
  public CursorWindow getWindow()
  {
    return null;
  }
  
  public boolean hasUpdates()
  {
    for (;;)
    {
      synchronized (this.mUpdatedRows)
      {
        if (this.mUpdatedRows.size() > 0)
        {
          bool = true;
          return bool;
        }
      }
      boolean bool = false;
    }
  }
  
  public final boolean isAfterLast()
  {
    if (getCount() == 0) {}
    while (this.mPos == getCount()) {
      return true;
    }
    return false;
  }
  
  public final boolean isBeforeFirst()
  {
    if (getCount() == 0) {}
    while (this.mPos == -1) {
      return true;
    }
    return false;
  }
  
  public boolean isClosed()
  {
    return this.mClosed;
  }
  
  protected boolean isFieldUpdated(int paramInt)
  {
    if ((this.mRowIdColumnIndex != -1) && (this.mUpdatedRows.size() > 0))
    {
      Map localMap = (Map)this.mUpdatedRows.get(this.mCurrentRowID);
      if ((localMap != null) && (localMap.containsKey(getColumnNames()[paramInt]))) {
        return true;
      }
    }
    return false;
  }
  
  public final boolean isFirst()
  {
    return (this.mPos == 0) && (getCount() != 0);
  }
  
  public final boolean isLast()
  {
    int i = getCount();
    return (this.mPos == i - 1) && (i != 0);
  }
  
  public abstract boolean isNull(int paramInt);
  
  public final boolean move(int paramInt)
  {
    return moveToPosition(this.mPos + paramInt);
  }
  
  public final boolean moveToFirst()
  {
    return moveToPosition(0);
  }
  
  public final boolean moveToLast()
  {
    return moveToPosition(getCount() - 1);
  }
  
  public final boolean moveToNext()
  {
    return moveToPosition(this.mPos + 1);
  }
  
  public final boolean moveToPosition(int paramInt)
  {
    boolean bool1 = false;
    int i = getCount();
    if (paramInt >= i) {
      this.mPos = i;
    }
    boolean bool2;
    do
    {
      return bool1;
      if (paramInt < 0)
      {
        this.mPos = -1;
        return false;
      }
      if (paramInt == this.mPos) {
        return true;
      }
      bool2 = onMove(this.mPos, paramInt);
      if (!bool2)
      {
        this.mPos = -1;
        return bool2;
      }
      this.mPos = paramInt;
      bool1 = bool2;
    } while (this.mRowIdColumnIndex == -1);
    this.mCurrentRowID = Long.valueOf(getLong(this.mRowIdColumnIndex));
    return bool2;
  }
  
  public final boolean moveToPrevious()
  {
    return moveToPosition(this.mPos - 1);
  }
  
  public void notifyDataSetChange()
  {
    this.mDataSetObservable.notifyChanged();
  }
  
  public void onChange(boolean paramBoolean)
  {
    synchronized (this.mSelfObserverLock)
    {
      this.mContentObservable.dispatchChange(paramBoolean);
      if ((this.mNotifyUri != null) && (paramBoolean)) {
        this.mContentResolver.notifyChange(this.mNotifyUri, this.mSelfObserver);
      }
      return;
    }
  }
  
  public boolean onMove(int paramInt1, int paramInt2)
  {
    return true;
  }
  
  public void registerContentObserver(ContentObserver paramContentObserver)
  {
    this.mContentObservable.registerObserver(paramContentObserver);
  }
  
  public void registerDataSetObserver(DataSetObserver paramDataSetObserver)
  {
    this.mDataSetObservable.registerObserver(paramDataSetObserver);
  }
  
  public boolean requery()
  {
    if ((this.mSelfObserver != null) && (!this.mSelfObserverRegistered))
    {
      this.mContentResolver.registerContentObserver(this.mNotifyUri, true, this.mSelfObserver);
      this.mSelfObserverRegistered = true;
    }
    this.mDataSetObservable.notifyChanged();
    return true;
  }
  
  public Bundle respond(Bundle paramBundle)
  {
    return Bundle.EMPTY;
  }
  
  public void setNotificationUri(ContentResolver paramContentResolver, Uri paramUri)
  {
    synchronized (this.mSelfObserverLock)
    {
      this.mNotifyUri = paramUri;
      this.mContentResolver = paramContentResolver;
      if (this.mSelfObserver != null) {
        this.mContentResolver.unregisterContentObserver(this.mSelfObserver);
      }
      this.mSelfObserver = new AbstractCursor.SelfContentObserver(this);
      this.mContentResolver.registerContentObserver(this.mNotifyUri, true, this.mSelfObserver);
      this.mSelfObserverRegistered = true;
      return;
    }
  }
  
  public boolean supportsUpdates()
  {
    return this.mRowIdColumnIndex != -1;
  }
  
  public void unregisterContentObserver(ContentObserver paramContentObserver)
  {
    if (!this.mClosed) {
      this.mContentObservable.unregisterObserver(paramContentObserver);
    }
  }
  
  public void unregisterDataSetObserver(DataSetObserver paramDataSetObserver)
  {
    this.mDataSetObservable.unregisterObserver(paramDataSetObserver);
  }
  
  public boolean update(int paramInt, Object paramObject)
  {
    if (!supportsUpdates()) {
      return false;
    }
    Long localLong = new Long(getLong(this.mRowIdColumnIndex));
    synchronized (this.mUpdatedRows)
    {
      Map localMap = (Map)this.mUpdatedRows.get(localLong);
      Object localObject = localMap;
      if (localMap == null)
      {
        localObject = new HashMap();
        this.mUpdatedRows.put(localLong, localObject);
      }
      ((Map)localObject).put(getColumnNames()[paramInt], paramObject);
      return true;
    }
  }
  
  public boolean updateBlob(int paramInt, byte[] paramArrayOfByte)
  {
    return update(paramInt, paramArrayOfByte);
  }
  
  public boolean updateDouble(int paramInt, double paramDouble)
  {
    return update(paramInt, Double.valueOf(paramDouble));
  }
  
  public boolean updateFloat(int paramInt, float paramFloat)
  {
    return update(paramInt, Float.valueOf(paramFloat));
  }
  
  public boolean updateInt(int paramInt1, int paramInt2)
  {
    return update(paramInt1, Integer.valueOf(paramInt2));
  }
  
  public boolean updateLong(int paramInt, long paramLong)
  {
    return update(paramInt, Long.valueOf(paramLong));
  }
  
  public boolean updateShort(int paramInt, short paramShort)
  {
    return update(paramInt, Short.valueOf(paramShort));
  }
  
  public boolean updateString(int paramInt, String paramString)
  {
    return update(paramInt, paramString);
  }
  
  public boolean updateToNull(int paramInt)
  {
    return update(paramInt, null);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\net\sqlcipher\AbstractCursor.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
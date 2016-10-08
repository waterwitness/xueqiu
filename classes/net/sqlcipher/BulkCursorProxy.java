package net.sqlcipher;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import java.util.Map;

final class BulkCursorProxy
  implements IBulkCursor
{
  private Bundle mExtras;
  private IBinder mRemote;
  
  public BulkCursorProxy(IBinder paramIBinder)
  {
    this.mRemote = paramIBinder;
    this.mExtras = null;
  }
  
  public final IBinder asBinder()
  {
    return this.mRemote;
  }
  
  public final void close()
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    localParcel1.writeInterfaceToken("android.content.IBulkCursor");
    this.mRemote.transact(12, localParcel1, localParcel2, 0);
    DatabaseUtils.readExceptionFromParcel(localParcel2);
    localParcel1.recycle();
    localParcel2.recycle();
  }
  
  public final int count()
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    localParcel1.writeInterfaceToken("android.content.IBulkCursor");
    boolean bool = this.mRemote.transact(2, localParcel1, localParcel2, 0);
    DatabaseUtils.readExceptionFromParcel(localParcel2);
    if (!bool) {}
    for (int i = -1;; i = localParcel2.readInt())
    {
      localParcel1.recycle();
      localParcel2.recycle();
      return i;
    }
  }
  
  public final void deactivate()
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    localParcel1.writeInterfaceToken("android.content.IBulkCursor");
    this.mRemote.transact(6, localParcel1, localParcel2, 0);
    DatabaseUtils.readExceptionFromParcel(localParcel2);
    localParcel1.recycle();
    localParcel2.recycle();
  }
  
  public final boolean deleteRow(int paramInt)
  {
    boolean bool = true;
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    localParcel1.writeInterfaceToken("android.content.IBulkCursor");
    localParcel1.writeInt(paramInt);
    this.mRemote.transact(5, localParcel1, localParcel2, 0);
    DatabaseUtils.readExceptionFromParcel(localParcel2);
    if (localParcel2.readInt() == 1) {}
    for (;;)
    {
      localParcel1.recycle();
      localParcel2.recycle();
      return bool;
      bool = false;
    }
  }
  
  public final String[] getColumnNames()
  {
    int i = 0;
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    localParcel1.writeInterfaceToken("android.content.IBulkCursor");
    this.mRemote.transact(3, localParcel1, localParcel2, 0);
    DatabaseUtils.readExceptionFromParcel(localParcel2);
    int j = localParcel2.readInt();
    String[] arrayOfString = new String[j];
    while (i < j)
    {
      arrayOfString[i] = localParcel2.readString();
      i += 1;
    }
    localParcel1.recycle();
    localParcel2.recycle();
    return arrayOfString;
  }
  
  public final Bundle getExtras()
  {
    if (this.mExtras == null)
    {
      Parcel localParcel1 = Parcel.obtain();
      Parcel localParcel2 = Parcel.obtain();
      localParcel1.writeInterfaceToken("android.content.IBulkCursor");
      this.mRemote.transact(10, localParcel1, localParcel2, 0);
      DatabaseUtils.readExceptionFromParcel(localParcel2);
      this.mExtras = localParcel2.readBundle();
      localParcel1.recycle();
      localParcel2.recycle();
    }
    return this.mExtras;
  }
  
  public final boolean getWantsAllOnMoveCalls()
  {
    boolean bool = false;
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    localParcel1.writeInterfaceToken("android.content.IBulkCursor");
    this.mRemote.transact(9, localParcel1, localParcel2, 0);
    DatabaseUtils.readExceptionFromParcel(localParcel2);
    int i = localParcel2.readInt();
    localParcel1.recycle();
    localParcel2.recycle();
    if (i != 0) {
      bool = true;
    }
    return bool;
  }
  
  public final CursorWindow getWindow(int paramInt)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    localParcel1.writeInterfaceToken("android.content.IBulkCursor");
    localParcel1.writeInt(paramInt);
    this.mRemote.transact(1, localParcel1, localParcel2, 0);
    DatabaseUtils.readExceptionFromParcel(localParcel2);
    CursorWindow localCursorWindow = null;
    if (localParcel2.readInt() == 1) {
      localCursorWindow = CursorWindow.newFromParcel(localParcel2);
    }
    localParcel1.recycle();
    localParcel2.recycle();
    return localCursorWindow;
  }
  
  public final void onMove(int paramInt)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    localParcel1.writeInterfaceToken("android.content.IBulkCursor");
    localParcel1.writeInt(paramInt);
    this.mRemote.transact(8, localParcel1, localParcel2, 0);
    DatabaseUtils.readExceptionFromParcel(localParcel2);
    localParcel1.recycle();
    localParcel2.recycle();
  }
  
  public final int requery(IContentObserver paramIContentObserver, CursorWindow paramCursorWindow)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    localParcel1.writeInterfaceToken("android.content.IBulkCursor");
    localParcel1.writeStrongInterface(paramIContentObserver);
    paramCursorWindow.writeToParcel(localParcel1, 0);
    boolean bool = this.mRemote.transact(7, localParcel1, localParcel2, 0);
    DatabaseUtils.readExceptionFromParcel(localParcel2);
    int i;
    if (!bool) {
      i = -1;
    }
    for (;;)
    {
      localParcel1.recycle();
      localParcel2.recycle();
      return i;
      i = localParcel2.readInt();
      this.mExtras = localParcel2.readBundle();
    }
  }
  
  public final Bundle respond(Bundle paramBundle)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    localParcel1.writeInterfaceToken("android.content.IBulkCursor");
    localParcel1.writeBundle(paramBundle);
    this.mRemote.transact(11, localParcel1, localParcel2, 0);
    DatabaseUtils.readExceptionFromParcel(localParcel2);
    paramBundle = localParcel2.readBundle();
    localParcel1.recycle();
    localParcel2.recycle();
    return paramBundle;
  }
  
  public final boolean updateRows(Map paramMap)
  {
    boolean bool = true;
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    localParcel1.writeInterfaceToken("android.content.IBulkCursor");
    localParcel1.writeMap(paramMap);
    this.mRemote.transact(4, localParcel1, localParcel2, 0);
    DatabaseUtils.readExceptionFromParcel(localParcel2);
    if (localParcel2.readInt() == 1) {}
    for (;;)
    {
      localParcel1.recycle();
      localParcel2.recycle();
      return bool;
      bool = false;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\net\sqlcipher\BulkCursorProxy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
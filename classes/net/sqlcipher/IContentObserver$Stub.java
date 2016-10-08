package net.sqlcipher;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

public abstract class IContentObserver$Stub
  extends Binder
  implements IContentObserver
{
  private static final String DESCRIPTOR = "net.sqlcipher.IContentObserver";
  static final int TRANSACTION_onChange = 1;
  
  public IContentObserver$Stub()
  {
    attachInterface(this, "net.sqlcipher.IContentObserver");
  }
  
  public static IContentObserver asInterface(IBinder paramIBinder)
  {
    if (paramIBinder == null) {
      return null;
    }
    IInterface localIInterface = paramIBinder.queryLocalInterface("net.sqlcipher.IContentObserver");
    if ((localIInterface != null) && ((localIInterface instanceof IContentObserver))) {
      return (IContentObserver)localIInterface;
    }
    return new IContentObserver.Stub.Proxy(paramIBinder);
  }
  
  public IBinder asBinder()
  {
    return this;
  }
  
  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
  {
    switch (paramInt1)
    {
    default: 
      return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
    case 1598968902: 
      paramParcel2.writeString("net.sqlcipher.IContentObserver");
      return true;
    }
    paramParcel1.enforceInterface("net.sqlcipher.IContentObserver");
    if (paramParcel1.readInt() != 0) {}
    for (boolean bool = true;; bool = false)
    {
      onChange(bool);
      return true;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\net\sqlcipher\IContentObserver$Stub.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
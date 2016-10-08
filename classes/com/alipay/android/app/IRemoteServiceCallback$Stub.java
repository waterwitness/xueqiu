package com.alipay.android.app;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable.Creator;

public abstract class IRemoteServiceCallback$Stub
  extends Binder
  implements IRemoteServiceCallback
{
  private static final String DESCRIPTOR = "com.alipay.android.app.IRemoteServiceCallback";
  static final int TRANSACTION_isHideLoadingScreen = 3;
  static final int TRANSACTION_payEnd = 2;
  static final int TRANSACTION_startActivity = 1;
  
  public IRemoteServiceCallback$Stub()
  {
    attachInterface(this, "com.alipay.android.app.IRemoteServiceCallback");
  }
  
  public static IRemoteServiceCallback asInterface(IBinder paramIBinder)
  {
    if (paramIBinder == null) {
      return null;
    }
    IInterface localIInterface = paramIBinder.queryLocalInterface("com.alipay.android.app.IRemoteServiceCallback");
    if ((localIInterface != null) && ((localIInterface instanceof IRemoteServiceCallback))) {
      return (IRemoteServiceCallback)localIInterface;
    }
    return new IRemoteServiceCallback.Stub.a(paramIBinder);
  }
  
  public IBinder asBinder()
  {
    return this;
  }
  
  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
  {
    int i = 0;
    boolean bool = false;
    switch (paramInt1)
    {
    default: 
      return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
    case 1598968902: 
      paramParcel2.writeString("com.alipay.android.app.IRemoteServiceCallback");
      return true;
    case 1: 
      paramParcel1.enforceInterface("com.alipay.android.app.IRemoteServiceCallback");
      String str1 = paramParcel1.readString();
      String str2 = paramParcel1.readString();
      paramInt1 = paramParcel1.readInt();
      if (paramParcel1.readInt() != 0) {}
      for (paramParcel1 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1);; paramParcel1 = null)
      {
        startActivity(str1, str2, paramInt1, paramParcel1);
        paramParcel2.writeNoException();
        return true;
      }
    case 2: 
      paramParcel1.enforceInterface("com.alipay.android.app.IRemoteServiceCallback");
      if (paramParcel1.readInt() != 0) {
        bool = true;
      }
      payEnd(bool, paramParcel1.readString());
      paramParcel2.writeNoException();
      return true;
    }
    paramParcel1.enforceInterface("com.alipay.android.app.IRemoteServiceCallback");
    bool = isHideLoadingScreen();
    paramParcel2.writeNoException();
    paramInt1 = i;
    if (bool) {
      paramInt1 = 1;
    }
    paramParcel2.writeInt(paramInt1);
    return true;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\alipay\android\app\IRemoteServiceCallback$Stub.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
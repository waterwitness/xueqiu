package com.alipay.android.app;

import android.os.IBinder;
import android.os.Parcel;

final class IRemoteServiceCallback$Stub$a
  implements IRemoteServiceCallback
{
  private IBinder a;
  
  IRemoteServiceCallback$Stub$a(IBinder paramIBinder)
  {
    this.a = paramIBinder;
  }
  
  private static String a()
  {
    return "com.alipay.android.app.IRemoteServiceCallback";
  }
  
  public final IBinder asBinder()
  {
    return this.a;
  }
  
  public final boolean isHideLoadingScreen()
  {
    boolean bool = false;
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.alipay.android.app.IRemoteServiceCallback");
      this.a.transact(3, localParcel1, localParcel2, 0);
      localParcel2.readException();
      int i = localParcel2.readInt();
      if (i != 0) {
        bool = true;
      }
      return bool;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }
  
  public final void payEnd(boolean paramBoolean, String paramString)
  {
    int i = 0;
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.alipay.android.app.IRemoteServiceCallback");
      if (paramBoolean) {
        i = 1;
      }
      localParcel1.writeInt(i);
      localParcel1.writeString(paramString);
      this.a.transact(2, localParcel1, localParcel2, 0);
      localParcel2.readException();
      return;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }
  
  /* Error */
  public final void startActivity(String paramString1, String paramString2, int paramInt, android.os.Bundle paramBundle)
  {
    // Byte code:
    //   0: invokestatic 29	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   3: astore 5
    //   5: invokestatic 29	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   8: astore 6
    //   10: aload 5
    //   12: ldc 19
    //   14: invokevirtual 33	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   17: aload 5
    //   19: aload_1
    //   20: invokevirtual 58	android/os/Parcel:writeString	(Ljava/lang/String;)V
    //   23: aload 5
    //   25: aload_2
    //   26: invokevirtual 58	android/os/Parcel:writeString	(Ljava/lang/String;)V
    //   29: aload 5
    //   31: iload_3
    //   32: invokevirtual 55	android/os/Parcel:writeInt	(I)V
    //   35: aload 4
    //   37: ifnull +49 -> 86
    //   40: aload 5
    //   42: iconst_1
    //   43: invokevirtual 55	android/os/Parcel:writeInt	(I)V
    //   46: aload 4
    //   48: aload 5
    //   50: iconst_0
    //   51: invokevirtual 66	android/os/Bundle:writeToParcel	(Landroid/os/Parcel;I)V
    //   54: aload_0
    //   55: getfield 15	com/alipay/android/app/IRemoteServiceCallback$Stub$a:a	Landroid/os/IBinder;
    //   58: iconst_1
    //   59: aload 5
    //   61: aload 6
    //   63: iconst_0
    //   64: invokeinterface 39 5 0
    //   69: pop
    //   70: aload 6
    //   72: invokevirtual 42	android/os/Parcel:readException	()V
    //   75: aload 6
    //   77: invokevirtual 49	android/os/Parcel:recycle	()V
    //   80: aload 5
    //   82: invokevirtual 49	android/os/Parcel:recycle	()V
    //   85: return
    //   86: aload 5
    //   88: iconst_0
    //   89: invokevirtual 55	android/os/Parcel:writeInt	(I)V
    //   92: goto -38 -> 54
    //   95: astore_1
    //   96: aload 6
    //   98: invokevirtual 49	android/os/Parcel:recycle	()V
    //   101: aload 5
    //   103: invokevirtual 49	android/os/Parcel:recycle	()V
    //   106: aload_1
    //   107: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	108	0	this	a
    //   0	108	1	paramString1	String
    //   0	108	2	paramString2	String
    //   0	108	3	paramInt	int
    //   0	108	4	paramBundle	android.os.Bundle
    //   3	99	5	localParcel1	Parcel
    //   8	89	6	localParcel2	Parcel
    // Exception table:
    //   from	to	target	type
    //   10	35	95	finally
    //   40	54	95	finally
    //   54	75	95	finally
    //   86	92	95	finally
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\alipay\android\app\IRemoteServiceCallback$Stub$a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
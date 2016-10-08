package net.sqlcipher;

import android.os.IBinder;

class IContentObserver$Stub$Proxy
  implements IContentObserver
{
  private IBinder mRemote;
  
  IContentObserver$Stub$Proxy(IBinder paramIBinder)
  {
    this.mRemote = paramIBinder;
  }
  
  public IBinder asBinder()
  {
    return this.mRemote;
  }
  
  public String getInterfaceDescriptor()
  {
    return "net.sqlcipher.IContentObserver";
  }
  
  /* Error */
  public void onChange(boolean paramBoolean)
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore 4
    //   3: invokestatic 30	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   6: astore_2
    //   7: aload_2
    //   8: ldc 22
    //   10: invokevirtual 34	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   13: iload_1
    //   14: ifeq +28 -> 42
    //   17: aload_2
    //   18: iload 4
    //   20: invokevirtual 38	android/os/Parcel:writeInt	(I)V
    //   23: aload_0
    //   24: getfield 15	net/sqlcipher/IContentObserver$Stub$Proxy:mRemote	Landroid/os/IBinder;
    //   27: iconst_1
    //   28: aload_2
    //   29: aconst_null
    //   30: iconst_1
    //   31: invokeinterface 44 5 0
    //   36: pop
    //   37: aload_2
    //   38: invokevirtual 47	android/os/Parcel:recycle	()V
    //   41: return
    //   42: iconst_0
    //   43: istore 4
    //   45: goto -28 -> 17
    //   48: astore_3
    //   49: aload_2
    //   50: invokevirtual 47	android/os/Parcel:recycle	()V
    //   53: aload_3
    //   54: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	55	0	this	Proxy
    //   0	55	1	paramBoolean	boolean
    //   6	44	2	localParcel	android.os.Parcel
    //   48	6	3	localObject	Object
    //   1	43	4	i	int
    // Exception table:
    //   from	to	target	type
    //   7	13	48	finally
    //   17	37	48	finally
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\net\sqlcipher\IContentObserver$Stub$Proxy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
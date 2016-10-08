package com.loopj.android.http;

import android.os.Message;
import android.util.Log;

public abstract class DataAsyncHttpResponseHandler
  extends AsyncHttpResponseHandler
{
  private static final String LOG_TAG = "DataAsyncHttpResponseHandler";
  protected static final int PROGRESS_DATA_MESSAGE = 6;
  
  public static byte[] copyOfRange(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (paramInt1 > paramInt2) {
      throw new IllegalArgumentException();
    }
    int i = paramArrayOfByte.length;
    if ((paramInt1 < 0) || (paramInt1 > i)) {
      throw new ArrayIndexOutOfBoundsException();
    }
    paramInt2 -= paramInt1;
    i = Math.min(paramInt2, i - paramInt1);
    byte[] arrayOfByte = new byte[paramInt2];
    System.arraycopy(paramArrayOfByte, paramInt1, arrayOfByte, 0, i);
    return arrayOfByte;
  }
  
  /* Error */
  byte[] getResponseData(org.apache.http.HttpEntity paramHttpEntity)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: aload_3
    //   3: astore_2
    //   4: aload_1
    //   5: ifnull +155 -> 160
    //   8: aload_1
    //   9: invokeinterface 46 1 0
    //   14: astore 4
    //   16: aload_3
    //   17: astore_2
    //   18: aload 4
    //   20: ifnull +140 -> 160
    //   23: aload_1
    //   24: invokeinterface 50 1 0
    //   29: lstore 8
    //   31: lload 8
    //   33: ldc2_w 51
    //   36: lcmp
    //   37: ifle +13 -> 50
    //   40: new 20	java/lang/IllegalArgumentException
    //   43: dup
    //   44: ldc 54
    //   46: invokespecial 57	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;)V
    //   49: athrow
    //   50: lload 8
    //   52: lstore 6
    //   54: lload 8
    //   56: lconst_0
    //   57: lcmp
    //   58: ifge +8 -> 66
    //   61: ldc2_w 58
    //   64: lstore 6
    //   66: new 61	org/apache/http/util/ByteArrayBuffer
    //   69: dup
    //   70: lload 6
    //   72: l2i
    //   73: invokespecial 64	org/apache/http/util/ByteArrayBuffer:<init>	(I)V
    //   76: astore_1
    //   77: sipush 4096
    //   80: newarray <illegal type>
    //   82: astore_2
    //   83: aload 4
    //   85: aload_2
    //   86: invokevirtual 70	java/io/InputStream:read	([B)I
    //   89: istore 5
    //   91: iload 5
    //   93: iconst_m1
    //   94: if_icmpeq +56 -> 150
    //   97: invokestatic 76	java/lang/Thread:currentThread	()Ljava/lang/Thread;
    //   100: invokevirtual 80	java/lang/Thread:isInterrupted	()Z
    //   103: ifne +47 -> 150
    //   106: aload_1
    //   107: aload_2
    //   108: iconst_0
    //   109: iload 5
    //   111: invokevirtual 84	org/apache/http/util/ByteArrayBuffer:append	([BII)V
    //   114: aload_0
    //   115: aload_2
    //   116: iconst_0
    //   117: iload 5
    //   119: invokestatic 86	com/loopj/android/http/DataAsyncHttpResponseHandler:copyOfRange	([BII)[B
    //   122: invokevirtual 90	com/loopj/android/http/DataAsyncHttpResponseHandler:sendProgressDataMessage	([B)V
    //   125: goto -42 -> 83
    //   128: astore_1
    //   129: aload 4
    //   131: invokestatic 96	com/loopj/android/http/AsyncHttpClient:silentCloseInputStream	(Ljava/io/InputStream;)V
    //   134: aload_1
    //   135: athrow
    //   136: astore_1
    //   137: invokestatic 99	java/lang/System:gc	()V
    //   140: new 101	java/io/IOException
    //   143: dup
    //   144: ldc 103
    //   146: invokespecial 104	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   149: athrow
    //   150: aload 4
    //   152: invokestatic 96	com/loopj/android/http/AsyncHttpClient:silentCloseInputStream	(Ljava/io/InputStream;)V
    //   155: aload_1
    //   156: invokevirtual 108	org/apache/http/util/ByteArrayBuffer:toByteArray	()[B
    //   159: astore_2
    //   160: aload_2
    //   161: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	162	0	this	DataAsyncHttpResponseHandler
    //   0	162	1	paramHttpEntity	org.apache.http.HttpEntity
    //   3	158	2	localObject1	Object
    //   1	16	3	localObject2	Object
    //   14	137	4	localInputStream	java.io.InputStream
    //   89	29	5	i	int
    //   52	19	6	l1	long
    //   29	26	8	l2	long
    // Exception table:
    //   from	to	target	type
    //   77	83	128	finally
    //   83	91	128	finally
    //   97	125	128	finally
    //   66	77	136	java/lang/OutOfMemoryError
    //   129	136	136	java/lang/OutOfMemoryError
    //   150	160	136	java/lang/OutOfMemoryError
  }
  
  protected void handleMessage(Message paramMessage)
  {
    super.handleMessage(paramMessage);
    switch (paramMessage.what)
    {
    default: 
      return;
    }
    paramMessage = (Object[])paramMessage.obj;
    if ((paramMessage != null) && (paramMessage.length > 0)) {
      try
      {
        onProgressData((byte[])paramMessage[0]);
        return;
      }
      catch (Throwable paramMessage)
      {
        Log.e("DataAsyncHttpResponseHandler", "custom onProgressData contains an error", paramMessage);
        return;
      }
    }
    Log.e("DataAsyncHttpResponseHandler", "PROGRESS_DATA_MESSAGE didn't got enough params");
  }
  
  public void onProgressData(byte[] paramArrayOfByte)
  {
    Log.d("DataAsyncHttpResponseHandler", "onProgressData(byte[]) was not overriden, but callback was received");
  }
  
  public final void sendProgressDataMessage(byte[] paramArrayOfByte)
  {
    sendMessage(obtainMessage(6, new Object[] { paramArrayOfByte }));
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\loopj\android\http\DataAsyncHttpResponseHandler.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
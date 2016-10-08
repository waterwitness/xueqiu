package com.squareup.okhttp;

import com.squareup.okhttp.internal.NamedRunnable;
import java.net.URL;

final class Call$AsyncCall
  extends NamedRunnable
{
  private final boolean forWebSocket;
  private final Callback responseCallback;
  
  private Call$AsyncCall(Call paramCall, Callback paramCallback, boolean paramBoolean)
  {
    super("OkHttp %s", new Object[] { paramCall.originalRequest.urlString() });
    this.responseCallback = paramCallback;
    this.forWebSocket = paramBoolean;
  }
  
  final void cancel()
  {
    this.this$0.cancel();
  }
  
  /* Error */
  protected final void execute()
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore_2
    //   2: aload_0
    //   3: getfield 14	com/squareup/okhttp/Call$AsyncCall:this$0	Lcom/squareup/okhttp/Call;
    //   6: aload_0
    //   7: getfield 37	com/squareup/okhttp/Call$AsyncCall:forWebSocket	Z
    //   10: invokestatic 52	com/squareup/okhttp/Call:access$100	(Lcom/squareup/okhttp/Call;Z)Lcom/squareup/okhttp/Response;
    //   13: astore_1
    //   14: aload_0
    //   15: getfield 14	com/squareup/okhttp/Call$AsyncCall:this$0	Lcom/squareup/okhttp/Call;
    //   18: getfield 55	com/squareup/okhttp/Call:canceled	Z
    //   21: istore_3
    //   22: iload_3
    //   23: ifeq +43 -> 66
    //   26: aload_0
    //   27: getfield 35	com/squareup/okhttp/Call$AsyncCall:responseCallback	Lcom/squareup/okhttp/Callback;
    //   30: aload_0
    //   31: getfield 14	com/squareup/okhttp/Call$AsyncCall:this$0	Lcom/squareup/okhttp/Call;
    //   34: getfield 24	com/squareup/okhttp/Call:originalRequest	Lcom/squareup/okhttp/Request;
    //   37: new 48	java/io/IOException
    //   40: dup
    //   41: ldc 57
    //   43: invokespecial 60	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   46: invokeinterface 66 3 0
    //   51: aload_0
    //   52: getfield 14	com/squareup/okhttp/Call$AsyncCall:this$0	Lcom/squareup/okhttp/Call;
    //   55: invokestatic 70	com/squareup/okhttp/Call:access$300	(Lcom/squareup/okhttp/Call;)Lcom/squareup/okhttp/OkHttpClient;
    //   58: invokevirtual 76	com/squareup/okhttp/OkHttpClient:getDispatcher	()Lcom/squareup/okhttp/Dispatcher;
    //   61: aload_0
    //   62: invokevirtual 82	com/squareup/okhttp/Dispatcher:finished	(Lcom/squareup/okhttp/Call$AsyncCall;)V
    //   65: return
    //   66: aload_0
    //   67: getfield 35	com/squareup/okhttp/Call$AsyncCall:responseCallback	Lcom/squareup/okhttp/Callback;
    //   70: aload_1
    //   71: invokeinterface 86 2 0
    //   76: goto -25 -> 51
    //   79: astore_1
    //   80: iload_2
    //   81: ifeq +50 -> 131
    //   84: getstatic 92	com/squareup/okhttp/internal/Internal:logger	Ljava/util/logging/Logger;
    //   87: getstatic 98	java/util/logging/Level:INFO	Ljava/util/logging/Level;
    //   90: new 100	java/lang/StringBuilder
    //   93: dup
    //   94: ldc 102
    //   96: invokespecial 103	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   99: aload_0
    //   100: getfield 14	com/squareup/okhttp/Call$AsyncCall:this$0	Lcom/squareup/okhttp/Call;
    //   103: invokestatic 107	com/squareup/okhttp/Call:access$200	(Lcom/squareup/okhttp/Call;)Ljava/lang/String;
    //   106: invokevirtual 111	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   109: invokevirtual 114	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   112: aload_1
    //   113: invokevirtual 120	java/util/logging/Logger:log	(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   116: aload_0
    //   117: getfield 14	com/squareup/okhttp/Call$AsyncCall:this$0	Lcom/squareup/okhttp/Call;
    //   120: invokestatic 70	com/squareup/okhttp/Call:access$300	(Lcom/squareup/okhttp/Call;)Lcom/squareup/okhttp/OkHttpClient;
    //   123: invokevirtual 76	com/squareup/okhttp/OkHttpClient:getDispatcher	()Lcom/squareup/okhttp/Dispatcher;
    //   126: aload_0
    //   127: invokevirtual 82	com/squareup/okhttp/Dispatcher:finished	(Lcom/squareup/okhttp/Call$AsyncCall;)V
    //   130: return
    //   131: aload_0
    //   132: getfield 35	com/squareup/okhttp/Call$AsyncCall:responseCallback	Lcom/squareup/okhttp/Callback;
    //   135: aload_0
    //   136: getfield 14	com/squareup/okhttp/Call$AsyncCall:this$0	Lcom/squareup/okhttp/Call;
    //   139: getfield 124	com/squareup/okhttp/Call:engine	Lcom/squareup/okhttp/internal/http/HttpEngine;
    //   142: invokevirtual 130	com/squareup/okhttp/internal/http/HttpEngine:getRequest	()Lcom/squareup/okhttp/Request;
    //   145: aload_1
    //   146: invokeinterface 66 3 0
    //   151: goto -35 -> 116
    //   154: astore_1
    //   155: aload_0
    //   156: getfield 14	com/squareup/okhttp/Call$AsyncCall:this$0	Lcom/squareup/okhttp/Call;
    //   159: invokestatic 70	com/squareup/okhttp/Call:access$300	(Lcom/squareup/okhttp/Call;)Lcom/squareup/okhttp/OkHttpClient;
    //   162: invokevirtual 76	com/squareup/okhttp/OkHttpClient:getDispatcher	()Lcom/squareup/okhttp/Dispatcher;
    //   165: aload_0
    //   166: invokevirtual 82	com/squareup/okhttp/Dispatcher:finished	(Lcom/squareup/okhttp/Call$AsyncCall;)V
    //   169: aload_1
    //   170: athrow
    //   171: astore_1
    //   172: iconst_0
    //   173: istore_2
    //   174: goto -94 -> 80
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	177	0	this	AsyncCall
    //   13	58	1	localResponse	Response
    //   79	67	1	localIOException1	java.io.IOException
    //   154	16	1	localObject	Object
    //   171	1	1	localIOException2	java.io.IOException
    //   1	173	2	i	int
    //   21	2	3	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   26	51	79	java/io/IOException
    //   66	76	79	java/io/IOException
    //   2	22	154	finally
    //   26	51	154	finally
    //   66	76	154	finally
    //   84	116	154	finally
    //   131	151	154	finally
    //   2	22	171	java/io/IOException
  }
  
  final Call get()
  {
    return this.this$0;
  }
  
  final String host()
  {
    return this.this$0.originalRequest.url().getHost();
  }
  
  final Request request()
  {
    return this.this$0.originalRequest;
  }
  
  final Object tag()
  {
    return this.this$0.originalRequest.tag();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\squareup\okhttp\Call$AsyncCall.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
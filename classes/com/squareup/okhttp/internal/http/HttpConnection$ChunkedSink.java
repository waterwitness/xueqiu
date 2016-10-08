package com.squareup.okhttp.internal.http;

import c.d;
import c.e;
import c.r;
import c.t;

final class HttpConnection$ChunkedSink
  implements r
{
  private boolean closed;
  
  private HttpConnection$ChunkedSink(HttpConnection paramHttpConnection) {}
  
  /* Error */
  public final void close()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 24	com/squareup/okhttp/internal/http/HttpConnection$ChunkedSink:closed	Z
    //   6: istore_2
    //   7: iload_2
    //   8: ifeq +6 -> 14
    //   11: aload_0
    //   12: monitorexit
    //   13: return
    //   14: aload_0
    //   15: iconst_1
    //   16: putfield 24	com/squareup/okhttp/internal/http/HttpConnection$ChunkedSink:closed	Z
    //   19: aload_0
    //   20: getfield 14	com/squareup/okhttp/internal/http/HttpConnection$ChunkedSink:this$0	Lcom/squareup/okhttp/internal/http/HttpConnection;
    //   23: invokestatic 30	com/squareup/okhttp/internal/http/HttpConnection:access$300	(Lcom/squareup/okhttp/internal/http/HttpConnection;)Lc/e;
    //   26: ldc 32
    //   28: invokeinterface 38 2 0
    //   33: pop
    //   34: aload_0
    //   35: getfield 14	com/squareup/okhttp/internal/http/HttpConnection$ChunkedSink:this$0	Lcom/squareup/okhttp/internal/http/HttpConnection;
    //   38: iconst_3
    //   39: invokestatic 42	com/squareup/okhttp/internal/http/HttpConnection:access$402	(Lcom/squareup/okhttp/internal/http/HttpConnection;I)I
    //   42: pop
    //   43: goto -32 -> 11
    //   46: astore_1
    //   47: aload_0
    //   48: monitorexit
    //   49: aload_1
    //   50: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	51	0	this	ChunkedSink
    //   46	4	1	localObject	Object
    //   6	2	2	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   2	7	46	finally
    //   14	43	46	finally
  }
  
  /* Error */
  public final void flush()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 24	com/squareup/okhttp/internal/http/HttpConnection$ChunkedSink:closed	Z
    //   6: istore_2
    //   7: iload_2
    //   8: ifeq +6 -> 14
    //   11: aload_0
    //   12: monitorexit
    //   13: return
    //   14: aload_0
    //   15: getfield 14	com/squareup/okhttp/internal/http/HttpConnection$ChunkedSink:this$0	Lcom/squareup/okhttp/internal/http/HttpConnection;
    //   18: invokestatic 30	com/squareup/okhttp/internal/http/HttpConnection:access$300	(Lcom/squareup/okhttp/internal/http/HttpConnection;)Lc/e;
    //   21: invokeinterface 45 1 0
    //   26: goto -15 -> 11
    //   29: astore_1
    //   30: aload_0
    //   31: monitorexit
    //   32: aload_1
    //   33: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	34	0	this	ChunkedSink
    //   29	4	1	localObject	Object
    //   6	2	2	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   2	7	29	finally
    //   14	26	29	finally
  }
  
  public final t timeout()
  {
    return HttpConnection.access$300(this.this$0).timeout();
  }
  
  public final void write(d paramd, long paramLong)
  {
    if (this.closed) {
      throw new IllegalStateException("closed");
    }
    if (paramLong == 0L) {
      return;
    }
    HttpConnection.access$300(this.this$0).i(paramLong);
    HttpConnection.access$300(this.this$0).b("\r\n");
    HttpConnection.access$300(this.this$0).write(paramd, paramLong);
    HttpConnection.access$300(this.this$0).b("\r\n");
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\squareup\okhttp\internal\http\HttpConnection$ChunkedSink.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
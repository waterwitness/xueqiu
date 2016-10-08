package com.squareup.okhttp.internal.spdy;

import c.f;
import c.g;
import com.squareup.okhttp.Protocol;
import com.squareup.okhttp.internal.NamedRunnable;
import java.io.IOException;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutorService;

class SpdyConnection$Reader
  extends NamedRunnable
  implements FrameReader.Handler
{
  FrameReader frameReader;
  
  private SpdyConnection$Reader(SpdyConnection paramSpdyConnection)
  {
    super("OkHttp %s", new Object[] { SpdyConnection.access$900(paramSpdyConnection) });
  }
  
  private void ackSettingsLater(final Settings paramSettings)
  {
    SpdyConnection.access$1900().execute(new NamedRunnable("OkHttp %s ACK Settings", new Object[] { SpdyConnection.access$900(this.this$0) })
    {
      public void execute()
      {
        try
        {
          SpdyConnection.Reader.this.this$0.frameWriter.ackSettings(paramSettings);
          return;
        }
        catch (IOException localIOException) {}
      }
    });
  }
  
  public void ackSettings() {}
  
  public void alternateService(int paramInt1, String paramString1, g paramg, String paramString2, int paramInt2, long paramLong) {}
  
  public void data(boolean paramBoolean, int paramInt1, f paramf, int paramInt2)
  {
    if (SpdyConnection.access$1100(this.this$0, paramInt1)) {
      SpdyConnection.access$1200(this.this$0, paramInt1, paramf, paramInt2, paramBoolean);
    }
    SpdyStream localSpdyStream;
    do
    {
      return;
      localSpdyStream = this.this$0.getStream(paramInt1);
      if (localSpdyStream == null)
      {
        this.this$0.writeSynResetLater(paramInt1, ErrorCode.INVALID_STREAM);
        paramf.f(paramInt2);
        return;
      }
      localSpdyStream.receiveData(paramf, paramInt2);
    } while (!paramBoolean);
    localSpdyStream.receiveFin();
  }
  
  /* Error */
  protected void execute()
  {
    // Byte code:
    //   0: getstatic 100	com/squareup/okhttp/internal/spdy/ErrorCode:INTERNAL_ERROR	Lcom/squareup/okhttp/internal/spdy/ErrorCode;
    //   3: astore_3
    //   4: getstatic 100	com/squareup/okhttp/internal/spdy/ErrorCode:INTERNAL_ERROR	Lcom/squareup/okhttp/internal/spdy/ErrorCode;
    //   7: astore 4
    //   9: aload_3
    //   10: astore_2
    //   11: aload_3
    //   12: astore_1
    //   13: aload_0
    //   14: aload_0
    //   15: getfield 18	com/squareup/okhttp/internal/spdy/SpdyConnection$Reader:this$0	Lcom/squareup/okhttp/internal/spdy/SpdyConnection;
    //   18: getfield 104	com/squareup/okhttp/internal/spdy/SpdyConnection:variant	Lcom/squareup/okhttp/internal/spdy/Variant;
    //   21: aload_0
    //   22: getfield 18	com/squareup/okhttp/internal/spdy/SpdyConnection$Reader:this$0	Lcom/squareup/okhttp/internal/spdy/SpdyConnection;
    //   25: getfield 108	com/squareup/okhttp/internal/spdy/SpdyConnection:socket	Ljava/net/Socket;
    //   28: invokestatic 114	c/m:b	(Ljava/net/Socket;)Lc/s;
    //   31: invokestatic 118	c/m:a	(Lc/s;)Lc/f;
    //   34: aload_0
    //   35: getfield 18	com/squareup/okhttp/internal/spdy/SpdyConnection$Reader:this$0	Lcom/squareup/okhttp/internal/spdy/SpdyConnection;
    //   38: getfield 122	com/squareup/okhttp/internal/spdy/SpdyConnection:client	Z
    //   41: invokeinterface 128 3 0
    //   46: putfield 130	com/squareup/okhttp/internal/spdy/SpdyConnection$Reader:frameReader	Lcom/squareup/okhttp/internal/spdy/FrameReader;
    //   49: aload_3
    //   50: astore_2
    //   51: aload_3
    //   52: astore_1
    //   53: aload_0
    //   54: getfield 18	com/squareup/okhttp/internal/spdy/SpdyConnection$Reader:this$0	Lcom/squareup/okhttp/internal/spdy/SpdyConnection;
    //   57: getfield 122	com/squareup/okhttp/internal/spdy/SpdyConnection:client	Z
    //   60: ifne +16 -> 76
    //   63: aload_3
    //   64: astore_2
    //   65: aload_3
    //   66: astore_1
    //   67: aload_0
    //   68: getfield 130	com/squareup/okhttp/internal/spdy/SpdyConnection$Reader:frameReader	Lcom/squareup/okhttp/internal/spdy/FrameReader;
    //   71: invokeinterface 135 1 0
    //   76: aload_3
    //   77: astore_2
    //   78: aload_3
    //   79: astore_1
    //   80: aload_0
    //   81: getfield 130	com/squareup/okhttp/internal/spdy/SpdyConnection$Reader:frameReader	Lcom/squareup/okhttp/internal/spdy/FrameReader;
    //   84: aload_0
    //   85: invokeinterface 139 2 0
    //   90: ifne -14 -> 76
    //   93: aload_3
    //   94: astore_2
    //   95: aload_3
    //   96: astore_1
    //   97: getstatic 142	com/squareup/okhttp/internal/spdy/ErrorCode:NO_ERROR	Lcom/squareup/okhttp/internal/spdy/ErrorCode;
    //   100: astore_3
    //   101: aload_3
    //   102: astore_2
    //   103: aload_3
    //   104: astore_1
    //   105: getstatic 145	com/squareup/okhttp/internal/spdy/ErrorCode:CANCEL	Lcom/squareup/okhttp/internal/spdy/ErrorCode;
    //   108: astore 5
    //   110: aload_0
    //   111: getfield 18	com/squareup/okhttp/internal/spdy/SpdyConnection$Reader:this$0	Lcom/squareup/okhttp/internal/spdy/SpdyConnection;
    //   114: aload_3
    //   115: aload 5
    //   117: invokestatic 149	com/squareup/okhttp/internal/spdy/SpdyConnection:access$1000	(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;Lcom/squareup/okhttp/internal/spdy/ErrorCode;Lcom/squareup/okhttp/internal/spdy/ErrorCode;)V
    //   120: aload_0
    //   121: getfield 130	com/squareup/okhttp/internal/spdy/SpdyConnection$Reader:frameReader	Lcom/squareup/okhttp/internal/spdy/FrameReader;
    //   124: invokestatic 155	com/squareup/okhttp/internal/Util:closeQuietly	(Ljava/io/Closeable;)V
    //   127: return
    //   128: astore_1
    //   129: aload_2
    //   130: astore_1
    //   131: getstatic 158	com/squareup/okhttp/internal/spdy/ErrorCode:PROTOCOL_ERROR	Lcom/squareup/okhttp/internal/spdy/ErrorCode;
    //   134: astore_3
    //   135: getstatic 158	com/squareup/okhttp/internal/spdy/ErrorCode:PROTOCOL_ERROR	Lcom/squareup/okhttp/internal/spdy/ErrorCode;
    //   138: astore_1
    //   139: aload_0
    //   140: getfield 18	com/squareup/okhttp/internal/spdy/SpdyConnection$Reader:this$0	Lcom/squareup/okhttp/internal/spdy/SpdyConnection;
    //   143: aload_3
    //   144: aload_1
    //   145: invokestatic 149	com/squareup/okhttp/internal/spdy/SpdyConnection:access$1000	(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;Lcom/squareup/okhttp/internal/spdy/ErrorCode;Lcom/squareup/okhttp/internal/spdy/ErrorCode;)V
    //   148: aload_0
    //   149: getfield 130	com/squareup/okhttp/internal/spdy/SpdyConnection$Reader:frameReader	Lcom/squareup/okhttp/internal/spdy/FrameReader;
    //   152: invokestatic 155	com/squareup/okhttp/internal/Util:closeQuietly	(Ljava/io/Closeable;)V
    //   155: return
    //   156: astore_2
    //   157: aload_1
    //   158: astore_3
    //   159: aload_2
    //   160: astore_1
    //   161: aload_0
    //   162: getfield 18	com/squareup/okhttp/internal/spdy/SpdyConnection$Reader:this$0	Lcom/squareup/okhttp/internal/spdy/SpdyConnection;
    //   165: aload_3
    //   166: aload 4
    //   168: invokestatic 149	com/squareup/okhttp/internal/spdy/SpdyConnection:access$1000	(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;Lcom/squareup/okhttp/internal/spdy/ErrorCode;Lcom/squareup/okhttp/internal/spdy/ErrorCode;)V
    //   171: aload_0
    //   172: getfield 130	com/squareup/okhttp/internal/spdy/SpdyConnection$Reader:frameReader	Lcom/squareup/okhttp/internal/spdy/FrameReader;
    //   175: invokestatic 155	com/squareup/okhttp/internal/Util:closeQuietly	(Ljava/io/Closeable;)V
    //   178: aload_1
    //   179: athrow
    //   180: astore_2
    //   181: goto -10 -> 171
    //   184: astore_1
    //   185: goto -24 -> 161
    //   188: astore_1
    //   189: goto -41 -> 148
    //   192: astore_1
    //   193: goto -73 -> 120
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	196	0	this	Reader
    //   12	93	1	localObject1	Object
    //   128	1	1	localIOException1	IOException
    //   130	49	1	localObject2	Object
    //   184	1	1	localObject3	Object
    //   188	1	1	localIOException2	IOException
    //   192	1	1	localIOException3	IOException
    //   10	120	2	localObject4	Object
    //   156	4	2	localObject5	Object
    //   180	1	2	localIOException4	IOException
    //   3	163	3	localObject6	Object
    //   7	160	4	localErrorCode1	ErrorCode
    //   108	8	5	localErrorCode2	ErrorCode
    // Exception table:
    //   from	to	target	type
    //   13	49	128	java/io/IOException
    //   53	63	128	java/io/IOException
    //   67	76	128	java/io/IOException
    //   80	93	128	java/io/IOException
    //   97	101	128	java/io/IOException
    //   105	110	128	java/io/IOException
    //   13	49	156	finally
    //   53	63	156	finally
    //   67	76	156	finally
    //   80	93	156	finally
    //   97	101	156	finally
    //   105	110	156	finally
    //   131	135	156	finally
    //   161	171	180	java/io/IOException
    //   135	139	184	finally
    //   139	148	188	java/io/IOException
    //   110	120	192	java/io/IOException
  }
  
  public void goAway(int paramInt, ErrorCode arg2, g paramg)
  {
    ??? = paramg.c;
    synchronized (this.this$0)
    {
      paramg = (SpdyStream[])SpdyConnection.access$1700(this.this$0).values().toArray(new SpdyStream[SpdyConnection.access$1700(this.this$0).size()]);
      SpdyConnection.access$1402(this.this$0, true);
      int j = paramg.length;
      int i = 0;
      if (i < j)
      {
        ??? = paramg[i];
        if ((???.getId() > paramInt) && (???.isLocallyInitiated()))
        {
          ???.receiveRstStream(ErrorCode.REFUSED_STREAM);
          this.this$0.removeStream(???.getId());
        }
        i += 1;
      }
    }
  }
  
  public void headers(boolean paramBoolean1, boolean paramBoolean2, int paramInt1, int paramInt2, final List<Header> paramList, HeadersMode paramHeadersMode)
  {
    if (SpdyConnection.access$1100(this.this$0, paramInt1)) {
      SpdyConnection.access$1300(this.this$0, paramInt1, paramList, paramBoolean2);
    }
    SpdyStream localSpdyStream;
    do
    {
      return;
      synchronized (this.this$0)
      {
        if (SpdyConnection.access$1400(this.this$0)) {
          return;
        }
      }
      localSpdyStream = this.this$0.getStream(paramInt1);
      if (localSpdyStream == null)
      {
        if (paramHeadersMode.failIfStreamAbsent())
        {
          this.this$0.writeSynResetLater(paramInt1, ErrorCode.INVALID_STREAM);
          return;
        }
        if (paramInt1 <= SpdyConnection.access$1500(this.this$0)) {
          return;
        }
        if (paramInt1 % 2 == SpdyConnection.access$1600(this.this$0) % 2) {
          return;
        }
        paramList = new SpdyStream(paramInt1, this.this$0, paramBoolean1, paramBoolean2, paramList);
        SpdyConnection.access$1502(this.this$0, paramInt1);
        SpdyConnection.access$1700(this.this$0).put(Integer.valueOf(paramInt1), paramList);
        SpdyConnection.access$1900().execute(new NamedRunnable("OkHttp %s stream %d", new Object[] { SpdyConnection.access$900(this.this$0), Integer.valueOf(paramInt1) })
        {
          public void execute()
          {
            try
            {
              SpdyConnection.access$1800(SpdyConnection.Reader.this.this$0).receive(paramList);
              return;
            }
            catch (IOException localIOException)
            {
              throw new RuntimeException(localIOException);
            }
          }
        });
        return;
      }
      if (paramHeadersMode.failIfStreamPresent())
      {
        localSpdyStream.closeLater(ErrorCode.PROTOCOL_ERROR);
        this.this$0.removeStream(paramInt1);
        return;
      }
      localSpdyStream.receiveHeaders(paramList, paramHeadersMode);
    } while (!paramBoolean2);
    localSpdyStream.receiveFin();
  }
  
  public void ping(boolean paramBoolean, int paramInt1, int paramInt2)
  {
    if (paramBoolean)
    {
      Ping localPing = SpdyConnection.access$2200(this.this$0, paramInt1);
      if (localPing != null) {
        localPing.receive();
      }
      return;
    }
    SpdyConnection.access$2300(this.this$0, true, paramInt1, paramInt2, null);
  }
  
  public void priority(int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean) {}
  
  public void pushPromise(int paramInt1, int paramInt2, List<Header> paramList)
  {
    SpdyConnection.access$2400(this.this$0, paramInt2, paramList);
  }
  
  public void rstStream(int paramInt, ErrorCode paramErrorCode)
  {
    if (SpdyConnection.access$1100(this.this$0, paramInt)) {
      SpdyConnection.access$2000(this.this$0, paramInt, paramErrorCode);
    }
    SpdyStream localSpdyStream;
    do
    {
      return;
      localSpdyStream = this.this$0.removeStream(paramInt);
    } while (localSpdyStream == null);
    localSpdyStream.receiveRstStream(paramErrorCode);
  }
  
  public void settings(boolean paramBoolean, Settings paramSettings)
  {
    for (;;)
    {
      int i;
      synchronized (this.this$0)
      {
        i = this.this$0.peerSettings.getInitialWindowSize(65536);
        if (paramBoolean) {
          this.this$0.peerSettings.clear();
        }
        this.this$0.peerSettings.merge(paramSettings);
        if (this.this$0.getProtocol() == Protocol.HTTP_2) {
          ackSettingsLater(paramSettings);
        }
        int j = this.this$0.peerSettings.getInitialWindowSize(65536);
        if ((j == -1) || (j == i)) {
          break label247;
        }
        l = j - i;
        if (!SpdyConnection.access$2100(this.this$0))
        {
          this.this$0.addBytesToWriteWindow(l);
          SpdyConnection.access$2102(this.this$0, true);
        }
        if (SpdyConnection.access$1700(this.this$0).isEmpty()) {
          break label242;
        }
        paramSettings = (SpdyStream[])SpdyConnection.access$1700(this.this$0).values().toArray(new SpdyStream[SpdyConnection.access$1700(this.this$0).size()]);
        if ((paramSettings == null) || (l == 0L)) {
          break label241;
        }
        j = paramSettings.length;
        i = 0;
        if (i >= j) {
          break label241;
        }
      }
      synchronized (paramSettings[i])
      {
        ???.addBytesToWriteWindow(l);
        i += 1;
        continue;
        paramSettings = finally;
        throw paramSettings;
      }
      label241:
      return;
      label242:
      paramSettings = null;
      continue;
      label247:
      paramSettings = null;
      long l = 0L;
    }
  }
  
  public void windowUpdate(int paramInt, long paramLong)
  {
    if (paramInt == 0) {
      synchronized (this.this$0)
      {
        SpdyConnection localSpdyConnection = this.this$0;
        localSpdyConnection.bytesLeftInWriteWindow += paramLong;
        this.this$0.notifyAll();
        return;
      }
    }
    ??? = this.this$0.getStream(paramInt);
    if (??? != null) {
      try
      {
        ((SpdyStream)???).addBytesToWriteWindow(paramLong);
        return;
      }
      finally {}
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\squareup\okhttp\internal\spdy\SpdyConnection$Reader.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
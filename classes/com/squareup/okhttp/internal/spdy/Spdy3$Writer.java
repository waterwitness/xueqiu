package com.squareup.okhttp.internal.spdy;

import c.d;
import c.e;
import c.g;
import c.h;
import c.m;
import com.squareup.okhttp.internal.Util;
import java.io.IOException;
import java.util.List;
import java.util.zip.Deflater;

final class Spdy3$Writer
  implements FrameWriter
{
  private final boolean client;
  private boolean closed;
  private final d headerBlockBuffer;
  private final e headerBlockOut;
  private final e sink;
  
  Spdy3$Writer(e parame, boolean paramBoolean)
  {
    this.sink = parame;
    this.client = paramBoolean;
    parame = new Deflater();
    parame.setDictionary(Spdy3.DICTIONARY);
    this.headerBlockBuffer = new d();
    this.headerBlockOut = m.a(new h(this.headerBlockBuffer, parame));
  }
  
  private void writeNameValueBlockToBuffer(List<Header> paramList)
  {
    if (this.headerBlockBuffer.b != 0L) {
      throw new IllegalStateException();
    }
    this.headerBlockOut.e(paramList.size());
    int j = paramList.size();
    int i = 0;
    while (i < j)
    {
      g localg = ((Header)paramList.get(i)).name;
      this.headerBlockOut.e(localg.c.length);
      this.headerBlockOut.b(localg);
      localg = ((Header)paramList.get(i)).value;
      this.headerBlockOut.e(localg.c.length);
      this.headerBlockOut.b(localg);
      i += 1;
    }
    this.headerBlockOut.flush();
  }
  
  public final void ackSettings(Settings paramSettings) {}
  
  public final void close()
  {
    try
    {
      this.closed = true;
      Util.closeAll(this.sink, this.headerBlockOut);
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public final void connectionPreface() {}
  
  public final void data(boolean paramBoolean, int paramInt1, d paramd, int paramInt2)
  {
    if (paramBoolean) {}
    for (int i = 1;; i = 0) {
      try
      {
        sendDataFrame(paramInt1, i, paramd, paramInt2);
        return;
      }
      finally {}
    }
  }
  
  public final void flush()
  {
    try
    {
      if (this.closed) {
        throw new IOException("closed");
      }
    }
    finally {}
    this.sink.flush();
  }
  
  public final void goAway(int paramInt, ErrorCode paramErrorCode, byte[] paramArrayOfByte)
  {
    try
    {
      if (this.closed) {
        throw new IOException("closed");
      }
    }
    finally {}
    if (paramErrorCode.spdyGoAwayCode == -1) {
      throw new IllegalArgumentException("errorCode.spdyGoAwayCode == -1");
    }
    this.sink.e(-2147287033);
    this.sink.e(8);
    this.sink.e(paramInt);
    this.sink.e(paramErrorCode.spdyGoAwayCode);
    this.sink.flush();
  }
  
  public final void headers(int paramInt, List<Header> paramList)
  {
    try
    {
      if (this.closed) {
        throw new IOException("closed");
      }
    }
    finally {}
    writeNameValueBlockToBuffer(paramList);
    int i = (int)(this.headerBlockBuffer.b + 4L);
    this.sink.e(-2147287032);
    this.sink.e(i & 0xFFFFFF | 0x0);
    this.sink.e(0x7FFFFFFF & paramInt);
    this.sink.a(this.headerBlockBuffer);
  }
  
  public final int maxDataLength()
  {
    return 16383;
  }
  
  public final void ping(boolean paramBoolean, int paramInt1, int paramInt2)
  {
    boolean bool2 = true;
    try
    {
      if (this.closed) {
        throw new IOException("closed");
      }
    }
    finally {}
    boolean bool3 = this.client;
    boolean bool1;
    if ((paramInt1 & 0x1) == 1) {
      bool1 = true;
    }
    for (;;)
    {
      if (paramBoolean != bool1) {
        throw new IllegalArgumentException("payload != reply");
      }
      this.sink.e(-2147287034);
      this.sink.e(4);
      this.sink.e(paramInt1);
      this.sink.flush();
      return;
      for (;;)
      {
        if (bool3 == bool1) {
          break label130;
        }
        bool1 = bool2;
        break;
        bool1 = false;
      }
      label130:
      bool1 = false;
    }
  }
  
  public final void pushPromise(int paramInt1, int paramInt2, List<Header> paramList) {}
  
  public final void rstStream(int paramInt, ErrorCode paramErrorCode)
  {
    try
    {
      if (this.closed) {
        throw new IOException("closed");
      }
    }
    finally {}
    if (paramErrorCode.spdyRstCode == -1) {
      throw new IllegalArgumentException();
    }
    this.sink.e(-2147287037);
    this.sink.e(8);
    this.sink.e(0x7FFFFFFF & paramInt);
    this.sink.e(paramErrorCode.spdyRstCode);
    this.sink.flush();
  }
  
  final void sendDataFrame(int paramInt1, int paramInt2, d paramd, int paramInt3)
  {
    if (this.closed) {
      throw new IOException("closed");
    }
    if (paramInt3 > 16777215L) {
      throw new IllegalArgumentException("FRAME_TOO_LARGE max size is 16Mib: " + paramInt3);
    }
    this.sink.e(0x7FFFFFFF & paramInt1);
    this.sink.e((paramInt2 & 0xFF) << 24 | 0xFFFFFF & paramInt3);
    if (paramInt3 > 0) {
      this.sink.write(paramd, paramInt3);
    }
  }
  
  public final void settings(Settings paramSettings)
  {
    try
    {
      if (this.closed) {
        throw new IOException("closed");
      }
    }
    finally {}
    int i = paramSettings.size();
    this.sink.e(-2147287036);
    this.sink.e(i * 8 + 4 & 0xFFFFFF | 0x0);
    this.sink.e(i);
    i = 0;
    for (;;)
    {
      if (i <= 10)
      {
        if (paramSettings.isSet(i))
        {
          int j = paramSettings.flags(i);
          this.sink.e((j & 0xFF) << 24 | i & 0xFFFFFF);
          this.sink.e(paramSettings.get(i));
        }
      }
      else
      {
        this.sink.flush();
        return;
      }
      i += 1;
    }
  }
  
  public final void synReply(boolean paramBoolean, int paramInt, List<Header> paramList)
  {
    try
    {
      if (this.closed) {
        throw new IOException("closed");
      }
    }
    finally {}
    writeNameValueBlockToBuffer(paramList);
    if (paramBoolean) {}
    for (int i = 1;; i = 0)
    {
      int j = (int)(this.headerBlockBuffer.b + 4L);
      this.sink.e(-2147287038);
      this.sink.e((i & 0xFF) << 24 | j & 0xFFFFFF);
      this.sink.e(0x7FFFFFFF & paramInt);
      this.sink.a(this.headerBlockBuffer);
      this.sink.flush();
      return;
    }
  }
  
  public final void synStream(boolean paramBoolean1, boolean paramBoolean2, int paramInt1, int paramInt2, List<Header> paramList)
  {
    int j = 0;
    try
    {
      if (this.closed) {
        throw new IOException("closed");
      }
    }
    finally {}
    writeNameValueBlockToBuffer(paramList);
    int k = (int)(10L + this.headerBlockBuffer.b);
    int i;
    if (paramBoolean1) {
      i = 1;
    }
    for (;;)
    {
      this.sink.e(-2147287039);
      this.sink.e(((j | i) & 0xFF) << 24 | k & 0xFFFFFF);
      this.sink.e(paramInt1 & 0x7FFFFFFF);
      this.sink.e(paramInt2 & 0x7FFFFFFF);
      this.sink.f(0);
      this.sink.a(this.headerBlockBuffer);
      this.sink.flush();
      return;
      i = 0;
      if (paramBoolean2) {
        j = 2;
      }
    }
  }
  
  public final void windowUpdate(int paramInt, long paramLong)
  {
    try
    {
      if (this.closed) {
        throw new IOException("closed");
      }
    }
    finally {}
    if ((paramLong == 0L) || (paramLong > 2147483647L)) {
      throw new IllegalArgumentException("windowSizeIncrement must be between 1 and 0x7fffffff: " + paramLong);
    }
    this.sink.e(-2147287031);
    this.sink.e(8);
    this.sink.e(paramInt);
    this.sink.e((int)paramLong);
    this.sink.flush();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\squareup\okhttp\internal\spdy\Spdy3$Writer.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
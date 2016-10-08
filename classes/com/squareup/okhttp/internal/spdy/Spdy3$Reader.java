package com.squareup.okhttp.internal.spdy;

import c.f;
import c.g;
import java.io.IOException;
import java.net.ProtocolException;
import java.util.List;

final class Spdy3$Reader
  implements FrameReader
{
  private final boolean client;
  private final NameValueBlockReader headerBlockReader;
  private final f source;
  
  Spdy3$Reader(f paramf, boolean paramBoolean)
  {
    this.source = paramf;
    this.headerBlockReader = new NameValueBlockReader(this.source);
    this.client = paramBoolean;
  }
  
  private static IOException ioException(String paramString, Object... paramVarArgs)
  {
    throw new IOException(String.format(paramString, paramVarArgs));
  }
  
  private void readGoAway(FrameReader.Handler paramHandler, int paramInt1, int paramInt2)
  {
    if (paramInt2 != 8) {
      throw ioException("TYPE_GOAWAY length: %d != 8", new Object[] { Integer.valueOf(paramInt2) });
    }
    paramInt1 = this.source.h();
    paramInt2 = this.source.h();
    ErrorCode localErrorCode = ErrorCode.fromSpdyGoAway(paramInt2);
    if (localErrorCode == null) {
      throw ioException("TYPE_GOAWAY unexpected error code: %d", new Object[] { Integer.valueOf(paramInt2) });
    }
    paramHandler.goAway(paramInt1 & 0x7FFFFFFF, localErrorCode, g.b);
  }
  
  private void readHeaders(FrameReader.Handler paramHandler, int paramInt1, int paramInt2)
  {
    paramHandler.headers(false, false, this.source.h() & 0x7FFFFFFF, -1, this.headerBlockReader.readNameValueBlock(paramInt2 - 4), HeadersMode.SPDY_HEADERS);
  }
  
  private void readPing(FrameReader.Handler paramHandler, int paramInt1, int paramInt2)
  {
    boolean bool2 = true;
    if (paramInt2 != 4) {
      throw ioException("TYPE_PING length: %d != 4", new Object[] { Integer.valueOf(paramInt2) });
    }
    paramInt1 = this.source.h();
    boolean bool3 = this.client;
    if ((paramInt1 & 0x1) == 1)
    {
      bool1 = true;
      if (bool3 != bool1) {
        break label79;
      }
    }
    label79:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      paramHandler.ping(bool1, paramInt1, 0);
      return;
      bool1 = false;
      break;
    }
  }
  
  private void readRstStream(FrameReader.Handler paramHandler, int paramInt1, int paramInt2)
  {
    if (paramInt2 != 8) {
      throw ioException("TYPE_RST_STREAM length: %d != 8", new Object[] { Integer.valueOf(paramInt2) });
    }
    paramInt1 = this.source.h();
    paramInt2 = this.source.h();
    ErrorCode localErrorCode = ErrorCode.fromSpdy3Rst(paramInt2);
    if (localErrorCode == null) {
      throw ioException("TYPE_RST_STREAM unexpected error code: %d", new Object[] { Integer.valueOf(paramInt2) });
    }
    paramHandler.rstStream(paramInt1 & 0x7FFFFFFF, localErrorCode);
  }
  
  private void readSettings(FrameReader.Handler paramHandler, int paramInt1, int paramInt2)
  {
    boolean bool = true;
    int i = this.source.h();
    if (paramInt2 != i * 8 + 4) {
      throw ioException("TYPE_SETTINGS length: %d != 4 + 8 * %d", new Object[] { Integer.valueOf(paramInt2), Integer.valueOf(i) });
    }
    Settings localSettings = new Settings();
    paramInt2 = 0;
    while (paramInt2 < i)
    {
      int j = this.source.h();
      localSettings.set(j & 0xFFFFFF, (0xFF000000 & j) >>> 24, this.source.h());
      paramInt2 += 1;
    }
    if ((paramInt1 & 0x1) != 0) {}
    for (;;)
    {
      paramHandler.settings(bool, localSettings);
      return;
      bool = false;
    }
  }
  
  private void readSynReply(FrameReader.Handler paramHandler, int paramInt1, int paramInt2)
  {
    int i = this.source.h();
    List localList = this.headerBlockReader.readNameValueBlock(paramInt2 - 4);
    if ((paramInt1 & 0x1) != 0) {}
    for (boolean bool = true;; bool = false)
    {
      paramHandler.headers(false, bool, i & 0x7FFFFFFF, -1, localList, HeadersMode.SPDY_REPLY);
      return;
    }
  }
  
  private void readSynStream(FrameReader.Handler paramHandler, int paramInt1, int paramInt2)
  {
    boolean bool2 = true;
    int i = this.source.h();
    int j = this.source.h();
    this.source.g();
    List localList = this.headerBlockReader.readNameValueBlock(paramInt2 - 10);
    boolean bool1;
    if ((paramInt1 & 0x1) != 0)
    {
      bool1 = true;
      if ((paramInt1 & 0x2) == 0) {
        break label95;
      }
    }
    for (;;)
    {
      paramHandler.headers(bool2, bool1, i & 0x7FFFFFFF, j & 0x7FFFFFFF, localList, HeadersMode.SPDY_SYN_STREAM);
      return;
      bool1 = false;
      break;
      label95:
      bool2 = false;
    }
  }
  
  private void readWindowUpdate(FrameReader.Handler paramHandler, int paramInt1, int paramInt2)
  {
    if (paramInt2 != 8) {
      throw ioException("TYPE_WINDOW_UPDATE length: %d != 8", new Object[] { Integer.valueOf(paramInt2) });
    }
    paramInt1 = this.source.h();
    long l = this.source.h() & 0x7FFFFFFF;
    if (l == 0L) {
      throw ioException("windowSizeIncrement was 0", new Object[] { Long.valueOf(l) });
    }
    paramHandler.windowUpdate(paramInt1 & 0x7FFFFFFF, l);
  }
  
  public final void close()
  {
    this.headerBlockReader.close();
  }
  
  public final boolean nextFrame(FrameReader.Handler paramHandler)
  {
    boolean bool = false;
    int j;
    int k;
    int m;
    for (;;)
    {
      try
      {
        j = this.source.h();
        k = this.source.h();
        if ((0x80000000 & j) != 0)
        {
          i = 1;
          m = (0xFF000000 & k) >>> 24;
          k &= 0xFFFFFF;
          if (i == 0) {
            break label254;
          }
          i = (0x7FFF0000 & j) >>> 16;
          if (i == 3) {
            break;
          }
          throw new ProtocolException("version != 3: " + i);
        }
      }
      catch (IOException paramHandler)
      {
        return false;
      }
      int i = 0;
    }
    switch (0xFFFF & j)
    {
    case 5: 
    default: 
      this.source.f(k);
      return true;
    case 1: 
      readSynStream(paramHandler, m, k);
      return true;
    case 2: 
      readSynReply(paramHandler, m, k);
      return true;
    case 3: 
      readRstStream(paramHandler, m, k);
      return true;
    case 4: 
      readSettings(paramHandler, m, k);
      return true;
    case 6: 
      readPing(paramHandler, m, k);
      return true;
    case 7: 
      readGoAway(paramHandler, m, k);
      return true;
    case 8: 
      readHeaders(paramHandler, m, k);
      return true;
    }
    readWindowUpdate(paramHandler, m, k);
    return true;
    label254:
    if ((m & 0x1) != 0) {
      bool = true;
    }
    paramHandler.data(bool, 0x7FFFFFFF & j, this.source, k);
    return true;
  }
  
  public final void readConnectionPreface() {}
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\squareup\okhttp\internal\spdy\Spdy3$Reader.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
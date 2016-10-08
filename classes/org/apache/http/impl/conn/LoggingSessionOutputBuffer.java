package org.apache.http.impl.conn;

import java.nio.charset.Charset;
import org.apache.http.Consts;
import org.apache.http.annotation.Immutable;
import org.apache.http.io.HttpTransportMetrics;
import org.apache.http.io.SessionOutputBuffer;
import org.apache.http.util.CharArrayBuffer;

@Deprecated
@Immutable
public class LoggingSessionOutputBuffer
  implements SessionOutputBuffer
{
  private final String charset;
  private final SessionOutputBuffer out;
  private final Wire wire;
  
  public LoggingSessionOutputBuffer(SessionOutputBuffer paramSessionOutputBuffer, Wire paramWire)
  {
    this(paramSessionOutputBuffer, paramWire, null);
  }
  
  public LoggingSessionOutputBuffer(SessionOutputBuffer paramSessionOutputBuffer, Wire paramWire, String paramString)
  {
    this.out = paramSessionOutputBuffer;
    this.wire = paramWire;
    if (paramString != null) {}
    for (;;)
    {
      this.charset = paramString;
      return;
      paramString = Consts.ASCII.name();
    }
  }
  
  public void flush()
  {
    this.out.flush();
  }
  
  public HttpTransportMetrics getMetrics()
  {
    return this.out.getMetrics();
  }
  
  public void write(int paramInt)
  {
    this.out.write(paramInt);
    if (this.wire.enabled()) {
      this.wire.output(paramInt);
    }
  }
  
  public void write(byte[] paramArrayOfByte)
  {
    this.out.write(paramArrayOfByte);
    if (this.wire.enabled()) {
      this.wire.output(paramArrayOfByte);
    }
  }
  
  public void write(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    this.out.write(paramArrayOfByte, paramInt1, paramInt2);
    if (this.wire.enabled()) {
      this.wire.output(paramArrayOfByte, paramInt1, paramInt2);
    }
  }
  
  public void writeLine(String paramString)
  {
    this.out.writeLine(paramString);
    if (this.wire.enabled())
    {
      paramString = paramString + "\r\n";
      this.wire.output(paramString.getBytes(this.charset));
    }
  }
  
  public void writeLine(CharArrayBuffer paramCharArrayBuffer)
  {
    this.out.writeLine(paramCharArrayBuffer);
    if (this.wire.enabled())
    {
      paramCharArrayBuffer = new String(paramCharArrayBuffer.buffer(), 0, paramCharArrayBuffer.length());
      paramCharArrayBuffer = paramCharArrayBuffer + "\r\n";
      this.wire.output(paramCharArrayBuffer.getBytes(this.charset));
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\conn\LoggingSessionOutputBuffer.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
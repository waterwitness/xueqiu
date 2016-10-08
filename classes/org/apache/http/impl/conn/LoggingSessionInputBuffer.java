package org.apache.http.impl.conn;

import java.nio.charset.Charset;
import org.apache.http.Consts;
import org.apache.http.annotation.Immutable;
import org.apache.http.io.EofSensor;
import org.apache.http.io.HttpTransportMetrics;
import org.apache.http.io.SessionInputBuffer;
import org.apache.http.util.CharArrayBuffer;

@Deprecated
@Immutable
public class LoggingSessionInputBuffer
  implements EofSensor, SessionInputBuffer
{
  private final String charset;
  private final EofSensor eofSensor;
  private final SessionInputBuffer in;
  private final Wire wire;
  
  public LoggingSessionInputBuffer(SessionInputBuffer paramSessionInputBuffer, Wire paramWire)
  {
    this(paramSessionInputBuffer, paramWire, null);
  }
  
  public LoggingSessionInputBuffer(SessionInputBuffer paramSessionInputBuffer, Wire paramWire, String paramString)
  {
    this.in = paramSessionInputBuffer;
    if ((paramSessionInputBuffer instanceof EofSensor))
    {
      paramSessionInputBuffer = (EofSensor)paramSessionInputBuffer;
      this.eofSensor = paramSessionInputBuffer;
      this.wire = paramWire;
      if (paramString == null) {
        break label46;
      }
    }
    for (;;)
    {
      this.charset = paramString;
      return;
      paramSessionInputBuffer = null;
      break;
      label46:
      paramString = Consts.ASCII.name();
    }
  }
  
  public HttpTransportMetrics getMetrics()
  {
    return this.in.getMetrics();
  }
  
  public boolean isDataAvailable(int paramInt)
  {
    return this.in.isDataAvailable(paramInt);
  }
  
  public boolean isEof()
  {
    if (this.eofSensor != null) {
      return this.eofSensor.isEof();
    }
    return false;
  }
  
  public int read()
  {
    int i = this.in.read();
    if ((this.wire.enabled()) && (i != -1)) {
      this.wire.input(i);
    }
    return i;
  }
  
  public int read(byte[] paramArrayOfByte)
  {
    int i = this.in.read(paramArrayOfByte);
    if ((this.wire.enabled()) && (i > 0)) {
      this.wire.input(paramArrayOfByte, 0, i);
    }
    return i;
  }
  
  public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    paramInt2 = this.in.read(paramArrayOfByte, paramInt1, paramInt2);
    if ((this.wire.enabled()) && (paramInt2 > 0)) {
      this.wire.input(paramArrayOfByte, paramInt1, paramInt2);
    }
    return paramInt2;
  }
  
  public int readLine(CharArrayBuffer paramCharArrayBuffer)
  {
    int i = this.in.readLine(paramCharArrayBuffer);
    if ((this.wire.enabled()) && (i >= 0))
    {
      int j = paramCharArrayBuffer.length();
      paramCharArrayBuffer = new String(paramCharArrayBuffer.buffer(), j - i, i);
      paramCharArrayBuffer = paramCharArrayBuffer + "\r\n";
      this.wire.input(paramCharArrayBuffer.getBytes(this.charset));
    }
    return i;
  }
  
  public String readLine()
  {
    String str1 = this.in.readLine();
    if ((this.wire.enabled()) && (str1 != null))
    {
      String str2 = str1 + "\r\n";
      this.wire.input(str2.getBytes(this.charset));
    }
    return str1;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\conn\LoggingSessionInputBuffer.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
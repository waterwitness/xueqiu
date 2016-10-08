package org.apache.http.impl.conn;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import org.apache.commons.logging.Log;
import org.apache.http.annotation.Immutable;
import org.apache.http.util.Args;

@Immutable
public class Wire
{
  private final String id;
  private final Log log;
  
  public Wire(Log paramLog)
  {
    this(paramLog, "");
  }
  
  public Wire(Log paramLog, String paramString)
  {
    this.log = paramLog;
    this.id = paramString;
  }
  
  private void wire(String paramString, InputStream paramInputStream)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    for (;;)
    {
      int i = paramInputStream.read();
      if (i == -1) {
        break;
      }
      if (i == 13)
      {
        localStringBuilder.append("[\\r]");
      }
      else if (i == 10)
      {
        localStringBuilder.append("[\\n]\"");
        localStringBuilder.insert(0, "\"");
        localStringBuilder.insert(0, paramString);
        this.log.debug(this.id + " " + localStringBuilder.toString());
        localStringBuilder.setLength(0);
      }
      else if ((i < 32) || (i > 127))
      {
        localStringBuilder.append("[0x");
        localStringBuilder.append(Integer.toHexString(i));
        localStringBuilder.append("]");
      }
      else
      {
        localStringBuilder.append((char)i);
      }
    }
    if (localStringBuilder.length() > 0)
    {
      localStringBuilder.append('"');
      localStringBuilder.insert(0, '"');
      localStringBuilder.insert(0, paramString);
      this.log.debug(this.id + " " + localStringBuilder.toString());
    }
  }
  
  public boolean enabled()
  {
    return this.log.isDebugEnabled();
  }
  
  public void input(int paramInt)
  {
    input(new byte[] { (byte)paramInt });
  }
  
  public void input(InputStream paramInputStream)
  {
    Args.notNull(paramInputStream, "Input");
    wire("<< ", paramInputStream);
  }
  
  public void input(String paramString)
  {
    Args.notNull(paramString, "Input");
    input(paramString.getBytes());
  }
  
  public void input(byte[] paramArrayOfByte)
  {
    Args.notNull(paramArrayOfByte, "Input");
    wire("<< ", new ByteArrayInputStream(paramArrayOfByte));
  }
  
  public void input(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    Args.notNull(paramArrayOfByte, "Input");
    wire("<< ", new ByteArrayInputStream(paramArrayOfByte, paramInt1, paramInt2));
  }
  
  public void output(int paramInt)
  {
    output(new byte[] { (byte)paramInt });
  }
  
  public void output(InputStream paramInputStream)
  {
    Args.notNull(paramInputStream, "Output");
    wire(">> ", paramInputStream);
  }
  
  public void output(String paramString)
  {
    Args.notNull(paramString, "Output");
    output(paramString.getBytes());
  }
  
  public void output(byte[] paramArrayOfByte)
  {
    Args.notNull(paramArrayOfByte, "Output");
    wire(">> ", new ByteArrayInputStream(paramArrayOfByte));
  }
  
  public void output(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    Args.notNull(paramArrayOfByte, "Output");
    wire(">> ", new ByteArrayInputStream(paramArrayOfByte, paramInt1, paramInt2));
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\conn\Wire.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
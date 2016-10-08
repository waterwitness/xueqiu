package com.pingan.paphone.extension.http;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Random;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.message.BasicHeader;

class SimpleMultipartEntity
  implements HttpEntity
{
  private static final char[] MULTIPART_CHARS = "-_1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ".toCharArray();
  private String boundary = null;
  boolean isSetFirst = false;
  boolean isSetLast = false;
  ByteArrayOutputStream out = new ByteArrayOutputStream();
  
  public SimpleMultipartEntity()
  {
    StringBuffer localStringBuffer = new StringBuffer();
    Random localRandom = new Random();
    while (i < 30)
    {
      localStringBuffer.append(MULTIPART_CHARS[localRandom.nextInt(MULTIPART_CHARS.length)]);
      i += 1;
    }
    this.boundary = localStringBuffer.toString();
  }
  
  public void addPart(String paramString, File paramFile, boolean paramBoolean)
  {
    try
    {
      addPart(paramString, paramFile.getName(), new FileInputStream(paramFile), paramBoolean);
      return;
    }
    catch (FileNotFoundException paramString)
    {
      paramString.printStackTrace();
    }
  }
  
  public void addPart(String paramString1, String paramString2)
  {
    addPart(paramString1, paramString2, "text/plain; charset=UTF-8");
  }
  
  public void addPart(String paramString1, String paramString2, InputStream paramInputStream, String paramString3, boolean paramBoolean)
  {
    writeBoundary();
    try
    {
      paramString3 = "Content-Type: " + paramString3 + "\r\n";
      this.out.write(("Content-Disposition: form-data; name=\"" + paramString1 + "\"; filename=\"" + paramString2 + "\"\r\n").getBytes());
      this.out.write(paramString3.getBytes());
      this.out.write("Content-Transfer-Encoding: binary\r\n\r\n".getBytes());
      paramString1 = new byte['က'];
      for (;;)
      {
        int i = paramInputStream.read(paramString1);
        if (i == -1) {
          break;
        }
        this.out.write(paramString1, 0, i);
      }
      try
      {
        paramInputStream.close();
        throw paramString1;
      }
      catch (IOException paramString2)
      {
        for (;;)
        {
          paramString2.printStackTrace();
        }
      }
    }
    catch (IOException paramString1)
    {
      paramString1 = paramString1;
      paramString1.printStackTrace();
      try
      {
        paramInputStream.close();
        return;
      }
      catch (IOException paramString1)
      {
        paramString1.printStackTrace();
        return;
      }
      this.out.write("\r\n".getBytes());
      try
      {
        paramInputStream.close();
        return;
      }
      catch (IOException paramString1)
      {
        paramString1.printStackTrace();
        return;
      }
    }
    finally {}
  }
  
  public void addPart(String paramString1, String paramString2, InputStream paramInputStream, boolean paramBoolean)
  {
    addPart(paramString1, paramString2, paramInputStream, "application/octet-stream", paramBoolean);
  }
  
  public void addPart(String paramString1, String paramString2, String paramString3)
  {
    writeBoundary();
    try
    {
      this.out.write(("Content-Disposition: form-data; name=\"" + paramString1 + "\"\r\n").getBytes());
      this.out.write(("Content-Type: " + paramString3 + "\r\n\r\n").getBytes());
      this.out.write(paramString2.getBytes());
      this.out.write("\r\n".getBytes());
      return;
    }
    catch (IOException paramString1)
    {
      paramString1.printStackTrace();
    }
  }
  
  public void consumeContent()
  {
    if (isStreaming()) {
      throw new UnsupportedOperationException("Streaming entity does not implement #consumeContent()");
    }
  }
  
  public InputStream getContent()
  {
    writeLastBoundaryIfNeeds();
    return new ByteArrayInputStream(this.out.toByteArray());
  }
  
  public Header getContentEncoding()
  {
    return null;
  }
  
  public long getContentLength()
  {
    writeLastBoundaryIfNeeds();
    return this.out.toByteArray().length;
  }
  
  public Header getContentType()
  {
    return new BasicHeader("Content-Type", "multipart/form-data; boundary=" + this.boundary);
  }
  
  public boolean isChunked()
  {
    return false;
  }
  
  public boolean isRepeatable()
  {
    return false;
  }
  
  public boolean isStreaming()
  {
    return false;
  }
  
  public void writeBoundary()
  {
    try
    {
      this.out.write(("--" + this.boundary + "\r\n").getBytes());
      return;
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
    }
  }
  
  public void writeFirstBoundaryIfNeeds()
  {
    if (!this.isSetFirst) {
      writeBoundary();
    }
    this.isSetFirst = true;
  }
  
  public void writeLastBoundaryIfNeeds()
  {
    if (this.isSetLast) {
      return;
    }
    try
    {
      this.out.write(("--" + this.boundary + "--\r\n").getBytes());
      this.out.flush();
      this.isSetLast = true;
      return;
    }
    catch (IOException localIOException)
    {
      for (;;)
      {
        localIOException.printStackTrace();
      }
    }
  }
  
  public void writeTo(OutputStream paramOutputStream)
  {
    writeLastBoundaryIfNeeds();
    paramOutputStream.write(this.out.toByteArray());
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\pingan\paphone\extension\http\SimpleMultipartEntity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
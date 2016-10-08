package org.apache.http.io;

import org.apache.http.HttpMessage;

public abstract interface HttpMessageWriterFactory<T extends HttpMessage>
{
  public abstract HttpMessageWriter<T> create(SessionOutputBuffer paramSessionOutputBuffer);
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\io\HttpMessageWriterFactory.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
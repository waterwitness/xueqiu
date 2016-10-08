package org.apache.http.impl.bootstrap;

import java.io.IOException;
import org.apache.http.ExceptionLogger;
import org.apache.http.HttpServerConnection;
import org.apache.http.protocol.BasicHttpContext;
import org.apache.http.protocol.HttpCoreContext;
import org.apache.http.protocol.HttpService;

class Worker
  implements Runnable
{
  private final HttpServerConnection conn;
  private final ExceptionLogger exceptionLogger;
  private final HttpService httpservice;
  
  Worker(HttpService paramHttpService, HttpServerConnection paramHttpServerConnection, ExceptionLogger paramExceptionLogger)
  {
    this.httpservice = paramHttpService;
    this.conn = paramHttpServerConnection;
    this.exceptionLogger = paramExceptionLogger;
  }
  
  public HttpServerConnection getConnection()
  {
    return this.conn;
  }
  
  public void run()
  {
    try
    {
      BasicHttpContext localBasicHttpContext = new BasicHttpContext();
      HttpCoreContext localHttpCoreContext = HttpCoreContext.adapt(localBasicHttpContext);
      while ((!Thread.interrupted()) && (this.conn.isOpen()))
      {
        this.httpservice.handleRequest(this.conn, localHttpCoreContext);
        localBasicHttpContext.clear();
      }
      try
      {
        this.conn.shutdown();
        throw ((Throwable)localObject);
      }
      catch (IOException localIOException3)
      {
        for (;;)
        {
          this.exceptionLogger.log(localIOException3);
        }
      }
    }
    catch (Exception localException)
    {
      localException = localException;
      this.exceptionLogger.log(localException);
      try
      {
        this.conn.shutdown();
        return;
      }
      catch (IOException localIOException2)
      {
        this.exceptionLogger.log(localIOException2);
        return;
      }
      this.conn.close();
      try
      {
        this.conn.shutdown();
        return;
      }
      catch (IOException localIOException1)
      {
        this.exceptionLogger.log(localIOException1);
        return;
      }
    }
    finally {}
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\bootstrap\Worker.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
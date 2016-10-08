package org.apache.http.impl.bootstrap;

import java.net.ServerSocket;
import java.net.Socket;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.atomic.AtomicBoolean;
import org.apache.http.ExceptionLogger;
import org.apache.http.HttpConnectionFactory;
import org.apache.http.HttpServerConnection;
import org.apache.http.config.SocketConfig;
import org.apache.http.protocol.HttpService;

class RequestListener
  implements Runnable
{
  private final HttpConnectionFactory<? extends HttpServerConnection> connectionFactory;
  private final ExceptionLogger exceptionLogger;
  private final ExecutorService executorService;
  private final HttpService httpService;
  private final ServerSocket serversocket;
  private final SocketConfig socketConfig;
  private final AtomicBoolean terminated;
  
  public RequestListener(SocketConfig paramSocketConfig, ServerSocket paramServerSocket, HttpService paramHttpService, HttpConnectionFactory<? extends HttpServerConnection> paramHttpConnectionFactory, ExceptionLogger paramExceptionLogger, ExecutorService paramExecutorService)
  {
    this.socketConfig = paramSocketConfig;
    this.serversocket = paramServerSocket;
    this.connectionFactory = paramHttpConnectionFactory;
    this.httpService = paramHttpService;
    this.exceptionLogger = paramExceptionLogger;
    this.executorService = paramExecutorService;
    this.terminated = new AtomicBoolean(false);
  }
  
  public boolean isTerminated()
  {
    return this.terminated.get();
  }
  
  public void run()
  {
    try
    {
      while ((!isTerminated()) && (!Thread.interrupted()))
      {
        Object localObject = this.serversocket.accept();
        ((Socket)localObject).setSoTimeout(this.socketConfig.getSoTimeout());
        ((Socket)localObject).setKeepAlive(this.socketConfig.isSoKeepAlive());
        ((Socket)localObject).setTcpNoDelay(this.socketConfig.isTcpNoDelay());
        if (this.socketConfig.getRcvBufSize() > 0) {
          ((Socket)localObject).setReceiveBufferSize(this.socketConfig.getRcvBufSize());
        }
        if (this.socketConfig.getSndBufSize() > 0) {
          ((Socket)localObject).setSendBufferSize(this.socketConfig.getSndBufSize());
        }
        if (this.socketConfig.getSoLinger() >= 0) {
          ((Socket)localObject).setSoLinger(true, this.socketConfig.getSoLinger());
        }
        localObject = (HttpServerConnection)this.connectionFactory.createConnection((Socket)localObject);
        localObject = new Worker(this.httpService, (HttpServerConnection)localObject, this.exceptionLogger);
        this.executorService.execute((Runnable)localObject);
      }
      return;
    }
    catch (Exception localException)
    {
      this.exceptionLogger.log(localException);
    }
  }
  
  public void terminate()
  {
    if (this.terminated.compareAndSet(false, true)) {
      this.serversocket.close();
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\bootstrap\RequestListener.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
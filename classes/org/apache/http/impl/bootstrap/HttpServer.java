package org.apache.http.impl.bootstrap;

import java.io.IOException;
import java.net.InetAddress;
import java.net.ServerSocket;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import javax.net.ServerSocketFactory;
import javax.net.ssl.SSLServerSocket;
import org.apache.http.ExceptionLogger;
import org.apache.http.HttpConnectionFactory;
import org.apache.http.HttpServerConnection;
import org.apache.http.config.SocketConfig;
import org.apache.http.impl.DefaultBHttpServerConnection;
import org.apache.http.protocol.HttpService;

public class HttpServer
{
  private final HttpConnectionFactory<? extends DefaultBHttpServerConnection> connectionFactory;
  private final ExceptionLogger exceptionLogger;
  private final HttpService httpService;
  private final InetAddress ifAddress;
  private final ExecutorService listenerExecutorService;
  private final int port;
  private volatile RequestListener requestListener;
  private volatile ServerSocket serverSocket;
  private final ServerSocketFactory serverSocketFactory;
  private final SocketConfig socketConfig;
  private final SSLServerSetupHandler sslSetupHandler;
  private final AtomicReference<HttpServer.Status> status;
  private final ExecutorService workerExecutorService;
  private final ThreadGroup workerThreads;
  
  HttpServer(int paramInt, InetAddress paramInetAddress, SocketConfig paramSocketConfig, ServerSocketFactory paramServerSocketFactory, HttpService paramHttpService, HttpConnectionFactory<? extends DefaultBHttpServerConnection> paramHttpConnectionFactory, SSLServerSetupHandler paramSSLServerSetupHandler, ExceptionLogger paramExceptionLogger)
  {
    this.port = paramInt;
    this.ifAddress = paramInetAddress;
    this.socketConfig = paramSocketConfig;
    this.serverSocketFactory = paramServerSocketFactory;
    this.httpService = paramHttpService;
    this.connectionFactory = paramHttpConnectionFactory;
    this.sslSetupHandler = paramSSLServerSetupHandler;
    this.exceptionLogger = paramExceptionLogger;
    this.listenerExecutorService = Executors.newSingleThreadExecutor(new ThreadFactoryImpl("HTTP-listener-" + this.port));
    this.workerThreads = new ThreadGroup("HTTP-workers");
    this.workerExecutorService = Executors.newCachedThreadPool(new ThreadFactoryImpl("HTTP-worker", this.workerThreads));
    this.status = new AtomicReference(HttpServer.Status.READY);
  }
  
  public void awaitTermination(long paramLong, TimeUnit paramTimeUnit)
  {
    this.workerExecutorService.awaitTermination(paramLong, paramTimeUnit);
  }
  
  public InetAddress getInetAddress()
  {
    ServerSocket localServerSocket = this.serverSocket;
    if (localServerSocket != null) {
      return localServerSocket.getInetAddress();
    }
    return null;
  }
  
  public int getLocalPort()
  {
    ServerSocket localServerSocket = this.serverSocket;
    if (localServerSocket != null) {
      return localServerSocket.getLocalPort();
    }
    return -1;
  }
  
  public void shutdown(long paramLong, TimeUnit paramTimeUnit)
  {
    stop();
    if (paramLong > 0L) {}
    try
    {
      awaitTermination(paramLong, paramTimeUnit);
      paramTimeUnit = this.workerExecutorService.shutdownNow().iterator();
      while (paramTimeUnit.hasNext())
      {
        Object localObject = (Runnable)paramTimeUnit.next();
        if ((localObject instanceof Worker))
        {
          localObject = ((Worker)localObject).getConnection();
          try
          {
            ((HttpServerConnection)localObject).shutdown();
          }
          catch (IOException localIOException)
          {
            this.exceptionLogger.log(localIOException);
          }
        }
      }
    }
    catch (InterruptedException paramTimeUnit)
    {
      for (;;)
      {
        Thread.currentThread().interrupt();
      }
    }
  }
  
  public void start()
  {
    if (this.status.compareAndSet(HttpServer.Status.READY, HttpServer.Status.ACTIVE))
    {
      this.serverSocket = this.serverSocketFactory.createServerSocket(this.port, this.socketConfig.getBacklogSize(), this.ifAddress);
      this.serverSocket.setReuseAddress(this.socketConfig.isSoReuseAddress());
      if (this.socketConfig.getRcvBufSize() > 0) {
        this.serverSocket.setReceiveBufferSize(this.socketConfig.getRcvBufSize());
      }
      if ((this.sslSetupHandler != null) && ((this.serverSocket instanceof SSLServerSocket))) {
        this.sslSetupHandler.initialize((SSLServerSocket)this.serverSocket);
      }
      this.requestListener = new RequestListener(this.socketConfig, this.serverSocket, this.httpService, this.connectionFactory, this.exceptionLogger, this.workerExecutorService);
      this.listenerExecutorService.execute(this.requestListener);
    }
  }
  
  public void stop()
  {
    RequestListener localRequestListener;
    if (this.status.compareAndSet(HttpServer.Status.ACTIVE, HttpServer.Status.STOPPING))
    {
      localRequestListener = this.requestListener;
      if (localRequestListener == null) {}
    }
    try
    {
      localRequestListener.terminate();
      this.workerThreads.interrupt();
      this.listenerExecutorService.shutdown();
      this.workerExecutorService.shutdown();
      return;
    }
    catch (IOException localIOException)
    {
      for (;;)
      {
        this.exceptionLogger.log(localIOException);
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\bootstrap\HttpServer.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
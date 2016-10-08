package org.apache.http.config;

public class SocketConfig$Builder
{
  private int backlogSize;
  private int rcvBufSize;
  private int sndBufSize;
  private boolean soKeepAlive;
  private int soLinger = -1;
  private boolean soReuseAddress;
  private int soTimeout;
  private boolean tcpNoDelay = true;
  
  public SocketConfig build()
  {
    return new SocketConfig(this.soTimeout, this.soReuseAddress, this.soLinger, this.soKeepAlive, this.tcpNoDelay, this.sndBufSize, this.rcvBufSize, this.backlogSize);
  }
  
  public Builder setBacklogSize(int paramInt)
  {
    this.backlogSize = paramInt;
    return this;
  }
  
  public Builder setRcvBufSize(int paramInt)
  {
    this.rcvBufSize = paramInt;
    return this;
  }
  
  public Builder setSndBufSize(int paramInt)
  {
    this.sndBufSize = paramInt;
    return this;
  }
  
  public Builder setSoKeepAlive(boolean paramBoolean)
  {
    this.soKeepAlive = paramBoolean;
    return this;
  }
  
  public Builder setSoLinger(int paramInt)
  {
    this.soLinger = paramInt;
    return this;
  }
  
  public Builder setSoReuseAddress(boolean paramBoolean)
  {
    this.soReuseAddress = paramBoolean;
    return this;
  }
  
  public Builder setSoTimeout(int paramInt)
  {
    this.soTimeout = paramInt;
    return this;
  }
  
  public Builder setTcpNoDelay(boolean paramBoolean)
  {
    this.tcpNoDelay = paramBoolean;
    return this;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\config\SocketConfig$Builder.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
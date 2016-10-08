package com.sleepycat.b.i.h;

import com.sleepycat.b.aa;
import java.nio.channels.SocketChannel;

public abstract class ad
{
  private boolean a = false;
  final String d;
  
  public ad(String paramString)
  {
    if (paramString == null) {
      throw aa.c("Service name was null");
    }
    this.d = paramString;
  }
  
  public abstract void a();
  
  public boolean b()
  {
    return false;
  }
  
  public boolean c()
  {
    return this.a;
  }
  
  abstract void d(SocketChannel paramSocketChannel);
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\h\ad.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
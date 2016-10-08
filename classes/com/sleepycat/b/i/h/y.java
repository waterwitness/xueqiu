package com.sleepycat.b.i.h;

import com.sleepycat.b.i.c.ap;
import com.sleepycat.b.i.c.ay;
import com.sleepycat.b.i.c.az;
import com.sleepycat.b.p.w;
import java.io.IOException;
import java.io.PrintWriter;
import java.net.Socket;
import java.nio.channels.SocketChannel;

public abstract class y
  implements Runnable
{
  public final SocketChannel b;
  public final ap c;
  protected final boolean d;
  
  static
  {
    if (!x.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      e = bool;
      return;
    }
  }
  
  public y(SocketChannel paramSocketChannel, ap paramap)
  {
    this.b = paramSocketChannel;
    this.c = paramap;
    this.d = true;
  }
  
  public abstract az a(ay paramay);
  
  public abstract void a(String paramString);
  
  public void run()
  {
    for (;;)
    {
      try
      {
        this.b.configureBlocking(true);
        ay localay = this.c.a(this.b);
        if (localay != null) {
          continue;
        }
        if (!this.b.isOpen()) {}
      }
      catch (IOException localIOException3)
      {
        az localaz;
        a("IO error on socket: " + w.a(localIOException3));
        if (!this.b.isOpen()) {
          continue;
        }
        try
        {
          this.b.close();
          return;
        }
        catch (IOException localIOException4)
        {
          a("IO error on socket close: " + w.a(localIOException4));
          return;
        }
      }
      finally
      {
        if (!this.b.isOpen()) {
          continue;
        }
        try
        {
          this.b.close();
          throw ((Throwable)localObject);
        }
        catch (IOException localIOException5)
        {
          a("IO error on socket close: " + w.a(localIOException5));
        }
      }
      try
      {
        this.b.close();
        return;
      }
      catch (IOException localIOException1)
      {
        a("IO error on socket close: " + w.a(localIOException1));
        return;
      }
    }
    localaz = a(localIOException1);
    if ((this.d) && (localaz != null)) {
      new PrintWriter(this.b.socket().getOutputStream(), true).println(localaz.b());
    }
    while ((e) || (localIOException2 == null))
    {
      if (!this.b.isOpen()) {
        break;
      }
      try
      {
        this.b.close();
        return;
      }
      catch (IOException localIOException2)
      {
        a("IO error on socket close: " + w.a(localIOException2));
        return;
      }
    }
    throw new AssertionError();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\h\y.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
package c;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;
import java.util.logging.Level;
import java.util.logging.Logger;

public final class m
{
  private static final Logger a = Logger.getLogger(m.class.getName());
  
  public static e a(r paramr)
  {
    if (paramr == null) {
      throw new IllegalArgumentException("sink == null");
    }
    return new n(paramr);
  }
  
  public static f a(s params)
  {
    if (params == null) {
      throw new IllegalArgumentException("source == null");
    }
    return new o(params);
  }
  
  private static r a(OutputStream paramOutputStream)
  {
    return a(paramOutputStream, new t());
  }
  
  private static r a(final OutputStream paramOutputStream, t paramt)
  {
    if (paramOutputStream == null) {
      throw new IllegalArgumentException("out == null");
    }
    if (paramt == null) {
      throw new IllegalArgumentException("timeout == null");
    }
    new r()
    {
      public final void close()
      {
        paramOutputStream.close();
      }
      
      public final void flush()
      {
        paramOutputStream.flush();
      }
      
      public final t timeout()
      {
        return m.this;
      }
      
      public final String toString()
      {
        return "sink(" + paramOutputStream + ")";
      }
      
      public final void write(d paramAnonymousd, long paramAnonymousLong)
      {
        u.a(paramAnonymousd.b, 0L, paramAnonymousLong);
        while (paramAnonymousLong > 0L)
        {
          m.this.throwIfReached();
          p localp = paramAnonymousd.a;
          int i = (int)Math.min(paramAnonymousLong, localp.c - localp.b);
          paramOutputStream.write(localp.a, localp.b, i);
          localp.b += i;
          long l = paramAnonymousLong - i;
          paramAnonymousd.b -= i;
          paramAnonymousLong = l;
          if (localp.b == localp.c)
          {
            paramAnonymousd.a = localp.a();
            q.a(localp);
            paramAnonymousLong = l;
          }
        }
      }
    };
  }
  
  public static r a(Socket paramSocket)
  {
    if (paramSocket == null) {
      throw new IllegalArgumentException("socket == null");
    }
    a locala = c(paramSocket);
    return locala.sink(a(paramSocket.getOutputStream(), locala));
  }
  
  public static s a(File paramFile)
  {
    if (paramFile == null) {
      throw new IllegalArgumentException("file == null");
    }
    return a(new FileInputStream(paramFile), new t());
  }
  
  private static s a(final InputStream paramInputStream, t paramt)
  {
    if (paramInputStream == null) {
      throw new IllegalArgumentException("in == null");
    }
    if (paramt == null) {
      throw new IllegalArgumentException("timeout == null");
    }
    new s()
    {
      public final void close()
      {
        paramInputStream.close();
      }
      
      public final long read(d paramAnonymousd, long paramAnonymousLong)
      {
        if (paramAnonymousLong < 0L) {
          throw new IllegalArgumentException("byteCount < 0: " + paramAnonymousLong);
        }
        if (paramAnonymousLong == 0L) {
          return 0L;
        }
        m.this.throwIfReached();
        p localp = paramAnonymousd.d(1);
        int i = (int)Math.min(paramAnonymousLong, 2048 - localp.c);
        i = paramInputStream.read(localp.a, localp.c, i);
        if (i == -1) {
          return -1L;
        }
        localp.c += i;
        paramAnonymousd.b += i;
        return i;
      }
      
      public final t timeout()
      {
        return m.this;
      }
      
      public final String toString()
      {
        return "source(" + paramInputStream + ")";
      }
    };
  }
  
  public static r b(File paramFile)
  {
    if (paramFile == null) {
      throw new IllegalArgumentException("file == null");
    }
    return a(new FileOutputStream(paramFile));
  }
  
  public static s b(Socket paramSocket)
  {
    if (paramSocket == null) {
      throw new IllegalArgumentException("socket == null");
    }
    a locala = c(paramSocket);
    return locala.source(a(paramSocket.getInputStream(), locala));
  }
  
  private static a c(Socket paramSocket)
  {
    new a()
    {
      protected final void timedOut()
      {
        try
        {
          m.this.close();
          return;
        }
        catch (Exception localException)
        {
          m.a().log(Level.WARNING, "Failed to close timed out socket " + m.this, localException);
        }
      }
    };
  }
  
  public static r c(File paramFile)
  {
    if (paramFile == null) {
      throw new IllegalArgumentException("file == null");
    }
    return a(new FileOutputStream(paramFile, true));
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\c\m.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
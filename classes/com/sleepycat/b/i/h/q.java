package com.sleepycat.b.i.h;

import com.sleepycat.b.aa;
import com.sleepycat.b.bc;
import com.sleepycat.b.p.ai;
import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.nio.channels.SocketChannel;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class q
{
  public static final SocketChannel a;
  private static final Map<String, r<?>> b = new HashMap();
  
  static
  {
    a("TimeConsistencyPolicy", new v((byte)0));
    a("NoConsistencyRequiredPolicy", new u((byte)0));
    try
    {
      a = SocketChannel.open();
      return;
    }
    catch (IOException localIOException)
    {
      throw aa.a(localIOException);
    }
  }
  
  public static bc a(String paramString)
  {
    String str1 = paramString.toUpperCase(Locale.ENGLISH);
    Iterator localIterator = b.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      String str2 = (String)localEntry.getKey();
      if ((str1.equals(str2)) || ((str1.startsWith(str2)) && (str1.length() > str2.length()) && (!Character.isLetter(str1.charAt(str2.length()))))) {
        return ((r)localEntry.getValue()).a(paramString);
      }
    }
    throw new IllegalArgumentException("Invalid consistency policy: " + paramString);
  }
  
  public static String a(ai paramai)
  {
    long l1 = 0L;
    long l3 = paramai.c(l.f);
    long l2 = paramai.c(l.b);
    if (l3 <= 0L) {}
    for (;;)
    {
      return String.format(" write time: %, dms Avg write time: %,dus", new Object[] { Long.valueOf(l2 / 1000000L), Long.valueOf(l1 / 1000L) });
      l1 = l2 / l3;
    }
  }
  
  public static Throwable a(Throwable paramThrowable1, Throwable paramThrowable2)
  {
    for (Throwable localThrowable = paramThrowable1; localThrowable.getCause() != null; localThrowable = localThrowable.getCause()) {}
    localThrowable.initCause(paramThrowable2);
    return paramThrowable1;
  }
  
  public static SocketChannel a(InetSocketAddress paramInetSocketAddress)
  {
    SocketChannel localSocketChannel = SocketChannel.open();
    localSocketChannel.configureBlocking(true);
    Socket localSocket = localSocketChannel.socket();
    localSocket.setTcpNoDelay(true);
    localSocket.setSoTimeout(5000);
    localSocket.connect(paramInetSocketAddress, 5000);
    return localSocketChannel;
  }
  
  public static void a(o paramo)
  {
    if (paramo == null) {}
    do
    {
      return;
      paramo = paramo.a();
    } while (paramo == null);
    try
    {
      paramo.socket().shutdownInput();
      try
      {
        paramo.socket().shutdownOutput();
        try
        {
          paramo.close();
          return;
        }
        catch (IOException paramo) {}
      }
      catch (IOException localIOException1)
      {
        for (;;) {}
      }
    }
    catch (IOException localIOException2)
    {
      for (;;) {}
    }
  }
  
  private static void a(String paramString, r<?> paramr)
  {
    b.put(paramString.toUpperCase(Locale.ENGLISH), paramr);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\h\q.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
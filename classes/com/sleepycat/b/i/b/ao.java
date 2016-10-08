package com.sleepycat.b.i.b;

import com.sleepycat.b.c.ad;
import com.sleepycat.b.i.c.ap;
import com.sleepycat.b.i.c.as;
import com.sleepycat.b.i.c.au;
import com.sleepycat.b.i.c.ay;
import com.sleepycat.b.p.w;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.RejectedExecutionException;
import java.util.logging.Formatter;
import java.util.logging.Level;
import java.util.logging.Logger;

public final class ao
{
  public static List<Future<au>> a(Set<InetSocketAddress> paramSet, String paramString, ay paramay, ExecutorService paramExecutorService)
  {
    LinkedList localLinkedList = new LinkedList();
    paramSet = paramSet.iterator();
    while (paramSet.hasNext())
    {
      Object localObject = (InetSocketAddress)paramSet.next();
      ap localap = paramay.k;
      localap.getClass();
      localObject = new au(localap, (InetSocketAddress)localObject, paramString, paramay);
      try
      {
        localLinkedList.add(paramExecutorService.submit((Runnable)localObject, localObject));
      }
      catch (RejectedExecutionException paramSet)
      {
        if (paramExecutorService.isTerminated()) {
          return new LinkedList();
        }
        throw paramSet;
      }
    }
    return localLinkedList;
  }
  
  static void a(List<Future<au>> paramList)
  {
    paramList = paramList.iterator();
    while (paramList.hasNext()) {
      ((Future)paramList.next()).cancel(false);
    }
  }
  
  public static void a(Logger paramLogger, ad paramad, Formatter paramFormatter, Socket paramSocket, BufferedReader paramBufferedReader, PrintWriter paramPrintWriter)
  {
    if (paramBufferedReader != null) {}
    try
    {
      paramBufferedReader.close();
      if (paramPrintWriter != null) {
        paramPrintWriter.close();
      }
      if ((paramSocket != null) && (!paramSocket.isClosed())) {}
      try
      {
        paramSocket.close();
        return;
      }
      catch (IOException paramSocket)
      {
        w.a(paramLogger, paramad, paramFormatter, Level.FINE, "Socket exception on close: " + paramSocket.getMessage());
        return;
      }
    }
    catch (IOException paramBufferedReader)
    {
      for (;;) {}
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\b\ao.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
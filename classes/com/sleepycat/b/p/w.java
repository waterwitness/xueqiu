package com.sleepycat.b.p;

import com.sleepycat.b.b.b;
import com.sleepycat.b.c.ad;
import com.sleepycat.b.g.aw;
import com.sleepycat.b.o.a;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.logging.ConsoleHandler;
import java.util.logging.Formatter;
import java.util.logging.Handler;
import java.util.logging.Level;
import java.util.logging.LogManager;
import java.util.logging.Logger;

public final class w
{
  static final Map<Thread, ad> a = new ConcurrentHashMap();
  static final Map<Thread, Formatter> b = new ConcurrentHashMap();
  
  public static String a()
  {
    return a(new Exception());
  }
  
  public static String a(Exception paramException)
  {
    return paramException.getClass() + " : " + paramException.getMessage();
  }
  
  public static String a(String paramString)
  {
    return LogManager.getLogManager().getProperty(paramString);
  }
  
  public static String a(Throwable paramThrowable)
  {
    StringWriter localStringWriter = new StringWriter();
    paramThrowable.printStackTrace(new PrintWriter(localStringWriter));
    return localStringWriter.toString().replaceAll("&lt", "<").replaceAll("&gt", ">");
  }
  
  public static Level a(com.sleepycat.b.c.m paramm, b paramb, String paramString)
  {
    int i = 0;
    paramm = paramm.a(paramb);
    if (!paramb.b.equals(paramm)) {
      i = 1;
    }
    paramb = LogManager.getLogManager().getProperty(paramString);
    if ((i == 0) && (paramb != null)) {
      paramm = paramb;
    }
    for (;;)
    {
      return Level.parse(paramm);
    }
  }
  
  public static Logger a(Class<?> paramClass)
  {
    int n = 0;
    int i = 0;
    paramClass = b(paramClass.getName());
    Handler[] arrayOfHandler = paramClass.getHandlers();
    if (arrayOfHandler != null)
    {
      int i3 = arrayOfHandler.length;
      int m = 0;
      int j = 0;
      int k = 0;
      for (;;)
      {
        i2 = k;
        i1 = j;
        n = i;
        if (m >= i3) {
          break;
        }
        Handler localHandler = arrayOfHandler[m];
        if ((localHandler instanceof ConsoleHandler)) {
          k = 1;
        }
        if ((localHandler instanceof k)) {
          j = 1;
        }
        if ((localHandler instanceof f)) {
          i = 1;
        }
        m += 1;
      }
    }
    int i1 = 0;
    int i2 = 0;
    if (i2 == 0) {
      paramClass.addHandler(new g());
    }
    if (i1 == 0) {
      paramClass.addHandler(new k());
    }
    if (n == 0) {
      paramClass.addHandler(new f());
    }
    return paramClass;
  }
  
  public static Logger a(Class<?> paramClass, String paramString)
  {
    paramClass = b(paramClass.getName() + ".fixedPrefix");
    if (!a(paramClass)) {
      paramClass.addHandler(new a(new at(paramString), null));
    }
    return paramClass;
  }
  
  public static void a(ad paramad, String paramString1, String paramString2, String paramString3, Throwable paramThrowable)
  {
    paramString3 = paramString3 + "\n" + a(paramThrowable);
    a.put(Thread.currentThread(), paramad);
    try
    {
      paramad.v.logp(Level.SEVERE, paramString1, paramString2, paramString3);
      a.remove(Thread.currentThread());
      aw.a(paramad, paramString3);
      return;
    }
    finally
    {
      a.remove(Thread.currentThread());
    }
  }
  
  public static void a(Level paramLevel, ad paramad, String paramString)
  {
    a(paramad.v, paramad, paramLevel, paramString);
  }
  
  public static void a(Logger paramLogger, ad paramad, String paramString)
  {
    a(paramLogger, paramad, Level.SEVERE, paramString);
  }
  
  public static void a(Logger paramLogger, ad paramad, Formatter paramFormatter, Level paramLevel, String paramString)
  {
    if (paramad != null)
    {
      a(paramLogger, paramad, paramLevel, paramString);
      return;
    }
    if (paramFormatter != null) {
      b.put(Thread.currentThread(), paramFormatter);
    }
    try
    {
      paramLogger.log(paramLevel, paramString);
      return;
    }
    finally
    {
      b.remove(Thread.currentThread());
    }
  }
  
  public static void a(Logger paramLogger, ad paramad, Level paramLevel, String paramString)
  {
    if (paramad != null) {
      a.put(Thread.currentThread(), paramad);
    }
    try
    {
      paramLogger.log(paramLevel, paramString);
      return;
    }
    finally
    {
      a.remove(Thread.currentThread());
    }
  }
  
  private static boolean a(Logger paramLogger)
  {
    paramLogger = paramLogger.getHandlers();
    if (paramLogger == null) {}
    for (;;)
    {
      return false;
      int j = paramLogger.length;
      int i = 0;
      while (i < j)
      {
        if ((paramLogger[i] instanceof ConsoleHandler)) {
          return true;
        }
        i += 1;
      }
    }
  }
  
  public static Logger b(Class<?> paramClass)
  {
    paramClass = b(paramClass.getName() + ".noEnv");
    if (!a(paramClass)) {
      paramClass.addHandler(new m());
    }
    return paramClass;
  }
  
  private static Logger b(String paramString)
  {
    paramString = Logger.getLogger(paramString);
    paramString.setUseParentHandlers(false);
    return paramString;
  }
  
  public static void b(Logger paramLogger, ad paramad, String paramString)
  {
    a(paramLogger, paramad, Level.WARNING, paramString);
  }
  
  public static void b(Logger paramLogger, ad paramad, Level paramLevel, String paramString)
  {
    a(paramLogger, paramad, paramLevel, paramString);
    aw.a(paramad, paramString);
  }
  
  public static void c(Logger paramLogger, ad paramad, String paramString)
  {
    a(paramLogger, paramad, Level.INFO, paramString);
  }
  
  public static void d(Logger paramLogger, ad paramad, String paramString)
  {
    a(paramLogger, paramad, Level.FINE, paramString);
  }
  
  public static void e(Logger paramLogger, ad paramad, String paramString)
  {
    a(paramLogger, paramad, Level.FINEST, paramString);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\p\w.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
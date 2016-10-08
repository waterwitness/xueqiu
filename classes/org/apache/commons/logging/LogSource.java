package org.apache.commons.logging;

import java.lang.reflect.Constructor;
import java.util.Hashtable;
import java.util.Set;
import org.apache.commons.logging.a.b;

public class LogSource
{
  protected static boolean jdk14IsAvailable = false;
  protected static boolean log4jIsAvailable;
  protected static Constructor logImplctor = null;
  protected static Hashtable logs;
  
  static
  {
    Object localObject = null;
    boolean bool2 = true;
    logs = new Hashtable();
    log4jIsAvailable = false;
    for (;;)
    {
      try
      {
        if (Class.forName("org.apache.log4j.Logger") != null)
        {
          bool1 = true;
          log4jIsAvailable = bool1;
        }
      }
      catch (Throwable localThrowable5)
      {
        String str;
        log4jIsAvailable = false;
        continue;
        boolean bool1 = false;
        continue;
      }
      try
      {
        if ((Class.forName("java.util.logging.Logger") != null) && (Class.forName("org.apache.commons.logging.a.a") != null))
        {
          bool1 = bool2;
          jdk14IsAvailable = bool1;
        }
      }
      catch (Throwable localThrowable6)
      {
        jdk14IsAvailable = false;
        continue;
        try
        {
          if (log4jIsAvailable)
          {
            setLogImplementation("org.apache.commons.logging.impl.Log4JLogger");
            return;
          }
        }
        catch (Throwable localThrowable3)
        {
          try
          {
            setLogImplementation("org.apache.commons.logging.impl.NoOpLog");
            return;
          }
          catch (Throwable localThrowable4)
          {
            return;
          }
          if (jdk14IsAvailable)
          {
            setLogImplementation("org.apache.commons.logging.a.a");
            return;
          }
          setLogImplementation("org.apache.commons.logging.impl.NoOpLog");
          return;
        }
      }
      try
      {
        str = System.getProperty("org.apache.commons.logging.log");
        localObject = str;
        if (str == null)
        {
          localObject = str;
          str = System.getProperty("org.apache.commons.logging.Log");
          localObject = str;
        }
      }
      catch (Throwable localThrowable7)
      {
        continue;
      }
      if (localObject == null) {
        break label128;
      }
      try
      {
        setLogImplementation((String)localObject);
        return;
      }
      catch (Throwable localThrowable1)
      {
        try
        {
          setLogImplementation("org.apache.commons.logging.impl.NoOpLog");
          return;
        }
        catch (Throwable localThrowable2)
        {
          return;
        }
      }
      bool1 = false;
    }
  }
  
  public static Log getInstance(Class paramClass)
  {
    return getInstance(paramClass.getName());
  }
  
  public static Log getInstance(String paramString)
  {
    Log localLog2 = (Log)logs.get(paramString);
    Log localLog1 = localLog2;
    if (localLog2 == null)
    {
      localLog1 = makeNewLogInstance(paramString);
      logs.put(paramString, localLog1);
    }
    return localLog1;
  }
  
  public static String[] getLogNames()
  {
    return (String[])logs.keySet().toArray(new String[logs.size()]);
  }
  
  public static Log makeNewLogInstance(String paramString)
  {
    try
    {
      paramString = (Log)logImplctor.newInstance(new Object[] { paramString });
      Object localObject = paramString;
      if (paramString == null) {
        localObject = new b((byte)0);
      }
      return (Log)localObject;
    }
    catch (Throwable paramString)
    {
      for (;;)
      {
        paramString = null;
      }
    }
  }
  
  public static void setLogImplementation(Class paramClass)
  {
    logImplctor = paramClass.getConstructor(new Class[] { "".getClass() });
  }
  
  public static void setLogImplementation(String paramString)
  {
    try
    {
      logImplctor = Class.forName(paramString).getConstructor(new Class[] { "".getClass() });
      return;
    }
    catch (Throwable paramString)
    {
      logImplctor = null;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\commons\logging\LogSource.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
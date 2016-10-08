package com.sleepycat.b.c;

import com.sleepycat.b.aa;
import com.sleepycat.b.b.a;
import com.sleepycat.b.b.b;
import com.sleepycat.b.b.c;
import com.sleepycat.b.b.d;
import com.sleepycat.b.b.e;
import com.sleepycat.b.b.f;
import com.sleepycat.b.z;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Properties;
import java.util.Set;

public class m
{
  public Properties a;
  public final z b;
  
  static
  {
    if (!m.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      c = bool;
      return;
    }
  }
  
  public m(z paramz)
  {
    this.b = paramz;
    if (paramz == null)
    {
      this.a = new Properties();
      return;
    }
    this.a = paramz.j();
  }
  
  public static String a(Properties paramProperties, b paramb)
  {
    String str = paramProperties.getProperty(paramb.a);
    paramProperties = str;
    if (str == null) {
      paramProperties = paramb.b;
    }
    return paramProperties;
  }
  
  public static String a(Properties paramProperties, String paramString)
  {
    Object localObject = (b)d.a.get(paramString);
    if (localObject == null)
    {
      localObject = b.b(paramString);
      localObject = (b)d.a.get(localObject);
      if (localObject == null) {
        throw new IllegalArgumentException(paramString + " is not a valid BDBJE environment configuration");
      }
      if ((!c) && (!((b)localObject).e)) {
        throw new AssertionError();
      }
    }
    for (int i = 1;; i = 0) {
      if (i != 0)
      {
        paramString = paramProperties.getProperty(paramString);
        paramProperties = paramString;
        if (paramString == null) {
          paramProperties = ((b)localObject).b;
        }
        return paramProperties;
        if (((b)localObject).e) {
          throw new IllegalArgumentException("Use getMultiValueValues() to retrieve Multi-Value parameter values.");
        }
      }
      else
      {
        return a(paramProperties, (b)localObject);
      }
    }
  }
  
  public static void a(File paramFile, Properties paramProperties)
  {
    localObject2 = null;
    localObject1 = localObject2;
    try
    {
      localObject3 = new Properties();
      if (paramFile == null) {
        break label313;
      }
      localObject1 = localObject2;
      if (!paramFile.isFile()) {
        break label189;
      }
    }
    catch (FileNotFoundException paramFile)
    {
      for (;;)
      {
        String str1;
        String str2;
        try
        {
          a((Properties)localObject3);
          Object localObject3 = ((Properties)localObject3).entrySet().iterator();
          if (((Iterator)localObject3).hasNext())
          {
            localObject1 = (Map.Entry)((Iterator)localObject3).next();
            str1 = (String)((Map.Entry)localObject1).getKey();
            str2 = (String)((Map.Entry)localObject1).getValue();
            localObject1 = (b)d.a.get(str1);
            if (localObject1 != null) {
              break label278;
            }
            localObject1 = b.b(str1);
            localObject2 = (b)d.a.get(localObject1);
            if ((localObject2 == null) || (!((b)localObject2).e))
            {
              throw new IllegalArgumentException(str1 + " is not a valid BDBJE environment parameter");
              paramFile = paramFile;
            }
          }
          else
          {
            return;
            localObject1 = localObject2;
            paramFile = new File(paramFile, "je.properties");
            continue;
          }
          int j = 1;
          localObject1 = localObject2;
          i = j;
          if (c) {
            break label281;
          }
          localObject1 = localObject2;
          i = j;
          if (((b)localObject2).e) {
            break label281;
          }
          throw new AssertionError();
        }
        catch (IOException paramProperties)
        {
          localObject1 = paramFile;
          paramFile = paramProperties;
        }
        paramProperties = new IllegalArgumentException("An error occurred when reading " + localObject1);
        paramProperties.initCause(paramFile);
        throw paramProperties;
        int i = 0;
        if (i != 0) {
          paramProperties.setProperty(str1, str2);
        } else {
          a(paramProperties, (b)localObject1, str2, false);
        }
      }
    }
    catch (IOException paramFile)
    {
      for (;;)
      {
        continue;
        paramFile = null;
      }
    }
    localObject1 = paramFile;
    localObject2 = new FileInputStream(paramFile);
    localObject1 = paramFile;
    ((Properties)localObject3).load((InputStream)localObject2);
    localObject1 = paramFile;
    ((FileInputStream)localObject2).close();
  }
  
  private static void a(Properties paramProperties)
  {
    Enumeration localEnumeration = paramProperties.propertyNames();
    while (localEnumeration.hasMoreElements())
    {
      String str = (String)localEnumeration.nextElement();
      b localb = (b)d.a.get(str);
      Object localObject = localb;
      if (localb == null)
      {
        localObject = b.b(str);
        localb = (b)d.a.get(localObject);
        localObject = localb;
        if (localb == null)
        {
          if (str.contains("je.rep."))
          {
            paramProperties.remove(str);
            continue;
          }
          throw new IllegalArgumentException(str + " is not a valid BDBJE environment configuration");
        }
      }
      ((b)localObject).a(paramProperties.getProperty(str));
    }
  }
  
  public static void a(Properties paramProperties, a parama, boolean paramBoolean1, boolean paramBoolean2)
  {
    a(paramProperties, parama, Boolean.toString(paramBoolean1), paramBoolean2);
  }
  
  public static void a(Properties paramProperties, b paramb, String paramString, boolean paramBoolean)
  {
    if (paramBoolean) {
      paramb.a(paramString);
    }
    paramProperties.setProperty(paramb.a, paramString);
  }
  
  private static boolean a(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    return Boolean.parseBoolean(paramString.trim());
  }
  
  public static boolean a(Properties paramProperties, a parama)
  {
    paramProperties = a(paramProperties, parama);
    if (paramProperties == null) {
      throw aa.c("No value for " + parama.a);
    }
    return a(paramProperties);
  }
  
  public final int a(c paramc)
  {
    paramc = a(paramc);
    int j = 0;
    int i = j;
    if (paramc != null) {}
    try
    {
      i = com.sleepycat.b.p.ac.a(paramc);
      return i;
    }
    catch (IllegalArgumentException paramc)
    {
      do
      {
        i = j;
      } while (c);
      throw new AssertionError(paramc.getMessage());
    }
  }
  
  public final int a(e parame)
  {
    parame = a(parame);
    int j = 0;
    int i = j;
    if (parame != null) {}
    try
    {
      i = Integer.parseInt(parame);
      return i;
    }
    catch (NumberFormatException parame)
    {
      do
      {
        i = j;
      } while (c);
      throw new AssertionError(parame.getMessage());
    }
  }
  
  public final long a(f paramf)
  {
    paramf = a(paramf);
    long l2 = 0L;
    long l1 = l2;
    if (paramf != null) {}
    try
    {
      l1 = Long.parseLong(paramf);
      return l1;
    }
    catch (NumberFormatException paramf)
    {
      do
      {
        l1 = l2;
      } while (c);
      throw new AssertionError(paramf.getMessage());
    }
  }
  
  public final String a(b paramb)
  {
    try
    {
      paramb = a(this.a, paramb.a);
      return paramb;
    }
    finally
    {
      paramb = finally;
      throw paramb;
    }
  }
  
  public final boolean a(a parama)
  {
    return a(a(parama));
  }
  
  public final long b(c paramc)
  {
    paramc = a(paramc);
    long l2 = 0L;
    long l1 = l2;
    if (paramc != null) {}
    try
    {
      l1 = com.sleepycat.b.p.ac.b(paramc);
      return l1;
    }
    catch (IllegalArgumentException paramc)
    {
      do
      {
        l1 = l2;
      } while (c);
      throw new AssertionError(paramc.getMessage());
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\c\m.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
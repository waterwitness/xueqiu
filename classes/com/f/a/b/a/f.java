package com.f.a.b.a;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.WeakHashMap;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

final class f
  implements b
{
  private static final Object f = new Object();
  Map a;
  boolean b = false;
  private final File c;
  private final File d;
  private final int e;
  private WeakHashMap<Object, Object> g;
  
  f(File paramFile, Map paramMap)
  {
    this.c = paramFile;
    this.d = e.a(paramFile);
    this.e = 0;
    if (paramMap != null) {}
    for (;;)
    {
      this.a = paramMap;
      this.g = new WeakHashMap();
      return;
      paramMap = new HashMap();
    }
  }
  
  private static FileOutputStream a(File paramFile)
  {
    try
    {
      FileOutputStream localFileOutputStream = new FileOutputStream(paramFile);
      return localFileOutputStream;
    }
    catch (FileNotFoundException localFileNotFoundException)
    {
      if (!paramFile.getParentFile().mkdir()) {
        return null;
      }
      try
      {
        paramFile = new FileOutputStream(paramFile);
        return paramFile;
      }
      catch (FileNotFoundException paramFile) {}
    }
    return null;
  }
  
  private boolean e()
  {
    if (this.c.exists()) {
      if (!this.d.exists()) {
        if (this.c.renameTo(this.d)) {
          break label44;
        }
      }
    }
    for (;;)
    {
      return false;
      this.c.delete();
      try
      {
        label44:
        FileOutputStream localFileOutputStream = a(this.c);
        if (localFileOutputStream == null) {
          continue;
        }
        Map localMap = this.a;
        a locala = new a();
        locala.setOutput(localFileOutputStream, "utf-8");
        locala.startDocument(null, Boolean.valueOf(true));
        locala.setFeature("http://xmlpull.org/v1/doc/features.html#indent-output", true);
        h.a(localMap, null, locala);
        locala.endDocument();
        localFileOutputStream.close();
        this.d.delete();
        return true;
      }
      catch (IOException localIOException)
      {
        if (!this.c.exists()) {
          continue;
        }
        this.c.delete();
        return false;
      }
      catch (XmlPullParserException localXmlPullParserException)
      {
        for (;;) {}
      }
    }
  }
  
  public final long a(String paramString)
  {
    for (;;)
    {
      try
      {
        paramString = (Long)this.a.get(paramString);
        if (paramString != null)
        {
          l = paramString.longValue();
          return l;
        }
      }
      finally {}
      long l = 0L;
    }
  }
  
  public final String a(String paramString1, String paramString2)
  {
    for (;;)
    {
      try
      {
        paramString1 = (String)this.a.get(paramString1);
        if (paramString1 != null) {
          return paramString1;
        }
      }
      finally {}
      paramString1 = paramString2;
    }
  }
  
  public final boolean a()
  {
    return (this.c != null) && (new File(this.c.getAbsolutePath()).exists());
  }
  
  public final Map<String, ?> b()
  {
    try
    {
      HashMap localHashMap = new HashMap(this.a);
      return localHashMap;
    }
    finally {}
  }
  
  public final c c()
  {
    return new g(this);
  }
  
  public final boolean d()
  {
    try
    {
      boolean bool = this.b;
      return bool;
    }
    finally {}
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\f\a\b\a\f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
package com.alipay.euler.andfix.patch;

import java.io.File;
import java.io.InputStream;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.jar.Attributes;
import java.util.jar.Attributes.Name;
import java.util.jar.JarFile;
import java.util.jar.Manifest;

public class Patch
  implements Comparable<Patch>
{
  private static final String CLASSES = "-Classes";
  private static final String CREATED_TIME = "Created-Time";
  private static final String ENTRY_NAME = "META-INF/PATCH.MF";
  private static final String PATCH_CLASSES = "Patch-Classes";
  private static final String PATCH_NAME = "Patch-Name";
  private Map<String, List<String>> mClassesMap;
  private final File mFile;
  private String mName;
  private Date mTime;
  
  public Patch(File paramFile)
  {
    this.mFile = paramFile;
    init();
  }
  
  private void init()
  {
    Object localObject3 = null;
    Object localObject1 = null;
    for (;;)
    {
      try
      {
        localJarFile = new JarFile(this.mFile);
        try
        {
          localObject3 = localJarFile.getInputStream(localJarFile.getJarEntry("META-INF/PATCH.MF"));
          localObject1 = localObject3;
          Attributes localAttributes = new Manifest((InputStream)localObject3).getMainAttributes();
          localObject1 = localObject3;
          this.mName = localAttributes.getValue("Patch-Name");
          localObject1 = localObject3;
          this.mTime = new Date(localAttributes.getValue("Created-Time"));
          localObject1 = localObject3;
          this.mClassesMap = new HashMap();
          localObject1 = localObject3;
          Iterator localIterator = localAttributes.keySet().iterator();
          localObject1 = localObject3;
          if (!localIterator.hasNext()) {
            continue;
          }
          localObject1 = localObject3;
          localObject5 = (Attributes.Name)localIterator.next();
          localObject1 = localObject3;
          str = ((Attributes.Name)localObject5).toString();
          localObject1 = localObject3;
          if (!str.endsWith("-Classes")) {
            continue;
          }
          localObject1 = localObject3;
          localObject5 = Arrays.asList(localAttributes.getValue((Attributes.Name)localObject5).split(","));
          localObject1 = localObject3;
          if (!str.equalsIgnoreCase("Patch-Classes")) {
            continue;
          }
          localObject1 = localObject3;
          this.mClassesMap.put(this.mName, localObject5);
          continue;
          if (localJarFile == null) {
            continue;
          }
        }
        finally
        {
          localObject3 = localObject1;
          localObject1 = localObject4;
        }
      }
      finally
      {
        Object localObject5;
        String str;
        JarFile localJarFile = null;
        continue;
      }
      localJarFile.close();
      if (localObject3 != null) {
        ((InputStream)localObject3).close();
      }
      throw ((Throwable)localObject1);
      localObject1 = localObject3;
      this.mClassesMap.put(str.trim().substring(0, str.length() - 8), localObject5);
    }
    localJarFile.close();
    if (localObject3 != null) {
      ((InputStream)localObject3).close();
    }
  }
  
  public int compareTo(Patch paramPatch)
  {
    return this.mTime.compareTo(paramPatch.getTime());
  }
  
  public List<String> getClasses(String paramString)
  {
    return (List)this.mClassesMap.get(paramString);
  }
  
  public File getFile()
  {
    return this.mFile;
  }
  
  public String getName()
  {
    return this.mName;
  }
  
  public Set<String> getPatchNames()
  {
    return this.mClassesMap.keySet();
  }
  
  public Date getTime()
  {
    return this.mTime;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\alipay\euler\andfix\patch\Patch.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
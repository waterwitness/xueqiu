package com.alipay.euler.andfix;

import android.content.Context;
import android.util.Log;
import com.alipay.euler.andfix.annotation.MethodReplace;
import com.alipay.euler.andfix.security.SecurityChecker;
import dalvik.system.DexFile;
import java.io.File;
import java.io.IOException;
import java.lang.reflect.Method;
import java.util.Enumeration;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

public class AndFixManager
{
  private static final String DIR = "apatch_opt";
  private static final String TAG = "AndFixManager";
  private static Map<String, Class<?>> mFixedClass = new ConcurrentHashMap();
  private final Context mContext;
  private File mOptDir;
  private SecurityChecker mSecurityChecker;
  private boolean mSupport = false;
  
  public AndFixManager(Context paramContext)
  {
    this.mContext = paramContext;
    this.mSupport = Compat.isSupport();
    if (this.mSupport)
    {
      this.mSecurityChecker = new SecurityChecker(this.mContext);
      this.mOptDir = new File(this.mContext.getFilesDir(), "apatch_opt");
      if ((this.mOptDir.exists()) || (this.mOptDir.mkdirs())) {
        break label97;
      }
      this.mSupport = false;
      Log.e("AndFixManager", "opt dir create error.");
    }
    label97:
    while (this.mOptDir.isDirectory()) {
      return;
    }
    this.mOptDir.delete();
    this.mSupport = false;
  }
  
  private void fixClass(Class<?> paramClass, ClassLoader paramClassLoader)
  {
    paramClass = paramClass.getDeclaredMethods();
    int j = paramClass.length;
    int i = 0;
    while (i < j)
    {
      Method localMethod = paramClass[i];
      Object localObject = (MethodReplace)localMethod.getAnnotation(MethodReplace.class);
      if (localObject != null)
      {
        String str = ((MethodReplace)localObject).clazz();
        localObject = ((MethodReplace)localObject).method();
        if ((!isEmpty(str)) && (!isEmpty((String)localObject))) {
          replaceMethod(paramClassLoader, str, (String)localObject, localMethod);
        }
      }
      i += 1;
    }
  }
  
  private static boolean isEmpty(String paramString)
  {
    return (paramString == null) || (paramString.length() <= 0);
  }
  
  private void replaceMethod(ClassLoader paramClassLoader, String paramString1, String paramString2, Method paramMethod)
  {
    try
    {
      String str = paramString1 + "@" + paramClassLoader.toString();
      Class localClass2 = (Class)mFixedClass.get(str);
      Class localClass1 = localClass2;
      if (localClass2 == null) {
        localClass1 = AndFix.initTargetClass(paramClassLoader.loadClass(paramString1));
      }
      if (localClass1 != null)
      {
        mFixedClass.put(str, localClass1);
        AndFix.addReplaceMethod(localClass1.getDeclaredMethod(paramString2, paramMethod.getParameterTypes()), paramMethod);
      }
      return;
    }
    catch (Exception paramClassLoader)
    {
      Log.e("AndFixManager", "replaceMethod", paramClassLoader);
    }
  }
  
  public void fix(final File paramFile, ClassLoader paramClassLoader, List<String> paramList)
  {
    int i = 0;
    for (;;)
    {
      boolean bool;
      try
      {
        bool = this.mSupport;
        if (!bool) {
          return;
        }
        bool = this.mSecurityChecker.verifyApk(paramFile);
        if (!bool) {
          continue;
        }
        Object localObject1;
        try
        {
          localObject1 = new File(this.mOptDir, paramFile.getName());
          if (!((File)localObject1).exists()) {
            break label209;
          }
          if (this.mSecurityChecker.verifyOpt((File)localObject1))
          {
            paramFile = DexFile.loadDex(paramFile.getAbsolutePath(), ((File)localObject1).getAbsolutePath(), 0);
            if (i != 0) {
              this.mSecurityChecker.saveOptSig((File)localObject1);
            }
            localObject1 = new ClassLoader(paramClassLoader)
            {
              protected Class<?> findClass(String paramAnonymousString)
              {
                Class localClass2 = paramFile.loadClass(paramAnonymousString, this);
                Class localClass1;
                if ((localClass2 == null) && (paramAnonymousString.startsWith("com.alipay.euler.andfix"))) {
                  localClass1 = Class.forName(paramAnonymousString);
                }
                do
                {
                  return localClass1;
                  localClass1 = localClass2;
                } while (localClass2 != null);
                throw new ClassNotFoundException(paramAnonymousString);
              }
            };
            Enumeration localEnumeration = paramFile.entries();
            if (!localEnumeration.hasMoreElements()) {
              continue;
            }
            Object localObject2 = (String)localEnumeration.nextElement();
            if ((paramList != null) && (!paramList.contains(localObject2))) {
              continue;
            }
            localObject2 = paramFile.loadClass((String)localObject2, (ClassLoader)localObject1);
            if (localObject2 == null) {
              continue;
            }
            fixClass((Class)localObject2, paramClassLoader);
            continue;
          }
        }
        catch (IOException paramFile)
        {
          Log.e("AndFixManager", "pacth", paramFile);
        }
        bool = ((File)localObject1).delete();
      }
      finally {}
      if (bool) {
        label209:
        i = 1;
      }
    }
  }
  
  public void fix(String paramString)
  {
    try
    {
      fix(new File(paramString), this.mContext.getClassLoader(), null);
      return;
    }
    finally
    {
      paramString = finally;
      throw paramString;
    }
  }
  
  public void removeOptFile(File paramFile)
  {
    try
    {
      paramFile = new File(this.mOptDir, paramFile.getName());
      if ((paramFile.exists()) && (!paramFile.delete())) {
        Log.e("AndFixManager", paramFile.getName() + " delete error.");
      }
      return;
    }
    finally
    {
      paramFile = finally;
      throw paramFile;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\alipay\euler\andfix\AndFixManager.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
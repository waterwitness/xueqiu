package com.alipay.euler.andfix.patch;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.util.Log;
import com.alipay.euler.andfix.AndFixManager;
import com.alipay.euler.andfix.util.FileUtil;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.SortedSet;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentSkipListSet;

public class PatchManager
{
  private static final String DIR = "apatch";
  private static final String SP_NAME = "_andfix_";
  private static final String SP_VERSION = "version";
  private static final String SUFFIX = ".apatch";
  private static final String TAG = "PatchManager";
  private final AndFixManager mAndFixManager;
  private final Context mContext;
  private final Map<String, ClassLoader> mLoaders;
  private final File mPatchDir;
  private final SortedSet<Patch> mPatchs;
  
  public PatchManager(Context paramContext)
  {
    this.mContext = paramContext;
    this.mAndFixManager = new AndFixManager(this.mContext);
    this.mPatchDir = new File(this.mContext.getFilesDir(), "apatch");
    this.mPatchs = new ConcurrentSkipListSet();
    this.mLoaders = new ConcurrentHashMap();
  }
  
  private Patch addPatch(File paramFile)
  {
    if (paramFile.getName().endsWith(".apatch"))
    {
      try
      {
        paramFile = new Patch(paramFile);
        Log.e("PatchManager", "addPatch", localIOException1);
      }
      catch (IOException localIOException1)
      {
        try
        {
          this.mPatchs.add(paramFile);
          return paramFile;
        }
        catch (IOException localIOException2)
        {
          for (;;) {}
        }
        localIOException1 = localIOException1;
        paramFile = null;
      }
      return paramFile;
    }
    return null;
  }
  
  private void cleanPatch()
  {
    File[] arrayOfFile = this.mPatchDir.listFiles();
    int j = arrayOfFile.length;
    int i = 0;
    while (i < j)
    {
      File localFile = arrayOfFile[i];
      this.mAndFixManager.removeOptFile(localFile);
      if (!FileUtil.deleteFile(localFile)) {
        Log.e("PatchManager", localFile.getName() + " delete error.");
      }
      i += 1;
    }
  }
  
  private void initPatchs()
  {
    File[] arrayOfFile = this.mPatchDir.listFiles();
    int j = arrayOfFile.length;
    int i = 0;
    while (i < j)
    {
      addPatch(arrayOfFile[i]);
      i += 1;
    }
  }
  
  private void loadPatch(Patch paramPatch)
  {
    Iterator localIterator = paramPatch.getPatchNames().iterator();
    label97:
    while (localIterator.hasNext())
    {
      Object localObject = (String)localIterator.next();
      if (this.mLoaders.containsKey("*")) {}
      for (ClassLoader localClassLoader = this.mContext.getClassLoader();; localClassLoader = (ClassLoader)this.mLoaders.get(localObject))
      {
        if (localClassLoader == null) {
          break label97;
        }
        localObject = paramPatch.getClasses((String)localObject);
        this.mAndFixManager.fix(paramPatch.getFile(), localClassLoader, (List)localObject);
        break;
      }
    }
  }
  
  public void addPatch(String paramString)
  {
    File localFile1 = new File(paramString);
    File localFile2 = new File(this.mPatchDir, localFile1.getName());
    if (!localFile1.exists()) {
      throw new FileNotFoundException(paramString);
    }
    if (localFile2.exists()) {
      Log.d("PatchManager", "patch [" + paramString + "] has be loaded.");
    }
    do
    {
      return;
      FileUtil.copyFile(localFile1, localFile2);
      paramString = addPatch(localFile2);
    } while (paramString == null);
    loadPatch(paramString);
  }
  
  public void init(String paramString)
  {
    if ((!this.mPatchDir.exists()) && (!this.mPatchDir.mkdirs()))
    {
      Log.e("PatchManager", "patch dir create error.");
      return;
    }
    if (!this.mPatchDir.isDirectory())
    {
      this.mPatchDir.delete();
      return;
    }
    SharedPreferences localSharedPreferences = this.mContext.getSharedPreferences("_andfix_", 0);
    String str = localSharedPreferences.getString("version", null);
    if ((str == null) || (!str.equalsIgnoreCase(paramString)))
    {
      cleanPatch();
      localSharedPreferences.edit().putString("version", paramString).commit();
      return;
    }
    initPatchs();
  }
  
  public void loadPatch()
  {
    this.mLoaders.put("*", this.mContext.getClassLoader());
    Iterator localIterator1 = this.mPatchs.iterator();
    while (localIterator1.hasNext())
    {
      Patch localPatch = (Patch)localIterator1.next();
      Iterator localIterator2 = localPatch.getPatchNames().iterator();
      while (localIterator2.hasNext())
      {
        List localList = localPatch.getClasses((String)localIterator2.next());
        this.mAndFixManager.fix(localPatch.getFile(), this.mContext.getClassLoader(), localList);
      }
    }
  }
  
  public void loadPatch(String paramString, ClassLoader paramClassLoader)
  {
    this.mLoaders.put(paramString, paramClassLoader);
    Iterator localIterator = this.mPatchs.iterator();
    while (localIterator.hasNext())
    {
      Patch localPatch = (Patch)localIterator.next();
      if (localPatch.getPatchNames().contains(paramString))
      {
        List localList = localPatch.getClasses(paramString);
        this.mAndFixManager.fix(localPatch.getFile(), paramClassLoader, localList);
      }
    }
  }
  
  public void removeAllPatch()
  {
    cleanPatch();
    this.mContext.getSharedPreferences("_andfix_", 0).edit().clear().commit();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\alipay\euler\andfix\patch\PatchManager.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
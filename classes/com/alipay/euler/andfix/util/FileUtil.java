package com.alipay.euler.andfix.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.nio.channels.FileChannel;

public class FileUtil
{
  public static void copyFile(File paramFile1, File paramFile2)
  {
    Object localObject2 = null;
    Object localObject1 = null;
    try
    {
      if (!paramFile2.exists()) {
        paramFile2.createNewFile();
      }
      paramFile1 = new FileInputStream(paramFile1).getChannel();
      localObject1 = paramFile1;
      paramFile1 = (File)localObject2;
      if (localObject1 == null) {
        break label89;
      }
    }
    finally
    {
      try
      {
        paramFile2 = new FileOutputStream(paramFile2).getChannel();
        paramFile1 = paramFile2;
        ((FileChannel)localObject1).transferTo(0L, ((FileChannel)localObject1).size(), paramFile2);
        if (localObject1 != null) {
          ((FileChannel)localObject1).close();
        }
        if (paramFile2 != null) {
          paramFile2.close();
        }
        return;
      }
      finally
      {
        for (;;) {}
      }
      paramFile2 = finally;
      localObject2 = null;
      paramFile1 = (File)localObject1;
      localObject1 = localObject2;
    }
    ((FileChannel)localObject1).close();
    label89:
    if (paramFile1 != null) {
      paramFile1.close();
    }
    throw paramFile2;
  }
  
  public static boolean deleteFile(File paramFile)
  {
    if (!paramFile.exists()) {
      return true;
    }
    if (paramFile.isDirectory())
    {
      File[] arrayOfFile = paramFile.listFiles();
      int j = arrayOfFile.length;
      int i = 0;
      while (i < j)
      {
        deleteFile(arrayOfFile[i]);
        i += 1;
      }
    }
    return paramFile.delete();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\alipay\euler\andfix\util\FileUtil.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
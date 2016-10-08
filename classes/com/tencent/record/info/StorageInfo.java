package com.tencent.record.info;

import android.os.StatFs;
import java.io.File;

public class StorageInfo
{
  private File a;
  private long b;
  private long c;
  
  public static StorageInfo b(File paramFile)
  {
    StorageInfo localStorageInfo = new StorageInfo();
    localStorageInfo.a(paramFile);
    paramFile = new StatFs(paramFile.getAbsolutePath());
    long l1 = paramFile.getBlockSize();
    long l2 = paramFile.getBlockCount();
    long l3 = paramFile.getAvailableBlocks();
    localStorageInfo.a(l2 * l1);
    localStorageInfo.b(l1 * l3);
    return localStorageInfo;
  }
  
  public File a()
  {
    return this.a;
  }
  
  public void a(long paramLong)
  {
    this.b = paramLong;
  }
  
  public void a(File paramFile)
  {
    this.a = paramFile;
  }
  
  public long b()
  {
    return this.b;
  }
  
  public void b(long paramLong)
  {
    this.c = paramLong;
  }
  
  public long c()
  {
    return this.c;
  }
  
  public String toString()
  {
    return String.format("[%s : %d / %d]", new Object[] { a().getAbsolutePath(), Long.valueOf(c()), Long.valueOf(b()) });
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\record\info\StorageInfo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
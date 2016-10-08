package com.tencent.record.debug;

import java.io.File;
import java.io.FileFilter;

final class b
  implements FileFilter
{
  b(FileTracerConfig paramFileTracerConfig) {}
  
  public final boolean accept(File paramFile)
  {
    if (!paramFile.getName().endsWith(this.a.j())) {}
    while (FileTracerConfig.d(paramFile) == -1) {
      return false;
    }
    return true;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\record\debug\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
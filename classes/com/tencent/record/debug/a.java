package com.tencent.record.debug;

import java.io.File;
import java.io.FileFilter;

final class a
  implements FileFilter
{
  public final boolean accept(File paramFile)
  {
    if (!paramFile.isDirectory()) {}
    while (FileTracerConfig.a(paramFile) <= 0L) {
      return false;
    }
    return true;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\record\debug\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
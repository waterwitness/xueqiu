package com.sleepycat.b.c;

import com.sleepycat.b.aa;
import com.sleepycat.b.x;
import com.sleepycat.b.z;
import java.io.File;

final class af
  extends x
{
  public af(File paramFile, z paramz, ad paramad)
  {
    super(paramFile, paramz, false, null, paramad);
  }
  
  public final void close()
  {
    try
    {
      throw aa.c("close() not permitted on an internal environment handle");
    }
    finally {}
  }
  
  protected final boolean f()
  {
    return true;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\c\af.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
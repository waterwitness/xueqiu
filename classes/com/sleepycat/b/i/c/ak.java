package com.sleepycat.b.i.c;

import com.sleepycat.b.aa;
import com.sleepycat.b.i.t;
import com.sleepycat.b.i.w;
import com.sleepycat.b.z;
import java.io.File;

final class ak
  extends t
{
  public ak(File paramFile, w paramw, z paramz, aj paramaj)
  {
    super(paramFile, paramw, paramz, null, false, paramaj);
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


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\c\ak.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
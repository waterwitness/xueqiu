package com.sleepycat.b.p;

import com.sleepycat.b.m;

public final class i
{
  public static void a(m paramm)
  {
    if (paramm.f) {
      throw new IllegalArgumentException("A partial key DatabaseEntry is not allowed");
    }
  }
  
  public static void a(m paramm, String paramString, boolean paramBoolean)
  {
    if (paramm == null) {
      throw new IllegalArgumentException("DatabaseEntry " + paramString + " cannot be null");
    }
    if ((paramBoolean) && (paramm.a == null)) {
      throw new IllegalArgumentException("Data field for DatabaseEntry " + paramString + " cannot be null");
    }
  }
  
  public static void a(Object paramObject, String paramString)
  {
    if (paramObject == null) {
      throw new IllegalArgumentException(paramString + " cannot be null");
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\p\i.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
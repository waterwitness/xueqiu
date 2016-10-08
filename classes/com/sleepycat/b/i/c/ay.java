package com.sleepycat.b.i.c;

public abstract class ay
  extends as
{
  public ay(ap paramap)
  {
    super(paramap);
  }
  
  public final String e()
  {
    return c() + "|" + a().a;
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1;
    if (this == paramObject) {
      bool1 = true;
    }
    do
    {
      do
      {
        return bool1;
        bool1 = bool2;
      } while (paramObject == null);
      bool1 = bool2;
    } while (!(paramObject instanceof ay));
    return a().equals(((ay)paramObject).a());
  }
  
  public int hashCode()
  {
    return a().a.hashCode();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\c\ay.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
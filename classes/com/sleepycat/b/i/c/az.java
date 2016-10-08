package com.sleepycat.b.i.c;

public abstract class az
  extends as
{
  public az(ap paramap)
  {
    super(paramap);
  }
  
  public final String d()
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
    } while (!(paramObject instanceof az));
    return a().equals(((az)paramObject).a());
  }
  
  public int hashCode()
  {
    return a().a.hashCode();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\c\az.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
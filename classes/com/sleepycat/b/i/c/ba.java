package com.sleepycat.b.i.c;

public class ba
  implements bc
{
  public String d;
  
  ba() {}
  
  public ba(String paramString)
  {
    this.d = paramString;
  }
  
  public String b()
  {
    return this.d;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      do
      {
        return true;
        if (paramObject == null) {
          return false;
        }
        if (!(paramObject instanceof ba)) {
          return false;
        }
        paramObject = (ba)paramObject;
        if (this.d != null) {
          break;
        }
      } while (((ba)paramObject).d == null);
      return false;
    } while (this.d.equals(((ba)paramObject).d));
    return false;
  }
  
  public int hashCode()
  {
    if (this.d == null) {
      return 0;
    }
    return this.d.hashCode();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\c\ba.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
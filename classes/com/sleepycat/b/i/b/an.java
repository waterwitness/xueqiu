package com.sleepycat.b.i.b;

final class an
  implements s
{
  private static t c;
  private final String b;
  
  static
  {
    if (!am.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      c = new t() {};
      return;
    }
  }
  
  an(String paramString)
  {
    if ((!a) && (paramString == null)) {
      throw new AssertionError();
    }
    this.b = paramString;
  }
  
  public final String a()
  {
    return this.b;
  }
  
  public final boolean equals(Object paramObject)
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
        if (!(paramObject instanceof an)) {
          return false;
        }
        paramObject = (an)paramObject;
        if (this.b != null) {
          break;
        }
      } while (((an)paramObject).b == null);
      return false;
    } while (this.b.equals(((an)paramObject).b));
    return false;
  }
  
  public final int hashCode()
  {
    if (this.b == null) {
      return 0;
    }
    return this.b.hashCode();
  }
  
  public final String toString()
  {
    return "Proposal(" + this.b.substring(0, 16) + ":" + this.b.substring(16, 48) + ":" + this.b.substring(48) + ")";
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\b\an.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
package com.sleepycat.b.i.c;

public class aq
  extends az
{
  private final String a;
  
  public aq(ap paramap, String paramString)
  {
    super(paramap);
    this.a = paramString.replace("\n", "  ");
  }
  
  public av a()
  {
    return this.c.p;
  }
  
  public String b()
  {
    return d() + "|" + this.a;
  }
  
  protected final String c()
  {
    return this.j;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      do
      {
        return true;
        if (!super.equals(paramObject)) {
          return false;
        }
        if (!(paramObject instanceof aq)) {
          return false;
        }
        paramObject = (aq)paramObject;
        if (!this.c.equals(((aq)paramObject).c)) {
          return false;
        }
        if (this.a != null) {
          break;
        }
      } while (((aq)paramObject).a == null);
      return false;
    } while (this.a.equals(((aq)paramObject).a));
    return false;
  }
  
  public int hashCode()
  {
    int j = super.hashCode();
    int k = this.c.hashCode();
    if (this.a == null) {}
    for (int i = 0;; i = this.a.hashCode()) {
      return i + (j * 31 + k) * 31;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\c\aq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
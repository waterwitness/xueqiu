package com.sleepycat.b.i.c;

public class ax
  extends az
{
  public final String a;
  final at b;
  
  public ax(ap paramap, ar paramar)
  {
    this(paramap, paramar.a, paramar.getMessage());
  }
  
  public ax(ap paramap, at paramat, String paramString)
  {
    super(paramap);
    this.a = paramString;
    this.b = paramat;
  }
  
  public final av a()
  {
    return this.c.n;
  }
  
  public final String b()
  {
    return d() + "|" + this.b.toString() + "|" + this.a;
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
        if (!(paramObject instanceof ax)) {
          return false;
        }
        paramObject = (ax)paramObject;
        if (this.a != null) {
          break;
        }
      } while (((ax)paramObject).a == null);
      return false;
    } while (this.a.equals(((ax)paramObject).a));
    return false;
  }
  
  public int hashCode()
  {
    int j = super.hashCode();
    if (this.a == null) {}
    for (int i = 0;; i = this.a.hashCode()) {
      return i + j * 31;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\c\ax.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
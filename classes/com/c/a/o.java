package com.c.a;

final class o
  extends n
{
  float e;
  
  o()
  {
    this.a = 0.0F;
    this.b = Float.TYPE;
  }
  
  o(float paramFloat1, float paramFloat2)
  {
    this.a = paramFloat1;
    this.e = paramFloat2;
    this.b = Float.TYPE;
    this.d = true;
  }
  
  private o c()
  {
    o localo = new o(this.a, this.e);
    localo.c = this.c;
    return localo;
  }
  
  public final Object a()
  {
    return Float.valueOf(this.e);
  }
  
  public final void a(Object paramObject)
  {
    if ((paramObject != null) && (paramObject.getClass() == Float.class))
    {
      this.e = ((Float)paramObject).floatValue();
      this.d = true;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\c\a\o.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
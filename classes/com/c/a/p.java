package com.c.a;

final class p
  extends n
{
  int e;
  
  p()
  {
    this.a = 0.0F;
    this.b = Integer.TYPE;
  }
  
  p(float paramFloat, int paramInt)
  {
    this.a = paramFloat;
    this.e = paramInt;
    this.b = Integer.TYPE;
    this.d = true;
  }
  
  private p c()
  {
    p localp = new p(this.a, this.e);
    localp.c = this.c;
    return localp;
  }
  
  public final Object a()
  {
    return Integer.valueOf(this.e);
  }
  
  public final void a(Object paramObject)
  {
    if ((paramObject != null) && (paramObject.getClass() == Integer.class))
    {
      this.e = ((Integer)paramObject).intValue();
      this.d = true;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\c\a\p.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
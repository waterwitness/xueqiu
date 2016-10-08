package rx.f;

final class d
{
  Object[] a;
  int b;
  
  public final void a(Object paramObject)
  {
    int i = this.b;
    Object localObject = this.a;
    if (localObject == null)
    {
      localObject = new Object[16];
      this.a = ((Object[])localObject);
    }
    for (;;)
    {
      localObject[i] = paramObject;
      this.b = (i + 1);
      return;
      if (i == localObject.length)
      {
        Object[] arrayOfObject = new Object[(i >> 2) + i];
        System.arraycopy(localObject, 0, arrayOfObject, 0, i);
        this.a = arrayOfObject;
        localObject = arrayOfObject;
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\rx\f\d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
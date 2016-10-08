package com.c.a;

import java.util.ArrayList;

public abstract class a
  implements Cloneable
{
  ArrayList<b> a = null;
  
  public abstract a a(long paramLong);
  
  public void a() {}
  
  public final void a(b paramb)
  {
    if (this.a == null) {
      this.a = new ArrayList();
    }
    this.a.add(paramb);
  }
  
  public a b()
  {
    try
    {
      a locala = (a)super.clone();
      if (this.a != null)
      {
        ArrayList localArrayList = this.a;
        locala.a = new ArrayList();
        int j = localArrayList.size();
        int i = 0;
        while (i < j)
        {
          locala.a.add(localArrayList.get(i));
          i += 1;
        }
      }
      return localCloneNotSupportedException;
    }
    catch (CloneNotSupportedException localCloneNotSupportedException)
    {
      throw new AssertionError();
    }
  }
  
  public final void b(b paramb)
  {
    if (this.a == null) {}
    do
    {
      return;
      this.a.remove(paramb);
    } while (this.a.size() != 0);
    this.a = null;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\c\a\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
package com.xiaomi.a.a.e;

import java.util.LinkedList;

public final class a
{
  private LinkedList<b> a = new LinkedList();
  
  public final int a()
  {
    try
    {
      int i = this.a.size();
      return i;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public final void a(Object paramObject)
  {
    try
    {
      this.a.add(new b(paramObject));
      if (this.a.size() > 100) {
        this.a.removeFirst();
      }
      return;
    }
    finally
    {
      paramObject = finally;
      throw ((Throwable)paramObject);
    }
  }
  
  public final LinkedList<b> b()
  {
    try
    {
      LinkedList localLinkedList = this.a;
      this.a = new LinkedList();
      return localLinkedList;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\a\a\e\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
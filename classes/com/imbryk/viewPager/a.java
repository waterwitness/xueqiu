package com.imbryk.viewPager;

import android.os.Parcelable;
import android.support.v4.a.v;
import android.support.v4.a.x;
import android.support.v4.view.bd;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;

public final class a
  extends bd
{
  bd b;
  boolean c;
  private SparseArray<b> d = new SparseArray();
  
  a(bd parambd)
  {
    this.b = parambd;
  }
  
  final int a(int paramInt)
  {
    int j = this.b.b();
    if (j == 0) {
      paramInt = 0;
    }
    int i;
    do
    {
      return paramInt;
      i = (paramInt - 1) % j;
      paramInt = i;
    } while (i >= 0);
    return i + j;
  }
  
  public final Parcelable a()
  {
    return this.b.a();
  }
  
  public final Object a(ViewGroup paramViewGroup, int paramInt)
  {
    if (((this.b instanceof v)) || ((this.b instanceof x))) {}
    for (int i = paramInt; this.c; i = a(paramInt))
    {
      b localb = (b)this.d.get(paramInt);
      if (localb == null) {
        break;
      }
      this.d.remove(paramInt);
      return localb.c;
    }
    return this.b.a(paramViewGroup, i);
  }
  
  public final void a(ViewGroup paramViewGroup)
  {
    this.b.a(paramViewGroup);
  }
  
  public final void a(ViewGroup paramViewGroup, int paramInt, Object paramObject)
  {
    int j = this.b.b();
    if (((this.b instanceof v)) || ((this.b instanceof x))) {}
    for (int i = paramInt; (this.c) && ((paramInt == 1) || (paramInt == j + 1 - 1)); i = a(paramInt))
    {
      this.d.put(paramInt, new b(paramViewGroup, i, paramObject));
      return;
    }
    this.b.a(paramViewGroup, i, paramObject);
  }
  
  public final boolean a(View paramView, Object paramObject)
  {
    return this.b.a(paramView, paramObject);
  }
  
  public final int b()
  {
    return this.b.b() + 2;
  }
  
  public final void b(ViewGroup paramViewGroup, int paramInt, Object paramObject)
  {
    this.b.b(paramViewGroup, paramInt, paramObject);
  }
  
  public final void d()
  {
    this.d = new SparseArray();
    super.d();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\imbryk\viewPager\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
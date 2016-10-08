package com.xueqiu.android.stock.view;

import android.view.View;
import java.util.EmptyStackException;
import java.util.Stack;

public final class c
{
  Stack<View>[] a = new Stack[2];
  
  public c()
  {
    int i = 0;
    while (i < 2)
    {
      this.a[i] = new Stack();
      i += 1;
    }
  }
  
  public final View a(int paramInt)
  {
    try
    {
      View localView = (View)this.a[paramInt].pop();
      return localView;
    }
    catch (EmptyStackException localEmptyStackException) {}
    return null;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\stock\view\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
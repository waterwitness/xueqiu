package com.xueqiu.android.stock.view;

import android.content.Context;
import android.widget.Scroller;

final class d
  implements Runnable
{
  final Scroller a;
  int b = 0;
  int c = 0;
  
  d(TableFixHeaders paramTableFixHeaders, Context paramContext)
  {
    this.a = new Scroller(paramContext);
  }
  
  public final void run()
  {
    if (this.a.isFinished()) {}
    boolean bool;
    do
    {
      return;
      bool = this.a.computeScrollOffset();
      int i = this.a.getCurrX();
      int j = this.a.getCurrY();
      int k = this.b - i;
      int m = this.c - j;
      if ((k != 0) || (m != 0))
      {
        this.d.scrollBy(k, m);
        this.b = i;
        this.c = j;
      }
    } while (!bool);
    this.d.post(this);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\stock\view\d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
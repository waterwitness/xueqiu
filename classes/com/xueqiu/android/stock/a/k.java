package com.xueqiu.android.stock.a;

import android.view.ViewGroup;
import android.widget.TextView;
import com.xueqiu.android.common.a.d;
import com.xueqiu.android.common.widget.ag;
import com.xueqiu.android.stock.model.F10Table;

final class k
{
  TextView a;
  ViewGroup b;
  
  k(j paramj) {}
  
  public final void a(F10Table paramF10Table)
  {
    ag localag = new ag(this.c.c);
    this.b.addView(localag);
    if (paramF10Table.getRowdata() == null) {
      paramF10Table.setRowdata(new String[0][]);
    }
    localag.setColumnsWidth(paramF10Table.getWidth());
    localag.setHeadNames(paramF10Table.getHeader());
    localag.setData(paramF10Table.getRowdata());
    localag.setColumnsAlign(paramF10Table.getAlign());
    localag.postInvalidate();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\stock\a\k.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
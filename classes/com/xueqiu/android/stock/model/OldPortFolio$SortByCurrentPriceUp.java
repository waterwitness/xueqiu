package com.xueqiu.android.stock.model;

import java.io.Serializable;
import java.util.Comparator;

public class OldPortFolio$SortByCurrentPriceUp
  implements Serializable, Comparator<OldPortFolio>
{
  public int compare(OldPortFolio paramOldPortFolio1, OldPortFolio paramOldPortFolio2)
  {
    if (paramOldPortFolio2.getCurrent() == paramOldPortFolio1.getCurrent()) {
      return paramOldPortFolio1.getSymbol().compareTo(paramOldPortFolio2.getSymbol());
    }
    if (paramOldPortFolio1.getCurrent() - paramOldPortFolio2.getCurrent() > 0.0D) {
      return 1;
    }
    return -1;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\stock\model\OldPortFolio$SortByCurrentPriceUp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
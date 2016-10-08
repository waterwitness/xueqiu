package com.xueqiu.android.stock.model;

import java.io.Serializable;
import java.util.Comparator;

public class OldPortFolio$SortByStockSymbolDown
  implements Serializable, Comparator<OldPortFolio>
{
  public int compare(OldPortFolio paramOldPortFolio1, OldPortFolio paramOldPortFolio2)
  {
    return paramOldPortFolio1.getSymbol().compareTo(paramOldPortFolio2.getSymbol());
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\stock\model\OldPortFolio$SortByStockSymbolDown.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
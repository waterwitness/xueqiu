package com.xueqiu.android.stock.model;

import java.io.Serializable;
import java.util.Comparator;

public class OldPortFolio$SortByStockSymbolUp
  implements Serializable, Comparator<OldPortFolio>
{
  public int compare(OldPortFolio paramOldPortFolio1, OldPortFolio paramOldPortFolio2)
  {
    return paramOldPortFolio2.getSymbol().compareTo(paramOldPortFolio1.getSymbol());
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\stock\model\OldPortFolio$SortByStockSymbolUp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
package com.xueqiu.android.stock.model;

import java.io.Serializable;
import java.util.Comparator;

public class OldPortFolio$SortByPercentageDown
  implements Serializable, Comparator<OldPortFolio>
{
  public int compare(OldPortFolio paramOldPortFolio1, OldPortFolio paramOldPortFolio2)
  {
    if (paramOldPortFolio2.getPercentage() == paramOldPortFolio1.getPercentage()) {
      return paramOldPortFolio1.getSymbol().compareTo(paramOldPortFolio2.getSymbol());
    }
    if (paramOldPortFolio2.getPercentage() - paramOldPortFolio1.getPercentage() > 0.0D) {
      return 1;
    }
    return -1;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\stock\model\OldPortFolio$SortByPercentageDown.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
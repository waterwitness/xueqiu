package com.xueqiu.android.stock.model;

import android.util.SparseArray;

public enum StockStatus
{
  private static SparseArray<StockStatus> valueArray;
  private int value;
  
  static
  {
    int i = 0;
    UNLISTED = new StockStatus("UNLISTED", 0, 0);
    LISTED = new StockStatus("LISTED", 1, 1);
    SUSPEND = new StockStatus("SUSPEND", 2, 2);
    DELIST = new StockStatus("DELIST", 3, 3);
    LIMIT_UP = new StockStatus("LIMIT_UP", 4, 4);
    LIMIT_DOWN = new StockStatus("LIMIT_DOWN", 5, 5);
    $VALUES = new StockStatus[] { UNLISTED, LISTED, SUSPEND, DELIST, LIMIT_UP, LIMIT_DOWN };
    valueArray = new SparseArray();
    StockStatus[] arrayOfStockStatus = values();
    int j = arrayOfStockStatus.length;
    while (i < j)
    {
      StockStatus localStockStatus = arrayOfStockStatus[i];
      valueArray.put(localStockStatus.value, localStockStatus);
      i += 1;
    }
  }
  
  private StockStatus(int paramInt)
  {
    this.value = paramInt;
  }
  
  public static StockStatus fromInt(int paramInt)
  {
    return (StockStatus)valueArray.get(paramInt);
  }
  
  public final String description()
  {
    switch (1.$SwitchMap$com$xueqiu$android$stock$model$StockStatus[ordinal()])
    {
    default: 
      return "";
    case 1: 
      return "未上市";
    case 2: 
      return "已上市";
    case 3: 
      return "停牌";
    case 4: 
      return "退市";
    case 5: 
      return "涨停";
    }
    return "跌停";
  }
  
  public final int value()
  {
    return this.value;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\stock\model\StockStatus.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
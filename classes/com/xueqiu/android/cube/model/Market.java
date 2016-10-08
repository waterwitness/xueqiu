package com.xueqiu.android.cube.model;

public enum Market
{
  CN,  HK,  US;
  
  private Market() {}
  
  public final int bgResId()
  {
    switch (1.$SwitchMap$com$xueqiu$android$cube$model$Market[ordinal()])
    {
    default: 
      return 2130838285;
    case 1: 
      return 2130838278;
    }
    return 2130838279;
  }
  
  public final String description()
  {
    switch (1.$SwitchMap$com$xueqiu$android$cube$model$Market[ordinal()])
    {
    default: 
      return "美股";
    case 1: 
      return "沪深";
    }
    return "港股";
  }
  
  public final boolean isCN()
  {
    return CN == this;
  }
  
  public final boolean isHK()
  {
    return HK == this;
  }
  
  public final boolean isUS()
  {
    return US == this;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\cube\model\Market.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
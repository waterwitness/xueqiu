package com.xueqiu.android.cube.model;

public enum CubeCalGainType
{
  DAILY("daily_gain"),  MONTHLY("monthly_gain"),  TOTAL("annualized_gain_rate");
  
  private String value;
  
  private CubeCalGainType(String paramString)
  {
    this.value = paramString;
  }
  
  public static CubeCalGainType fromValue(String paramString)
  {
    CubeCalGainType[] arrayOfCubeCalGainType = values();
    int j = arrayOfCubeCalGainType.length;
    int i = 0;
    while (i < j)
    {
      CubeCalGainType localCubeCalGainType = arrayOfCubeCalGainType[i];
      if (localCubeCalGainType.value.equals(paramString)) {
        return localCubeCalGainType;
      }
      i += 1;
    }
    return null;
  }
  
  public final String value()
  {
    return this.value;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\cube\model\CubeCalGainType.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
package com.xueqiu.android.common.model;

public class CountryCode
  implements IAlphabetSortable, Comparable<CountryCode>
{
  public String cnName = null;
  public String code = null;
  public String enName = null;
  public String pyName = null;
  
  public int compareTo(CountryCode paramCountryCode)
  {
    int k = 0;
    char[] arrayOfChar = this.pyName.toCharArray();
    paramCountryCode = paramCountryCode.pyName.toCharArray();
    int i = 0;
    for (;;)
    {
      int j = k;
      if (i < arrayOfChar.length)
      {
        if (paramCountryCode.length - 1 < i) {
          j = 1;
        }
      }
      else {
        return j;
      }
      if (arrayOfChar[i] != paramCountryCode[i]) {
        return arrayOfChar[i] - paramCountryCode[i];
      }
      i += 1;
    }
  }
  
  public boolean equals(Object paramObject)
  {
    if ((paramObject == null) || (!(paramObject instanceof CountryCode))) {
      return false;
    }
    return this.code.equals(((CountryCode)paramObject).code);
  }
  
  public String getAlphabets()
  {
    return this.pyName;
  }
  
  public int hashCode()
  {
    return super.hashCode();
  }
  
  public String showName()
  {
    return this.cnName + "     +" + this.code;
  }
  
  public String toString()
  {
    return this.cnName + this.pyName + this.code;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\model\CountryCode.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
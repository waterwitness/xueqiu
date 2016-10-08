package com.umeng.analytics;

import java.util.Locale;
import u.aly.au;

public enum Gender
{
  public int value;
  
  private Gender(int paramInt1)
  {
    this.value = paramInt1;
  }
  
  public static Gender getGender(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return Unknown;
    case 1: 
      return Male;
    }
    return Female;
  }
  
  public static au transGender(Gender paramGender)
  {
    switch (a()[paramGender.ordinal()])
    {
    default: 
      return au.c;
    case 1: 
      return au.a;
    }
    return au.b;
  }
  
  public int value()
  {
    return this.value;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\umeng\analytics\Gender.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
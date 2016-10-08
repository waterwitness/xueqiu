package com.xueqiu.android.trade.model;

public class SectionItem
{
  public static final int SECTIONTYPE_EMPTY = 0;
  public static final int SECTIONTYPE_HS = 1;
  public static final int SECTIONTYPE_ON_KEY_CLEAR = 4;
  public static final int SECTIONTYPE_REPO = 3;
  public static final int SECTIONTYPE_US = 2;
  private int SectionType;
  
  public SectionItem(int paramInt)
  {
    this.SectionType = paramInt;
  }
  
  public int getSectionType()
  {
    return this.SectionType;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\trade\model\SectionItem.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
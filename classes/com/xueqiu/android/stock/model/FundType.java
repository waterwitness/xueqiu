package com.xueqiu.android.stock.model;

import com.google.gson.annotations.Expose;

public class FundType
{
  @Expose
  private int parentType;
  @Expose
  private int type;
  @Expose
  private String typeName;
  
  public int getParentType()
  {
    return this.parentType;
  }
  
  public int getType()
  {
    return this.type;
  }
  
  public String getTypeName()
  {
    return this.typeName;
  }
  
  public void setParentType(int paramInt)
  {
    this.parentType = paramInt;
  }
  
  public void setType(int paramInt)
  {
    this.type = paramInt;
  }
  
  public void setTypeName(String paramString)
  {
    this.typeName = paramString;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\stock\model\FundType.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
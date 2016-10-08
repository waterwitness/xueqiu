package com.xueqiu.android.stock.model;

import com.google.gson.annotations.Expose;

public class F10Page
{
  @Expose
  private String name;
  @Expose
  private F10Table[] tables;
  
  public String getName()
  {
    return this.name;
  }
  
  public F10Table[] getTables()
  {
    return this.tables;
  }
  
  public void setName(String paramString)
  {
    this.name = paramString;
  }
  
  public void setTables(F10Table[] paramArrayOfF10Table)
  {
    this.tables = paramArrayOfF10Table;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\stock\model\F10Page.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
package com.xueqiu.android.cube.model;

import com.google.gson.annotations.Expose;
import java.util.List;

public class NavDailyList
{
  @Expose
  private String label;
  @Expose
  private List<HistoryValue> list;
  @Expose
  private String name;
  @Expose
  private String symbol;
  
  public List<HistoryValue> getList()
  {
    return this.list;
  }
  
  public String getName()
  {
    return this.name;
  }
  
  public String getSymbol()
  {
    return this.symbol;
  }
  
  public void setList(List<HistoryValue> paramList)
  {
    this.list = paramList;
  }
  
  public void setName(String paramString)
  {
    this.name = paramString;
  }
  
  public void setSymbol(String paramString)
  {
    this.symbol = paramString;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\cube\model\NavDailyList.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
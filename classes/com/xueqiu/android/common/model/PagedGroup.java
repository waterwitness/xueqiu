package com.xueqiu.android.common.model;

import java.util.ArrayList;

public class PagedGroup<T>
  extends ArrayList
{
  private int currentPage;
  public String mContent;
  public long mID;
  public String mType;
  private int maxPage;
  private int totalCount;
  
  public PagedGroup() {}
  
  public PagedGroup(ArrayList<T> paramArrayList)
  {
    super(paramArrayList);
  }
  
  public int getCurrentPage()
  {
    return this.currentPage;
  }
  
  public int getMaxPage()
  {
    return this.maxPage;
  }
  
  public int getTotalCount()
  {
    return this.totalCount;
  }
  
  public boolean hasMore()
  {
    return this.currentPage < this.maxPage;
  }
  
  public void setCurrentPage(int paramInt)
  {
    this.currentPage = paramInt;
  }
  
  public void setMaxPage(int paramInt)
  {
    this.maxPage = paramInt;
  }
  
  public void setTotalCount(int paramInt)
  {
    this.totalCount = paramInt;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\model\PagedGroup.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
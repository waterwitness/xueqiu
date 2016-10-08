package com.xueqiu.android.common.model;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import java.util.ArrayList;

public class PagedList<T>
{
  @Expose
  @SerializedName(alternate={"size"}, value="count")
  private int count;
  @Expose
  @SerializedName(alternate={"items", "statuses"}, value="list")
  private ArrayList<T> list;
  @Expose
  @SerializedName(alternate={"total_pages"}, value="maxPage")
  private int maxPage;
  @Expose
  @SerializedName(alternate={"current_page"}, value="page")
  private int page;
  @Expose
  @SerializedName(alternate={"total_items", "total"}, value="totalCount")
  private int totalCount;
  @Expose
  @SerializedName("updated_at")
  private long updateAt;
  
  public int getCount()
  {
    return this.count;
  }
  
  public ArrayList<T> getList()
  {
    return this.list;
  }
  
  public int getMaxPage()
  {
    return this.maxPage;
  }
  
  public int getPage()
  {
    return this.page;
  }
  
  public int getTotalCount()
  {
    return this.totalCount;
  }
  
  public long getUpdateAt()
  {
    return this.updateAt;
  }
  
  public void setCount(int paramInt)
  {
    this.count = paramInt;
  }
  
  public void setList(ArrayList<T> paramArrayList)
  {
    this.list = paramArrayList;
  }
  
  public void setMaxPage(int paramInt)
  {
    this.maxPage = paramInt;
  }
  
  public void setPage(int paramInt)
  {
    this.page = paramInt;
  }
  
  public void setTotalCount(int paramInt)
  {
    this.totalCount = paramInt;
  }
  
  public void setUpdateAt(long paramLong)
  {
    this.updateAt = paramLong;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\model\PagedList.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
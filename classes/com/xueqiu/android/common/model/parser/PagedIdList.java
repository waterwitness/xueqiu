package com.xueqiu.android.common.model.parser;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import java.util.ArrayList;

public class PagedIdList<T>
{
  @Expose
  @SerializedName(alternate={"items"}, value="list")
  private ArrayList<T> list;
  @Expose
  @SerializedName(alternate={"nextId"}, value="next_id")
  private int nextId;
  @Expose
  @SerializedName(alternate={"nextMaxId"}, value="next_max_id")
  private int nextMaxId;
  @Expose
  @SerializedName(alternate={"count"}, value="size")
  private int size;
  
  public ArrayList<T> getList()
  {
    return this.list;
  }
  
  public int getNextId()
  {
    return this.nextId;
  }
  
  public int getNextMaxId()
  {
    return this.nextMaxId;
  }
  
  public int getSize()
  {
    return this.size;
  }
  
  public void setList(ArrayList<T> paramArrayList)
  {
    this.list = paramArrayList;
  }
  
  public void setNextId(int paramInt)
  {
    this.nextId = paramInt;
  }
  
  public void setNextMaxId(int paramInt)
  {
    this.nextMaxId = paramInt;
  }
  
  public void setSize(int paramInt)
  {
    this.size = paramInt;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\model\parser\PagedIdList.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
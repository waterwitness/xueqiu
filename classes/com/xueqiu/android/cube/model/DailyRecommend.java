package com.xueqiu.android.cube.model;

import com.google.gson.annotations.Expose;
import com.xueqiu.android.common.model.PagedList;
import java.util.List;

public class DailyRecommend
{
  @Expose
  private PagedList<Cube> cubes;
  @Expose
  private List<Editorial> editorials;
  @Expose
  private PagedList<Industry> industries;
  
  public PagedList<Cube> getCubes()
  {
    return this.cubes;
  }
  
  public List<Editorial> getEditorials()
  {
    return this.editorials;
  }
  
  public PagedList<Industry> getIndustries()
  {
    return this.industries;
  }
  
  public void setCubes(PagedList<Cube> paramPagedList)
  {
    this.cubes = paramPagedList;
  }
  
  public void setEditorials(List<Editorial> paramList)
  {
    this.editorials = paramList;
  }
  
  public void setIndustries(PagedList<Industry> paramPagedList)
  {
    this.industries = paramPagedList;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\cube\model\DailyRecommend.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
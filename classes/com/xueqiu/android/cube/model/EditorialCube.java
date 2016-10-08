package com.xueqiu.android.cube.model;

import com.google.gson.annotations.Expose;
import java.util.List;

public class EditorialCube
{
  @Expose
  private Editorial editorial;
  @Expose
  private List<Cube> list;
  
  public Editorial getEditorial()
  {
    return this.editorial;
  }
  
  public List<Cube> getList()
  {
    return this.list;
  }
  
  public void setEditorial(Editorial paramEditorial)
  {
    this.editorial = paramEditorial;
  }
  
  public void setList(List<Cube> paramList)
  {
    this.list = paramList;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\cube\model\EditorialCube.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
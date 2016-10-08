package com.xueqiu.android.community.model;

import com.google.gson.annotations.Expose;
import java.util.List;

public class RecommendCard<T>
{
  @Expose
  private List<T> elements;
  @Expose
  private String id;
  @Expose
  private int location;
  @Expose
  private String name;
  @Expose
  private String type;
  
  public List<T> getElements()
  {
    return this.elements;
  }
  
  public String getId()
  {
    return this.id;
  }
  
  public int getLocation()
  {
    return this.location;
  }
  
  public String getName()
  {
    return this.name;
  }
  
  public String getType()
  {
    return this.type;
  }
  
  public void setElements(List<T> paramList)
  {
    this.elements = paramList;
  }
  
  public void setId(String paramString)
  {
    this.id = paramString;
  }
  
  public void setLocation(int paramInt)
  {
    this.location = paramInt;
  }
  
  public void setName(String paramString)
  {
    this.name = paramString;
  }
  
  public void setType(String paramString)
  {
    this.type = paramString;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\community\model\RecommendCard.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
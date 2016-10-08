package com.snowballfinance.messageplatform.data;

import java.io.Serializable;
import java.util.List;

public class MenuItem
  implements Serializable
{
  private static final long serialVersionUID = 1785037766515384790L;
  private String id;
  private String name;
  private List<MenuItem> subItems;
  private MenuItemType type;
  private String url;
  
  public String getId()
  {
    return this.id;
  }
  
  public String getName()
  {
    return this.name;
  }
  
  public List<MenuItem> getSubItems()
  {
    return this.subItems;
  }
  
  public MenuItemType getType()
  {
    return this.type;
  }
  
  public String getUrl()
  {
    return this.url;
  }
  
  public void setId(String paramString)
  {
    this.id = paramString;
  }
  
  public void setName(String paramString)
  {
    this.name = paramString;
  }
  
  public void setSubItems(List<MenuItem> paramList)
  {
    this.subItems = paramList;
  }
  
  public void setType(MenuItemType paramMenuItemType)
  {
    this.type = paramMenuItemType;
  }
  
  public void setUrl(String paramString)
  {
    this.url = paramString;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\snowballfinance\messageplatform\data\MenuItem.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
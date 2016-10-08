package com.snowballfinance.messageplatform.data;

import com.snowballfinance.messageplatform.b.d;
import java.io.Serializable;
import java.util.Iterator;
import java.util.List;

public class Menu
  implements Serializable
{
  private static final long serialVersionUID = 1283397130808226499L;
  private Long id;
  private List<MenuItem> menuItems;
  private Long ts;
  private MenuType type;
  private Long userId;
  
  private void updateMenuItemsDefaultValues(List<MenuItem> paramList)
  {
    if ((paramList != null) && (paramList.size() > 0))
    {
      paramList = paramList.iterator();
      while (paramList.hasNext())
      {
        MenuItem localMenuItem = (MenuItem)paramList.next();
        if ((localMenuItem.getId() != null) && (localMenuItem.getType() == null)) {
          localMenuItem.setType(MenuItemType.CLICK);
        }
        if ((localMenuItem.getUrl() != null) && (localMenuItem.getType() == null)) {
          localMenuItem.setType(MenuItemType.VIEW);
        }
        updateMenuItemsDefaultValues(localMenuItem.getSubItems());
      }
    }
  }
  
  public String description()
  {
    StringBuilder localStringBuilder = new StringBuilder("user=").append(this.userId).append("|type=").append(this.type).append("|ts=").append(this.ts).append("|items=");
    if (this.menuItems == null) {}
    for (Object localObject = null;; localObject = d.a(this.menuItems)) {
      return (String)localObject;
    }
  }
  
  public Long getId()
  {
    return this.id;
  }
  
  public List<MenuItem> getMenuItems()
  {
    return this.menuItems;
  }
  
  public Long getTs()
  {
    return this.ts;
  }
  
  public MenuType getType()
  {
    return this.type;
  }
  
  public Long getUserId()
  {
    return this.userId;
  }
  
  public void setId(Long paramLong)
  {
    this.id = paramLong;
  }
  
  public void setMenuItems(List<MenuItem> paramList)
  {
    this.menuItems = paramList;
  }
  
  public void setTs(Long paramLong)
  {
    this.ts = paramLong;
  }
  
  public void setType(MenuType paramMenuType)
  {
    this.type = paramMenuType;
  }
  
  public void setUserId(Long paramLong)
  {
    this.userId = paramLong;
  }
  
  public void updateDefaultValues()
  {
    if (this.type == null) {
      this.type = MenuType.HYBRID_MENU;
    }
    updateMenuItemsDefaultValues(this.menuItems);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\snowballfinance\messageplatform\data\Menu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
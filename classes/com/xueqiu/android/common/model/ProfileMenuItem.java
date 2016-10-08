package com.xueqiu.android.common.model;

import com.google.gson.annotations.Expose;
import java.io.Serializable;

public class ProfileMenuItem
  implements Serializable
{
  public static final String ACTIVITY = "ACTIVITY";
  public static final String CUBE = "CUBE";
  public static final String FAV = "FAV";
  public static final String IDENTIFY = "IDENTIFY";
  public static final String NIGHT = "NIGHT";
  public static final String ORDER = "ORDER";
  public static final String PROFIT = "PROFIT";
  public static final String SECURITY = "SECURITY";
  public static final String SETTING = "SETTING";
  public static final String TRADER = "TRADER";
  public static final String WALLET = "WALLET";
  public static final String WEB = "WEB";
  private static final long serialVersionUID = 1L;
  @Expose
  private boolean badge;
  @Expose
  private String icon;
  @Expose
  private String name;
  @Expose
  private String subTitle;
  @Expose
  private String title;
  @Expose
  private String url;
  
  public static long getSerialVersionUID()
  {
    return 1L;
  }
  
  public String getIcon()
  {
    return this.icon;
  }
  
  public String getName()
  {
    return this.name;
  }
  
  public String getSubTitle()
  {
    return this.subTitle;
  }
  
  public String getTitle()
  {
    return this.title;
  }
  
  public String getUrl()
  {
    return this.url;
  }
  
  public boolean isBadge()
  {
    return this.badge;
  }
  
  public void setBadge(boolean paramBoolean)
  {
    this.badge = paramBoolean;
  }
  
  public void setIcon(String paramString)
  {
    this.icon = paramString;
  }
  
  public void setName(String paramString)
  {
    this.name = paramString;
  }
  
  public void setSubTitle(String paramString)
  {
    this.subTitle = paramString;
  }
  
  public void setTitle(String paramString)
  {
    this.title = paramString;
  }
  
  public void setUrl(String paramString)
  {
    this.url = paramString;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\model\ProfileMenuItem.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
package com.xueqiu.android.community.model;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;

public class AdBanner
{
  @Expose
  @SerializedName("isenable")
  private boolean enable;
  @Expose
  private int id;
  @Expose
  @SerializedName("image_src")
  private String image;
  @Expose
  @SerializedName("ad_url")
  private String link;
  @Expose
  @SerializedName("sortid")
  private int sortId;
  @Expose
  @SerializedName("ad_title")
  private String title;
  @Expose
  @SerializedName("ad_type")
  private int type;
  
  public int getId()
  {
    return this.id;
  }
  
  public String getImage()
  {
    return this.image;
  }
  
  public String getLink()
  {
    return this.link;
  }
  
  public int getSortId()
  {
    return this.sortId;
  }
  
  public String getTitle()
  {
    return this.title;
  }
  
  public int getType()
  {
    return this.type;
  }
  
  public boolean isEnable()
  {
    return this.enable;
  }
  
  public void setEnable(boolean paramBoolean)
  {
    this.enable = paramBoolean;
  }
  
  public void setId(int paramInt)
  {
    this.id = paramInt;
  }
  
  public void setImage(String paramString)
  {
    this.image = paramString;
  }
  
  public void setLink(String paramString)
  {
    this.link = paramString;
  }
  
  public void setSortId(int paramInt)
  {
    this.sortId = paramInt;
  }
  
  public void setTitle(String paramString)
  {
    this.title = paramString;
  }
  
  public void setType(int paramInt)
  {
    this.type = paramInt;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\community\model\AdBanner.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
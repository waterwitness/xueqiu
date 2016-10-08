package com.xueqiu.android.stock.model;

import com.google.gson.annotations.Expose;

public class F10Table
{
  @Expose
  private String[] align;
  @Expose
  private String[] header;
  @Expose
  private String link;
  @Expose
  private String[][] rowdata;
  @Expose
  private String subtitle;
  @Expose
  private String time;
  @Expose
  private String title;
  @Expose
  private int[] width;
  
  public String[] getAlign()
  {
    return this.align;
  }
  
  public String[] getHeader()
  {
    return this.header;
  }
  
  public String getLink()
  {
    return this.link;
  }
  
  public String[][] getRowdata()
  {
    return this.rowdata;
  }
  
  public String getSubtitle()
  {
    return this.subtitle;
  }
  
  public String getTime()
  {
    return this.time;
  }
  
  public String getTitle()
  {
    return this.title;
  }
  
  public int[] getWidth()
  {
    return this.width;
  }
  
  public void setAlign(String[] paramArrayOfString)
  {
    this.align = paramArrayOfString;
  }
  
  public void setHeader(String[] paramArrayOfString)
  {
    this.header = paramArrayOfString;
  }
  
  public void setLink(String paramString)
  {
    this.link = paramString;
  }
  
  public void setRowdata(String[][] paramArrayOfString)
  {
    this.rowdata = paramArrayOfString;
  }
  
  public void setSubtitle(String paramString)
  {
    this.subtitle = paramString;
  }
  
  public void setTime(String paramString)
  {
    this.time = paramString;
  }
  
  public void setTitle(String paramString)
  {
    this.title = paramString;
  }
  
  public void setWidth(int[] paramArrayOfInt)
  {
    this.width = paramArrayOfInt;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\stock\model\F10Table.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
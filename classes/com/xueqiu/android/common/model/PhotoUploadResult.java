package com.xueqiu.android.common.model;

import com.google.gson.annotations.Expose;

public class PhotoUploadResult
{
  @Expose
  private String filename;
  @Expose
  private int height;
  @Expose
  private String url;
  @Expose
  private int width;
  
  public String getFilename()
  {
    return this.filename;
  }
  
  public int getHeight()
  {
    return this.height;
  }
  
  public String getUrl()
  {
    return this.url;
  }
  
  public int getWidth()
  {
    return this.width;
  }
  
  public void setFilename(String paramString)
  {
    this.filename = paramString;
  }
  
  public void setHeight(int paramInt)
  {
    this.height = paramInt;
  }
  
  public void setUrl(String paramString)
  {
    this.url = paramString;
  }
  
  public void setWidth(int paramInt)
  {
    this.width = paramInt;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\model\PhotoUploadResult.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
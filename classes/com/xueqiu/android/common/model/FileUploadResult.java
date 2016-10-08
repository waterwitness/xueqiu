package com.xueqiu.android.common.model;

import com.google.gson.annotations.Expose;

public class FileUploadResult
{
  @Expose
  private String message;
  @Expose
  private boolean status;
  @Expose
  private String url;
  
  public String getMessage()
  {
    return this.message;
  }
  
  public String getUrl()
  {
    return this.url;
  }
  
  public boolean isStatus()
  {
    return this.status;
  }
  
  public void setMessage(String paramString)
  {
    this.message = paramString;
  }
  
  public void setStatus(boolean paramBoolean)
  {
    this.status = paramBoolean;
  }
  
  public void setUrl(String paramString)
  {
    this.url = paramString;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\model\FileUploadResult.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
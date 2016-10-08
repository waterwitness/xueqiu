package com.xueqiu.android.common.model;

import com.google.gson.annotations.Expose;

public class RequestResult
{
  @Expose
  private String message;
  @Expose
  private boolean success;
  
  public String getMessage()
  {
    return this.message;
  }
  
  public boolean isSuccess()
  {
    return this.success;
  }
  
  public void setMessage(String paramString)
  {
    this.message = paramString;
  }
  
  public void setSuccess(boolean paramBoolean)
  {
    this.success = paramBoolean;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\model\RequestResult.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
package com.xueqiu.android.message.model;

import com.google.gson.annotations.Expose;
import java.util.List;

public class BatchResult
{
  @Expose
  private List<Long> failure;
  @Expose
  private String message;
  @Expose
  private List<Long> success;
  
  public List<Long> getFailure()
  {
    return this.failure;
  }
  
  public String getMessage()
  {
    return this.message;
  }
  
  public List<Long> getSuccess()
  {
    return this.success;
  }
  
  public void setFailure(List<Long> paramList)
  {
    this.failure = paramList;
  }
  
  public void setMessage(String paramString)
  {
    this.message = paramString;
  }
  
  public void setSuccess(List<Long> paramList)
  {
    this.success = paramList;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\message\model\BatchResult.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
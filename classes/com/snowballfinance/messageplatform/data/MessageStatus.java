package com.snowballfinance.messageplatform.data;

public class MessageStatus
{
  private String error;
  private Message message;
  private Boolean notifySender = Boolean.valueOf(false);
  
  public String getError()
  {
    return this.error;
  }
  
  public Message getMessage()
  {
    return this.message;
  }
  
  public Boolean getNotifySender()
  {
    return this.notifySender;
  }
  
  public void setError(String paramString)
  {
    this.error = paramString;
  }
  
  public void setMessage(Message paramMessage)
  {
    this.message = paramMessage;
  }
  
  public void setNotifySender(Boolean paramBoolean)
  {
    this.notifySender = paramBoolean;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\snowballfinance\messageplatform\data\MessageStatus.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
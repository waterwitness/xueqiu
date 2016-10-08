package com.letpower.engine;

import android.os.Binder;

public class NotifyService$MyBinder
  extends Binder
{
  public NotifyService$MyBinder(NotifyService paramNotifyService) {}
  
  public boolean getConnectionStatus()
  {
    return NotifyService.access$4(this.this$0);
  }
  
  public NotifyService getService()
  {
    return this.this$0;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\letpower\engine\NotifyService$MyBinder.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
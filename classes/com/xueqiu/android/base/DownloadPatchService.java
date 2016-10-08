package com.xueqiu.android.base;

import android.app.IntentService;
import android.content.Intent;

public class DownloadPatchService
  extends IntentService
{
  private n a = null;
  
  public DownloadPatchService()
  {
    super("DownloadPatchService");
  }
  
  public void onCreate()
  {
    super.onCreate();
    this.a = n.b(this);
    this.a.a();
  }
  
  protected void onHandleIntent(Intent paramIntent)
  {
    this.a.b();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\base\DownloadPatchService.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
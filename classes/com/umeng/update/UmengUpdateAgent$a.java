package com.umeng.update;

import android.content.Context;

class UmengUpdateAgent$a
  implements Runnable
{
  Context a;
  
  public UmengUpdateAgent$a(Context paramContext)
  {
    this.a = paramContext;
  }
  
  public void run()
  {
    try
    {
      UpdateResponse localUpdateResponse = new b(this.a).b();
      if (localUpdateResponse == null)
      {
        UmengUpdateAgent.a(3, null);
        return;
      }
      if (!localUpdateResponse.hasUpdate)
      {
        UmengUpdateAgent.a(1, localUpdateResponse);
        return;
      }
    }
    catch (Exception localException)
    {
      UmengUpdateAgent.a(1, null);
      u.a.b.a("update", "request update error", localException);
      return;
      UmengUpdateAgent.a(0, localException);
      return;
    }
    catch (Error localError)
    {
      u.a.b.a("update", "request update error" + localError.getMessage());
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\umeng\update\UmengUpdateAgent$a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
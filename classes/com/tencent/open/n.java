package com.tencent.open;

import android.content.Context;
import android.os.Bundle;

final class n
  extends Thread
{
  n(Context paramContext, Bundle paramBundle) {}
  
  public final void run()
  {
    try
    {
      Util.a(this.a, "http://cgi.qplus.com/report/report", "GET", this.b);
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\open\n.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
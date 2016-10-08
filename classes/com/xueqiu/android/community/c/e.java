package com.xueqiu.android.community.c;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.xueqiu.android.common.r;
import com.xueqiu.android.community.model.Status;
import java.util.ArrayList;
import java.util.Iterator;

final class e
  extends BroadcastReceiver
{
  private e(d paramd) {}
  
  public final void onReceive(Context paramContext, Intent paramIntent)
  {
    long l = paramIntent.getLongExtra("delete_status_id", 0L);
    if (d.c(this.a) != null)
    {
      paramContext = d.c(this.a).c.a();
      paramIntent = paramContext.iterator();
      while (paramIntent.hasNext())
      {
        Status localStatus = (Status)paramIntent.next();
        if (localStatus.getStatusId() == l) {
          paramContext.remove(localStatus);
        }
      }
      d.c(this.a).c.notifyDataSetChanged();
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\community\c\e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
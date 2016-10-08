package com.xiaomi.mipush.sdk;

import android.app.IntentService;
import android.content.Intent;
import android.text.TextUtils;
import com.xiaomi.a.a.b.c;
import java.util.concurrent.ConcurrentLinkedQueue;

public class MessageHandleService
  extends IntentService
{
  private static ConcurrentLinkedQueue<a> a = new ConcurrentLinkedQueue();
  
  public MessageHandleService()
  {
    super("MessageHandleThread");
  }
  
  public static void a(a parama)
  {
    a.add(parama);
  }
  
  protected void onHandleIntent(Intent paramIntent)
  {
    Object localObject;
    if (paramIntent != null)
    {
      localObject = (a)a.poll();
      if (localObject != null) {
        break label19;
      }
    }
    label19:
    label162:
    label183:
    do
    {
      do
      {
        do
        {
          for (;;)
          {
            return;
            try
            {
              paramIntent = ((a)localObject).a;
              localObject = ((a)localObject).b;
              switch (((Intent)localObject).getIntExtra("message_type", 1))
              {
              case 4: 
              case 1: 
                localObject = q.a(this).a((Intent)localObject);
                if (localObject != null)
                {
                  if (!(localObject instanceof e)) {
                    break label183;
                  }
                  localObject = (e)localObject;
                  if (!((e)localObject).n) {
                    paramIntent.onReceiveMessage(this, (e)localObject);
                  }
                  if (((e)localObject).g != 1) {
                    break label162;
                  }
                  paramIntent.onReceivePassThroughMessage(this, (e)localObject);
                  return;
                }
                break;
              }
            }
            catch (RuntimeException paramIntent)
            {
              c.a(paramIntent);
              return;
            }
          }
          localObject = (d)((Intent)localObject).getSerializableExtra("key_command");
          paramIntent.onCommandResult(this, (d)localObject);
        } while (!TextUtils.equals(((d)localObject).a, "register"));
        paramIntent.onReceiveRegisterResult(this, (d)localObject);
        return;
        if (((e)localObject).j)
        {
          paramIntent.onNotificationMessageClicked(this, (e)localObject);
          return;
        }
        paramIntent.onNotificationMessageArrived(this, (e)localObject);
        return;
      } while (!(localObject instanceof d));
      localObject = (d)localObject;
      paramIntent.onCommandResult(this, (d)localObject);
    } while (!TextUtils.equals(((d)localObject).a, "register"));
    paramIntent.onReceiveRegisterResult(this, (d)localObject);
    return;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\mipush\sdk\MessageHandleService.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
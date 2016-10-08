package com.c.a;

import android.os.Handler;
import android.os.Message;
import android.view.animation.AnimationUtils;
import java.util.ArrayList;

final class y
  extends Handler
{
  public final void handleMessage(Message paramMessage)
  {
    ArrayList localArrayList1 = (ArrayList)x.f().get();
    ArrayList localArrayList2 = (ArrayList)x.g().get();
    int i;
    switch (paramMessage.what)
    {
    default: 
      return;
    case 0: 
      paramMessage = (ArrayList)x.h().get();
      if ((localArrayList1.size() > 0) || (localArrayList2.size() > 0)) {
        i = 0;
      }
      break;
    }
    for (;;)
    {
      int j = i;
      Object localObject;
      int k;
      x localx;
      if (paramMessage.size() > 0)
      {
        localObject = (ArrayList)paramMessage.clone();
        paramMessage.clear();
        k = ((ArrayList)localObject).size();
        j = 0;
        if (j < k)
        {
          localx = (x)((ArrayList)localObject).get(j);
          if (x.a(localx) == 0L) {
            x.b(localx);
          }
          for (;;)
          {
            j += 1;
            break;
            localArrayList2.add(localx);
          }
          j = 1;
        }
      }
      else
      {
        long l = AnimationUtils.currentAnimationTimeMillis();
        localObject = (ArrayList)x.i().get();
        paramMessage = (ArrayList)x.j().get();
        k = localArrayList2.size();
        i = 0;
        while (i < k)
        {
          localx = (x)localArrayList2.get(i);
          if (x.a(localx, l)) {
            ((ArrayList)localObject).add(localx);
          }
          i += 1;
        }
        k = ((ArrayList)localObject).size();
        if (k > 0)
        {
          i = 0;
          while (i < k)
          {
            localx = (x)((ArrayList)localObject).get(i);
            x.b(localx);
            x.c(localx);
            localArrayList2.remove(localx);
            i += 1;
          }
          ((ArrayList)localObject).clear();
        }
        k = localArrayList1.size();
        i = 0;
        while (i < k)
        {
          localObject = (x)localArrayList1.get(i);
          if (((x)localObject).c(l)) {
            paramMessage.add(localObject);
          }
          if (localArrayList1.size() == k)
          {
            i += 1;
          }
          else
          {
            k -= 1;
            paramMessage.remove(localObject);
          }
        }
        if (paramMessage.size() > 0)
        {
          i = 0;
          while (i < paramMessage.size())
          {
            x.d((x)paramMessage.get(i));
            i += 1;
          }
          paramMessage.clear();
        }
        if ((j == 0) || ((localArrayList1.isEmpty()) && (localArrayList2.isEmpty()))) {
          break;
        }
        sendEmptyMessageDelayed(1, Math.max(0L, x.k() - (AnimationUtils.currentAnimationTimeMillis() - l)));
        return;
        i = 1;
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\c\a\y.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
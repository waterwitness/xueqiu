package com.xueqiu.android.message.a;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.xueqiu.android.base.util.aw;
import com.xueqiu.android.community.model.User;
import com.xueqiu.android.message.model.IMGroup;
import com.xueqiu.android.message.model.Talk;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

public final class aa
  extends BroadcastReceiver
{
  public aa(z paramz) {}
  
  public final void onReceive(Context paramContext, Intent arg2)
  {
    int j = 1;
    int i = 1;
    if (???.getAction().equals("com.xueqiu.android.action.talks")) {
      this.a.a(???.getParcelableArrayListExtra("extra_talks"));
    }
    do
    {
      return;
      if (???.getAction().equals("com.xueqiu.android.action.messages"))
      {
        this.a.b(???.getParcelableArrayListExtra("extra_messages"));
        return;
      }
      if (???.getAction().equals("com.xueqiu.android.action.receiveRead"))
      {
        long l = ???.getLongExtra("target_read_at_long", -1L);
        this.a.a(???.getLongExtra("extra_receive_read_toid_long", 0L), l);
        return;
      }
      if (!???.getAction().equals("com.xueqiu.android.action.sendRead")) {
        break;
      }
      paramContext = (Talk)???.getParcelableExtra("extra_talk");
    } while (paramContext == null);
    this.a.a(paramContext.getId(), -1L);
    return;
    Object localObject;
    if (???.getAction().equals("com.xueqiu.android.action.setTalkState"))
    {
      paramContext = this.a;
      localObject = (Talk)???.getParcelableExtra("extra_talk");
    }
    for (;;)
    {
      Iterator localIterator;
      Talk localTalk;
      synchronized (paramContext.a)
      {
        localIterator = paramContext.a.iterator();
        if (!localIterator.hasNext()) {
          break label626;
        }
        localTalk = (Talk)localIterator.next();
        if (!((Talk)localObject).equals(localTalk)) {
          continue;
        }
        localTalk.setCollapsed(((Talk)localObject).isCollapsed());
        localTalk.setNotify(((Talk)localObject).isNotify());
        localTalk.setTop(((Talk)localObject).isTop());
        localTalk.setStatus(((Talk)localObject).getStatus());
        localTalk.setSummary(((Talk)localObject).getSummary());
        if (((Talk)localObject).getLastTime().getTime() > localTalk.getLastTime().getTime()) {
          localTalk.setLastTime(((Talk)localObject).getLastTime());
        }
        localTalk.setName(((Talk)localObject).getName());
        if (i == 0) {
          break;
        }
        paramContext.b();
        return;
      }
      if (???.getAction().equals("com.xueqiu.android.action.updateIMGroup"))
      {
        paramContext = this.a;
        localObject = (IMGroup)???.getParcelableExtra("extra_imgroup");
      }
      for (;;)
      {
        synchronized (paramContext.a)
        {
          localIterator = paramContext.a.iterator();
          if (!localIterator.hasNext()) {
            break label620;
          }
          localTalk = (Talk)localIterator.next();
          if ((!localTalk.isGroup()) || (localTalk.getId() != ((IMGroup)localObject).getId())) {
            continue;
          }
          localTalk.setName(String.format("%s(%d)", new Object[] { aw.a(paramContext.e, ((IMGroup)localObject).getName()), Integer.valueOf(((IMGroup)localObject).getCount()) }));
          localTalk.setProfileImageUrl(((IMGroup)localObject).getProfileImageUrl());
          i = j;
          if (i == 0) {
            break;
          }
          paramContext.b();
          return;
        }
        if (???.getAction().equals("com.xueqiu.android.action.updateUser"))
        {
          paramContext = this.a;
          localObject = (User)???.getParcelableExtra("extra_user");
        }
        for (;;)
        {
          synchronized (paramContext.a)
          {
            localIterator = paramContext.a.iterator();
            if (!localIterator.hasNext()) {
              break label614;
            }
            localTalk = (Talk)localIterator.next();
            if ((localTalk.isGroup()) || (localTalk.getId() != ((User)localObject).getUserId())) {
              continue;
            }
            localTalk.setName(aw.a(paramContext.e, ((User)localObject).getScreenName()));
            i = 1;
            if (i == 0) {
              break;
            }
            paramContext.b();
            return;
          }
          if (!???.getAction().equals("com.xueqiu.android.action.deleteTalk")) {
            break;
          }
          this.a.a();
          return;
          label614:
          i = 0;
        }
        label620:
        i = 0;
      }
      label626:
      i = 0;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\message\a\aa.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
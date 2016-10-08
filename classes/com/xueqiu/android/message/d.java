package com.xueqiu.android.message;

import android.app.AlertDialog.Builder;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.IBinder;
import android.support.v4.a.i;
import android.support.v4.content.r;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.AdapterView.OnItemLongClickListener;
import android.widget.ListView;
import com.snowballfinance.messageplatform.a.y;
import com.xueqiu.android.base.storage.prefs.DataStore;
import com.xueqiu.android.base.util.x;
import com.xueqiu.android.message.client.MessageService;
import com.xueqiu.android.message.model.Message;
import com.xueqiu.android.message.model.Read;
import com.xueqiu.android.message.model.Talk;
import java.util.List;
import rx.c.f;
import rx.c.g;

public final class d
  extends com.xueqiu.android.common.c
{
  com.xueqiu.android.message.a.z a;
  boolean b;
  MessageService c;
  private List<Talk> d;
  private View e;
  private ServiceConnection f = new ServiceConnection()
  {
    public final void onServiceConnected(ComponentName paramAnonymousComponentName, IBinder paramAnonymousIBinder)
    {
      d.a(d.this, (MessageService)((com.xueqiu.android.message.client.b)paramAnonymousIBinder).a);
    }
    
    public final void onServiceDisconnected(ComponentName paramAnonymousComponentName) {}
  };
  private BroadcastReceiver g = new BroadcastReceiver()
  {
    public final void onReceive(Context paramAnonymousContext, Intent paramAnonymousIntent)
    {
      if (paramAnonymousIntent.getAction().equals("com.xueqiu.android.action.talks")) {
        d.this.b(paramAnonymousIntent.getParcelableArrayListExtra("extra_talks"));
      }
      do
      {
        return;
        if (paramAnonymousIntent.getAction().equals("com.xueqiu.android.action.messages"))
        {
          d.this.a(paramAnonymousIntent.getParcelableArrayListExtra("extra_messages"));
          return;
        }
      } while (!paramAnonymousIntent.getAction().equals("com.xueqiu.android.action.receiveRead"));
      paramAnonymousIntent.getParcelableArrayListExtra("extra_reads");
      d.u();
    }
  };
  
  private void C()
  {
    rx.a.a(DataStore.getInstance(f()).getTalks(true)).c(new f() {}).b(new g() {}).c(new rx.c.b() {});
  }
  
  public static void u() {}
  
  public final View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    super.a(paramLayoutInflater, paramViewGroup, paramBundle);
    if (this.r != null) {
      this.b = this.r.getBoolean("extra_collapsed_boolean");
    }
    if (this.b) {
      w().b(2131166161);
    }
    if (this.e == null) {
      this.e = paramLayoutInflater.inflate(2130903418, paramViewGroup, false);
    }
    for (;;)
    {
      return this.e;
      ((ViewGroup)this.e.getParent()).removeView(this.e);
    }
  }
  
  public final void a(Bundle paramBundle)
  {
    f().bindService(new Intent(f(), MessageService.class), this.f, 1);
    super.a(paramBundle);
  }
  
  public final void a(View paramView, Bundle paramBundle)
  {
    super.a(paramView, paramBundle);
    C();
    paramView = (ListView)paramView.findViewById(2131625337);
    this.a = new com.xueqiu.android.message.a.z(g(), this.d, this.b);
    paramView.setAdapter(this.a);
    paramView.setOnItemClickListener(new AdapterView.OnItemClickListener()
    {
      public final void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
      {
        paramAnonymousAdapterView = (Talk)d.a(d.this).getItem(paramAnonymousInt);
        paramAnonymousView = new Intent(d.this.f(), ChatActivity.class);
        paramAnonymousView.putExtra("talk", paramAnonymousAdapterView);
        d.this.a(paramAnonymousView);
      }
    });
    paramView.setOnItemLongClickListener(new AdapterView.OnItemLongClickListener()
    {
      public final boolean onItemLongClick(final AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
      {
        paramAnonymousAdapterView = (Talk)d.a(d.this).getItem(paramAnonymousInt);
        paramAnonymousView = new AlertDialog.Builder(paramAnonymousView.getContext()).setTitle(2131165775);
        String str = d.this.a(2131165464);
        paramAnonymousAdapterView = new DialogInterface.OnClickListener()
        {
          public final void onClick(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
          {
            if (paramAnonymous2Int == 0)
            {
              paramAnonymous2DialogInterface = d.this;
              Talk localTalk = paramAnonymousAdapterView;
              if (paramAnonymous2DialogInterface.c != null)
              {
                localTalk.setActive(false);
                paramAnonymous2DialogInterface.c.a(y.a(localTalk.toMessageSession())).c(new d.3(paramAnonymous2DialogInterface, localTalk));
              }
              if ((paramAnonymous2DialogInterface.b) && (paramAnonymous2DialogInterface.a.getCount() == 0)) {
                x.a(paramAnonymous2DialogInterface.f(), "com.xueqiu.android.action.deleteTalk", null, null);
              }
            }
          }
        };
        paramAnonymousView.setItems(new String[] { str }, paramAnonymousAdapterView).show();
        return true;
      }
    });
    paramView = new IntentFilter();
    paramView.addAction("com.xueqiu.android.action.sendRead");
    paramView.addAction("com.xueqiu.android.action.setTalkState");
    paramView.addAction("com.xueqiu.android.action.updateIMGroup");
    paramView.addAction("com.xueqiu.android.action.updateUser");
    r.a(g()).a(this.g, paramView);
    a(rx.a.a.a.a(this, com.xueqiu.android.message.client.c.a).a(new rx.c.b()new rx.c.b {}, new rx.c.b() {}));
    a(rx.a.a.a.a(this, com.xueqiu.android.message.client.c.c).a(new rx.c.b()new rx.c.b {}, new rx.c.b() {}));
    a(rx.a.a.a.a(this, com.xueqiu.android.message.client.c.b).i().a(new rx.c.b()new rx.c.b {}, new rx.c.b() {}));
  }
  
  public final void a(List<Message> paramList)
  {
    if (this.a != null) {
      this.a.b(paramList);
    }
  }
  
  public final void b(List<Talk> paramList)
  {
    if (this.a != null) {
      this.a.a(paramList);
    }
  }
  
  public final void e()
  {
    super.e();
    r.a(g()).a(this.g);
  }
  
  public final void o()
  {
    super.o();
    C();
  }
  
  public final void q()
  {
    f().unbindService(this.f);
    super.q();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\message\d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
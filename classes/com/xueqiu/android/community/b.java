package com.xueqiu.android.community;

import android.app.AlertDialog.Builder;
import android.app.NotificationManager;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.a.k;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.AdapterView.OnItemLongClickListener;
import android.widget.ListView;
import com.android.volley.n;
import com.android.volley.y;
import com.xueqiu.android.base.b.ai;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.b.x;
import com.xueqiu.android.base.storage.DBManager;
import com.xueqiu.android.base.u;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.base.util.v;
import com.xueqiu.android.common.a.d;
import com.xueqiu.android.common.model.RequestResult;
import com.xueqiu.android.common.r;
import com.xueqiu.android.common.widget.SNBPullToRefreshListView;
import com.xueqiu.android.community.a.a;
import com.xueqiu.android.community.model.Comment;
import com.xueqiu.android.community.model.Status;
import java.util.ArrayList;
import java.util.List;

public final class b
  extends com.xueqiu.android.common.c
{
  private r<Comment> a = null;
  private a b = null;
  private NotificationManager c = null;
  private com.xueqiu.android.common.t<Comment> d = new com.xueqiu.android.common.t()
  {
    private x<ArrayList<Comment>> a(boolean paramAnonymousBoolean, p<ArrayList<Comment>> paramAnonymousp)
    {
      long l2 = 0L;
      ArrayList localArrayList = b.b(b.this).c.a();
      long l1;
      if ((localArrayList != null) && (localArrayList.size() != 0)) {
        if (!paramAnonymousBoolean) {
          l1 = ((Comment)localArrayList.get(0)).getId();
        }
      }
      for (;;)
      {
        b.this.g().getApplication();
        return com.xueqiu.android.base.q.a().b().a(l1, l2, paramAnonymousp);
        l2 = ((Comment)localArrayList.get(localArrayList.size() - 1)).getId();
        l1 = 0L;
        continue;
        l1 = 0L;
      }
    }
    
    public final n<ArrayList<Comment>> a(p<ArrayList<Comment>> paramAnonymousp)
    {
      b.c(b.this).cancel(1);
      return a(false, paramAnonymousp);
    }
    
    public final void a(ArrayList<Comment> paramAnonymousArrayList, Throwable paramAnonymousThrowable, boolean paramAnonymousBoolean)
    {
      if (paramAnonymousArrayList == null) {
        aa.a(paramAnonymousThrowable);
      }
      do
      {
        return;
        com.xueqiu.android.message.client.c.g.a(Integer.valueOf(0));
      } while ((!paramAnonymousBoolean) || (paramAnonymousArrayList.size() != 0));
      b.b(b.this).b(false);
    }
    
    public final n<ArrayList<Comment>> b(p<ArrayList<Comment>> paramAnonymousp)
    {
      return a(true, paramAnonymousp);
    }
  };
  
  public final View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    super.a(paramLayoutInflater, paramViewGroup, paramBundle);
    d(2131165350);
    paramLayoutInflater = paramLayoutInflater.inflate(2130903338, paramViewGroup, false);
    if (this.b == null)
    {
      this.b = new a((com.xueqiu.android.common.b)g());
      paramViewGroup = new ArrayList(DBManager.getInstance().queryComments(1));
      this.b.a(paramViewGroup);
    }
    this.a = new r((SNBPullToRefreshListView)paramLayoutInflater.findViewById(2131625127), this.d);
    this.a.a(this.b);
    this.a.a(new AdapterView.OnItemClickListener()
    {
      public final void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
      {
        paramAnonymousAdapterView = (Comment)b.a(b.this).getItem(paramAnonymousInt - 1);
        if ((paramAnonymousAdapterView == null) || (paramAnonymousAdapterView.getStatus() == null)) {
          return;
        }
        paramAnonymousView = new Intent(b.this.g(), StatusDetailActivity.class);
        paramAnonymousView.putExtra("status_id", paramAnonymousAdapterView.getStatus().getStatusId());
        b.this.a(paramAnonymousView);
      }
    });
    this.a.d().setOnItemLongClickListener(new AdapterView.OnItemLongClickListener()
    {
      public final boolean onItemLongClick(final AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
      {
        paramAnonymousAdapterView = (Comment)b.a(b.this).getItem(paramAnonymousInt - 1);
        paramAnonymousView = new AlertDialog.Builder(paramAnonymousView.getContext()).setTitle(2131165342);
        String str = b.this.a(2131165465);
        paramAnonymousAdapterView = new DialogInterface.OnClickListener()
        {
          public final void onClick(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
          {
            b.a(b.this, paramAnonymousAdapterView);
          }
        };
        paramAnonymousView.setItems(new String[] { str }, paramAnonymousAdapterView).show();
        return true;
      }
    });
    this.a.a(a(2131165494));
    this.a.a(2130837912);
    paramViewGroup = g().getIntent();
    int i;
    if (paramViewGroup != null) {
      if (paramViewGroup.getIntExtra("extra_notification", -1) == 1) {
        i = 1;
      }
    }
    for (;;)
    {
      if ((i != 0) || (this.a.c.getCount() == 0)) {
        this.a.a(true);
      }
      return paramLayoutInflater;
      i = 0;
      continue;
      i = 0;
    }
  }
  
  public final void a(Bundle paramBundle)
  {
    super.a(paramBundle);
    this.c = ((NotificationManager)g().getSystemService("notification"));
  }
  
  public final void o()
  {
    super.o();
    if (this.a != null) {
      if (this.a.c.getCount() != 0) {
        break label35;
      }
    }
    label35:
    for (boolean bool = true;; bool = false)
    {
      this.a.a(bool);
      return;
    }
  }
  
  public final void q()
  {
    v.c("CommentReceiveFragment", "onDestroy()");
    if (u.a().c) {}
    try
    {
      if (this.b != null)
      {
        ArrayList localArrayList = this.b.a();
        if ((localArrayList != null) && (localArrayList.size() > 0))
        {
          DBManager localDBManager = DBManager.getInstance();
          Object localObject = localArrayList;
          if (localArrayList.size() > 20) {
            localObject = localArrayList.subList(0, 20);
          }
          localDBManager.insertComments((List)localObject, 1);
        }
      }
    }
    catch (Exception localException)
    {
      for (;;)
      {
        if (v.a) {
          aa.a(localException);
        }
      }
    }
    super.q();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\community\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
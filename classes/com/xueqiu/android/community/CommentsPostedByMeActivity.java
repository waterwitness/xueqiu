package com.xueqiu.android.community;

import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.AdapterView.OnItemLongClickListener;
import com.android.volley.n;
import com.android.volley.y;
import com.xueqiu.android.base.b.ai;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.b.x;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.common.a.d;
import com.xueqiu.android.common.b;
import com.xueqiu.android.common.model.RequestResult;
import com.xueqiu.android.common.r;
import com.xueqiu.android.common.t;
import com.xueqiu.android.common.widget.SNBPullToRefreshListView;
import com.xueqiu.android.community.a.a;
import com.xueqiu.android.community.model.Comment;
import com.xueqiu.android.community.model.Status;
import java.util.ArrayList;

public class CommentsPostedByMeActivity
  extends b
  implements t<Comment>
{
  private r<Comment> j = null;
  
  private x<ArrayList<Comment>> a(p<ArrayList<Comment>> paramp, boolean paramBoolean)
  {
    long l2 = 0L;
    ArrayList localArrayList = this.j.c.a();
    long l1;
    if ((localArrayList != null) && (localArrayList.size() != 0)) {
      if (!paramBoolean) {
        l1 = ((Comment)localArrayList.get(0)).getId();
      }
    }
    for (;;)
    {
      getApplication();
      return com.xueqiu.android.base.q.a().b().b(l1, l2, paramp);
      l2 = ((Comment)localArrayList.get(localArrayList.size() - 1)).getId();
      l1 = 0L;
      continue;
      l1 = 0L;
    }
  }
  
  public final n<ArrayList<Comment>> a(p<ArrayList<Comment>> paramp)
  {
    return a(paramp, false);
  }
  
  public final void a(ArrayList<Comment> paramArrayList, Throwable paramThrowable, boolean paramBoolean)
  {
    if (paramArrayList == null) {
      aa.a(paramThrowable);
    }
  }
  
  public final n<ArrayList<Comment>> b(p<ArrayList<Comment>> paramp)
  {
    return a(paramp, true);
  }
  
  protected void onCreate(final Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903445);
    setTitle(2131165349);
    paramBundle = new a(this);
    this.j = new r((SNBPullToRefreshListView)findViewById(2131624301), this);
    this.j.a(paramBundle);
    this.j.a(new AdapterView.OnItemClickListener()
    {
      public final void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
      {
        paramAnonymousAdapterView = (Comment)paramBundle.getItem(paramAnonymousInt - 1);
        paramAnonymousView = new Intent(CommentsPostedByMeActivity.this, StatusDetailActivity.class);
        paramAnonymousView.putExtra("status_id", paramAnonymousAdapterView.getStatus().getStatusId());
        CommentsPostedByMeActivity.this.startActivity(paramAnonymousView);
      }
    });
    this.j.a(getString(2131165495));
    this.j.a(new AdapterView.OnItemLongClickListener()
    {
      public final boolean onItemLongClick(final AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
      {
        paramAnonymousAdapterView = (Comment)paramBundle.getItem(paramAnonymousInt - 1);
        paramAnonymousView = new AlertDialog.Builder(paramAnonymousView.getContext()).setTitle(2131165342);
        String str = CommentsPostedByMeActivity.this.getString(2131165465);
        paramAnonymousAdapterView = new DialogInterface.OnClickListener()
        {
          public final void onClick(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
          {
            CommentsPostedByMeActivity.a(CommentsPostedByMeActivity.this, paramAnonymousAdapterView);
          }
        };
        paramAnonymousView.setItems(new String[] { str }, paramAnonymousAdapterView).show();
        return true;
      }
    });
    this.j.a(true);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\community\CommentsPostedByMeActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
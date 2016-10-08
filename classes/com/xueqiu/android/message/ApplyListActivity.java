package com.xueqiu.android.message;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.os.Bundle;
import android.support.v4.view.ak;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemLongClickListener;
import android.widget.ListView;
import com.android.volley.n;
import com.android.volley.y;
import com.xueqiu.android.base.b.ai;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.common.b;
import com.xueqiu.android.common.r;
import com.xueqiu.android.common.t;
import com.xueqiu.android.common.widget.SNBPullToRefreshListView;
import com.xueqiu.android.message.a.k;
import com.xueqiu.android.message.model.Apply;
import java.util.ArrayList;

public class ApplyListActivity
  extends b
  implements t<Apply>
{
  private r<Apply> j;
  private int k = 1;
  
  private static n<ArrayList<Apply>> a(int paramInt, p<ArrayList<Apply>> paramp)
  {
    return com.xueqiu.android.base.q.a().b().k.a(paramInt, paramp);
  }
  
  public final n<ArrayList<Apply>> a(p<ArrayList<Apply>> paramp)
  {
    this.k = 1;
    return a(this.k, paramp);
  }
  
  public final void a(ArrayList<Apply> paramArrayList, Throwable paramThrowable, boolean paramBoolean)
  {
    Object localObject = paramArrayList;
    if (paramArrayList == null)
    {
      aa.a(paramThrowable);
      localObject = new ArrayList();
    }
    if ((((ArrayList)localObject).size() > 0) && (!paramBoolean)) {
      this.j.c();
    }
  }
  
  public final n<ArrayList<Apply>> b(p<ArrayList<Apply>> paramp)
  {
    this.k += 1;
    return a(this.k, paramp);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903445);
    this.j = new r((SNBPullToRefreshListView)findViewById(2131624301), this);
    paramBundle = new k(this);
    paramBundle.e = com.xueqiu.android.base.q.a().b();
    this.j.a(paramBundle);
    this.j.a(true);
    this.j.a(new AdapterView.OnItemLongClickListener()
    {
      public final boolean onItemLongClick(final AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
      {
        paramAnonymousInt -= ApplyListActivity.a(ApplyListActivity.this).d().getHeaderViewsCount();
        if ((paramAnonymousInt < 0) && (paramAnonymousInt >= ApplyListActivity.a(ApplyListActivity.this).c.a().size())) {
          return false;
        }
        paramAnonymousAdapterView = (Apply)ApplyListActivity.a(ApplyListActivity.this).c.getItem(paramAnonymousInt);
        paramAnonymousView = new AlertDialog.Builder(paramAnonymousView.getContext()).setTitle(2131165775);
        String str = String.format(ApplyListActivity.this.getString(2131165367), new Object[] { paramAnonymousAdapterView.getScreenName() });
        paramAnonymousAdapterView = new DialogInterface.OnClickListener()
        {
          public final void onClick(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
          {
            if (paramAnonymous2Int == 0) {
              ApplyListActivity.a(ApplyListActivity.this, paramAnonymousAdapterView);
            }
          }
        };
        paramAnonymousView.setItems(new String[] { str }, paramAnonymousAdapterView).show();
        return true;
      }
    });
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    ak.a(paramMenu.add(0, 1, 0, getString(2131165314)).setIcon(2130838118), 2);
    return super.onCreateOptionsMenu(paramMenu);
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    if (paramMenuItem.getItemId() == 1) {
      new AlertDialog.Builder(this).setNegativeButton(getString(2131165296), null).setPositiveButton(getString(2131165361), new DialogInterface.OnClickListener()
      {
        public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          ApplyListActivity.g().o(-1L, new p(ApplyListActivity.this)
          {
            public final void a(y paramAnonymous2y)
            {
              aa.a(paramAnonymous2y);
            }
          });
        }
      }).setTitle(getString(2131166217)).setMessage(getString(2131165364)).create().show();
    }
    return super.onOptionsItemSelected(paramMenuItem);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\message\ApplyListActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
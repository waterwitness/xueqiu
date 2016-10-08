package com.xueqiu.android.message;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.NotificationManager;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import com.android.volley.n;
import com.xueqiu.android.base.b.ai;
import com.xueqiu.android.base.q;
import com.xueqiu.android.base.storage.DBManager;
import com.xueqiu.android.base.storage.prefs.DataStore;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.base.util.af;
import com.xueqiu.android.common.b;
import com.xueqiu.android.common.r;
import com.xueqiu.android.common.t;
import com.xueqiu.android.common.widget.SNBPullToRefreshListView;
import com.xueqiu.android.message.model.IMGroup;
import com.xueqiu.android.message.model.Message;
import com.xueqiu.android.message.model.Talk;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;

public class IMGroupListActivity
  extends b
  implements t<IMGroup>
{
  private r<IMGroup> j = null;
  private int k = 1;
  private String p = null;
  private int q = 1;
  private Message r;
  private Uri s;
  
  private n<ArrayList<IMGroup>> a(int paramInt, com.xueqiu.android.base.b.p<ArrayList<IMGroup>> paramp)
  {
    ai localai = q.a().b();
    String str = this.p;
    return localai.k.a(str, paramInt, paramp);
  }
  
  public final n<ArrayList<IMGroup>> a(com.xueqiu.android.base.b.p<ArrayList<IMGroup>> paramp)
  {
    if (this.q != 1)
    {
      ((NotificationManager)getSystemService("notification")).cancel(4);
      this.k = 1;
      return a(this.k, paramp);
    }
    paramp.a(new ArrayList());
    return null;
  }
  
  public final void a(ArrayList<IMGroup> paramArrayList, Throwable paramThrowable, boolean paramBoolean)
  {
    if (paramArrayList == null)
    {
      aa.a(paramThrowable);
      this.k -= 1;
    }
    for (;;)
    {
      if ((!paramBoolean) && (this.q != 1)) {
        this.j.c();
      }
      return;
      paramArrayList.size();
    }
  }
  
  public final n<ArrayList<IMGroup>> b(com.xueqiu.android.base.b.p<ArrayList<IMGroup>> paramp)
  {
    this.k += 1;
    return a(this.k, paramp);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903445);
    this.q = getIntent().getIntExtra("extra_data_typesss", 1);
    if (this.q == 1)
    {
      setTitle(2131165627);
      this.r = ((Message)getIntent().getParcelableExtra("extra_message"));
      this.s = ((Uri)getIntent().getParcelableExtra("extra_photo_stream"));
      if (getIntent().getBooleanExtra("extra_named", false)) {}
      for (paramBundle = new ArrayList(DBManager.getInstance().getIMGroups(true));; paramBundle = new ArrayList(DBManager.getInstance().getAllOrganize()))
      {
        localObject = paramBundle.iterator();
        while (((Iterator)localObject).hasNext())
        {
          localIMGroup = (IMGroup)((Iterator)localObject).next();
          localIMGroup.setPinyinHeaders(af.b(localIMGroup.getName()));
        }
      }
      Collections.sort(paramBundle, new Comparator() {});
      this.j = new r((SNBPullToRefreshListView)findViewById(2131624301), this);
      this.j.a(getString(2131165499));
      localObject = new com.xueqiu.android.message.a.p(this, 2130903403);
      ((com.xueqiu.android.message.a.p)localObject).a(paramBundle);
      this.j.a((com.xueqiu.android.common.a.d)localObject);
      this.j.a(new AdapterView.OnItemClickListener()
      {
        public final void onItemClick(final AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
        {
          IMGroup localIMGroup = (IMGroup)localObject.getItem(paramAnonymousInt - 1);
          paramAnonymousAdapterView = DataStore.getInstance(IMGroupListActivity.this.getBaseContext()).getTalk(localIMGroup.getId(), true);
          if (paramAnonymousAdapterView == null)
          {
            paramAnonymousAdapterView = new Talk();
            paramAnonymousAdapterView.setGroup(true);
            paramAnonymousAdapterView.setName(localIMGroup.getName());
            paramAnonymousAdapterView.setId(localIMGroup.getId());
            DataStore.getInstance(IMGroupListActivity.this.getBaseContext()).saveTalk(paramAnonymousAdapterView);
          }
          for (;;)
          {
            if ((IMGroupListActivity.a(IMGroupListActivity.this) != null) || (IMGroupListActivity.b(IMGroupListActivity.this) != null))
            {
              new AlertDialog.Builder(paramAnonymousView.getContext()).setNegativeButton(IMGroupListActivity.this.getString(2131165296), null).setPositiveButton(IMGroupListActivity.this.getString(2131165361), new DialogInterface.OnClickListener()
              {
                public final void onClick(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
                {
                  IMGroupListActivity.a(IMGroupListActivity.this, paramAnonymousAdapterView);
                }
              }).setTitle(IMGroupListActivity.this.getString(2131166217)).setMessage(IMGroupListActivity.this.getString(2131165614)).create().show();
              return;
            }
            IMGroupListActivity.a(IMGroupListActivity.this, paramAnonymousAdapterView);
            return;
          }
        }
      });
      this.j.b(false);
    }
    while (this.q != 2)
    {
      final Object localObject;
      IMGroup localIMGroup;
      return;
    }
    this.p = getIntent().getStringExtra("extra_stock_symbol");
    setTitle(getString(2131166205, new Object[] { this.p }));
    paramBundle = new com.xueqiu.android.message.a.p(this, 2130903404);
    this.j = new r((SNBPullToRefreshListView)findViewById(2131624301), this);
    this.j.a(paramBundle);
    this.j.a(new AdapterView.OnItemClickListener()
    {
      public final void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
      {
        paramAnonymousAdapterView = (IMGroup)IMGroupListActivity.c(IMGroupListActivity.this).c.a().get(paramAnonymousInt - 1);
        paramAnonymousView = new Intent(IMGroupListActivity.this, GroupProfileActivity.class);
        paramAnonymousView.putExtra("extra_group_id", paramAnonymousAdapterView.getId());
        IMGroupListActivity.this.startActivity(paramAnonymousView);
      }
    });
    this.j.a(true);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\message\IMGroupListActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
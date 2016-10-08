package com.xueqiu.android.cube;

import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import com.android.volley.n;
import com.xueqiu.android.base.b.ai;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.common.b;
import com.xueqiu.android.common.r;
import com.xueqiu.android.common.t;
import com.xueqiu.android.common.widget.SNBPullToRefreshListView;
import com.xueqiu.android.cube.model.Editorial;
import java.util.ArrayList;

public class EditorialHistoryActivity
  extends b
{
  private SNBPullToRefreshListView j;
  private r<Editorial> k;
  private m p;
  
  private n<ArrayList<Editorial>> refresh(int paramInt, p<ArrayList<Editorial>> paramp)
  {
    return com.xueqiu.android.base.q.a().b().d(paramInt, paramp);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903100);
    setTitle(2131165487);
    this.j = ((SNBPullToRefreshListView)findViewById(2131624309));
    this.p = new m(this);
    this.k = new r(this.j, new t()
    {
      int a = 2;
      
      public final n<ArrayList<Editorial>> a(p<ArrayList<Editorial>> paramAnonymousp)
      {
        this.a = 2;
        return EditorialHistoryActivity.a(EditorialHistoryActivity.this, this.a, paramAnonymousp);
      }
      
      public final void a(ArrayList<Editorial> paramAnonymousArrayList, Throwable paramAnonymousThrowable, boolean paramAnonymousBoolean)
      {
        Object localObject = paramAnonymousArrayList;
        if (paramAnonymousArrayList == null)
        {
          aa.a(paramAnonymousThrowable);
          localObject = new ArrayList();
        }
        if ((((ArrayList)localObject).size() > 0) && (!paramAnonymousBoolean)) {
          EditorialHistoryActivity.a(EditorialHistoryActivity.this).c();
        }
      }
      
      public final n<ArrayList<Editorial>> b(p<ArrayList<Editorial>> paramAnonymousp)
      {
        this.a += 1;
        return EditorialHistoryActivity.a(EditorialHistoryActivity.this, this.a, paramAnonymousp);
      }
    });
    this.k.f = 6;
    this.k.a(this.p);
    this.k.a(new AdapterView.OnItemClickListener()
    {
      public final void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
      {
        com.xueqiu.android.common.q.a(((Editorial)EditorialHistoryActivity.b(EditorialHistoryActivity.this).getItem(paramAnonymousInt - 1)).getUrl(), EditorialHistoryActivity.this);
      }
    });
    this.k.a(true);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\cube\EditorialHistoryActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
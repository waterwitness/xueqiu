package com.xueqiu.android.cube;

import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.view.ak;
import android.view.Menu;
import android.view.MenuItem;
import com.android.volley.n;
import com.android.volley.y;
import com.xueqiu.android.base.b.ai;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.storage.prefs.UserLogonDataPrefs;
import com.xueqiu.android.base.u;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.base.util.g;
import com.xueqiu.android.common.b;
import com.xueqiu.android.common.widget.SNBPullToRefreshListView;
import com.xueqiu.android.community.model.User;
import com.xueqiu.android.cube.a.h;
import com.xueqiu.android.cube.a.i;
import com.xueqiu.android.cube.model.Cube;
import java.util.ArrayList;

public class CubeListActivity
  extends b
{
  private com.xueqiu.android.common.r<Cube> j;
  private SNBPullToRefreshListView k;
  private h p;
  private User q = null;
  private long r;
  
  private void j()
  {
    long l = this.q.getUserId();
    u.a();
    if (l == UserLogonDataPrefs.getLogonUserId())
    {
      setTitle(2131165750);
      this.p.f = true;
      this.j.a(getResources().getString(2131165503));
    }
    for (;;)
    {
      this.j.a(true);
      return;
      setTitle(getString(2131166304, new Object[] { this.q.getScreenName() }));
      this.p.f = false;
      this.j.a(getResources().getString(2131165504));
    }
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    if ((paramInt1 == 1) || (paramInt1 == 2)) {
      this.j.a(true);
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903105);
    this.r = getIntent().getLongExtra("extra_user_id", -1L);
    this.q = ((User)getIntent().getParcelableExtra("extra_user"));
    this.k = ((SNBPullToRefreshListView)findViewById(2131624309));
    this.p = new h(this);
    this.p.e = new i()
    {
      public final void a(final Cube paramAnonymousCube)
      {
        if (paramAnonymousCube.isFollowing())
        {
          new AlertDialog.Builder(CubeListActivity.this).setMessage(CubeListActivity.this.getString(2131165366, new Object[] { paramAnonymousCube.getName() })).setNegativeButton(2131165296, null).setPositiveButton(2131165361, new DialogInterface.OnClickListener()
          {
            public final void onClick(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
            {
              CubeListActivity.a(CubeListActivity.this, paramAnonymousCube);
            }
          }).show();
          return;
        }
        CubeListActivity.a(CubeListActivity.this, paramAnonymousCube);
      }
      
      public final void b(Cube paramAnonymousCube)
      {
        Intent localIntent = new Intent(CubeListActivity.this.getBaseContext(), CubeActivity.class);
        localIntent.putExtra("extra_cube_symbol", paramAnonymousCube.getSymbol());
        localIntent.putExtra("extra_cube_id", paramAnonymousCube.getId());
        CubeListActivity.this.startActivity(localIntent);
      }
    };
    this.j = new com.xueqiu.android.common.r(this.k, new com.xueqiu.android.common.t()
    {
      int a = 1;
      
      public final n<ArrayList<Cube>> a(p<ArrayList<Cube>> paramAnonymousp)
      {
        this.a = 1;
        return CubeListActivity.a(CubeListActivity.this, this.a, paramAnonymousp);
      }
      
      public final void a(ArrayList<Cube> paramAnonymousArrayList, Throwable paramAnonymousThrowable, boolean paramAnonymousBoolean)
      {
        CubeListActivity.this.i();
        if (paramAnonymousArrayList == null) {
          aa.a(paramAnonymousThrowable);
        }
        if (!paramAnonymousBoolean) {
          CubeListActivity.b(CubeListActivity.this).c();
        }
      }
      
      public final n<ArrayList<Cube>> b(p<ArrayList<Cube>> paramAnonymousp)
      {
        this.a += 1;
        return CubeListActivity.a(CubeListActivity.this, this.a, paramAnonymousp);
      }
    });
    this.j.a(this.p);
    if (this.q == null)
    {
      if (this.r < 0L)
      {
        finish();
        return;
      }
      paramBundle = new p(this)
      {
        public final void a(y paramAnonymousy)
        {
          aa.a(paramAnonymousy);
          CubeListActivity.this.i();
        }
      };
      h();
      com.xueqiu.android.base.q.a().b().g(this.r, paramBundle);
      return;
    }
    j();
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    if (!u.a().d) {
      ak.a(paramMenu.add(0, 2131623943, 1, 2131165383).setIcon(2130838313), 2);
    }
    return true;
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    if (paramMenuItem.getItemId() == 2131623943)
    {
      startActivityForResult(new Intent(this, CreateCubeActivity.class), 2);
      return true;
    }
    return super.onOptionsItemSelected(paramMenuItem);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\cube\CubeListActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
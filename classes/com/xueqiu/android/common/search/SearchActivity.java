package com.xueqiu.android.common.search;

import android.content.Intent;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.text.Editable;
import android.text.Html;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.EditText;
import android.widget.ListView;
import android.widget.TextView;
import com.android.volley.n;
import com.xueqiu.android.base.b.ai;
import com.xueqiu.android.base.b.c;
import com.xueqiu.android.base.storage.prefs.UserLogonDataPrefs;
import com.xueqiu.android.base.u;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.common.a.d;
import com.xueqiu.android.common.b;
import com.xueqiu.android.common.model.PagedGroup;
import com.xueqiu.android.common.r;
import com.xueqiu.android.common.t;
import com.xueqiu.android.common.widget.SNBPullToRefreshListView;
import com.xueqiu.android.community.StatusDetailActivity;
import com.xueqiu.android.community.UserProfileActivity;
import com.xueqiu.android.community.a.ba;
import com.xueqiu.android.community.model.Status;
import com.xueqiu.android.community.model.User;
import com.xueqiu.android.community.widget.i;
import com.xueqiu.android.cube.CubeActivity;
import com.xueqiu.android.cube.a.k;
import com.xueqiu.android.cube.model.Cube;
import com.xueqiu.android.message.GroupProfileActivity;
import com.xueqiu.android.message.model.IMGroup;
import com.xueqiu.android.stock.a.ad;
import com.xueqiu.android.stock.model.Stock;
import com.xueqiu.android.stock.model.StockQuote;
import java.util.ArrayList;

public class SearchActivity
  extends b
{
  private t<User> A = new t()
  {
    public final n<ArrayList<User>> a(com.xueqiu.android.base.b.p<ArrayList<User>> paramAnonymousp)
    {
      SearchActivity.a(SearchActivity.this, 1);
      return SearchActivity.b(SearchActivity.this, 1, paramAnonymousp);
    }
    
    public final void a(ArrayList<User> paramAnonymousArrayList, Throwable paramAnonymousThrowable, boolean paramAnonymousBoolean)
    {
      if (paramAnonymousArrayList == null)
      {
        aa.a(paramAnonymousThrowable);
        paramAnonymousArrayList = new ArrayList();
        SearchActivity.a(SearchActivity.this, SearchActivity.b(SearchActivity.this) - 1);
      }
      for (;;)
      {
        if ((paramAnonymousArrayList != null) && ((paramAnonymousArrayList instanceof PagedGroup)))
        {
          int i = ((PagedGroup)paramAnonymousArrayList).getTotalCount();
          paramAnonymousArrayList = (TextView)SearchActivity.this.findViewById(2131624809);
          paramAnonymousArrayList.setVisibility(0);
          paramAnonymousArrayList.setText(String.format("找到%s个用户", new Object[] { Integer.valueOf(i) }));
        }
        return;
        if (!paramAnonymousBoolean) {
          SearchActivity.a(SearchActivity.this).c();
        }
      }
    }
    
    public final n<ArrayList<User>> b(com.xueqiu.android.base.b.p<ArrayList<User>> paramAnonymousp)
    {
      SearchActivity.a(SearchActivity.this, SearchActivity.b(SearchActivity.this) + 1);
      return SearchActivity.b(SearchActivity.this, SearchActivity.b(SearchActivity.this), paramAnonymousp);
    }
  };
  private t<IMGroup> B = new t()
  {
    public final n<ArrayList<IMGroup>> a(com.xueqiu.android.base.b.p<ArrayList<IMGroup>> paramAnonymousp)
    {
      SearchActivity.a(SearchActivity.this, 1);
      return SearchActivity.c(SearchActivity.this, 1, paramAnonymousp);
    }
    
    public final void a(ArrayList<IMGroup> paramAnonymousArrayList, Throwable paramAnonymousThrowable, boolean paramAnonymousBoolean)
    {
      if (paramAnonymousArrayList == null)
      {
        aa.a(paramAnonymousThrowable);
        paramAnonymousArrayList = new ArrayList();
        SearchActivity.a(SearchActivity.this, SearchActivity.b(SearchActivity.this) - 1);
      }
      for (;;)
      {
        if ((paramAnonymousArrayList != null) && ((paramAnonymousArrayList instanceof PagedGroup)))
        {
          int i = ((PagedGroup)paramAnonymousArrayList).getTotalCount();
          paramAnonymousArrayList = (TextView)SearchActivity.this.findViewById(2131624809);
          paramAnonymousArrayList.setVisibility(0);
          paramAnonymousArrayList.setText(String.format("找到%s个群组", new Object[] { Integer.valueOf(i) }));
        }
        return;
        if (!paramAnonymousBoolean) {
          SearchActivity.a(SearchActivity.this).c();
        }
      }
    }
    
    public final n<ArrayList<IMGroup>> b(com.xueqiu.android.base.b.p<ArrayList<IMGroup>> paramAnonymousp)
    {
      SearchActivity.a(SearchActivity.this, SearchActivity.b(SearchActivity.this) + 1);
      return SearchActivity.c(SearchActivity.this, SearchActivity.b(SearchActivity.this), paramAnonymousp);
    }
  };
  private t<Stock> C = new t()
  {
    private n<ArrayList<Stock>> c(com.xueqiu.android.base.b.p<ArrayList<Stock>> paramAnonymousp)
    {
      SearchActivity.this.getApplication();
      ai localai = com.xueqiu.android.base.q.a().b();
      String str = SearchActivity.c(SearchActivity.this);
      u.a();
      return localai.a(str, 20, UserLogonDataPrefs.getLogonUserId(), paramAnonymousp);
    }
    
    public final n<ArrayList<Stock>> a(com.xueqiu.android.base.b.p<ArrayList<Stock>> paramAnonymousp)
    {
      return c(paramAnonymousp);
    }
    
    public final void a(ArrayList<Stock> paramAnonymousArrayList, Throwable paramAnonymousThrowable, boolean paramAnonymousBoolean)
    {
      if (paramAnonymousArrayList == null)
      {
        aa.a(paramAnonymousThrowable);
        return;
      }
      SearchActivity.a(SearchActivity.this).c();
    }
    
    public final n<ArrayList<Stock>> b(com.xueqiu.android.base.b.p<ArrayList<Stock>> paramAnonymousp)
    {
      return c(paramAnonymousp);
    }
  };
  private r j = null;
  private com.xueqiu.android.community.a.ak k = null;
  private ba p = null;
  private ad q = null;
  private com.xueqiu.android.message.a.p r = null;
  private k s = null;
  private String t = null;
  private int u = 1;
  private int v;
  private String w = null;
  private EditText x = null;
  private t<Status> y = new t()
  {
    public final n<ArrayList<Status>> a(com.xueqiu.android.base.b.p<ArrayList<Status>> paramAnonymousp)
    {
      return SearchActivity.a(SearchActivity.this, 1, paramAnonymousp);
    }
    
    public final void a(ArrayList<Status> paramAnonymousArrayList, Throwable paramAnonymousThrowable, boolean paramAnonymousBoolean)
    {
      if (paramAnonymousArrayList == null)
      {
        aa.a(paramAnonymousThrowable);
        paramAnonymousArrayList = new ArrayList();
        SearchActivity.a(SearchActivity.this, SearchActivity.b(SearchActivity.this) - 1);
      }
      for (;;)
      {
        if ((paramAnonymousArrayList != null) && ((paramAnonymousArrayList instanceof PagedGroup)))
        {
          int i = ((PagedGroup)paramAnonymousArrayList).getTotalCount();
          paramAnonymousArrayList = (TextView)SearchActivity.this.findViewById(2131624809);
          paramAnonymousArrayList.setVisibility(0);
          paramAnonymousArrayList.setText(Html.fromHtml(String.format("找到关于\"%s\"的讨论<font fgcolor=\"#FF0000\">%s</font>条", new Object[] { SearchActivity.c(SearchActivity.this), Integer.valueOf(i) })));
        }
        return;
        if (!paramAnonymousBoolean) {
          SearchActivity.a(SearchActivity.this).c();
        }
      }
    }
    
    public final n<ArrayList<Status>> b(com.xueqiu.android.base.b.p<ArrayList<Status>> paramAnonymousp)
    {
      SearchActivity.a(SearchActivity.this, SearchActivity.b(SearchActivity.this) + 1);
      return SearchActivity.a(SearchActivity.this, SearchActivity.b(SearchActivity.this), paramAnonymousp);
    }
  };
  private t<Cube> z = new t()
  {
    private n<ArrayList<Cube>> c(com.xueqiu.android.base.b.p<ArrayList<Cube>> paramAnonymousp)
    {
      ai localai = com.xueqiu.android.base.q.a().b();
      String str = SearchActivity.c(SearchActivity.this);
      return localai.l.g(str, paramAnonymousp);
    }
    
    public final n<ArrayList<Cube>> a(com.xueqiu.android.base.b.p<ArrayList<Cube>> paramAnonymousp)
    {
      return c(paramAnonymousp);
    }
    
    public final void a(ArrayList<Cube> paramAnonymousArrayList, Throwable paramAnonymousThrowable, boolean paramAnonymousBoolean)
    {
      if (paramAnonymousArrayList == null)
      {
        aa.a(paramAnonymousThrowable);
        return;
      }
      SearchActivity.a(SearchActivity.this).c();
    }
    
    public final n<ArrayList<Cube>> b(com.xueqiu.android.base.b.p<ArrayList<Cube>> paramAnonymousp)
    {
      return c(paramAnonymousp);
    }
  };
  
  public boolean dispatchKeyEvent(KeyEvent paramKeyEvent)
  {
    if (66 == paramKeyEvent.getKeyCode()) {
      return false;
    }
    return super.dispatchKeyEvent(paramKeyEvent);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903261);
    if (getIntent().getExtras() != null)
    {
      this.v = getIntent().getExtras().getInt("search_type", 1);
      this.t = getIntent().getExtras().getString("search_word");
    }
    if (this.v == 2)
    {
      this.j = new r((SNBPullToRefreshListView)findViewById(2131624301), this.A);
      if (this.p == null)
      {
        this.p = new ba(this);
        this.j.a(this.p);
        this.j.a(new AdapterView.OnItemClickListener()
        {
          public final void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
          {
            paramAnonymousAdapterView = (User)SearchActivity.a(SearchActivity.this).c.getItem(paramAnonymousInt - 1);
            paramAnonymousView = new Intent(SearchActivity.this, UserProfileActivity.class);
            try
            {
              paramAnonymousAdapterView.setScreenName(Html.fromHtml(paramAnonymousAdapterView.getScreenName()).toString());
              paramAnonymousView.putExtra("extra_user", paramAnonymousAdapterView);
              SearchActivity.this.startActivity(paramAnonymousView);
              return;
            }
            catch (Exception localException)
            {
              for (;;) {}
            }
          }
        });
        this.w = getString(2131166038);
      }
    }
    for (;;)
    {
      this.j.d = true;
      this.j.c(false);
      setTitle(this.w);
      return;
      this.p.a(new ArrayList());
      break;
      if (this.v == 1)
      {
        paramBundle = (SNBPullToRefreshListView)findViewById(2131624301);
        int i = getResources().getColor(2131558412);
        findViewById(2131624117).setBackgroundColor(i);
        ((ListView)paramBundle.getRefreshableView()).setBackgroundColor(i);
        paramBundle.setBackgroundColor(i);
        ((ListView)paramBundle.getRefreshableView()).setDividerHeight(0);
        this.j = new i(paramBundle, this.y);
        if (this.k == null) {
          this.k = new com.xueqiu.android.community.a.ak(this);
        }
        for (;;)
        {
          this.j.a(this.k);
          this.j.a(new AdapterView.OnItemClickListener()
          {
            public final void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
            {
              paramAnonymousAdapterView = (Status)SearchActivity.a(SearchActivity.this).c.getItem(paramAnonymousInt - 1);
              paramAnonymousView = new Intent(SearchActivity.this, StatusDetailActivity.class);
              paramAnonymousView.putExtra("status", paramAnonymousAdapterView);
              SearchActivity.this.startActivity(paramAnonymousView);
            }
          });
          this.w = getString(2131166307);
          break;
          this.k.a(new ArrayList());
        }
      }
      if (this.v == 3)
      {
        paramBundle = (SNBPullToRefreshListView)findViewById(2131624301);
        ((ListView)paramBundle.getRefreshableView()).setDividerHeight(0);
        this.j = new r(paramBundle, this.C);
        this.j.b(false);
        if (this.q == null) {
          this.q = new ad(this);
        }
        for (;;)
        {
          this.j.a(this.q);
          this.j.a(new AdapterView.OnItemClickListener()
          {
            public final void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
            {
              paramAnonymousAdapterView = (Stock)SearchActivity.a(SearchActivity.this).c.getItem(paramAnonymousInt - 1);
              paramAnonymousAdapterView = com.xueqiu.android.base.util.q.a(SearchActivity.this, new StockQuote(paramAnonymousAdapterView.getName(), paramAnonymousAdapterView.getCode()));
              SearchActivity.this.startActivity(paramAnonymousAdapterView);
            }
          });
          this.w = getString(2131166308);
          break;
          this.q.a(new ArrayList());
        }
      }
      if (this.v == 4)
      {
        this.j = new r((SNBPullToRefreshListView)findViewById(2131624301), this.B);
        if (this.r == null) {
          this.r = new com.xueqiu.android.message.a.p(this);
        }
        for (;;)
        {
          this.j.a(this.r);
          this.j.a(new AdapterView.OnItemClickListener()
          {
            public final void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
            {
              paramAnonymousAdapterView = (IMGroup)SearchActivity.a(SearchActivity.this).c.getItem(paramAnonymousInt - 1);
              paramAnonymousView = new Intent(SearchActivity.this, GroupProfileActivity.class);
              paramAnonymousView.putExtra("extra_group_id", paramAnonymousAdapterView.getId());
              SearchActivity.this.startActivity(paramAnonymousView);
            }
          });
          this.w = getString(2131166306);
          break;
          this.r.a(new ArrayList());
        }
      }
      if (this.v == 5)
      {
        paramBundle = (SNBPullToRefreshListView)findViewById(2131624301);
        ((ListView)paramBundle.getRefreshableView()).setDividerHeight(0);
        this.j = new r(paramBundle, this.z);
        this.j.b(false);
        if (this.s == null) {
          this.s = new k(this);
        }
        for (;;)
        {
          this.j.a(this.s);
          this.j.a(new AdapterView.OnItemClickListener()
          {
            public final void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
            {
              paramAnonymousAdapterView = (Cube)SearchActivity.a(SearchActivity.this).c.getItem(paramAnonymousInt - 1);
              paramAnonymousView = new Intent(SearchActivity.this, CubeActivity.class);
              paramAnonymousView.putExtra("extra_cube_symbol", paramAnonymousAdapterView.getSymbol());
              paramAnonymousView.putExtra("extra_cube_id", paramAnonymousAdapterView.getId());
              SearchActivity.this.startActivity(paramAnonymousView);
            }
          });
          this.w = getString(2131166305);
          break;
          this.s.a(new ArrayList());
        }
      }
      this.w = "";
    }
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    TypedArray localTypedArray = getTheme().obtainStyledAttributes(new int[] { 2130772140 });
    MenuItem localMenuItem = paramMenu.add(0, 1, 0, 2131166038);
    localMenuItem.setIcon(localTypedArray.getResourceId(0, 0));
    android.support.v4.view.ak.a(localMenuItem, 10);
    android.support.v4.view.ak.b(localMenuItem, 2130903243);
    localTypedArray.recycle();
    this.x = ((EditText)android.support.v4.view.ak.a(localMenuItem).findViewById(2131624252));
    this.x.setHint(this.w);
    this.x.addTextChangedListener(new TextWatcher()
    {
      public final void afterTextChanged(Editable paramAnonymousEditable)
      {
        SearchActivity.a(SearchActivity.this, paramAnonymousEditable.toString());
        if (TextUtils.isEmpty(SearchActivity.c(SearchActivity.this)))
        {
          SearchActivity.a(SearchActivity.this).c();
          SearchActivity.a(SearchActivity.this).c.notifyDataSetChanged();
          SearchActivity.a(SearchActivity.this).a(new PagedGroup(), null, false);
          SearchActivity.this.findViewById(2131624809).setVisibility(8);
          return;
        }
        paramAnonymousEditable = SearchActivity.a(SearchActivity.this).c.a();
        SearchActivity.a(SearchActivity.this).a();
        paramAnonymousEditable.clear();
        SearchActivity.a(SearchActivity.this).a(false);
        SearchActivity.a(SearchActivity.this, 1);
      }
      
      public final void beforeTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
      
      public final void onTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
    });
    android.support.v4.view.ak.b(localMenuItem);
    if (!TextUtils.isEmpty(this.t)) {
      this.x.setText(this.t);
    }
    return super.onCreateOptionsMenu(paramMenu);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\search\SearchActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
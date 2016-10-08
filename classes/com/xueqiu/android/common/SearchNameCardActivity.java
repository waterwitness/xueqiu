package com.xueqiu.android.common;

import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.EditText;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.android.volley.n;
import com.android.volley.y;
import com.d.a.b.f;
import com.d.a.b.f.c;
import com.emilsjolander.components.stickylistheaders.StickyListHeadersListView;
import com.xueqiu.android.base.b.ai;
import com.xueqiu.android.base.b.an;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.storage.DBManager;
import com.xueqiu.android.community.a.ba;
import com.xueqiu.android.community.model.User;
import com.xueqiu.android.message.a.a;
import java.util.ArrayList;
import java.util.List;

public class SearchNameCardActivity
  extends b
{
  private EditText j;
  private ListView k;
  private StickyListHeadersListView p;
  private a q;
  private ArrayList<User> r = new ArrayList();
  private n<ArrayList<User>> s = null;
  
  public void onCreate(Bundle paramBundle)
  {
    int i = 0;
    super.onCreate(paramBundle);
    setContentView(2130903262);
    paramBundle = DBManager.getInstance().getFollowEachOtherUsers();
    this.p = ((StickyListHeadersListView)findViewById(2131624241));
    this.j = ((EditText)findViewById(2131624753));
    this.j.setHint("输入用户名");
    this.k = ((ListView)findViewById(2131624810));
    final Object localObject = f.a();
    this.q = new a(this, (f)localObject, null, paramBundle);
    this.q.d = false;
    this.p.setDrawingListUnderStickyHeader(true);
    this.p.setAreHeadersSticky(true);
    this.p.setIndexScrollEnabled(true);
    this.p.setAdapter(this.q);
    this.p.setOnScrollListener(new c((f)localObject, false, true));
    this.p.setOnItemClickListener(new AdapterView.OnItemClickListener()
    {
      public final void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
      {
        paramAnonymousAdapterView = (User)SearchNameCardActivity.b(SearchNameCardActivity.this).getItem(paramAnonymousInt);
        SearchNameCardActivity.a(SearchNameCardActivity.this, paramAnonymousAdapterView);
      }
    });
    localObject = new ba(this);
    ((ba)localObject).a(this.r);
    this.k.setAdapter((ListAdapter)localObject);
    this.k.setOnItemClickListener(new AdapterView.OnItemClickListener()
    {
      public final void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
      {
        paramAnonymousAdapterView = (User)localObject.a().get(paramAnonymousInt);
        SearchNameCardActivity.a(SearchNameCardActivity.this, paramAnonymousAdapterView);
      }
    });
    if (paramBundle != null)
    {
      localObject = new Long[paramBundle.size()];
      while (i < paramBundle.size())
      {
        localObject[i] = Long.valueOf(((User)paramBundle.get(i)).getUserId());
        i += 1;
      }
      paramBundle = com.xueqiu.android.base.q.a().b();
      p local4 = new p(this)
      {
        public final void a(y paramAnonymousy) {}
      };
      paramBundle.h.b((Long[])localObject, local4);
    }
    this.j.addTextChangedListener(new TextWatcher()
    {
      public final void afterTextChanged(Editable paramAnonymousEditable) {}
      
      public final void beforeTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
      
      public final void onTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3)
      {
        if (paramAnonymousCharSequence.length() > 0)
        {
          if (SearchNameCardActivity.a(SearchNameCardActivity.this).getVisibility() != 0) {
            SearchNameCardActivity.a(SearchNameCardActivity.this).setVisibility(0);
          }
          SearchNameCardActivity.a(SearchNameCardActivity.this, paramAnonymousCharSequence.toString());
        }
        while (paramAnonymousCharSequence.length() != 0) {
          return;
        }
        SearchNameCardActivity.a(SearchNameCardActivity.this).setVisibility(4);
      }
    });
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\SearchNameCardActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
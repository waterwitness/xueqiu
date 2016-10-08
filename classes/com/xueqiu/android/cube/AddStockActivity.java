package com.xueqiu.android.cube;

import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.android.volley.n;
import com.android.volley.y;
import com.xueqiu.android.base.b.ai;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.storage.prefs.UserLogonDataPrefs;
import com.xueqiu.android.base.u;
import com.xueqiu.android.common.b;
import com.xueqiu.android.stock.model.Stock;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public class AddStockActivity
  extends b
{
  private n<ArrayList<Stock>> j = null;
  private ArrayList<Stock> k = null;
  private ListView p = null;
  private Set<String> q = new HashSet();
  private String r = "";
  
  private void b(String paramString)
  {
    if ((this.j != null) && (!this.j.h)) {
      this.j.h = true;
    }
    this.j = null;
    p local4 = new p(this)
    {
      public final void a(y paramAnonymousy)
      {
        AddStockActivity.a(AddStockActivity.this, null, paramAnonymousy);
      }
    };
    ai localai = com.xueqiu.android.base.q.a().b();
    String str = this.r;
    u.a();
    long l = UserLogonDataPrefs.getLogonUserId();
    this.j = localai.i.b(paramString, str, l, local4);
  }
  
  protected void onCreate(final Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903094);
    this.r = getIntent().getStringExtra("extra_market");
    paramBundle = getIntent().getStringArrayListExtra("extra_exclude_list");
    if (paramBundle != null)
    {
      paramBundle = paramBundle.iterator();
      while (paramBundle.hasNext())
      {
        localObject1 = (String)paramBundle.next();
        this.q.add(localObject1);
      }
    }
    setTitle(getString(2131165283));
    paramBundle = (EditText)findViewById(2131624753);
    paramBundle.setHint(2131166035);
    final Object localObject1 = (Button)findViewById(2131624114);
    ((Button)localObject1).setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        paramBundle.setText("");
      }
    });
    this.p = ((ListView)findViewById(2131624308));
    this.k = new ArrayList();
    final Object localObject2 = new a(this, this.k);
    this.p.setAdapter((ListAdapter)localObject2);
    this.p.setEmptyView(findViewById(2131624257));
    localObject2 = (ImageButton)findViewById(2131624755);
    ((ImageButton)localObject2).setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        paramBundle.setText("");
      }
    });
    paramBundle.addTextChangedListener(new TextWatcher()
    {
      public final void afterTextChanged(Editable paramAnonymousEditable)
      {
        if (paramAnonymousEditable.length() > 0)
        {
          AddStockActivity.a(AddStockActivity.this, paramAnonymousEditable.toString());
          localObject1.setVisibility(0);
          AddStockActivity.a(AddStockActivity.this).setVisibility(0);
          localObject2.setImageResource(2130837870);
        }
        while (paramAnonymousEditable.length() != 0) {
          return;
        }
        AddStockActivity.a(AddStockActivity.this, "");
        localObject1.setVisibility(8);
        localObject2.setImageDrawable(null);
      }
      
      public final void beforeTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
      
      public final void onTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
    });
    b("");
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    android.support.v4.view.ak.a(paramMenu.add(0, 2131623944, 0, 2131165479).setIcon(2130838114), 2);
    return super.onCreateOptionsMenu(paramMenu);
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    if (paramMenuItem.getItemId() == 2131623944)
    {
      finish();
      return true;
    }
    return super.onOptionsItemSelected(paramMenuItem);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\cube\AddStockActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
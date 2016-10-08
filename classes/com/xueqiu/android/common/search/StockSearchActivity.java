package com.xueqiu.android.common.search;

import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.support.v7.a.a;
import android.support.v7.a.f;
import android.support.v7.a.g;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnFocusChangeListener;
import android.view.Window;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.ListView;
import com.android.volley.n;
import com.android.volley.y;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.xueqiu.android.base.b.q;
import com.xueqiu.android.base.storage.prefs.UserPrefs;
import com.xueqiu.android.stock.model.Stock;
import java.util.ArrayList;
import java.util.List;

public class StockSearchActivity
  extends com.xueqiu.android.common.b
{
  private EditText j;
  private ImageView k;
  private ListView p;
  private ArrayList<Stock> q = null;
  private List<Stock> r = null;
  private com.xueqiu.android.base.h5.b s;
  private String t;
  private com.xueqiu.android.common.widget.p u;
  private b v;
  private Drawable w;
  private n<ArrayList<Stock>> x = null;
  
  public void onBackPressed()
  {
    if (this.s != null)
    {
      Intent localIntent = new Intent();
      localIntent.putExtra("extra_event_result", 1);
      Bundle localBundle = new Bundle();
      localBundle.putParcelable("extra_event", this.s);
      localIntent.putExtras(localBundle);
      setResult(-1, localIntent);
    }
    super.onBackPressed();
    if (this.s == null) {
      overridePendingTransition(2130968586, 2130968587);
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903087);
    paramBundle = getIntent();
    if (paramBundle.getParcelableExtra("extra_event") != null) {
      this.s = ((com.xueqiu.android.base.h5.b)paramBundle.getParcelableExtra("extra_event"));
    }
    if (TextUtils.equals(paramBundle.getStringExtra("extra_view_color"), "view_color_blue"))
    {
      this.w = com.xueqiu.android.base.r.b(2130772013, getTheme());
      this.t = paramBundle.getStringExtra("market_type");
      getWindow().setBackgroundDrawable(new ColorDrawable(0));
      this.i.b().d();
      this.p = ((ListView)findViewById(2131624255));
      this.q = new ArrayList();
      paramBundle = UserPrefs.getString(getBaseContext(), "search_stock_history", "");
      this.r = ((List)new Gson().fromJson(paramBundle, new TypeToken() {}.getType()));
      if ((this.r != null) && (this.r.size() > 0))
      {
        if (this.r.size() <= 5) {
          break label542;
        }
        this.q.addAll(this.r.subList(0, 5));
      }
      label223:
      this.v = new b(this);
      this.p.setAdapter(this.v);
      this.v.a(this.q);
      this.p.setOnItemClickListener(new AdapterView.OnItemClickListener()
      {
        public final void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
        {
          paramAnonymousAdapterView = (Stock)StockSearchActivity.a(StockSearchActivity.this).a().get(paramAnonymousInt);
          StockSearchActivity.a(StockSearchActivity.this, paramAnonymousAdapterView);
        }
      });
      this.p.setEmptyView(findViewById(2131624257));
      this.k = ((ImageView)findViewById(2131624253));
      this.j = ((EditText)findViewById(2131624252));
      this.j.addTextChangedListener(new TextWatcher()
      {
        public final void afterTextChanged(Editable paramAnonymousEditable) {}
        
        public final void beforeTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
        
        public final void onTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3)
        {
          synchronized (StockSearchActivity.this)
          {
            paramAnonymousCharSequence = paramAnonymousCharSequence.toString();
            if ((paramAnonymousCharSequence != null) && (paramAnonymousCharSequence.length() > 0))
            {
              StockSearchActivity.a(StockSearchActivity.this, paramAnonymousCharSequence);
              StockSearchActivity.b(StockSearchActivity.this).setVisibility(0);
              StockSearchActivity.this.findViewById(2131624254).setVisibility(8);
              StockSearchActivity.this.findViewById(2131624256).setVisibility(8);
            }
            while ((paramAnonymousCharSequence == null) || (paramAnonymousCharSequence.length() != 0)) {
              return;
            }
            if ((StockSearchActivity.c(StockSearchActivity.this) != null) && (StockSearchActivity.c(StockSearchActivity.this).size() > 0))
            {
              StockSearchActivity.d(StockSearchActivity.this).clear();
              StockSearchActivity.d(StockSearchActivity.this).addAll(StockSearchActivity.c(StockSearchActivity.this));
              ((b)StockSearchActivity.e(StockSearchActivity.this).getAdapter()).notifyDataSetChanged();
              StockSearchActivity.this.findViewById(2131624254).setVisibility(0);
              StockSearchActivity.this.findViewById(2131624256).setVisibility(0);
            }
            StockSearchActivity.b(StockSearchActivity.this).setVisibility(8);
          }
        }
      });
      paramBundle = new AlphaAnimation(0.0F, 1.0F);
      paramBundle.setDuration(200L);
      if (this.w != null) {
        findViewById(2131624251).setBackgroundDrawable(this.w);
      }
      findViewById(2131624250).startAnimation(paramBundle);
      findViewById(2131624251).setSelected(true);
      findViewById(2131625768).setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          StockSearchActivity.this.finish();
          if (StockSearchActivity.f(StockSearchActivity.this) == null) {
            StockSearchActivity.this.overridePendingTransition(2130968586, 2130968587);
          }
        }
      });
      if (this.q.size() <= 0) {
        break label557;
      }
      findViewById(2131624256).setVisibility(0);
    }
    for (;;)
    {
      findViewById(2131624256).setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          StockSearchActivity.g(StockSearchActivity.this);
          paramAnonymousView.setVisibility(8);
          if (StockSearchActivity.a(StockSearchActivity.this) != null)
          {
            StockSearchActivity.d(StockSearchActivity.this).clear();
            StockSearchActivity.a(StockSearchActivity.this).notifyDataSetChanged();
          }
        }
      });
      this.k.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          StockSearchActivity.h(StockSearchActivity.this).setText("");
        }
      });
      this.u = new com.xueqiu.android.common.widget.p(this, 4, this.j);
      this.j.setOnFocusChangeListener(new View.OnFocusChangeListener()
      {
        public final void onFocusChange(View paramAnonymousView, boolean paramAnonymousBoolean)
        {
          if (paramAnonymousBoolean)
          {
            StockSearchActivity.this.findViewById(2131624251).setSelected(true);
            StockSearchActivity.i(StockSearchActivity.this);
            return;
          }
          StockSearchActivity.this.findViewById(2131624251).setSelected(false);
        }
      });
      this.j.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          StockSearchActivity.i(StockSearchActivity.this);
        }
      });
      return;
      if (!TextUtils.equals(paramBundle.getStringExtra("extra_view_color"), "view_color_yellow")) {
        break;
      }
      this.w = com.xueqiu.android.base.r.b(2130772014, getTheme());
      break;
      label542:
      this.q.addAll(this.r);
      break label223;
      label557:
      findViewById(2131624256).setVisibility(8);
    }
  }
  
  protected void onResume()
  {
    super.onResume();
    this.j.requestFocus();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\search\StockSearchActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
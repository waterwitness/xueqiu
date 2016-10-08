package com.xueqiu.android.stock;

import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.android.volley.n;
import com.android.volley.y;
import com.xueqiu.android.base.b.ai;
import com.xueqiu.android.base.b.ak;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.common.a.f;
import com.xueqiu.android.common.b;
import com.xueqiu.android.stock.model.Stock;
import java.util.ArrayList;

public class SearchStockActivity
  extends b
{
  private n<ArrayList<Stock>> j = null;
  private ArrayList<Stock> k = null;
  private ListView p = null;
  private ArrayList<Stock> q = null;
  
  private void a(ArrayList<Stock> paramArrayList, Exception paramException)
  {
    if (paramArrayList == null) {
      aa.a(paramException);
    }
    do
    {
      return;
      this.k.clear();
      this.k.addAll(paramArrayList);
      paramArrayList = this.p.getAdapter();
    } while (!(paramArrayList instanceof ArrayAdapter));
    ((ArrayAdapter)paramArrayList).notifyDataSetChanged();
  }
  
  protected void onCreate(final Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903118);
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
    final Object localObject2 = new f(this, this.k);
    this.p.setAdapter((ListAdapter)localObject2);
    this.p.setOnItemClickListener(new AdapterView.OnItemClickListener()
    {
      public final void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
      {
        paramAnonymousAdapterView = (Stock)localObject2.getItem(paramAnonymousInt);
        paramAnonymousView = new Intent();
        paramAnonymousView.putExtra("extra_stock", paramAnonymousAdapterView);
        SearchStockActivity.this.setResult(-1, paramAnonymousView);
        SearchStockActivity.this.finish();
      }
    });
    final ImageButton localImageButton = (ImageButton)findViewById(2131624755);
    localImageButton.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        paramBundle.setText("");
      }
    });
    localObject2 = (ListView)findViewById(2131624355);
    paramBundle.addTextChangedListener(new TextWatcher()
    {
      public final void afterTextChanged(Editable paramAnonymousEditable)
      {
        if (paramAnonymousEditable.length() > 0)
        {
          SearchStockActivity.a(SearchStockActivity.this, paramAnonymousEditable.toString());
          localObject1.setVisibility(0);
          SearchStockActivity.a(SearchStockActivity.this).setVisibility(0);
          localImageButton.setImageResource(2130837870);
          localObject2.setVisibility(8);
        }
        while (paramAnonymousEditable.length() != 0) {
          return;
        }
        localObject1.setVisibility(8);
        SearchStockActivity.a(SearchStockActivity.this).setVisibility(8);
        localImageButton.setImageDrawable(null);
        localObject2.setVisibility(0);
      }
      
      public final void beforeTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
      
      public final void onTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
    });
    this.q = new ArrayList();
    paramBundle = new f(this, this.q);
    ((ListView)localObject2).setAdapter(paramBundle);
    ((ListView)localObject2).setOnItemClickListener(new AdapterView.OnItemClickListener()
    {
      public final void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
      {
        paramAnonymousAdapterView = (Stock)paramBundle.getItem(paramAnonymousInt);
        paramAnonymousView = new Intent();
        paramAnonymousView.putExtra("extra_stock", paramAnonymousAdapterView);
        SearchStockActivity.this.setResult(-1, paramAnonymousView);
        SearchStockActivity.this.finish();
      }
    });
    localObject1 = com.xueqiu.android.base.q.a().b();
    paramBundle = new p(this)
    {
      public final void a(y paramAnonymousy)
      {
        aa.a(paramAnonymousy);
      }
    };
    ((ai)localObject1).i.a(paramBundle);
    h();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\stock\SearchStockActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
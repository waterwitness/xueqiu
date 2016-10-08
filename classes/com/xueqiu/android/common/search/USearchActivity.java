package com.xueqiu.android.common.search;

import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.os.Bundle;
import android.support.v7.a.g;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;
import com.android.volley.y;
import com.d.a.b.d;
import com.d.a.b.e;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.xueqiu.android.base.a.5;
import com.xueqiu.android.base.b.ai;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.h;
import com.xueqiu.android.base.j;
import com.xueqiu.android.base.storage.prefs.UserLogonDataPrefs;
import com.xueqiu.android.base.u;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.base.util.b;
import com.xueqiu.android.base.util.n;
import com.xueqiu.android.base.util.o;
import com.xueqiu.android.base.util.v;
import com.xueqiu.android.common.model.SNBEvent;
import com.xueqiu.android.common.model.SearchHots;
import com.xueqiu.android.common.widget.CommonFlowLayout;
import com.xueqiu.android.common.widget.NoScrollGridView;
import com.xueqiu.android.community.UserProfileActivity;
import com.xueqiu.android.community.model.User;
import com.xueqiu.android.cube.CubeActivity;
import com.xueqiu.android.cube.a.k;
import com.xueqiu.android.cube.model.Cube;
import com.xueqiu.android.stock.a.ad;
import com.xueqiu.android.stock.model.Stock;
import com.xueqiu.android.stock.model.StockQuote;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class USearchActivity
  extends j<com.xueqiu.android.common.search.b.a>
  implements com.xueqiu.android.common.search.a.c
{
  private static final String p = USearchActivity.class.getSimpleName();
  private TextView A;
  private LinearLayout B;
  private LinearLayout C;
  private RelativeLayout D;
  private ImageView E;
  private ImageButton F;
  private long G;
  private SNBEvent H = new SNBEvent(2200, 1);
  private EditText q;
  private d r;
  private com.d.a.b.f s;
  private LinearLayout t;
  private LinearLayout u;
  private TextView v;
  private TextView w;
  private NoScrollGridView x;
  private com.xueqiu.android.common.a.i y;
  private CommonFlowLayout z;
  
  public final void a(final int paramInt, View paramView)
  {
    paramView.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        paramAnonymousView = new Intent(USearchActivity.this, SearchActivity.class);
        paramAnonymousView.putExtra("search_word", USearchActivity.this.k());
        paramAnonymousView.putExtra("search_type", paramInt);
        USearchActivity.this.startActivityForResult(paramAnonymousView, 1);
        if (paramInt == 2) {
          b.a(USearchActivity.this, 2131166477);
        }
        do
        {
          return;
          if (paramInt == 3)
          {
            b.a(USearchActivity.this, 2131166476);
            return;
          }
          if (paramInt == 1)
          {
            b.a(USearchActivity.this, 2131166475);
            return;
          }
        } while (paramInt != 4);
        b.a(USearchActivity.this, 2131166474);
      }
    });
  }
  
  public final void a(ad paramad)
  {
    ViewGroup localViewGroup = (ViewGroup)this.u.findViewById(2131624289);
    localViewGroup.removeAllViews();
    ArrayList localArrayList = paramad.a();
    int i = 0;
    while ((i < localArrayList.size()) && (i < 3))
    {
      View localView = paramad.getView(i, null, localViewGroup);
      localView.setBackgroundResource(2130837744);
      localView.findViewById(2131624443).setVisibility(8);
      localView.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          if (!TextUtils.isEmpty(USearchActivity.this.k())) {
            ((com.xueqiu.android.common.search.b.a)USearchActivity.n(USearchActivity.this)).b(USearchActivity.this.k());
          }
          paramAnonymousView = com.xueqiu.android.base.util.q.a(USearchActivity.this, new StockQuote(this.a.getName(), this.a.getCode()));
          USearchActivity.this.startActivityForResult(paramAnonymousView, 2);
          USearchActivity.l(USearchActivity.this).addProperty("key", USearchActivity.this.k().trim());
          USearchActivity.l(USearchActivity.this).addProperty("click_area", "股票");
          USearchActivity.l(USearchActivity.this).addProperty("click_symbol", this.a.getName());
          com.xueqiu.android.base.i.a().a(USearchActivity.l(USearchActivity.this));
        }
      });
      localViewGroup.addView(localView);
      localView = new View(this);
      localView.setLayoutParams(new ViewGroup.LayoutParams(-1, 1));
      localView.setBackgroundColor(getResources().getColor(2131558698));
      localViewGroup.addView(localView);
      i += 1;
    }
  }
  
  public final void a(List<String> paramList)
  {
    if (paramList.size() <= 0) {}
    for (;;)
    {
      return;
      paramList = paramList.iterator();
      while (paramList.hasNext())
      {
        final String str = (String)paramList.next();
        v.a(p, "initSearchHistory keyword = " + str);
        if (this.B.getVisibility() != 0) {
          b(true);
        }
        TextView localTextView = (TextView)LayoutInflater.from(this).inflate(2130903258, this.z, false);
        this.z.addView(localTextView);
        localTextView.setText(str);
        localTextView.setOnClickListener(new View.OnClickListener()
        {
          public final void onClick(View paramAnonymousView)
          {
            if (!TextUtils.isEmpty(str))
            {
              USearchActivity.e(USearchActivity.this).setText(str);
              USearchActivity.e(USearchActivity.this).setSelection(str.length());
            }
          }
        });
      }
    }
  }
  
  public final void a(List<Cube> paramList, k paramk)
  {
    ((LinearLayout)findViewById(2131624291)).setVisibility(0);
    LinearLayout localLinearLayout = (LinearLayout)findViewById(2131624292);
    localLinearLayout.removeAllViews();
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      final Object localObject = (Cube)localIterator.next();
      View localView = paramk.getView(paramList.indexOf(localObject), null, localLinearLayout);
      localView.setBackgroundResource(2130837744);
      localView.findViewById(2131624443).setVisibility(8);
      localView.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          if (!TextUtils.isEmpty(USearchActivity.this.k())) {
            ((com.xueqiu.android.common.search.b.a)USearchActivity.m(USearchActivity.this)).b(USearchActivity.this.k());
          }
          paramAnonymousView = new Intent(USearchActivity.this, CubeActivity.class);
          paramAnonymousView.putExtra("extra_cube_id", localObject.getId());
          paramAnonymousView.putExtra("extra_cube_symbol", localObject.getSymbol());
          USearchActivity.this.startActivityForResult(paramAnonymousView, 0);
          USearchActivity.l(USearchActivity.this).addProperty("key", USearchActivity.this.k().trim());
          USearchActivity.l(USearchActivity.this).addProperty("click_area", "组合");
          USearchActivity.l(USearchActivity.this).addProperty("click_symbol", localObject.getName());
          com.xueqiu.android.base.i.a().a(USearchActivity.l(USearchActivity.this));
        }
      });
      localLinearLayout.addView(localView);
      localObject = new View(this);
      ((View)localObject).setLayoutParams(new ViewGroup.LayoutParams(-1, 1));
      ((View)localObject).setBackgroundColor(getResources().getColor(2131558698));
      localLinearLayout.addView((View)localObject);
    }
    paramk = findViewById(2131624293);
    if (paramList.size() < 3)
    {
      paramk.setVisibility(8);
      return;
    }
    paramk.setVisibility(0);
    a(5, findViewById(2131624293));
  }
  
  public final void a(boolean paramBoolean, Bitmap paramBitmap, final String paramString, final long paramLong)
  {
    this.G = paramLong;
    if (paramBoolean)
    {
      this.D.setVisibility(0);
      this.E.setImageBitmap(paramBitmap);
      this.E.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          if (!TextUtils.isEmpty(paramString)) {
            com.xueqiu.android.common.q.a(paramString, USearchActivity.this);
          }
          paramAnonymousView = com.xueqiu.android.base.q.a().b();
          u.a();
          paramAnonymousView.d(UserLogonDataPrefs.getLogonUserId(), String.valueOf(paramLong), new p()
          {
            public final void a(y paramAnonymous2y)
            {
              aa.a(paramAnonymous2y);
            }
          });
          try
          {
            paramAnonymousView = new SNBEvent(2200, 5);
            paramAnonymousView.addProperty("ad_id", String.valueOf(paramLong));
            com.xueqiu.android.base.i.a().a(paramAnonymousView);
            return;
          }
          catch (Exception paramAnonymousView)
          {
            paramAnonymousView.printStackTrace();
          }
        }
      });
      try
      {
        paramBitmap = new SNBEvent(2200, 4);
        paramBitmap.addProperty("ad_id", String.valueOf(paramLong));
        com.xueqiu.android.base.i.a().a(paramBitmap);
        return;
      }
      catch (Exception paramBitmap)
      {
        paramBitmap.printStackTrace();
        return;
      }
    }
    this.D.setVisibility(8);
  }
  
  public final void b(List<User> paramList)
  {
    final Object localObject1 = (LinearLayout)this.t.findViewById(2131624295);
    int i = 0;
    while (i < ((LinearLayout)localObject1).getChildCount())
    {
      ((LinearLayout)localObject1).getChildAt(i).setVisibility(4);
      i += 1;
    }
    i = 0;
    while (i < paramList.size())
    {
      localObject1 = (User)paramList.get(i);
      localObject2 = (RelativeLayout)((LinearLayout)this.t.findViewById(2131624295)).getChildAt(i);
      ((RelativeLayout)localObject2).setVisibility(0);
      ImageView localImageView = (ImageView)((RelativeLayout)localObject2).findViewById(2131624720);
      ((TextView)((RelativeLayout)localObject2).findViewById(2131624721)).setText(((User)localObject1).getScreenName());
      this.s.a(((User)localObject1).getProfileImageUrl(), localImageView, this.r, new o());
      ((RelativeLayout)localObject2).setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          if (!TextUtils.isEmpty(USearchActivity.this.k())) {
            ((com.xueqiu.android.common.search.b.a)USearchActivity.k(USearchActivity.this)).b(USearchActivity.this.k());
          }
          paramAnonymousView = new Intent(USearchActivity.this, UserProfileActivity.class);
          paramAnonymousView.putExtra("extra_user", localObject1);
          USearchActivity.this.startActivity(paramAnonymousView);
          USearchActivity.l(USearchActivity.this).addProperty("key", USearchActivity.this.k().trim());
          USearchActivity.l(USearchActivity.this).addProperty("click_area", "用户");
          USearchActivity.l(USearchActivity.this).addProperty("click_symbol", localObject1.getScreenName());
          com.xueqiu.android.base.i.a().a(USearchActivity.l(USearchActivity.this));
        }
      });
      i += 1;
    }
    localObject1 = (TextView)this.t.findViewById(2131624033);
    Object localObject2 = (ImageView)this.t.findViewById(2131624296);
    if (paramList.size() < 3)
    {
      ((TextView)localObject1).setVisibility(8);
      ((ImageView)localObject2).setVisibility(8);
      return;
    }
    ((TextView)localObject1).setVisibility(0);
    ((ImageView)localObject2).setVisibility(0);
    ((TextView)localObject1).setText("查看更多相关用户");
    a(2, (View)localObject1);
  }
  
  public final void b(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      this.B.setVisibility(0);
      localLayoutParams = (LinearLayout.LayoutParams)this.C.getLayoutParams();
      localLayoutParams.topMargin = com.xueqiu.android.base.r.i(10);
      this.C.setLayoutParams(localLayoutParams);
      return;
    }
    this.B.setVisibility(8);
    LinearLayout.LayoutParams localLayoutParams = (LinearLayout.LayoutParams)this.C.getLayoutParams();
    localLayoutParams.topMargin = 0;
    this.C.setLayoutParams(localLayoutParams);
  }
  
  public final void c(final List<SearchHots> paramList)
  {
    com.xueqiu.android.common.a.i locali = this.y;
    locali.a = paramList;
    locali.notifyDataSetChanged();
    this.x.setOnItemClickListener(new AdapterView.OnItemClickListener()
    {
      public final void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
      {
        v.a(USearchActivity.n(), "onItemClick position = " + paramAnonymousInt + " target = " + ((SearchHots)paramList.get(paramAnonymousInt)).getTarget());
        com.xueqiu.android.common.q.a(((SearchHots)paramList.get(paramAnonymousInt)).getTarget().trim(), USearchActivity.this);
      }
    });
  }
  
  public final void c(boolean paramBoolean)
  {
    LinearLayout localLinearLayout = this.C;
    if (paramBoolean) {}
    for (int i = 0;; i = 8)
    {
      localLinearLayout.setVisibility(i);
      return;
    }
  }
  
  public final void d(boolean paramBoolean)
  {
    int j = 0;
    View localView = findViewById(2131624287);
    if (paramBoolean)
    {
      i = 4;
      localView.setVisibility(i);
      localView = findViewById(2131624297);
      if (!paramBoolean) {
        break label48;
      }
    }
    label48:
    for (int i = j;; i = 4)
    {
      localView.setVisibility(i);
      return;
      i = 0;
      break;
    }
  }
  
  public final void e(boolean paramBoolean)
  {
    LinearLayout localLinearLayout = this.t;
    if (paramBoolean) {}
    for (int i = 0;; i = 8)
    {
      localLinearLayout.setVisibility(i);
      return;
    }
  }
  
  public final void f(boolean paramBoolean)
  {
    ViewGroup localViewGroup = (ViewGroup)findViewById(2131624291);
    if (paramBoolean) {}
    for (int i = 0;; i = 8)
    {
      localViewGroup.setVisibility(i);
      return;
    }
  }
  
  public final void g(boolean paramBoolean)
  {
    LinearLayout localLinearLayout = this.u;
    if (paramBoolean) {}
    for (int i = 0;; i = 8)
    {
      localLinearLayout.setVisibility(i);
      return;
    }
  }
  
  public final void h(boolean paramBoolean)
  {
    int j = 0;
    TextView localTextView = (TextView)this.u.findViewById(2131624032);
    RelativeLayout localRelativeLayout = (RelativeLayout)this.u.findViewById(2131624290);
    if (paramBoolean)
    {
      i = 0;
      localTextView.setVisibility(i);
      if (!paramBoolean) {
        break label76;
      }
    }
    label76:
    for (int i = j;; i = 8)
    {
      localRelativeLayout.setVisibility(i);
      if (paramBoolean) {
        a(3, localTextView);
      }
      return;
      i = 8;
      break;
    }
  }
  
  public final void j()
  {
    this.z.removeAllViews();
  }
  
  public final String k()
  {
    if (this.q.getText() != null) {
      return this.q.getText().toString();
    }
    return null;
  }
  
  public final void l()
  {
    findViewById(2131624257).setVisibility(8);
  }
  
  public final void m()
  {
    findViewById(2131624257).setVisibility(0);
    findViewById(2131624287).setVisibility(8);
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if ((paramInt1 == 2) && (paramInt2 == -1))
    {
      com.xueqiu.android.common.search.b.a locala = (com.xueqiu.android.common.search.b.a)this.j;
      StockQuote localStockQuote = (StockQuote)paramIntent.getParcelableExtra("extra_stock");
      if ((localStockQuote != null) && (locala.b != null) && (locala.b.getCount() > 0))
      {
        Iterator localIterator = locala.b.a().iterator();
        while (localIterator.hasNext())
        {
          Stock localStock = (Stock)localIterator.next();
          if (localStock.getCode().equals(localStockQuote.getSymbol()))
          {
            localStock.setHasExist(localStockQuote.isFollowing());
            locala.a.a(locala.b);
          }
        }
      }
    }
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
  }
  
  public void onBackPressed()
  {
    a(0, 0);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903090);
    this.C = ((LinearLayout)findViewById(2131624804));
    this.B = ((LinearLayout)findViewById(2131624801));
    this.A = ((TextView)findViewById(2131624802));
    this.A.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        paramAnonymousView = (com.xueqiu.android.common.search.b.a)USearchActivity.a(USearchActivity.this);
        a locala = a.a();
        v.a(a.a, "clearSearchRecord");
        locala.b.clear();
        locala.b();
        paramAnonymousView.a.b(false);
        paramAnonymousView.a.j();
      }
    });
    this.D = ((RelativeLayout)findViewById(2131624798));
    this.E = ((ImageView)findViewById(2131624799));
    this.F = ((ImageButton)findViewById(2131624800));
    this.F.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        ((com.xueqiu.android.common.search.b.a)USearchActivity.b(USearchActivity.this)).a(false);
        com.xueqiu.android.base.a locala = com.xueqiu.android.base.a.a();
        if (com.xueqiu.android.base.util.i.c()) {}
        for (paramAnonymousView = "0x05";; paramAnonymousView = "0x04")
        {
          long l = 0L;
          if (com.xueqiu.android.base.a.i().has("promotion_id")) {
            l = com.xueqiu.android.base.a.i().get("promotion_id").getAsLong();
          }
          ai localai = com.xueqiu.android.base.q.a().b();
          u.a();
          localai.a(UserLogonDataPrefs.getLogonUserId(), paramAnonymousView, "0x08", l, new a.5(locala));
          try
          {
            paramAnonymousView = new SNBEvent(2200, 6);
            paramAnonymousView.addProperty("ad_id", String.valueOf(USearchActivity.c(USearchActivity.this)));
            com.xueqiu.android.base.i.a().a(paramAnonymousView);
            return;
          }
          catch (Exception paramAnonymousView)
          {
            paramAnonymousView.printStackTrace();
          }
        }
      }
    });
    this.v = ((TextView)findViewById(2131624031));
    this.w = ((TextView)findViewById(2131624030));
    this.t = ((LinearLayout)findViewById(2131624294));
    this.u = ((LinearLayout)findViewById(2131624288));
    this.s = com.d.a.b.f.a();
    paramBundle = n.b().a(Bitmap.Config.RGB_565);
    paramBundle.c = 2130838665;
    paramBundle.b = 2130838665;
    paramBundle.a = 2130838665;
    this.r = paramBundle.b();
    this.q = new EditText(this);
    this.q.setTextColor(com.xueqiu.android.base.r.a(2131558729));
    this.q.setTextSize(16.0F);
    this.q.setSingleLine(true);
    this.q.setHintTextColor(getResources().getColor(2131558729));
    this.q.setImeOptions(3);
    this.i.b().a(this.q, new android.support.v7.a.c(-1));
    this.i.b().d(true);
    this.i.b().c(false);
    com.xueqiu.android.base.a.a();
    if (com.xueqiu.android.base.a.j())
    {
      paramBundle = this.q;
      com.xueqiu.android.base.a.a();
      paramBundle.setHint(com.xueqiu.android.base.util.r.a(com.xueqiu.android.base.a.k(), "title", null));
    }
    for (;;)
    {
      this.q.setImeActionLabel(getString(2131166024), 3);
      this.q.setOnEditorActionListener(new TextView.OnEditorActionListener()
      {
        public final boolean onEditorAction(TextView paramAnonymousTextView, int paramAnonymousInt, KeyEvent paramAnonymousKeyEvent)
        {
          if (paramAnonymousInt == 3)
          {
            paramAnonymousTextView = paramAnonymousTextView.getText();
            if (!TextUtils.isEmpty(paramAnonymousTextView.toString().trim()))
            {
              ((com.xueqiu.android.common.search.b.a)USearchActivity.d(USearchActivity.this)).a(paramAnonymousTextView.toString());
              b.a(USearchActivity.this, 2131166473);
              return true;
            }
            USearchActivity.e(USearchActivity.this).requestFocus();
            com.xueqiu.android.base.a.a();
            long l;
            if (com.xueqiu.android.base.a.j())
            {
              com.xueqiu.android.base.a.a();
              if (TextUtils.isEmpty(com.xueqiu.android.base.util.r.a(com.xueqiu.android.base.a.k(), "link", null))) {
                return true;
              }
              com.xueqiu.android.base.a.a();
              com.xueqiu.android.common.q.a(com.xueqiu.android.base.util.r.a(com.xueqiu.android.base.a.k(), "link", null), USearchActivity.this);
              com.xueqiu.android.base.a.a();
              l = com.xueqiu.android.base.util.r.c(com.xueqiu.android.base.a.k(), "promotion_id");
              paramAnonymousTextView = com.xueqiu.android.base.q.a().b();
              u.a();
              paramAnonymousTextView.d(UserLogonDataPrefs.getLogonUserId(), String.valueOf(l), new p()
              {
                public final void a(y paramAnonymous2y)
                {
                  aa.a(paramAnonymous2y);
                }
              });
            }
            try
            {
              paramAnonymousTextView = new SNBEvent(2200, 3);
              paramAnonymousTextView.addProperty("ad_id", String.valueOf(l));
              com.xueqiu.android.base.i.a().a(paramAnonymousTextView);
              return true;
            }
            catch (Exception paramAnonymousTextView)
            {
              for (;;)
              {
                paramAnonymousTextView.printStackTrace();
              }
            }
          }
          return false;
        }
      });
      this.q.addTextChangedListener(new TextWatcher()
      {
        public final void afterTextChanged(Editable paramAnonymousEditable)
        {
          paramAnonymousEditable = paramAnonymousEditable.toString().trim();
          if (paramAnonymousEditable.length() > 0)
          {
            ((com.xueqiu.android.common.search.b.a)USearchActivity.f(USearchActivity.this)).a.l();
            USearchActivity.this.a(1, USearchActivity.g(USearchActivity.this));
            USearchActivity.this.a(4, USearchActivity.h(USearchActivity.this));
            ((com.xueqiu.android.common.search.b.a)USearchActivity.i(USearchActivity.this)).a(paramAnonymousEditable);
            return;
          }
          ((com.xueqiu.android.common.search.b.a)USearchActivity.j(USearchActivity.this)).a.m();
        }
        
        public final void beforeTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
        
        public final void onTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
      });
      this.q.requestFocus();
      ((ScrollView)findViewById(2131624286)).setOnTouchListener(new View.OnTouchListener()
      {
        public final boolean onTouch(View paramAnonymousView, MotionEvent paramAnonymousMotionEvent)
        {
          if ((USearchActivity.e(USearchActivity.this) != null) && (USearchActivity.e(USearchActivity.this).isFocused()))
          {
            ((InputMethodManager)USearchActivity.this.getSystemService("input_method")).hideSoftInputFromWindow(USearchActivity.e(USearchActivity.this).getWindowToken(), 0);
            USearchActivity.e(USearchActivity.this).clearFocus();
          }
          return false;
        }
      });
      this.x = ((NoScrollGridView)findViewById(2131624805));
      this.y = new com.xueqiu.android.common.a.i(this);
      this.x.setAdapter(this.y);
      this.z = ((CommonFlowLayout)findViewById(2131624803));
      com.xueqiu.android.base.i.a().a(new SNBEvent(2200, 0));
      return;
      this.q.setHint(2131166028);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\search\USearchActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
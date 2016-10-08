package com.xueqiu.android.community;

import android.content.Intent;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.support.v7.a.a;
import android.support.v7.a.f;
import android.support.v7.a.g;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.android.volley.y;
import com.google.gson.JsonObject;
import com.xueqiu.android.base.b.ai;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.b.x;
import com.xueqiu.android.base.storage.prefs.UserLogonDataPrefs;
import com.xueqiu.android.base.u;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.common.b;
import com.xueqiu.android.common.widget.AutoResizeTextView;
import com.xueqiu.android.community.a.ah;
import com.xueqiu.android.community.model.User;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class UserSearchActivity
  extends b
{
  private LinearLayout A;
  private ah B;
  private List<Map<String, String>> C;
  private x D;
  private boolean E = true;
  private User F;
  private int G = 1;
  private boolean H = true;
  private String I;
  private int J = 1;
  private boolean K = true;
  private boolean L = false;
  private boolean M;
  private int j = 0;
  private ListView k;
  private EditText p;
  private View q;
  private RelativeLayout r;
  private ImageView s;
  private RelativeLayout t;
  private RelativeLayout u;
  private AutoResizeTextView v;
  private TextView w;
  private TextView x;
  private LinearLayout y;
  private TextView z;
  
  private static Map<String, String> b(Map<String, String> paramMap, User paramUser, int paramInt)
  {
    paramMap.put("name_key", paramUser.getScreenName());
    paramMap.put("id_key", String.valueOf(paramUser.getUserId()));
    paramMap.put("block_status", String.valueOf(paramUser.getBlockStatus()));
    paramMap.put("profile_image", paramUser.getProfileLargeImageUrl());
    paramMap.put("description", paramUser.getDescription());
    paramMap.put("verified_description", paramUser.getVerifiedDescription());
    paramMap.put("type_key", String.valueOf(paramInt));
    return paramMap;
  }
  
  private void b(int paramInt)
  {
    this.v.setTextColor(paramInt);
    this.x.setTextColor(paramInt);
    this.w.setTextColor(paramInt);
    this.z.setTextColor(paramInt);
  }
  
  private void b(String paramString)
  {
    this.v.setText(paramString);
    this.x.setText(paramString);
  }
  
  private void b(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      this.A.setVisibility(0);
      this.k.setVisibility(8);
      return;
    }
    this.A.setVisibility(8);
    this.k.setVisibility(0);
  }
  
  private void c(final int paramInt)
  {
    boolean bool = true;
    if (paramInt == 1) {}
    for (;;)
    {
      com.xueqiu.android.base.q.a().b().a(bool, new p()
      {
        public final void a(y paramAnonymousy)
        {
          aa.a(paramAnonymousy);
          UserSearchActivity.i(UserSearchActivity.this).a(UserSearchActivity.c(UserSearchActivity.this));
          if (paramInt == 0) {
            UserSearchActivity.j(UserSearchActivity.this);
          }
          while (paramInt != 1) {
            return;
          }
          UserSearchActivity.a(UserSearchActivity.this, false);
        }
      });
      return;
      if (paramInt == 0) {
        bool = false;
      } else {
        bool = false;
      }
    }
  }
  
  private void j()
  {
    this.C.clear();
    b(false);
    final HashMap localHashMap1;
    final HashMap localHashMap2;
    if ((this.E) && (this.F != null) && (this.j == 1))
    {
      localHashMap1 = new HashMap();
      localHashMap2 = new HashMap();
      localHashMap2.put("type_key", "1");
      if (!this.L) {
        break label158;
      }
      if (this.M)
      {
        this.C.add(0, b(localHashMap1, this.F, 3));
        this.C.add(1, localHashMap2);
      }
    }
    new ArrayList();
    if (this.j == 0)
    {
      this.k.setAdapter(this.B);
      label134:
      if (this.j != 0) {
        break label210;
      }
      c(0);
    }
    for (;;)
    {
      this.B.a(this.C);
      return;
      label158:
      com.xueqiu.android.base.q.a().b().j(this.F.getUserId(), new p()
      {
        public final void a(y paramAnonymousy) {}
      });
      break;
      if (this.j != 1) {
        break label134;
      }
      this.k.setAdapter(this.B);
      break label134;
      label210:
      if (this.j == 1) {
        c(1);
      }
    }
  }
  
  public final void a(List<Map<String, String>> paramList, Exception paramException, boolean paramBoolean)
  {
    if (paramException != null) {
      aa.a(paramException);
    }
    while (paramList == null) {
      return;
    }
    if (paramBoolean) {
      this.C.addAll(paramList);
    }
    for (;;)
    {
      this.B.a(this.C);
      return;
      this.C.clear();
      this.C.addAll(paramList);
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.i.b().d();
    setContentView(2130903236);
    this.F = ((User)getIntent().getParcelableExtra("extra_paid_to_user"));
    this.j = getIntent().getIntExtra("extra_type", 0);
    this.t = ((RelativeLayout)findViewById(2131624747));
    this.r = ((RelativeLayout)findViewById(2131624556));
    this.s = ((ImageView)findViewById(2131624557));
    this.v = ((AutoResizeTextView)findViewById(2131624559));
    this.w = ((TextView)findViewById(2131624560));
    this.x = ((TextView)findViewById(2131624558));
    this.y = ((LinearLayout)findViewById(2131624088));
    this.z = ((TextView)findViewById(2131624563));
    this.k = ((ListView)findViewById(2131624723));
    this.p = ((EditText)findViewById(2131624722));
    this.A = ((LinearLayout)findViewById(2131624724));
    this.q = LayoutInflater.from(this).inflate(2130903580, this.k, false);
    this.q.setVisibility(8);
    this.q.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        if (UserSearchActivity.a(UserSearchActivity.this) == 0) {
          UserSearchActivity.a(UserSearchActivity.this, UserSearchActivity.b(UserSearchActivity.this), true, false);
        }
        while (UserSearchActivity.a(UserSearchActivity.this) != 1) {
          return;
        }
        UserSearchActivity.a(UserSearchActivity.this, UserSearchActivity.b(UserSearchActivity.this), true, true);
      }
    });
    this.u = ((RelativeLayout)findViewById(2131624748));
    this.r.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        UserSearchActivity.this.onBackPressed();
      }
    });
    this.C = new ArrayList();
    this.B = new ah(this, this.C);
    this.k.addFooterView(this.q);
    this.k.setFooterDividersEnabled(false);
    this.k.setAdapter(this.B);
    this.k.setOnScrollListener(new AbsListView.OnScrollListener()
    {
      public final void onScroll(AbsListView paramAnonymousAbsListView, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3)
      {
        if ((paramAnonymousInt2 > 0) && (paramAnonymousInt1 + paramAnonymousInt2 == paramAnonymousInt3) && (paramAnonymousInt1 > 0))
        {
          if (UserSearchActivity.a(UserSearchActivity.this) != 0) {
            break label88;
          }
          if (!TextUtils.isEmpty(UserSearchActivity.b(UserSearchActivity.this))) {
            UserSearchActivity.a(UserSearchActivity.this, UserSearchActivity.b(UserSearchActivity.this), true, false);
          }
        }
        for (;;)
        {
          if ((UserSearchActivity.a(UserSearchActivity.this) == 1) && (TextUtils.isEmpty(UserSearchActivity.b(UserSearchActivity.this)))) {
            UserSearchActivity.a(UserSearchActivity.this, true);
          }
          return;
          label88:
          if ((UserSearchActivity.a(UserSearchActivity.this) == 1) && (!TextUtils.isEmpty(UserSearchActivity.b(UserSearchActivity.this)))) {
            UserSearchActivity.a(UserSearchActivity.this, UserSearchActivity.b(UserSearchActivity.this), true, true);
          }
        }
      }
      
      public final void onScrollStateChanged(AbsListView paramAnonymousAbsListView, int paramAnonymousInt) {}
    });
    this.k.setOnItemClickListener(new AdapterView.OnItemClickListener()
    {
      public final void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
      {
        paramAnonymousView = (Map)UserSearchActivity.c(UserSearchActivity.this).get(paramAnonymousInt);
        if (("1".equals(paramAnonymousView.get("type_key"))) || ("0".equals(paramAnonymousView.get("type_key")))) {
          return;
        }
        paramAnonymousAdapterView = "@" + (String)((Map)UserSearchActivity.c(UserSearchActivity.this).get(paramAnonymousInt)).get("name_key") + " ";
        if (UserSearchActivity.a(UserSearchActivity.this) == 0) {
          paramAnonymousAdapterView = "@" + (String)((Map)UserSearchActivity.c(UserSearchActivity.this).get(paramAnonymousInt)).get("name_key") + " ";
        }
        for (;;)
        {
          i.a().a(paramAnonymousView);
          paramAnonymousView = new Intent();
          paramAnonymousView.putExtra("extra_select", paramAnonymousAdapterView);
          UserSearchActivity.this.setResult(-1, paramAnonymousView);
          UserSearchActivity.this.finish();
          return;
          String str = (String)((Map)UserSearchActivity.c(UserSearchActivity.this).get(paramAnonymousInt)).get("id_key");
          u.a();
          if (str.equals(String.valueOf(UserLogonDataPrefs.getLogonUserId())))
          {
            aa.a(2131165295);
            return;
          }
          if (((String)((Map)UserSearchActivity.c(UserSearchActivity.this).get(paramAnonymousInt)).get("block_status")).equals("1"))
          {
            aa.a(2131165256);
            return;
          }
          if ((((String)((Map)UserSearchActivity.c(UserSearchActivity.this).get(paramAnonymousInt)).get("block_status")).equals("2")) || (((String)((Map)UserSearchActivity.c(UserSearchActivity.this).get(paramAnonymousInt)).get("block_status")).equals("3")))
          {
            aa.a(2131165255);
            return;
          }
        }
      }
    });
    this.q.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        paramAnonymousView = UserSearchActivity.d(UserSearchActivity.this).getText().toString().trim();
        if (UserSearchActivity.a(UserSearchActivity.this) == 0) {
          UserSearchActivity.a(UserSearchActivity.this, paramAnonymousView, true, false);
        }
        while (UserSearchActivity.a(UserSearchActivity.this) != 1) {
          return;
        }
        UserSearchActivity.a(UserSearchActivity.this, paramAnonymousView, true, true);
      }
    });
    this.p.addTextChangedListener(new TextWatcher()
    {
      public final void afterTextChanged(Editable paramAnonymousEditable)
      {
        paramAnonymousEditable = paramAnonymousEditable.toString();
        if (!TextUtils.isEmpty(paramAnonymousEditable))
        {
          paramAnonymousEditable = paramAnonymousEditable.trim();
          UserSearchActivity.a(UserSearchActivity.this, paramAnonymousEditable);
          if (UserSearchActivity.a(UserSearchActivity.this) == 0) {
            UserSearchActivity.a(UserSearchActivity.this, paramAnonymousEditable, false, false);
          }
          while (UserSearchActivity.a(UserSearchActivity.this) != 1) {
            return;
          }
          UserSearchActivity.a(UserSearchActivity.this, paramAnonymousEditable, false, true);
          return;
        }
        UserSearchActivity.a(UserSearchActivity.this, "");
        UserSearchActivity.e(UserSearchActivity.this).setVisibility(8);
        UserSearchActivity.f(UserSearchActivity.this);
      }
      
      public final void beforeTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
      
      public final void onTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
    });
    if (this.j == 1)
    {
      this.x.setVisibility(8);
      this.y.setVisibility(0);
    }
    if (this.j == 0)
    {
      b(getString(2131166046));
      paramBundle = getTheme().obtainStyledAttributes(new int[] { 2130772182, 2130772186, 2130772113 });
      this.t.setBackgroundColor(paramBundle.getColor(0, 0));
      b(paramBundle.getColor(1, 0));
      this.s.setImageResource(paramBundle.getResourceId(2, 0));
      paramBundle.recycle();
    }
    for (;;)
    {
      j();
      return;
      if (this.j == 1)
      {
        b(getString(2131166045));
        this.t.setBackgroundColor(getResources().getColor(2131558535));
        paramBundle = getTheme().obtainStyledAttributes(new int[] { 2130772183, 2130772114 });
        b(paramBundle.getColor(0, 0));
        this.s.setImageResource(paramBundle.getResourceId(1, 0));
        paramBundle.recycle();
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\community\UserSearchActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
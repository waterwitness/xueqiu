package com.xueqiu.android.community.c;

import android.content.Intent;
import android.graphics.Color;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.text.style.RelativeSizeSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;
import com.xueqiu.android.base.b;
import com.xueqiu.android.base.b.ai;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.q;
import com.xueqiu.android.base.r;
import com.xueqiu.android.base.storage.prefs.UserLogonDataPrefs;
import com.xueqiu.android.base.u;
import com.xueqiu.android.base.util.bb;
import com.xueqiu.android.common.model.SNBEvent;
import com.xueqiu.android.common.widget.SwitchButton;
import com.xueqiu.android.common.widget.ptr.PullToRefreshListView;
import com.xueqiu.android.common.widget.ptr.f;
import com.xueqiu.android.community.StatusDetailActivity;
import com.xueqiu.android.community.b.c;
import com.xueqiu.android.community.d.a;
import com.xueqiu.android.community.d.a.2;
import com.xueqiu.android.community.model.Comment;
import com.xueqiu.android.community.model.Status;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

public final class m
  extends com.xueqiu.android.base.k<a>
  implements c
{
  private com.xueqiu.android.community.a.k ak;
  private com.xueqiu.android.community.a.i al;
  private long am;
  private int an = 0;
  private TextView b;
  private FrameLayout c;
  private TextView d;
  private SwitchButton e;
  private View f;
  private View g;
  private PullToRefreshListView h;
  
  public static m b(int paramInt)
  {
    m localm = new m();
    Bundle localBundle = new Bundle();
    localBundle.putInt("arg_category", paramInt);
    localm.e(localBundle);
    return localm;
  }
  
  private void u()
  {
    if ((this.F != null) && ((this.F instanceof l)))
    {
      l locall = (l)this.F;
      int i = this.an;
      if (i == 0)
      {
        locall.d = 0;
        locall.a(locall.b, locall.d);
      }
      if (i == 1)
      {
        locall.e = 0;
        locall.a(locall.c, locall.e);
      }
    }
  }
  
  public final View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    return paramLayoutInflater.inflate(2130903103, paramViewGroup, false);
  }
  
  public final void a(double paramDouble)
  {
    SpannableStringBuilder localSpannableStringBuilder = new SpannableStringBuilder();
    localSpannableStringBuilder.append("向我提问需支付：");
    int i = localSpannableStringBuilder.length();
    String str = "#333333";
    b.a();
    if (b.i()) {
      str = "#bbbbbb";
    }
    localSpannableStringBuilder.setSpan(new ForegroundColorSpan(Color.parseColor(str)), 0, i, 17);
    localSpannableStringBuilder.append(String.format(Locale.CHINA, "%.2f元", new Object[] { Double.valueOf(paramDouble / 100.0D) }));
    localSpannableStringBuilder.setSpan(new ForegroundColorSpan(Color.parseColor("#C0A26F")), i, localSpannableStringBuilder.length(), 17);
    localSpannableStringBuilder.setSpan(new RelativeSizeSpan(1.2F), i, localSpannableStringBuilder.length() - 1, 33);
    this.b.setText(localSpannableStringBuilder);
  }
  
  public final void a(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if ((this.h != null) && (this.ak != null)) {
      this.h.k();
    }
    super.a(paramInt1, paramInt2, paramIntent);
  }
  
  public final void a(@Nullable Bundle paramBundle)
  {
    super.a(paramBundle);
    u.a();
    this.am = UserLogonDataPrefs.getLogonUserId();
    this.an = this.r.getInt("arg_category", 0);
    if (this.am <= 0L) {
      g().finish();
    }
    e_(true);
  }
  
  public final void a(View paramView, @Nullable Bundle paramBundle)
  {
    super.a(paramView, paramBundle);
    this.g = LayoutInflater.from(f()).inflate(2130903580, null, false);
    this.g.setVisibility(8);
    this.h = ((PullToRefreshListView)c(2131624309));
    paramView = LayoutInflater.from(f()).inflate(2130903174, (ViewGroup)this.h.getRefreshableView(), false);
    this.f = paramView.findViewById(2131624257);
    ((ImageView)this.f.findViewById(2131624093)).setImageResource(2130838365);
    ((TextView)this.f.findViewById(2131624334)).setText("没有待回复的问题");
    this.f.setVisibility(8);
    ((ListView)this.h.getRefreshableView()).addHeaderView(paramView, null, false);
    ((ListView)this.h.getRefreshableView()).addFooterView(this.g);
    this.b = ((TextView)paramView.findViewById(2131624262));
    this.c = ((FrameLayout)paramView.findViewById(2131624528));
    this.d = ((TextView)paramView.findViewById(2131624529));
    this.e = ((SwitchButton)paramView.findViewById(2131624530));
    this.c.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        paramAnonymousView = new SNBEvent(3105, 1);
        com.xueqiu.android.base.i.a().a(paramAnonymousView);
        m.a(m.this);
      }
    });
    this.e.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener()
    {
      public final void onCheckedChanged(CompoundButton paramAnonymousCompoundButton, boolean paramAnonymousBoolean)
      {
        boolean bool = false;
        m.this.a(false);
        paramAnonymousCompoundButton = (a)m.b(m.this);
        if (!paramAnonymousBoolean) {
          bool = true;
        }
        paramAnonymousCompoundButton.b(bool);
        if (paramAnonymousBoolean)
        {
          m.c(m.this).setText("待回答");
          return;
        }
        m.c(m.this).setText("全部");
      }
    });
    if (this.an == 0)
    {
      this.ak = new com.xueqiu.android.community.a.k(g());
      ((ListView)this.h.getRefreshableView()).setAdapter(this.ak);
    }
    for (;;)
    {
      ((ListView)this.h.getRefreshableView()).setDivider(null);
      this.h.setOnRefreshListener(new com.xueqiu.android.common.widget.ptr.h()
      {
        public final void a()
        {
          ((a)m.d(m.this)).a(false);
        }
      });
      this.h.setOnLastItemVisibleListener(new f()
      {
        public final void a()
        {
          ((a)m.e(m.this)).a(true);
        }
      });
      ((ListView)this.h.getRefreshableView()).setOnItemClickListener(new AdapterView.OnItemClickListener()
      {
        public final void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
        {
          paramAnonymousInt -= ((ListView)m.f(m.this).getRefreshableView()).getHeaderViewsCount();
          if (m.g(m.this) == 0) {
            if ((paramAnonymousInt >= 0) && (paramAnonymousInt < m.h(m.this).getCount()))
            {
              paramAnonymousAdapterView = (Status)m.h(m.this).a().get(paramAnonymousInt);
              paramAnonymousView = new Intent(m.this.f(), StatusDetailActivity.class);
              paramAnonymousView.putExtra("status", paramAnonymousAdapterView);
              m.this.a(paramAnonymousView, 1000);
            }
          }
          while ((paramAnonymousInt < 0) || (paramAnonymousInt >= m.i(m.this).getCount())) {
            return;
          }
          paramAnonymousAdapterView = ((Comment)m.i(m.this).a().get(paramAnonymousInt)).getStatus();
          paramAnonymousView = new Intent(m.this.f(), StatusDetailActivity.class);
          paramAnonymousView.putExtra("status", paramAnonymousAdapterView);
          m.this.a(paramAnonymousView, 1000);
        }
      });
      this.h.m();
      return;
      this.al = new com.xueqiu.android.community.a.i(g());
      ((ListView)this.h.getRefreshableView()).setAdapter(this.al);
    }
  }
  
  public final void a(List<Status> paramList)
  {
    this.ak.a().clear();
    this.ak.a().addAll(paramList);
    this.ak.notifyDataSetChanged();
    this.h.f();
    u();
  }
  
  public final void a(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      this.f.setVisibility(0);
      if (this.an == 0)
      {
        this.ak.a().clear();
        this.ak.notifyDataSetChanged();
      }
      for (;;)
      {
        this.h.f();
        return;
        this.al.a().clear();
        this.al.notifyDataSetChanged();
      }
    }
    this.f.setVisibility(8);
  }
  
  public final void b(List<Comment> paramList)
  {
    this.al.a().clear();
    this.al.a().addAll(paramList);
    this.al.notifyDataSetChanged();
    this.h.f();
    u();
  }
  
  public final void b(boolean paramBoolean)
  {
    View localView = this.g;
    if (paramBoolean) {}
    for (int i = 0;; i = 8)
    {
      localView.setVisibility(i);
      return;
    }
  }
  
  public final void c(List<Status> paramList)
  {
    this.ak.a().addAll(paramList);
    this.ak.notifyDataSetChanged();
    this.h.f();
  }
  
  public final void d(List<Comment> paramList)
  {
    this.al.a().addAll(paramList);
    this.al.notifyDataSetChanged();
    this.h.f();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\community\c\m.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
package com.xueqiu.android.stock;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.preference.PreferenceManager;
import android.support.v4.a.i;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.Adapter;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ImageButton;
import android.widget.ListView;
import android.widget.TextView;
import com.android.volley.n;
import com.android.volley.y;
import com.xueqiu.android.base.b.ai;
import com.xueqiu.android.base.b.e;
import com.xueqiu.android.base.storage.prefs.DefaultPrefs;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.common.a.d;
import com.xueqiu.android.common.a.p.1;
import com.xueqiu.android.common.c;
import com.xueqiu.android.common.r;
import com.xueqiu.android.common.t;
import com.xueqiu.android.common.widget.SNBPullToRefreshListView;
import com.xueqiu.android.common.widget.l;
import com.xueqiu.android.stock.model.InvCalEventsPair;
import com.xueqiu.android.stock.model.InvestmentCalendar;
import com.xueqiu.android.stock.model.InvestmentCalendarEvent;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public final class h
  extends c
  implements t<InvCalEventsPair>, l
{
  Handler a = new Handler()
  {
    public final void handleMessage(Message paramAnonymousMessage)
    {
      switch (paramAnonymousMessage.what)
      {
      default: 
        return;
      }
      h.d(h.this).d().setSelection(paramAnonymousMessage.arg1);
    }
  };
  private ArrayList<InvestmentCalendar> ak = null;
  private com.xueqiu.android.common.a.p al = null;
  private List<Map<String, Object>> am = null;
  private int an = 3;
  private int ao = -1;
  private ArrayList<InvCalEventsPair> ap = null;
  private Date aq = null;
  private BroadcastReceiver ar = new BroadcastReceiver()
  {
    public final void onReceive(Context paramAnonymousContext, Intent paramAnonymousIntent)
    {
      long l = paramAnonymousIntent.getLongExtra("delete_event_id", -1L);
      int j;
      int i;
      int k;
      if ((h.a(h.this) != null) && (h.a(h.this).size() > 0))
      {
        int m = h.a(h.this).size();
        j = 0;
        i = 0;
        if (j < m)
        {
          paramAnonymousContext = ((InvCalEventsPair)h.a(h.this).get(j)).mEventList;
          int n = paramAnonymousContext.size();
          k = 0;
          label88:
          if (k >= n) {
            break label185;
          }
          if (((InvestmentCalendarEvent)paramAnonymousContext.get(k)).mId != l) {
            break label167;
          }
          paramAnonymousContext.remove(k);
          i = 1;
        }
      }
      label167:
      label185:
      for (;;)
      {
        if (i != 0)
        {
          if (paramAnonymousContext.size() == 0) {
            h.a(h.this).remove(j);
          }
          h.a(h.this, h.a(h.this));
          return;
          k += 1;
          break label88;
        }
        j += 1;
        break;
      }
    }
  };
  private View.OnClickListener as = new View.OnClickListener()
  {
    public final void onClick(View paramAnonymousView)
    {
      switch (paramAnonymousView.getId())
      {
      case 2131625529: 
      default: 
        return;
      case 2131625528: 
        h.a(h.this, 2);
        h.g(h.this);
        h.h(h.this);
        return;
      }
      h.a(h.this, 1);
      h.i(h.this);
      h.h(h.this);
    }
  };
  private boolean b = false;
  private Context c;
  private String d;
  private long e;
  private boolean f;
  private r g;
  private InvestmentCalendar h = null;
  
  private void C()
  {
    TextView localTextView = (TextView)c(2131625529);
    int i = com.xueqiu.android.base.util.h.a();
    Calendar localCalendar = Calendar.getInstance();
    localCalendar.add(2, this.ao - i);
    localTextView.setText(localCalendar.get(1) + "年" + (localCalendar.get(2) + 1) + "月");
  }
  
  private void a(ArrayList<InvCalEventsPair> paramArrayList, boolean paramBoolean)
  {
    int i1 = 0;
    if (paramBoolean) {
      return;
    }
    this.am.clear();
    this.al.e.clear();
    int i2 = com.xueqiu.android.base.util.h.a();
    int i3 = paramArrayList.size();
    HashMap localHashMap = new HashMap();
    int k = 0;
    int j = 0;
    int m = 0;
    int i = 0;
    label60:
    int n;
    if (k < i3)
    {
      InvCalEventsPair localInvCalEventsPair = (InvCalEventsPair)paramArrayList.get(k);
      Object localObject = new HashMap();
      ((Map)localObject).put("cal_title_time", localInvCalEventsPair.mDate);
      this.am.add(localObject);
      localObject = new com.xueqiu.android.stock.a.h(this.c);
      ((com.xueqiu.android.stock.a.h)localObject).a(localInvCalEventsPair.mEventList);
      com.xueqiu.android.common.a.p localp = this.al;
      ((Adapter)localObject).registerDataSetObserver(new p.1(localp));
      localp.e.add(localObject);
      localp.notifyDataSetChanged();
      if ((i2 != this.ao) && ((this.aq == null) || (this.aq.getMonth() != this.ao))) {
        break label521;
      }
      if (k == 0)
      {
        n = 0;
        label215:
        n += m;
        localHashMap.put(Integer.valueOf(k), Integer.valueOf(n));
        localObject = Calendar.getInstance();
        m = Math.abs(com.xueqiu.android.base.util.h.a(((Calendar)localObject).get(1) + "-" + (((Calendar)localObject).get(2) + 1) + "-" + ((Calendar)localObject).get(5), localInvCalEventsPair.mDate.split(" ")[0], "yyyy-MM-dd"));
        if (k != 0) {
          break label376;
        }
        j = m;
        i = 0;
        m = n;
      }
    }
    for (;;)
    {
      k += 1;
      n = j;
      j = i;
      i = n;
      break label60;
      n = ((InvCalEventsPair)paramArrayList.get(k - 1)).mEventList.size() + 1;
      break label215;
      label376:
      if (i > m)
      {
        j = m;
        i = k;
        m = n;
        continue;
        this.al.notifyDataSetChanged();
        if ((i2 != this.ao) && ((this.aq == null) || (this.aq.getMonth() != this.ao))) {
          break;
        }
        if ((Integer)localHashMap.get(Integer.valueOf(j)) == null) {}
        for (i = i1;; i = ((Integer)localHashMap.get(Integer.valueOf(j))).intValue())
        {
          this.a.postDelayed(new Runnable()
          {
            public final void run()
            {
              Message localMessage = new Message();
              localMessage.arg1 = this.a;
              h.this.a.sendMessage(localMessage);
            }
          }, 200L);
          return;
        }
      }
      m = j;
      j = i;
      i = m;
      m = n;
      continue;
      label521:
      n = i;
      i = j;
      j = n;
    }
  }
  
  private void u()
  {
    if (!(g() instanceof StockDetailActivity))
    {
      localObject2 = a(2131165652);
      if (TextUtils.isEmpty(this.d))
      {
        localObject1 = localObject2;
        if (!this.f) {}
      }
      else
      {
        localObject1 = localObject2;
        if (!TextUtils.isEmpty(this.d)) {
          localObject1 = a(2131165286, new Object[] { this.d });
        }
      }
      a((CharSequence)localObject1);
    }
    Object localObject1 = (ImageButton)c(2131625528);
    Object localObject2 = (ImageButton)c(2131625530);
    ((ImageButton)localObject1).setOnClickListener(this.as);
    ((ImageButton)localObject2).setOnClickListener(this.as);
    if (this.al == null)
    {
      this.am = new ArrayList();
      localObject1 = new com.xueqiu.android.common.a.g(f(), this.am, 2130903468, new String[] { "cal_title_time" }, new int[] { 2131625531 });
      this.al = new com.xueqiu.android.common.a.p(f(), (Adapter)localObject1);
    }
    localObject1 = (SNBPullToRefreshListView)c(2131624301);
    ((SNBPullToRefreshListView)localObject1).b();
    this.g = new r((SNBPullToRefreshListView)localObject1, this);
    this.g.a(this.al);
    this.g.b(false);
    this.g.a(new AdapterView.OnItemClickListener()
    {
      public final void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
      {
        if ((!h.b(h.this)) && ((h.c(h.this) == null) || (h.c(h.this).size() <= 0)))
        {
          aa.a(h.this.a(2131166550));
          return;
        }
        paramAnonymousAdapterView = (InvestmentCalendarEvent)h.d(h.this).c.getItem(paramAnonymousInt - 1);
        paramAnonymousView = new Intent(h.this.f(), InvestmentCalEventAddActivity.class);
        paramAnonymousView.putExtra("investment_calendar_model", paramAnonymousAdapterView);
        if (h.b(h.this)) {
          if ((!TextUtils.isEmpty(h.e(h.this))) || (h.f(h.this) == null)) {
            break label199;
          }
        }
        label199:
        for (paramAnonymousAdapterView.mCalendar_title = h.f(h.this).mTitle;; paramAnonymousAdapterView.mCalendar_title = (h.e(h.this) + "大事件"))
        {
          if (!h.b(h.this)) {
            paramAnonymousView.putExtra("user_investment_cal_list", h.c(h.this));
          }
          paramAnonymousView.putExtra("sotkc_symbol_extra", h.e(h.this));
          paramAnonymousView.putExtra("extra_calendar_from_url", h.b(h.this));
          h.this.a(paramAnonymousView);
          return;
        }
      }
    });
    C();
    if (this.b)
    {
      localObject1 = (g)DefaultPrefs.getObject(PreferenceManager.getDefaultSharedPreferences(f()), "investment_calendar_data_cache_obj", g.class);
      if (localObject1 != null)
      {
        this.ao = ((g)localObject1).c;
        this.ak = ((g)localObject1).b;
        this.ap = ((g)localObject1).a;
        C();
        a(this.ap, false);
      }
    }
  }
  
  public final void C_()
  {
    if (g() != null) {
      u();
    }
  }
  
  public final View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    super.a(paramLayoutInflater, paramViewGroup, paramBundle);
    e_(true);
    return paramLayoutInflater.inflate(2130903467, paramViewGroup, false);
  }
  
  public final n<ArrayList<InvCalEventsPair>> a(com.xueqiu.android.base.b.p<ArrayList<InvCalEventsPair>> paramp)
  {
    ai localai = com.xueqiu.android.base.q.a().b();
    int i = com.xueqiu.android.base.util.h.a();
    Object localObject = Calendar.getInstance();
    ((Calendar)localObject).add(2, this.ao - i);
    i = ((Calendar)localObject).get(1);
    int j = ((Calendar)localObject).get(2) + 1;
    if (j > 9)
    {
      localObject = String.valueOf(j);
      j += 1;
      if (j <= 9) {
        break label189;
      }
    }
    label189:
    for (String str1 = String.valueOf(j);; str1 = "0" + j)
    {
      localObject = i + "-" + (String)localObject + "-01";
      str1 = i + "-" + str1 + "-01";
      String str2 = this.d;
      long l = this.e;
      return localai.j.a((String)localObject, str1, str2, l, paramp);
      localObject = "0" + j;
      break;
    }
  }
  
  public final void a(Bundle paramBundle)
  {
    super.a(paramBundle);
    this.c = g();
    this.c.registerReceiver(this.ar, new IntentFilter("com.xueqiu.android.DELETE_CALENDAR_EVENT_SUCCESS"));
    long l;
    if (this.r != null)
    {
      this.d = this.r.getString("sotkc_symbol_extra");
      this.e = this.r.getLong("extra_calendar_id", 0L);
      this.f = this.r.getBoolean("extra_calendar_from_url", false);
      l = this.r.getLong("extra_calendar_date", 0L);
      this.b = this.r.getBoolean("EXtra_is_mine");
    }
    for (;;)
    {
      if (l != 0L)
      {
        this.aq = new Date(l);
        this.ao = (this.aq.getMonth() + 1);
        return;
      }
      this.ao = com.xueqiu.android.base.util.h.a();
      return;
      l = 0L;
    }
  }
  
  public final void a(View paramView, Bundle paramBundle)
  {
    super.a(paramView, paramBundle);
    if (!(g() instanceof StockDetailActivity)) {
      u();
    }
  }
  
  public final void a(final ArrayList<InvCalEventsPair> paramArrayList, Throwable paramThrowable, boolean paramBoolean)
  {
    if (this.T == null) {}
    for (;;)
    {
      return;
      if (paramThrowable != null)
      {
        aa.a(paramThrowable);
        if (this.an == 1) {
          this.ao -= 1;
        }
        for (;;)
        {
          this.an = 3;
          return;
          if (this.an == 2) {
            this.ao += 1;
          }
        }
      }
      C();
      this.ap = paramArrayList;
      a(this.ap, paramBoolean);
      paramThrowable = com.xueqiu.android.base.q.a().b();
      if ((this.f) && (this.e > 0L))
      {
        paramArrayList = new com.xueqiu.android.base.b.p(this)
        {
          public final void a(y paramAnonymousy)
          {
            aa.a(paramAnonymousy);
          }
        };
        long l = this.e;
        paramThrowable.j.a(null, l, paramArrayList);
      }
      while ((this.f) && (this.e > 0L) && (this.h != null))
      {
        a(this.h.mTitle);
        return;
        if ((!this.f) && ((this.ak == null) || (this.ak.size() == 0)))
        {
          paramArrayList = new com.xueqiu.android.base.b.p(this)
          {
            public final void a(y paramAnonymousy)
            {
              aa.a(paramAnonymousy);
            }
          };
          paramThrowable.j.a(paramArrayList);
        }
      }
    }
  }
  
  public final n<ArrayList<InvCalEventsPair>> b(com.xueqiu.android.base.b.p<ArrayList<InvCalEventsPair>> paramp)
  {
    paramp.a(new ArrayList());
    return null;
  }
  
  public final void o()
  {
    super.o();
    if (this.g != null) {
      if (this.g.c.getCount() != 0) {
        break label35;
      }
    }
    label35:
    for (boolean bool = true;; bool = false)
    {
      this.g.a(bool);
      return;
    }
  }
  
  public final void q()
  {
    this.c.unregisterReceiver(this.ar);
    super.q();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\stock\h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
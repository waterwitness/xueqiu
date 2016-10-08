package com.xueqiu.android.cube.b;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.graphics.Color;
import android.os.Bundle;
import android.support.v4.a.k;
import android.text.Editable;
import android.text.InputFilter;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import com.android.volley.y;
import com.emilsjolander.components.stickylistheaders.StickyListHeadersListView;
import com.google.gson.JsonArray;
import com.xueqiu.android.base.b.ai;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.storage.prefs.UserLogonDataPrefs;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.base.util.as;
import com.xueqiu.android.base.util.au;
import com.xueqiu.android.base.util.aw;
import com.xueqiu.android.base.util.v;
import com.xueqiu.android.common.model.SNBEvent;
import com.xueqiu.android.cube.AddStockActivity;
import com.xueqiu.android.cube.CubeRbHistoryActivity;
import com.xueqiu.android.cube.RebalanceActivity;
import com.xueqiu.android.cube.model.Cube;
import com.xueqiu.android.cube.model.Holding;
import com.xueqiu.android.cube.model.Rebalancing;
import com.xueqiu.android.cube.model.Rebalancing.Category;
import com.xueqiu.android.cube.model.Rebalancing.Status;
import com.xueqiu.android.cube.model.SessionToken;
import com.xueqiu.android.stock.model.Stock;
import com.xueqiu.android.stock.model.StockStatus;
import com.xueqiu.android.trade.g;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import rx.c.b;

public final class h
  extends com.xueqiu.android.common.c
{
  public boolean a = false;
  private int aA = Color.parseColor("#44CC00");
  private int aB = Color.parseColor("#444444");
  private List<Holding> ak;
  private i al;
  private StickyListHeadersListView am;
  private View an;
  private TextView ao;
  private EditText ap;
  private TextView aq;
  private Button ar;
  private Button as;
  private TextView at;
  private TextView au;
  private View av;
  private Map<String, Double> aw = new HashMap();
  private int ax;
  private TextView ay;
  private Comparator<Holding> az = new Comparator() {};
  public Cube b;
  public com.xueqiu.android.cube.a.d c;
  public boolean d = false;
  private final int e = 1;
  private boolean f = true;
  private Double g;
  private String h;
  
  private void F()
  {
    x().i("/cubes/create", new p(this)
    {
      public final void a(y paramAnonymousy)
      {
        aa.a(paramAnonymousy);
      }
    });
  }
  
  private boolean G()
  {
    return (this.b.getLastSuccessRebalancing() != null) && ((this.b.getLastSuccessRebalancing().getCategory() == Rebalancing.Category.USER_VOL_RB) || (this.b.getLastSuccessRebalancing().getCategory() == Rebalancing.Category.SYS_VOL_RB) || (this.b.getLastSuccessRebalancing().getCategory() == Rebalancing.Category.VOL_RB));
  }
  
  private void H()
  {
    HashSet localHashSet = new HashSet();
    Iterator localIterator = this.c.a.iterator();
    while (localIterator.hasNext()) {
      localHashSet.add(((Holding)localIterator.next()).getStockSymbol());
    }
    if ((!this.f) && (this.b.isSellFlag()) && (!this.a) && (G()))
    {
      localIterator = this.b.getLastSuccessRebalancing().getHoldings().iterator();
      while (localIterator.hasNext()) {
        localHashSet.add(((Holding)localIterator.next()).getStockSymbol());
      }
    }
    x().a(Arrays.asList(localHashSet.toArray(new String[localHashSet.size()])), false, new p(this)
    {
      public final void a(y paramAnonymousy)
      {
        aa.a(paramAnonymousy);
      }
    });
  }
  
  private boolean I()
  {
    Iterator localIterator = this.c.a.iterator();
    while (localIterator.hasNext()) {
      if (((Holding)localIterator.next()).getWeight() == 0.0D) {
        return false;
      }
    }
    return true;
  }
  
  private void J()
  {
    int j = 0;
    Object localObject1;
    int i;
    if ((this.b != null) && (this.b.getLastRebalancing() != null))
    {
      localObject1 = new DecimalFormat("#.##");
      if (this.b.getLastRebalancing().getCash() != Double.valueOf(((DecimalFormat)localObject1).format(this.c.b())).doubleValue()) {
        i = 1;
      }
    }
    for (;;)
    {
      if (i == 0)
      {
        g().setResult(0);
        g().finish();
        return;
        localObject1 = new HashMap();
        localObject2 = this.b.getLastRebalancing().getHoldings().iterator();
        while (((Iterator)localObject2).hasNext())
        {
          localObject3 = (Holding)((Iterator)localObject2).next();
          ((Map)localObject1).put(Long.valueOf(((Holding)localObject3).getStockId()), Double.valueOf(((Holding)localObject3).getWeight()));
        }
        i = 0;
        for (;;)
        {
          if (i >= this.c.a.size()) {
            break label559;
          }
          localObject2 = (Holding)this.c.a.get(i);
          localObject3 = (Double)((Map)localObject1).get(Long.valueOf(((Holding)localObject2).getStockId()));
          if (this.c.b.containsKey(((Holding)localObject2).getStockSymbol())) {}
          for (d1 = ((Double)this.c.b.get(((Holding)localObject2).getStockSymbol())).doubleValue();; d1 = ((Holding)localObject2).getVolume())
          {
            if ((localObject3 != null) && (((Double)localObject3).doubleValue() == ((Holding)localObject2).getWeight()) && (Double.valueOf(d1).doubleValue() == ((Holding)localObject2).getVolume())) {
              break label310;
            }
            i = 1;
            break;
          }
          label310:
          i += 1;
        }
      }
      if ((this.c.e) && (this.c.a().doubleValue() > this.b.getInitialCapital().doubleValue()))
      {
        aa.a(2131166267);
        return;
      }
      y();
      if (this.c.e)
      {
        i = j;
        while (i < this.c.a.size())
        {
          localObject1 = (Holding)this.c.a.get(i);
          if (this.c.b.containsKey(((Holding)localObject1).getStockSymbol())) {
            ((Holding)localObject1).setVolume(((Double)this.c.b.get(((Holding)localObject1).getStockSymbol())).doubleValue());
          }
          i += 1;
        }
      }
      localObject1 = x();
      long l = this.b.getId();
      Object localObject2 = this.b.getSymbol();
      Object localObject3 = this.c.a;
      List localList = this.ak;
      double d1 = this.c.b();
      String str = this.ap.getText().toString();
      p local5 = new p(this)
      {
        public final void a(y paramAnonymousy)
        {
          aa.a(paramAnonymousy, true);
          h.this.z();
          h.p(h.this);
        }
      };
      ((ai)localObject1).l.a(l, (String)localObject2, (List)localObject3, localList, d1, str, local5);
      return;
      label559:
      i = 0;
    }
  }
  
  private void K()
  {
    y();
    ai localai = x();
    String str1 = this.r.getString("arg_name");
    String str2 = this.r.getString("arg_market");
    List localList = this.c.a;
    double d1 = this.c.b();
    String str3 = this.h;
    p local6 = new p(this)
    {
      public final void a(y paramAnonymousy)
      {
        aa.a(paramAnonymousy);
        h.n(h.this);
        h.this.z();
      }
    };
    localai.l.a(str1, "", str2, localList, d1, str3, local6);
  }
  
  private boolean L()
  {
    return (this.b == null) || ((this.b.getClosedAt() != null) && (!this.b.getClosedAt().equals(new Date(0L))));
  }
  
  public static h a(boolean paramBoolean1, boolean paramBoolean2, Cube paramCube)
  {
    h localh = new h();
    Bundle localBundle = new Bundle();
    localBundle.putBoolean("arg_is_create", paramBoolean2);
    localBundle.putBoolean("arg_readonly", paramBoolean1);
    if (!paramBoolean2)
    {
      localBundle.putParcelable("arg_cube", paramCube);
      localBundle.putString("arg_market", paramCube.getMarket());
    }
    localh.e(localBundle);
    return localh;
  }
  
  private void refresh()
  {
    this.aw.clear();
    if (this.b == null) {
      return;
    }
    Object localObject = this.b.getViewRebalancing().getHoldings().iterator();
    while (((Iterator)localObject).hasNext())
    {
      Holding localHolding = (Holding)((Iterator)localObject).next();
      String str = localHolding.getSegmentName();
      if (this.aw.containsKey(str))
      {
        Map localMap = this.aw;
        double d1 = ((Double)this.aw.get(str)).doubleValue();
        localMap.put(str, Double.valueOf(localHolding.getWeight() + d1));
      }
      else
      {
        this.aw.put(str, Double.valueOf(localHolding.getWeight()));
      }
    }
    Collections.sort(this.b.getViewRebalancing().getHoldings(), this.az);
    this.c.a = this.b.getViewRebalancing().getHoldings();
    this.c.notifyDataSetChanged();
    C();
    if (!this.a)
    {
      if (!this.b.isSellFlag()) {
        break label392;
      }
      this.ap.setHint(a(2131165595));
    }
    for (;;)
    {
      ((View)this.ap.getParent()).setVisibility(0);
      localObject = new com.xueqiu.android.base.util.u(200);
      this.ap.setFilters(new InputFilter[] { localObject });
      this.ap.addTextChangedListener(new TextWatcher()
      {
        public final void afterTextChanged(Editable paramAnonymousEditable)
        {
          h.h(h.this).setText(String.format("%d", new Object[] { Integer.valueOf(200 - aw.a(paramAnonymousEditable)) }));
        }
        
        public final void beforeTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
        
        public final void onTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
      });
      long l = this.b.getOwnerId();
      com.xueqiu.android.base.u.a();
      if ((l != UserLogonDataPrefs.getLogonUserId()) || (this.a) || (this.b.getViewRebalancing().getErrorMessage() == null) || (this.b.getViewRebalancing().getErrorMessage().length() <= 0) || (this.b.getViewRebalancing().getStatus() == Rebalancing.Status.SUCCESS)) {
        break;
      }
      this.au.setVisibility(0);
      this.au.setTextColor(h().getColor(2131558586));
      this.au.setText(this.b.getViewRebalancing().getErrorMessage());
      return;
      label392:
      this.ap.setHint(a(2131165594));
    }
  }
  
  public final void C()
  {
    double d1;
    if (this.ax == 2)
    {
      Object localObject = this.b.getViewRebalancing();
      if ((this.b != null) && (localObject != null) && (((Rebalancing)localObject).getCash() == 0.0D) && (((Rebalancing)localObject).getHoldings().size() == 0))
      {
        this.ay.setText("暂无资产");
        d1 = 0.0D;
        localObject = String.format("%.2f%%", new Object[] { Double.valueOf(au.a(d1, 3)) });
        this.at.setText((CharSequence)localObject);
        if (d1 > 0.0D) {
          break label154;
        }
      }
    }
    label154:
    for (float f1 = 0.0F;; f1 = (float)d1)
    {
      com.xueqiu.android.base.util.a.a(this.av, new com.xueqiu.android.common.widget.d(this.aA, this.aB, f1 / 100.0F));
      return;
      d1 = this.c.b();
      break;
      d1 = this.c.b();
      break;
    }
  }
  
  public final boolean D()
  {
    return !au.a(this.ap.getText().toString().trim());
  }
  
  public final boolean E()
  {
    if (this.ak.size() != this.c.a.size()) {
      return true;
    }
    HashMap localHashMap = new HashMap();
    Iterator localIterator = this.ak.iterator();
    Holding localHolding;
    while (localIterator.hasNext())
    {
      localHolding = (Holding)localIterator.next();
      localHashMap.put(localHolding.getStockSymbol(), Double.valueOf(localHolding.getWeight()));
    }
    localIterator = this.c.a.iterator();
    while (localIterator.hasNext())
    {
      localHolding = (Holding)localIterator.next();
      if (localHashMap.containsKey(localHolding.getStockSymbol())) {}
      for (double d1 = ((Double)localHashMap.get(localHolding.getStockSymbol())).doubleValue(); d1 != localHolding.getWeight(); d1 = 0.0D) {
        return true;
      }
    }
    return false;
  }
  
  public final void F_()
  {
    super.F_();
    this.al = null;
  }
  
  public final View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    int j = 0;
    e_(true);
    if (this.a)
    {
      w().b(2131165411);
      paramViewGroup = paramLayoutInflater.inflate(2130903349, paramViewGroup, false);
      this.am = ((StickyListHeadersListView)paramViewGroup.findViewById(2131624309));
      paramLayoutInflater = paramLayoutInflater.inflate(2130903309, this.am.getWrappedList(), false);
      this.ao = ((TextView)paramLayoutInflater.findViewById(2131625021));
      this.ap = ((EditText)paramLayoutInflater.findViewById(2131625022));
      this.aq = ((TextView)paramLayoutInflater.findViewById(2131625023));
      this.av = paramViewGroup.findViewById(2131625027);
      this.am.addHeaderView(paramLayoutInflater);
      this.at = ((TextView)paramViewGroup.findViewById(2131625029));
      if (this.ax == 2)
      {
        this.ay = ((TextView)paramViewGroup.findViewById(2131625028));
        this.ay.setText("现金等资产");
      }
      this.am.setAreHeadersSticky(false);
      this.an = paramLayoutInflater.findViewById(2131625024);
      this.ar = ((Button)paramLayoutInflater.findViewById(2131625025));
      if (this.f) {
        break label541;
      }
      this.an.setVisibility(8);
      this.ar.setVisibility(0);
      label229:
      this.ar.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          if (h.d(h.this) != null)
          {
            if (h.e(h.this) == 1)
            {
              paramAnonymousView = new Intent(h.this.f(), CubeRbHistoryActivity.class);
              paramAnonymousView.putExtra("extra_id", h.d(h.this).getId());
              paramAnonymousView.putExtra("extra_sell_flag", h.d(h.this).isSellFlag());
              h.this.a(paramAnonymousView);
              paramAnonymousView = new SNBEvent(1403, 1);
              paramAnonymousView.addProperty("symbol", h.d(h.this).getSymbol());
              com.xueqiu.android.base.i.a().a(paramAnonymousView);
            }
          }
          else {
            return;
          }
          paramAnonymousView = new Intent(h.this.f(), CubeRbHistoryActivity.class);
          paramAnonymousView.putExtra("extra_symbol", h.d(h.this).getSymbol());
          paramAnonymousView.putExtra("extra_page_type", 2);
          h.this.a(paramAnonymousView);
        }
      });
      this.au = ((TextView)paramLayoutInflater.findViewById(2131625020));
      this.as = ((Button)paramLayoutInflater.findViewById(2131625026));
      this.as.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          paramAnonymousView = h.this;
          Intent localIntent = new Intent(paramAnonymousView.f(), AddStockActivity.class);
          localIntent.putExtra("extra_market", paramAnonymousView.r.getString("arg_market"));
          if ((paramAnonymousView.c != null) && (paramAnonymousView.c.a != null))
          {
            ArrayList localArrayList = new ArrayList();
            Iterator localIterator = paramAnonymousView.c.a.iterator();
            while (localIterator.hasNext()) {
              localArrayList.add(((Holding)localIterator.next()).getStockSymbol());
            }
            localIntent.putStringArrayListExtra("extra_exclude_list", localArrayList);
          }
          paramAnonymousView.a(localIntent);
          if (h.f(h.this))
          {
            com.xueqiu.android.base.i.a().a(new SNBEvent(1409, 3));
            return;
          }
          com.xueqiu.android.base.i.a().a(new SNBEvent(1407, 1));
        }
      });
      this.c = new com.xueqiu.android.cube.a.d(f());
      this.c.d = this.a;
      if ((!this.f) && (this.b.getViewRebalancing() != null)) {
        refresh();
      }
      this.am.setAdapter(this.c);
      paramLayoutInflater = this.as;
      if ((this.a) && (!this.f)) {
        break label561;
      }
    }
    label541:
    label561:
    for (int i = 0;; i = 8)
    {
      paramLayoutInflater.setVisibility(i);
      if ((!this.a) && (!this.f)) {
        this.ar.setVisibility(8);
      }
      if ((!this.a) || (this.f)) {
        this.c.c = new com.xueqiu.android.cube.a.f()
        {
          public final void a()
          {
            h.b(h.this);
            h.c(h.this);
          }
          
          public final void a(Holding paramAnonymousHolding)
          {
            double d = h.g(h.this).b() + paramAnonymousHolding.getWeight();
            if (Math.abs(d) < 1.0D)
            {
              aa.a(2131166237);
              return;
            }
            f.a(paramAnonymousHolding, (int)Math.floor(d)).a(h.this.C, "RebalanceFragment");
          }
        };
      }
      u();
      C();
      if ((this.f) || (this.c.a == null) || (this.c.a.size() <= 0)) {
        break label607;
      }
      paramLayoutInflater = new String[this.c.a.size()];
      i = j;
      while (i < paramLayoutInflater.length)
      {
        paramLayoutInflater[i] = String.valueOf(((Holding)this.c.a.get(i)).getStockId());
        i += 1;
      }
      w().b(2131165914);
      break;
      this.an.setVisibility(0);
      this.ar.setVisibility(8);
      break label229;
    }
    Object localObject;
    if (this.ax == 1)
    {
      paramBundle = x();
      localObject = new p(this)
      {
        public final void a(y paramAnonymousy)
        {
          v.c("CreateCubeFragment", "getStockQuoteFlag failed.", paramAnonymousy);
        }
      };
      paramBundle.i.a(paramLayoutInflater, (p)localObject);
    }
    for (;;)
    {
      H();
      label607:
      return paramViewGroup;
      paramBundle = x();
      localObject = new p(this)
      {
        public final void a(y paramAnonymousy)
        {
          v.c("CreateCubeFragment", "getSpStockQuoteFlag failed.", paramAnonymousy);
        }
      };
      paramBundle.i.b(paramLayoutInflater, (p)localObject);
    }
  }
  
  public final void a(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.a(paramInt1, paramInt2, paramIntent);
    if ((paramInt2 == -1) && (paramInt1 == 1))
    {
      this.d = true;
      g().setResult(-1, paramIntent);
      g().finish();
    }
  }
  
  public final void a(Activity paramActivity)
  {
    super.a(paramActivity);
    try
    {
      this.al = ((i)paramActivity);
      return;
    }
    catch (ClassCastException localClassCastException)
    {
      throw new ClassCastException(paramActivity.toString() + " must implement OnFragmentInteractionListener");
    }
  }
  
  public final void a(Bundle paramBundle)
  {
    super.a(paramBundle);
    if (this.r != null)
    {
      this.f = this.r.getBoolean("arg_is_create");
      this.a = this.r.getBoolean("arg_readonly");
      this.ax = this.r.getInt("extra_page_type", 1);
      if (!this.f)
      {
        this.b = ((Cube)this.r.getParcelable("arg_cube"));
        this.ak = new ArrayList();
        if ((this.b.getViewRebalancing() != null) && (this.b.getViewRebalancing().getHoldings() != null))
        {
          paramBundle = this.b.getViewRebalancing().getHoldings().iterator();
          while (paramBundle.hasNext())
          {
            Holding localHolding = (Holding)paramBundle.next();
            localHolding.setProactive(false);
            this.ak.add(localHolding.copy());
          }
        }
        this.g = this.b.getInitialCapital();
      }
    }
    if (this.f) {
      F();
    }
    a(rx.a.b.a.b(f(), new IntentFilter("broadcast_stock")).c(new b() {}));
  }
  
  public final void a(Menu paramMenu, MenuInflater paramMenuInflater)
  {
    if (this.ax == 1)
    {
      if (this.a) {
        break label57;
      }
      if (!this.f) {
        break label41;
      }
      paramMenu = paramMenu.add(0, 2, 0, 2131165381);
      android.support.v4.view.ak.a(paramMenu, 2);
    }
    label41:
    label57:
    do
    {
      return;
      paramMenu = paramMenu.add(0, 3, 0, 2131165479);
      break;
      com.xueqiu.android.base.u.a();
      if ((UserLogonDataPrefs.getLogonUserId() == this.b.getOwnerId()) && (!L()))
      {
        android.support.v4.view.ak.a(paramMenu.add(0, 1, 0, 2131165914), 2);
        return;
      }
      com.xueqiu.android.base.u.a();
    } while ((UserLogonDataPrefs.getLogonUserId() == this.b.getOwnerId()) || (!as.b(this.b.getMarket())) || (L()));
    android.support.v4.view.ak.a(paramMenu.add(0, 4, 0, 2131165535), 2);
  }
  
  public final void a(Holding paramHolding, int paramInt)
  {
    Iterator localIterator = this.c.a.iterator();
    while (localIterator.hasNext())
    {
      Holding localHolding = (Holding)localIterator.next();
      if (paramHolding.getStockId() == localHolding.getStockId())
      {
        localHolding.setWeight(paramInt);
        C();
        this.c.notifyDataSetChanged();
      }
    }
  }
  
  public final boolean a(final MenuItem paramMenuItem)
  {
    if (paramMenuItem.getItemId() == 1)
    {
      a(com.xueqiu.android.base.util.q.a(f(), RebalanceActivity.class, "extra_cube", this.b), 1);
      return true;
    }
    if (paramMenuItem.getItemId() == 4)
    {
      if (this.b == null) {
        return false;
      }
      g.a(f(), this.b.getId(), this.b.getSymbol());
      com.xueqiu.android.base.i.a().a(new SNBEvent(1403, 2));
      return true;
    }
    if (!this.f)
    {
      if (!E())
      {
        aa.a(2131166266);
        return true;
      }
      if ((this.b.isSellFlag()) && (!D()))
      {
        aa.a(2131166252);
        return true;
      }
      if (this.b.isSellFlag())
      {
        if (this.ap.getText().toString().trim().length() > 10) {}
        for (i = 1; i == 0; i = 0)
        {
          aa.a(2131166254);
          return true;
        }
      }
    }
    if ((this.c.a == null) || (this.c.a.size() == 0))
    {
      aa.a(2131166260);
      return true;
    }
    Iterator localIterator = this.c.a.iterator();
    Object localObject;
    do
    {
      if (!localIterator.hasNext()) {
        break;
      }
      localObject = (Holding)localIterator.next();
      localObject = (Stock)this.c.g.get(String.valueOf(((Holding)localObject).getStockId()));
    } while ((localObject == null) || (((Stock)localObject).getFlag() == StockStatus.LISTED));
    for (int i = 0; i == 0; i = 1)
    {
      new AlertDialog.Builder(f()).setMessage(2131166285).setPositiveButton(2131165374, new DialogInterface.OnClickListener()
      {
        public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          if (h.k(h.this))
          {
            if (paramMenuItem.getItemId() == 3)
            {
              com.xueqiu.android.base.i.a().a(new SNBEvent(1407, 2));
              h.l(h.this);
              return;
            }
            if (paramMenuItem.getItemId() == 2)
            {
              com.xueqiu.android.base.i.a().a(new SNBEvent(1409, 4));
              if ((h.m(h.this) == null) || (h.m(h.this).trim().length() == 0))
              {
                h.n(h.this);
                aa.a(2131166268);
                return;
              }
              h.o(h.this);
              return;
            }
          }
          new AlertDialog.Builder(h.this.f()).setMessage(2131166241).setPositiveButton(2131165531, null).show();
        }
      }).setNegativeButton(2131166240, new DialogInterface.OnClickListener()
      {
        public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          com.xueqiu.android.base.i.a().a(new SNBEvent(1407, 3));
        }
      }).show();
      return true;
    }
    if (I())
    {
      if (paramMenuItem.getItemId() == 3)
      {
        J();
        return true;
      }
      if (paramMenuItem.getItemId() == 2)
      {
        if ((this.h == null) || (this.h.trim().length() == 0))
        {
          aa.a("请求token失败，请返回重新创建");
          return true;
        }
        com.xueqiu.android.base.i.a().a(new SNBEvent(1409, 4));
        K();
        return true;
      }
    }
    new AlertDialog.Builder(f()).setMessage(2131166241).setPositiveButton(2131165531, null).show();
    return false;
  }
  
  public final void u()
  {
    if (this.f)
    {
      if (this.c.a.size() > 0) {
        this.an.setVisibility(8);
      }
    }
    else {
      return;
    }
    this.an.setVisibility(0);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\cube\b\h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
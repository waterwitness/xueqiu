package com.xueqiu.android.trade.c;

import android.content.res.Configuration;
import android.content.res.Resources;
import android.media.AudioManager;
import android.media.SoundPool;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnFocusChangeListener;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.AnimationUtils;
import android.view.animation.BounceInterpolator;
import android.view.animation.TranslateAnimation;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.PopupWindow;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.xueqiu.android.base.h;
import com.xueqiu.android.base.storage.prefs.UserPrefs;
import com.xueqiu.android.base.util.as;
import com.xueqiu.android.base.util.au;
import com.xueqiu.android.base.util.j;
import com.xueqiu.android.base.v;
import com.xueqiu.android.common.model.SNBEvent;
import com.xueqiu.android.common.widget.g;
import com.xueqiu.android.common.widget.p;
import com.xueqiu.android.common.x;
import com.xueqiu.android.stock.model.StockQuote;
import com.xueqiu.android.trade.OrderFullActivity;
import com.xueqiu.android.trade.a;
import com.xueqiu.android.trade.b.c;
import com.xueqiu.android.trade.model.TradeAccount;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class e
  extends com.xueqiu.android.base.k<com.xueqiu.android.trade.b.b>
  implements c
{
  private TextView aA;
  private TextView aB;
  private TextView aC;
  private TextView aD;
  private RelativeLayout aE;
  private RelativeLayout aF;
  private TextView aG;
  private TextView aH;
  private TextView aI;
  private TextView aJ;
  private TextView aK;
  private TextView aL;
  private LinearLayout aM;
  private TextView aN;
  private TextView aO;
  private ImageView aP;
  private ImageView aQ;
  private RelativeLayout aR;
  private ImageView aS;
  private TextView aT;
  private ImageView aU;
  private View aV;
  private boolean aW = false;
  private p aX;
  private x aY;
  private x aZ;
  public a ak = null;
  public f al = null;
  public long am;
  public String an;
  View.OnClickListener ao = new View.OnClickListener()
  {
    public final void onClick(View paramAnonymousView)
    {
      switch (e.C(e.this))
      {
      default: 
      case 0: 
        do
        {
          return;
        } while ((!((com.xueqiu.android.trade.b.b)e.D(e.this)).a(true)) || (e.C(e.this) == 5));
        ((com.xueqiu.android.trade.b.b)e.E(e.this)).e();
        return;
      case 1: 
        ((com.xueqiu.android.trade.b.b)e.F(e.this)).j();
        return;
      case 3: 
        e.G(e.this);
        if (e.H(e.this) != null) {
          e.H(e.this).setVisibility(8);
        }
        paramAnonymousView = e.I(e.this);
        int i = -1;
        switch (paramAnonymousView.hashCode())
        {
        default: 
          switch (i)
          {
          }
          break;
        }
        for (;;)
        {
          e.K(e.this).findViewById(2131625200).setVisibility(0);
          return;
          if (!paramAnonymousView.equals("BUY")) {
            break;
          }
          i = 0;
          break;
          if (!paramAnonymousView.equals("SELL")) {
            break;
          }
          i = 1;
          break;
          if (!paramAnonymousView.equals("BUY_COVER")) {
            break;
          }
          i = 2;
          break;
          if (!paramAnonymousView.equals("SELL_SHORT")) {
            break;
          }
          i = 3;
          break;
          e.J(e.this).setText(e.this.h().getString(2131166428));
          continue;
          e.J(e.this).setText(e.this.h().getString(2131166431));
          continue;
          e.J(e.this).setText(e.this.h().getString(2131166426));
          continue;
          e.J(e.this).setText(e.this.h().getString(2131166432));
        }
      case 2: 
        ((com.xueqiu.android.trade.b.b)e.L(e.this)).h();
        return;
      }
      ((com.xueqiu.android.trade.b.b)e.M(e.this)).h();
    }
  };
  View.OnClickListener ap = new View.OnClickListener()
  {
    public final void onClick(View paramAnonymousView)
    {
      switch (e.C(e.this))
      {
      }
      do
      {
        return;
        ((com.xueqiu.android.trade.b.b)e.N(e.this)).j();
        return;
      } while ((!((com.xueqiu.android.trade.b.b)e.O(e.this)).a(true)) || (e.C(e.this) == 5));
      ((com.xueqiu.android.trade.b.b)e.P(e.this)).e();
    }
  };
  private LinearLayout aq;
  private LinearLayout ar;
  private EditText as;
  private EditText at;
  private LinearLayout au;
  private TextView av;
  private ImageButton aw;
  private ImageButton ax;
  private ImageButton ay;
  private ImageButton az;
  public String b = "BUY";
  private Animation ba;
  private int bb;
  private double bc;
  private double bd;
  private PopupWindow be;
  private com.xueqiu.android.common.widget.f bf;
  private Animation bg;
  private Animation bh;
  private boolean bi;
  private boolean bj;
  private View bk;
  private boolean bl;
  private View.OnClickListener bm = new View.OnClickListener()
  {
    public final void onClick(View paramAnonymousView)
    {
      if ((paramAnonymousView.getTag() instanceof String)) {
        e.a(e.this, (String)paramAnonymousView.getTag());
      }
      e.Q(e.this).dismiss();
    }
  };
  public TextView c;
  public TextView d;
  public TextView e;
  public TextView f;
  public TextView g;
  public TextView h;
  
  private void D()
  {
    this.aA.setSelected(false);
    this.aB.setSelected(false);
    this.aC.setSelected(false);
    this.aD.setSelected(false);
    if (this.a != null) {
      ((com.xueqiu.android.trade.b.b)this.a).i();
    }
  }
  
  private void E()
  {
    this.aq.setBackgroundDrawable(com.xueqiu.android.base.r.b(2130772013, g()));
    this.ar.setBackgroundDrawable(com.xueqiu.android.base.r.b(2130772013, g()));
    this.aA.setTextColor(h().getColor(2131558426));
    this.aB.setTextColor(h().getColor(2131558426));
    this.aC.setTextColor(h().getColor(2131558426));
    this.aD.setTextColor(h().getColor(2131558426));
    this.aA.setEnabled(true);
    this.aB.setEnabled(true);
    this.aC.setEnabled(true);
    this.aD.setEnabled(true);
    this.aA.setBackgroundDrawable(com.xueqiu.android.base.r.b(2130772015, g()));
    this.aB.setBackgroundDrawable(com.xueqiu.android.base.r.b(2130772015, g()));
    this.aC.setBackgroundDrawable(com.xueqiu.android.base.r.b(2130772015, g()));
    this.aD.setBackgroundDrawable(com.xueqiu.android.base.r.b(2130772015, g()));
    this.aw.setImageResource(2130838357);
    this.ax.setImageResource(2130838360);
    this.ay.setImageResource(2130838357);
    this.az.setImageResource(2130838360);
    if (this.bb != 1)
    {
      this.aJ.setText(h().getString(2131166428));
      this.bb = 0;
    }
    this.aJ.setVisibility(0);
    this.aE.setVisibility(0);
    this.aE.setBackgroundColor(h().getColor(2131558426));
    this.aR.setVisibility(8);
    this.aT.setText("");
    this.c.setTag("LMT");
  }
  
  private void F()
  {
    this.aq.setBackgroundDrawable(com.xueqiu.android.base.r.b(2130772014, g()));
    this.ar.setBackgroundDrawable(com.xueqiu.android.base.r.b(2130772014, g()));
    this.aA.setTextColor(h().getColor(2131558593));
    this.aB.setTextColor(h().getColor(2131558593));
    this.aC.setTextColor(h().getColor(2131558593));
    this.aD.setTextColor(h().getColor(2131558593));
    this.aA.setEnabled(true);
    this.aB.setEnabled(true);
    this.aC.setEnabled(true);
    this.aD.setEnabled(true);
    this.aA.setBackgroundDrawable(com.xueqiu.android.base.r.b(2130772015, g()));
    this.aB.setBackgroundDrawable(com.xueqiu.android.base.r.b(2130772015, g()));
    this.aC.setBackgroundDrawable(com.xueqiu.android.base.r.b(2130772015, g()));
    this.aD.setBackgroundDrawable(com.xueqiu.android.base.r.b(2130772015, g()));
    this.aw.setImageResource(2130838359);
    this.ax.setImageResource(2130838363);
    this.ay.setImageResource(2130838359);
    this.az.setImageResource(2130838363);
    if (this.bb != 1)
    {
      this.aJ.setText(h().getString(2131166431));
      this.bb = 0;
    }
    this.aJ.setVisibility(0);
    this.aE.setBackgroundColor(h().getColor(2131558593));
    this.aE.setVisibility(0);
    this.aR.setVisibility(8);
    this.aT.setText("");
    this.c.setTag("LMT");
  }
  
  private void G()
  {
    E();
    if (this.bb != 1)
    {
      this.aJ.setText(h().getString(2131166426));
      this.bb = 0;
    }
  }
  
  private void H()
  {
    F();
    this.aA.setTextColor(com.xueqiu.android.base.r.a(2130772039, g()));
    this.aB.setTextColor(com.xueqiu.android.base.r.a(2130772039, g()));
    this.aC.setTextColor(com.xueqiu.android.base.r.a(2130772039, g()));
    this.aD.setTextColor(com.xueqiu.android.base.r.a(2130772039, g()));
    this.aA.setEnabled(false);
    this.aB.setEnabled(false);
    this.aC.setEnabled(false);
    this.aD.setEnabled(false);
    if (this.bb != 1)
    {
      this.aJ.setText(h().getString(2131166432));
      this.bb = 0;
    }
  }
  
  private void I()
  {
    this.aV.findViewById(2131625193).setVisibility(0);
    this.aV.findViewById(2131625192).setVisibility(0);
    this.aV.findViewById(2131625194).setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        if ((e.i(e.this)) && (e.Z(e.this) != null))
        {
          e.this.f(true);
          com.xueqiu.android.base.i.a().a(new SNBEvent(1505, 8));
        }
      }
    });
    this.aV.findViewById(2131625200).setVisibility(0);
    this.aV.findViewById(2131625200).setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        if ((e.i(e.this)) && (e.Z(e.this) != null)) {
          e.Z(e.this);
        }
        ((com.xueqiu.android.trade.b.b)e.aa(e.this)).b(e.I(e.this));
        com.xueqiu.android.base.i.a().a(new SNBEvent(1505, 10));
      }
    });
  }
  
  private void J()
  {
    if (this.b != null)
    {
      if (this.b.equals("BUY"))
      {
        E();
        this.bj = true;
      }
      if (this.b.equals("SELL"))
      {
        F();
        this.bj = true;
      }
      if (this.b.equals("BUY_COVER"))
      {
        G();
        this.bj = true;
      }
      if (this.b.equals("SELL_SHORT"))
      {
        H();
        this.bj = false;
      }
    }
  }
  
  private void a(final EditText paramEditText)
  {
    paramEditText.addTextChangedListener(new TextWatcher()
    {
      public final void afterTextChanged(Editable paramAnonymousEditable)
      {
        if (e.an(e.this) == null) {}
        do
        {
          return;
          e.r(e.this);
          ((com.xueqiu.android.trade.b.b)e.ao(e.this)).c();
          if ((e.U(e.this).length() == 0) || (e.ac(e.this).length() == 0)) {
            e.al(e.this).setText("--");
          }
        } while (!e.this.j());
        if ((!e.this.h().getString(2131166301).equals(e.J(e.this).getText().toString())) && (!((com.xueqiu.android.trade.b.b)e.ap(e.this)).a(false)))
        {
          e.J(e.this).setAlpha(0.3F);
          return;
        }
        e.J(e.this).setAlpha(1.0F);
      }
      
      public final void beforeTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
      
      public final void onTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3)
      {
        if (e.ai(e.this) == null) {}
        do
        {
          return;
          if (paramEditText == e.U(e.this)) {
            e.aj(e.this).setText("仓位");
          }
          ((com.xueqiu.android.trade.b.b)e.ak(e.this)).c();
          if (paramAnonymousInt3 == 0) {
            e.al(e.this).setText("--");
          }
        } while (!e.this.j());
        if ((e.C(e.this) == 0) && (!((com.xueqiu.android.trade.b.b)e.am(e.this)).a(false)))
        {
          e.J(e.this).setAlpha(0.3F);
          return;
        }
        e.J(e.this).setAlpha(1.0F);
      }
    });
  }
  
  private void a(x paramx)
  {
    if (UserPrefs.getBoolean(g(), a(2131165680), false))
    {
      float f1 = paramx.a.getStreamVolume(3);
      paramx.b.play(paramx.c, f1, f1, 0, 0, 1.0F);
    }
  }
  
  private void a(boolean paramBoolean1, boolean paramBoolean2)
  {
    if ((this.aW) && (this.ak != null))
    {
      if (this.am != 0L)
      {
        SNBEvent localSNBEvent = new SNBEvent(1505, 5);
        localSNBEvent.addProperty("cost_time", String.valueOf(System.currentTimeMillis() - this.am));
        com.xueqiu.android.base.i.a().a(localSNBEvent);
        this.am = 0L;
      }
      this.ak.a(paramBoolean1, paramBoolean2);
    }
  }
  
  public static e g(Bundle paramBundle)
  {
    e locale = new e();
    locale.e(paramBundle);
    return locale;
  }
  
  public final void C()
  {
    if (this.a != null)
    {
      ((com.xueqiu.android.trade.b.b)this.a).d();
      ((com.xueqiu.android.trade.b.b)this.a).e(null);
    }
  }
  
  public final void G_()
  {
    this.aN.setText("暂无可用券商");
    this.aJ.setText(h().getString(2131166301));
    this.aJ.setAlpha(1.0F);
    this.bb = 1;
    this.aO.setVisibility(0);
    this.aQ.setVisibility(8);
  }
  
  public final void H_()
  {
    if (this.aW)
    {
      this.aR.setVisibility(0);
      this.aT.setText(h().getString(2131166389));
      this.aS.setBackgroundResource(2130838138);
      this.aS.startAnimation(this.ba);
    }
    for (;;)
    {
      this.bb = 5;
      return;
      y();
    }
  }
  
  public final void I_()
  {
    I();
    if ((this.aW) && (this.ak != null)) {
      this.ak.a();
    }
    com.xueqiu.android.base.i.a().a(new SNBEvent(1505, 0));
  }
  
  public final double J_()
  {
    return this.bc;
  }
  
  public final View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    this.aV = paramLayoutInflater.inflate(2130903364, paramViewGroup, false);
    this.aM = ((LinearLayout)this.aV.findViewById(2131625195));
    this.aP = ((ImageView)this.aV.findViewById(2131625196));
    this.aN = ((TextView)this.aV.findViewById(2131625197));
    this.aO = ((TextView)this.aV.findViewById(2131625199));
    this.aQ = ((ImageView)this.aV.findViewById(2131625198));
    this.d = ((TextView)this.aV.findViewById(2131625688));
    this.e = ((TextView)this.aV.findViewById(2131625690));
    this.f = ((TextView)this.aV.findViewById(2131625689));
    this.g = ((TextView)this.aV.findViewById(2131625692));
    this.h = ((TextView)this.aV.findViewById(2131625691));
    this.as = ((EditText)this.aV.findViewById(2131625697));
    this.at = ((EditText)this.aV.findViewById(2131625703));
    this.aq = ((LinearLayout)this.aV.findViewById(2131625694));
    this.ar = ((LinearLayout)this.aV.findViewById(2131625701));
    this.c = ((TextView)this.aV.findViewById(2131625696));
    this.au = ((LinearLayout)this.aV.findViewById(2131625695));
    this.aw = ((ImageButton)this.aV.findViewById(2131625698));
    this.ax = ((ImageButton)this.aV.findViewById(2131625699));
    this.av = ((TextView)this.aV.findViewById(2131625702));
    this.ay = ((ImageButton)this.aV.findViewById(2131625704));
    this.az = ((ImageButton)this.aV.findViewById(2131625705));
    this.aA = ((TextView)this.aV.findViewById(2131625707));
    this.aB = ((TextView)this.aV.findViewById(2131625708));
    this.aC = ((TextView)this.aV.findViewById(2131625709));
    this.aD = ((TextView)this.aV.findViewById(2131625710));
    this.aG = ((TextView)this.aV.findViewById(2131625714));
    this.aH = ((TextView)this.aV.findViewById(2131625720));
    this.aI = ((TextView)this.aV.findViewById(2131625721));
    this.aU = ((ImageView)this.aV.findViewById(2131625717));
    this.aK = ((TextView)this.aV.findViewById(2131625723));
    this.aL = ((TextView)this.aV.findViewById(2131625716));
    this.aE = ((RelativeLayout)this.aV.findViewById(2131625204));
    this.aF = ((RelativeLayout)this.aV.findViewById(2131625202));
    this.aE.setClickable(false);
    this.aJ = ((TextView)this.aV.findViewById(2131625205));
    this.aJ.setVisibility(0);
    this.aJ.setAlpha(0.3F);
    this.aR = ((RelativeLayout)this.aV.findViewById(2131625724));
    this.aS = ((ImageView)this.aV.findViewById(2131625725));
    this.aT = ((TextView)this.aV.findViewById(2131625726));
    J();
    if (this.aW) {
      I();
    }
    this.aX = new p(g(), 2);
    this.aX.i = new com.xueqiu.android.common.widget.q()
    {
      public final void a(boolean paramAnonymousBoolean)
      {
        if (paramAnonymousBoolean)
        {
          e.R(e.this);
          return;
        }
        e.S(e.this);
      }
    };
    this.d.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        ((com.xueqiu.android.trade.b.b)e.b(e.this)).d(String.valueOf(e.a(e.this)));
      }
    });
    this.e.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        ((com.xueqiu.android.trade.b.b)e.d(e.this)).d(String.valueOf(e.c(e.this).getText()));
      }
    });
    this.g.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        ((com.xueqiu.android.trade.b.b)e.f(e.this)).d(String.valueOf(e.e(e.this).getText()));
      }
    });
    this.au.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        e.a(e.this, e.g(e.this));
        e.a(e.this, paramAnonymousView);
      }
    });
    this.aw.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        ((com.xueqiu.android.trade.b.b)e.h(e.this)).c(2);
        if (e.i(e.this)) {
          com.xueqiu.android.base.i.a().a(new SNBEvent(1505, 6));
        }
        for (;;)
        {
          e.a(e.this, e.g(e.this));
          return;
          com.xueqiu.android.base.i.a().a(new SNBEvent(1517, 11));
        }
      }
    });
    this.ax.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        ((com.xueqiu.android.trade.b.b)e.j(e.this)).c(1);
        if (e.i(e.this)) {
          com.xueqiu.android.base.i.a().a(new SNBEvent(1505, 6));
        }
        for (;;)
        {
          e.a(e.this, e.g(e.this));
          return;
          com.xueqiu.android.base.i.a().a(new SNBEvent(1517, 11));
        }
      }
    });
    this.ay.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        ((com.xueqiu.android.trade.b.b)e.k(e.this)).b(2);
        if (e.i(e.this)) {
          com.xueqiu.android.base.i.a().a(new SNBEvent(1505, 7));
        }
        for (;;)
        {
          e.a(e.this, e.g(e.this));
          return;
          com.xueqiu.android.base.i.a().a(new SNBEvent(1517, 12));
        }
      }
    });
    this.az.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        ((com.xueqiu.android.trade.b.b)e.l(e.this)).b(1);
        if (e.i(e.this)) {
          com.xueqiu.android.base.i.a().a(new SNBEvent(1505, 7));
        }
        for (;;)
        {
          e.a(e.this, e.g(e.this));
          return;
          com.xueqiu.android.base.i.a().a(new SNBEvent(1517, 12));
        }
      }
    });
    if (this.aW) {
      this.aE.setOnClickListener(this.ao);
    }
    for (;;)
    {
      this.aF.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          ((com.xueqiu.android.trade.b.b)e.m(e.this)).k();
        }
      });
      this.aI.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          ((com.xueqiu.android.trade.b.b)e.n(e.this)).g();
        }
      });
      this.aM.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          ((com.xueqiu.android.trade.b.b)e.o(e.this)).f();
        }
      });
      this.aO.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          com.xueqiu.android.common.q.a(v.b("/broker/bind-list"), e.this.f());
        }
      });
      this.aU.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          e.p(e.this);
        }
      });
      this.aA.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          if (e.q(e.this))
          {
            e.r(e.this);
            ((com.xueqiu.android.trade.b.b)e.s(e.this)).a(1);
            e.t(e.this).setSelected(true);
          }
        }
      });
      this.aB.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          if (e.q(e.this))
          {
            e.r(e.this);
            ((com.xueqiu.android.trade.b.b)e.u(e.this)).a(2);
            e.v(e.this).setSelected(true);
          }
        }
      });
      this.aC.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          if (e.q(e.this))
          {
            e.r(e.this);
            ((com.xueqiu.android.trade.b.b)e.w(e.this)).a(3);
            e.x(e.this).setSelected(true);
          }
        }
      });
      this.aD.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          if (e.q(e.this))
          {
            e.r(e.this);
            ((com.xueqiu.android.trade.b.b)e.y(e.this)).a(4);
            e.z(e.this).setSelected(true);
          }
        }
      });
      this.at.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          e.A(e.this);
        }
      });
      this.as.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          e.B(e.this);
        }
      });
      a(this.as);
      a(this.at);
      if (!this.aW)
      {
        if (this.r.getString("arg_price") != null)
        {
          this.as.setText(this.r.getString("arg_price"));
          this.bl = true;
        }
        if (this.r.getString("arg_amount") != null) {
          this.at.setText(this.r.getString("arg_amount"));
        }
      }
      return this.aV;
      this.aE.setOnClickListener(this.ap);
    }
  }
  
  public final String a()
  {
    return this.as.getText().toString();
  }
  
  public final void a(double paramDouble, boolean paramBoolean)
  {
    if (paramBoolean) {
      ((TextView)this.aV.findViewById(2131625713)).setText("参考金额：");
    }
    for (;;)
    {
      this.aG.setText(au.b(paramDouble));
      return;
      ((TextView)this.aV.findViewById(2131625713)).setText("订单金额：");
    }
  }
  
  public final void a(int paramInt, String paramString)
  {
    Object localObject;
    if (this.aW)
    {
      this.aS.clearAnimation();
      this.bb = paramInt;
      localObject = AnimationUtils.loadAnimation(f(), 2130968608);
      ((Animation)localObject).setInterpolator(new BounceInterpolator());
      switch (paramInt)
      {
      }
      do
      {
        return;
        a(this.aZ);
        this.aF.setVisibility(0);
        this.aS.setBackgroundResource(2130838139);
        this.aS.startAnimation((Animation)localObject);
        this.aT.setText(h().getString(2131166388));
        this.aJ.setText(h().getString(2131166384));
        this.aV.findViewById(2131625200).setVisibility(4);
        return;
        this.aS.setBackgroundResource(2130838140);
        this.aS.startAnimation((Animation)localObject);
        this.aT.setText(h().getString(2131166391));
        this.aJ.setText(h().getString(2131166384));
        this.aV.findViewById(2131625200).setVisibility(4);
        return;
        this.aS.setBackgroundResource(2130838137);
        this.aS.startAnimation((Animation)localObject);
        if (TextUtils.isEmpty(paramString)) {
          this.aT.setText(h().getString(2131166163));
        }
        for (;;)
        {
          this.aJ.setText(h().getString(2131166385));
          this.aV.findViewById(2131625200).setVisibility(4);
          return;
          this.aT.setText(paramString);
        }
      } while (this.aR == null);
      this.aR.setVisibility(8);
      return;
    }
    this.bb = paramInt;
    z();
    switch (paramInt)
    {
    default: 
      return;
    case 2: 
      com.xueqiu.android.common.widget.f.a((com.xueqiu.android.common.b)g(), new g()
      {
        public final void a(com.xueqiu.android.common.widget.f paramAnonymousf, int paramAnonymousInt)
        {
          switch (paramAnonymousInt)
          {
          }
          do
          {
            return;
            ((com.xueqiu.android.trade.b.b)e.af(e.this)).k();
            return;
            ((com.xueqiu.android.trade.b.b)e.ag(e.this)).m();
          } while (!(e.this.g() instanceof OrderFullActivity));
          ((OrderFullActivity)e.this.g()).m();
        }
      }).a("委托单已提交").d("确定").c("分享").show();
      return;
    case 4: 
      if (paramString != null)
      {
        localObject = paramString;
        if (paramString.length() != 0) {}
      }
      else
      {
        localObject = h().getString(2131166163);
      }
      paramString = com.xueqiu.android.common.widget.f.a((com.xueqiu.android.common.b)g(), new g()
      {
        public final void a(com.xueqiu.android.common.widget.f paramAnonymousf, int paramAnonymousInt)
        {
          ((com.xueqiu.android.trade.b.b)e.ah(e.this)).m();
          if ((e.this.g() instanceof OrderFullActivity)) {
            ((OrderFullActivity)e.this.g()).m();
          }
        }
      }).a("委托单状态未知").b((String)localObject);
      paramString.g = 17;
      paramString.c("确定").show();
      return;
    }
    paramString = com.xueqiu.android.common.widget.f.a((com.xueqiu.android.common.b)g(), null).a("委托单提交失败").b(paramString);
    paramString.g = 17;
    paramString.c("确定").show();
  }
  
  public final void a(Bundle paramBundle)
  {
    super.a(paramBundle);
    this.an = this.r.getString("arg_symbol");
    this.aW = this.r.getBoolean("arg_is_lite");
    this.b = this.r.getString("arg_direction");
    this.aY = new x(g(), 2131099649);
    this.aZ = new x(g(), 2131099652);
    this.ba = AnimationUtils.loadAnimation(g(), 2130968593);
    this.ba.setRepeatCount(1);
  }
  
  public final void a(View paramView, Bundle paramBundle)
  {
    super.a(paramView, paramBundle);
    if (!this.aW)
    {
      paramView = (TradeAccount)this.r.getParcelable("arg_tradeaccount");
      ((com.xueqiu.android.trade.b.b)this.a).a(paramView);
      ((com.xueqiu.android.trade.b.b)this.a).a(this.b);
      if (paramView == null)
      {
        this.aJ.setText(h().getString(2131166301));
        this.aJ.setAlpha(1.0F);
        this.bb = 1;
      }
    }
    this.as.setOnFocusChangeListener(new View.OnFocusChangeListener()
    {
      public final void onFocusChange(View paramAnonymousView, boolean paramAnonymousBoolean)
      {
        if (paramAnonymousBoolean) {
          e.B(e.this);
        }
        e.a(e.ab(e.this), paramAnonymousBoolean);
        if (!"".equals(e.ac(e.this).getText().toString())) {
          ((com.xueqiu.android.trade.b.b)e.ad(e.this)).a(paramAnonymousBoolean, e.ac(e.this).getText().toString());
        }
      }
    });
    this.at.setOnFocusChangeListener(new View.OnFocusChangeListener()
    {
      public final void onFocusChange(View paramAnonymousView, boolean paramAnonymousBoolean)
      {
        if (paramAnonymousBoolean) {
          e.A(e.this);
        }
        e.a(e.ae(e.this), paramAnonymousBoolean);
      }
    });
  }
  
  public final void a(StockQuote paramStockQuote)
  {
    if (!j()) {
      return;
    }
    String str3;
    String str2;
    String str1;
    if (paramStockQuote.getPercentage() > 0.0D)
    {
      this.d.setTextColor(h().getColor(2131558626));
      this.bc = paramStockQuote.getCurrent();
      if (paramStockQuote.getTickSize() != 0.0D) {
        this.bd = paramStockQuote.getTickSize();
      }
      if (this.bd == 0.0D) {
        break label262;
      }
      str3 = as.a(this.bd, this.bc);
      str2 = as.a(this.bd, paramStockQuote.getRiseStop());
      str1 = as.a(this.bd, paramStockQuote.getFallStop());
      label105:
      if (paramStockQuote.getPercentage() <= 0.0D) {
        break label290;
      }
    }
    label262:
    label290:
    for (String str4 = "+" + new DecimalFormat("0.00").format(paramStockQuote.getPercentage());; str4 = new DecimalFormat("0.00").format(paramStockQuote.getPercentage()))
    {
      this.d.setText(a(2131166383, new Object[] { str3, str4 }));
      this.e.setText(String.valueOf(str2));
      this.g.setText(String.valueOf(str1));
      ((com.xueqiu.android.trade.b.b)this.a).a(paramStockQuote);
      return;
      if (paramStockQuote.getPercentage() < 0.0D)
      {
        this.d.setTextColor(h().getColor(2131558624));
        break;
      }
      this.d.setTextColor(com.xueqiu.android.base.r.a(2130772258, g()));
      break;
      str3 = String.valueOf(this.bc);
      str2 = String.valueOf(paramStockQuote.getRiseStop());
      str1 = String.valueOf(paramStockQuote.getFallStop());
      break label105;
    }
  }
  
  public final void a(TradeAccount paramTradeAccount)
  {
    if ((paramTradeAccount != null) && (paramTradeAccount.isFirstTrade()))
    {
      this.aV.findViewById(2131625716).setVisibility(0);
      this.aV.findViewById(2131625723).setVisibility(0);
      this.aV.findViewById(2131625715).setVisibility(0);
      this.aV.findViewById(2131625722).setVisibility(0);
      return;
    }
    this.aV.findViewById(2131625716).setVisibility(8);
    this.aV.findViewById(2131625723).setVisibility(8);
    this.aV.findViewById(2131625715).setVisibility(8);
    this.aV.findViewById(2131625722).setVisibility(8);
  }
  
  public final void a(Double paramDouble)
  {
    this.aK.setText(String.valueOf(paramDouble));
  }
  
  public final void a(String paramString)
  {
    if (TextUtils.equals(((com.xueqiu.android.trade.b.b)this.a).l(), "MKT")) {
      return;
    }
    if (this.bd != 0.0D) {
      this.as.setText(as.a(this.bd, j.b(paramString)));
    }
    for (;;)
    {
      this.as.setSelection(this.as.getText().length());
      return;
      this.as.setText(paramString);
    }
  }
  
  public final void a(String paramString1, String paramString2, String paramString3, int paramInt)
  {
    if ((paramString1 != null) || (paramString2 != null) || (paramString3 != null))
    {
      String str = "";
      if (paramString1 != null) {
        str = "" + paramString1;
      }
      paramString1 = str;
      if (paramString2 != null) {
        paramString1 = str + "(" + paramString2 + ")";
      }
      this.aN.setText(paramString1);
      if (paramString3 != null) {
        com.d.a.b.f.a().a(paramString3, this.aP);
      }
      this.aO.setVisibility(8);
      this.bb = 0;
      J();
    }
    while (paramInt > 1)
    {
      this.aQ.setVisibility(0);
      return;
      G_();
    }
    this.aQ.setVisibility(8);
  }
  
  public final void a(ArrayList<TradeAccount> paramArrayList)
  {
    int j = 0;
    if ((!this.aW) && ((g() instanceof OrderFullActivity)))
    {
      OrderFullActivity localOrderFullActivity = (OrderFullActivity)g();
      if (localOrderFullActivity.q == null) {}
      ArrayList localArrayList;
      for (int i = 0;; i = localOrderFullActivity.q.size())
      {
        localOrderFullActivity.q = paramArrayList;
        if (i != paramArrayList.size()) {
          localOrderFullActivity.j();
        }
        localArrayList = new ArrayList();
        paramArrayList = paramArrayList.iterator();
        while (paramArrayList.hasNext()) {
          localArrayList.add(((TradeAccount)paramArrayList.next()).getTid());
        }
      }
      paramArrayList = UserPrefs.getTradeAccountByStockBrokers(localArrayList);
      if (((localOrderFullActivity.r == null) || (paramArrayList != null)) && ((localOrderFullActivity.r != null) || (paramArrayList == null)))
      {
        i = j;
        if (paramArrayList != null)
        {
          i = j;
          if (TextUtils.equals(paramArrayList.getTid(), localOrderFullActivity.r.getTid())) {}
        }
      }
      else
      {
        i = 1;
      }
      if (i != 0)
      {
        localOrderFullActivity.r = paramArrayList;
        localOrderFullActivity.o();
      }
    }
  }
  
  public final void a(boolean paramBoolean)
  {
    if (this.bi)
    {
      if ((paramBoolean) && ("BUY".equals(this.b)))
      {
        this.aI.setVisibility(0);
        this.aH.setTextColor(h().getColor(2131558626));
      }
    }
    else {
      return;
    }
    this.aI.setVisibility(8);
    this.aH.setTextColor(h().getColor(2131558670));
  }
  
  public final void a_(int paramInt)
  {
    String str = this.b;
    int i = -1;
    switch (str.hashCode())
    {
    }
    for (;;)
    {
      switch (i)
      {
      default: 
        return;
        if (str.equals("BUY"))
        {
          i = 0;
          continue;
          if (str.equals("SELL"))
          {
            i = 1;
            continue;
            if (str.equals("BUY_COVER"))
            {
              i = 2;
              continue;
              if (str.equals("SELL_SHORT")) {
                i = 3;
              }
            }
          }
        }
        break;
      }
    }
    this.at.setHint("可买" + paramInt);
    return;
    this.at.setHint("可卖" + paramInt);
    return;
    if (paramInt != 0)
    {
      this.at.setHint("可补回" + paramInt);
      return;
    }
    this.at.setHint("有卖空持仓后方可补回");
    return;
    this.at.setHint("输入卖空数量");
  }
  
  public final void b(int paramInt)
  {
    if (1 == paramInt)
    {
      this.aA.setSelected(true);
      return;
    }
    if (2 == paramInt)
    {
      this.aB.setSelected(true);
      return;
    }
    if (3 == paramInt)
    {
      this.aC.setSelected(true);
      return;
    }
    if (4 == paramInt)
    {
      this.aD.setSelected(true);
      return;
    }
    D();
  }
  
  public final void b(StockQuote paramStockQuote)
  {
    if (!j()) {
      return;
    }
    this.an = paramStockQuote.getSymbol();
    if (!this.bl)
    {
      u();
      a(String.valueOf(paramStockQuote.getCurrent()));
    }
    this.bl = false;
    ((com.xueqiu.android.trade.b.b)this.a).e(paramStockQuote.getSymbol());
    ((com.xueqiu.android.trade.b.b)this.a).a(this.b);
    ((com.xueqiu.android.trade.b.b)this.a).d(paramStockQuote.getType());
  }
  
  public final void b(TradeAccount paramTradeAccount)
  {
    this.bk = g().getLayoutInflater().inflate(2130903582, null);
    TextView localTextView1 = (TextView)this.bk.findViewById(2131625837);
    localTextView1.setOnClickListener(this.bm);
    localTextView1.setTag("LMT");
    localTextView1.setText("限价");
    localTextView1 = (TextView)this.bk.findViewById(2131625838);
    localTextView1.setOnClickListener(this.bm);
    localTextView1.setTag("MKT");
    localTextView1.setText("市价");
    localTextView1 = (TextView)this.bk.findViewById(2131625839);
    localTextView1.setOnClickListener(this.bm);
    localTextView1.setTag("PRE_LMT");
    localTextView1.setText("盘前");
    TextView localTextView2 = (TextView)this.bk.findViewById(2131625840);
    localTextView2.setOnClickListener(this.bm);
    localTextView2.setTag("AFTER_LMT");
    localTextView2.setText("盘后");
    if (paramTradeAccount.isFirstTrade())
    {
      localTextView1.setVisibility(0);
      localTextView2.setVisibility(0);
      return;
    }
    localTextView1.setVisibility(8);
    localTextView2.setVisibility(8);
  }
  
  public final void b(Double paramDouble)
  {
    this.aL.setText(String.valueOf(paramDouble));
  }
  
  public final void b(String paramString)
  {
    this.at.setText(paramString);
    this.at.setSelection(this.at.getText().length());
  }
  
  public final void b(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      this.e.setVisibility(0);
      this.g.setVisibility(0);
      this.f.setVisibility(0);
      this.h.setVisibility(0);
      return;
    }
    this.e.setVisibility(8);
    this.g.setVisibility(8);
    this.f.setVisibility(8);
    this.h.setVisibility(8);
  }
  
  public final String c()
  {
    return this.at.getText().toString();
  }
  
  public final void c(String paramString)
  {
    this.aH.setText(paramString);
  }
  
  public final void c(boolean paramBoolean)
  {
    this.bi = paramBoolean;
    if (this.bi)
    {
      this.aV.findViewById(2131625719).setVisibility(0);
      this.aV.findViewById(2131625720).setVisibility(0);
      this.aV.findViewById(2131625717).setVisibility(0);
      return;
    }
    this.aV.findViewById(2131625719).setVisibility(8);
    this.aV.findViewById(2131625720).setVisibility(8);
    this.aV.findViewById(2131625721).setVisibility(8);
    this.aV.findViewById(2131625717).setVisibility(8);
  }
  
  public final void d(String paramString)
  {
    if (("LMT".equals(paramString)) && (!"LMT".equals(this.c.getTag())))
    {
      this.c.setTag("LMT");
      ((com.xueqiu.android.trade.b.b)this.a).c("LMT");
      this.c.setText("限价");
      this.as.setEnabled(true);
      this.as.setClickable(true);
      this.as.setSelection(this.as.getText().length());
    }
    do
    {
      return;
      if (("MKT".equals(paramString)) && (!"MKT".equals(this.c.getTag())))
      {
        this.c.setTag("MKT");
        ((com.xueqiu.android.trade.b.b)this.a).c("MKT");
        this.c.setText("市价");
        this.as.setText("市价");
        this.as.setEnabled(false);
        this.as.setClickable(false);
        this.as.clearFocus();
        return;
      }
      if (("AFTER_LMT".equals(paramString)) && (!"AFTER_LMT".equals(this.c.getTag())))
      {
        this.c.setTag("AFTER_LMT");
        ((com.xueqiu.android.trade.b.b)this.a).c("AFTER_LMT");
        this.c.setText("盘后");
        this.as.setEnabled(true);
        this.as.setClickable(true);
        this.as.setSelection(this.as.getText().length());
        return;
      }
    } while ((!"PRE_LMT".equals(paramString)) || ("PRE_LMT".equals(this.c.getTag())));
    this.c.setTag("PRE_LMT");
    ((com.xueqiu.android.trade.b.b)this.a).c("PRE_LMT");
    this.c.setText("盘前");
    this.as.setEnabled(true);
    this.as.setClickable(true);
    this.as.setSelection(this.as.getText().length());
  }
  
  public final void d_(boolean paramBoolean)
  {
    this.bj = paramBoolean;
    D();
    if (this.bj)
    {
      if ((this.b.equals("BUY")) || (this.b.equals("BUY_COVER")))
      {
        this.aA.setTextColor(h().getColor(2131558426));
        this.aB.setTextColor(h().getColor(2131558426));
        this.aC.setTextColor(h().getColor(2131558426));
        this.aD.setTextColor(h().getColor(2131558426));
      }
      for (;;)
      {
        this.aA.setEnabled(true);
        this.aB.setEnabled(true);
        this.aC.setEnabled(true);
        this.aD.setEnabled(true);
        return;
        this.aA.setTextColor(h().getColor(2131558593));
        this.aB.setTextColor(h().getColor(2131558593));
        this.aC.setTextColor(h().getColor(2131558593));
        this.aD.setTextColor(h().getColor(2131558593));
      }
    }
    this.aA.setTextColor(com.xueqiu.android.base.r.a(2130772039, g()));
    this.aB.setTextColor(com.xueqiu.android.base.r.a(2130772039, g()));
    this.aC.setTextColor(com.xueqiu.android.base.r.a(2130772039, g()));
    this.aD.setTextColor(com.xueqiu.android.base.r.a(2130772039, g()));
    this.aA.setEnabled(false);
    this.aB.setEnabled(false);
    this.aC.setEnabled(false);
    this.aD.setEnabled(false);
  }
  
  public final void e(String paramString)
  {
    if ("BUY".equals(paramString)) {
      E();
    }
    for (;;)
    {
      u();
      return;
      if ("SELL".equals(paramString)) {
        F();
      } else if ("BUY_COVER".equals(paramString)) {
        G();
      } else if ("SELL_SHORT".equals(paramString)) {
        H();
      }
    }
  }
  
  public final void f(String paramString)
  {
    if (!j()) {
      return;
    }
    this.b = paramString;
    String str = c();
    e(paramString);
    if (this.b.equals("SELL_SHORT")) {}
    for (this.bj = false;; this.bj = true)
    {
      b(str);
      if (this.c.getTag() != null) {
        ((com.xueqiu.android.trade.b.b)this.a).c((String)this.c.getTag());
      }
      ((com.xueqiu.android.trade.b.b)this.a).a(paramString);
      return;
    }
  }
  
  public final void f(boolean paramBoolean)
  {
    if (this.be != null) {
      this.be.dismiss();
    }
    if (this.aX != null)
    {
      this.aX.b();
      if (this.bb == 2) {
        a(true, paramBoolean);
      }
    }
    else
    {
      return;
    }
    a(false, paramBoolean);
  }
  
  public final void o()
  {
    super.o();
    if ((this.a != null) && (((com.xueqiu.android.trade.b.b)this.a).n()) && (!this.aW))
    {
      this.bb = 1;
      return;
    }
    this.bb = 0;
  }
  
  public final void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    if (paramConfiguration.orientation == 2) {
      f(false);
    }
  }
  
  public final void p()
  {
    super.p();
    f(false);
  }
  
  public final void refresh()
  {
    String str = a();
    u();
    a(str);
    C();
    ((com.xueqiu.android.trade.b.b)this.a).e(this.an);
    if (this.c.getTag() != null) {
      ((com.xueqiu.android.trade.b.b)this.a).c((String)this.c.getTag());
    }
    ((com.xueqiu.android.trade.b.b)this.a).a(this.b);
  }
  
  public final void u()
  {
    this.at.setText("");
    this.at.setHint("输入数量");
    this.av.setText("仓位");
    this.c.setText("限价");
    this.c.setTag("LMT");
    this.as.setText("");
    this.as.setEnabled(true);
    this.aG.setText("--");
    this.aH.setText("--");
    this.aH.setTextColor(h().getColor(2131558670));
    this.aI.setVisibility(8);
    this.aK.setText("--");
    this.aL.setText("--");
    this.aF.setVisibility(8);
    D();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\trade\c\e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
package com.xueqiu.android.cube;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Color;
import android.os.Bundle;
import android.text.Editable;
import android.text.SpannableStringBuilder;
import android.text.TextWatcher;
import android.text.style.ForegroundColorSpan;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup.LayoutParams;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.android.volley.j;
import com.android.volley.y;
import com.google.gson.JsonArray;
import com.google.gson.reflect.TypeToken;
import com.xueqiu.android.base.b.ai;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.h;
import com.xueqiu.android.base.i;
import com.xueqiu.android.base.r;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.base.util.ay;
import com.xueqiu.android.base.v;
import com.xueqiu.android.common.model.SNBEvent;
import com.xueqiu.android.cube.model.Cube;
import com.xueqiu.android.trade.d;
import com.xueqiu.android.trade.model.TradeAccount;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;

public class CubeFlyOrderActivity
  extends com.xueqiu.android.common.b
{
  private long A;
  private String B;
  private Cube C;
  private List<f> D = null;
  private ArrayList<Boolean> E = new ArrayList();
  private int F = 0;
  private int G = 0;
  private boolean H = true;
  private boolean I = false;
  private boolean J = false;
  private String K = "";
  private TradeAccount L = null;
  private boolean M = false;
  private View.OnClickListener N = new View.OnClickListener()
  {
    public final void onClick(View paramAnonymousView)
    {
      if (CubeFlyOrderActivity.a(CubeFlyOrderActivity.this))
      {
        aa.a(2131166249);
        return;
      }
      Object localObject2 = null;
      Object localObject1 = localObject2;
      switch (paramAnonymousView.getId())
      {
      default: 
        localObject1 = localObject2;
      }
      while (localObject1 != null)
      {
        ((SNBEvent)localObject1).addProperty("symbol", CubeFlyOrderActivity.l(CubeFlyOrderActivity.this));
        i.a().a((SNBEvent)localObject1);
        return;
        if (CubeFlyOrderActivity.b(CubeFlyOrderActivity.this)) {
          CubeFlyOrderActivity.a(CubeFlyOrderActivity.this, false);
        }
        for (;;)
        {
          localObject1 = new SNBEvent(1402, 1);
          CubeFlyOrderActivity.c(CubeFlyOrderActivity.this);
          CubeFlyOrderActivity.d(CubeFlyOrderActivity.this);
          break;
          CubeFlyOrderActivity.a(CubeFlyOrderActivity.this, true);
          com.xueqiu.android.base.util.b.a(CubeFlyOrderActivity.this, 2131166457);
        }
        CubeFlyOrderActivity.a(CubeFlyOrderActivity.e(CubeFlyOrderActivity.this), true, false);
        CubeFlyOrderActivity.a(CubeFlyOrderActivity.f(CubeFlyOrderActivity.this), false, true);
        CubeFlyOrderActivity.b(CubeFlyOrderActivity.this, false);
        CubeFlyOrderActivity.g(CubeFlyOrderActivity.this);
        CubeFlyOrderActivity.d(CubeFlyOrderActivity.this);
        localObject1 = new SNBEvent(1402, 3);
        continue;
        CubeFlyOrderActivity.a(CubeFlyOrderActivity.f(CubeFlyOrderActivity.this), true, true);
        CubeFlyOrderActivity.a(CubeFlyOrderActivity.e(CubeFlyOrderActivity.this), false, false);
        CubeFlyOrderActivity.b(CubeFlyOrderActivity.this, true);
        CubeFlyOrderActivity.g(CubeFlyOrderActivity.this);
        CubeFlyOrderActivity.d(CubeFlyOrderActivity.this);
        localObject1 = new SNBEvent(1402, 2);
        continue;
        com.xueqiu.android.common.q.a(v.b("/law/cube-order"), CubeFlyOrderActivity.this);
        localObject1 = localObject2;
        continue;
        CubeFlyOrderActivity.c(CubeFlyOrderActivity.this, true);
        CubeFlyOrderActivity.h(CubeFlyOrderActivity.this);
        localObject1 = localObject2;
        continue;
        CubeFlyOrderActivity.i(CubeFlyOrderActivity.this);
        localObject1 = localObject2;
        continue;
        CubeFlyOrderActivity.j(CubeFlyOrderActivity.this);
        localObject1 = localObject2;
        continue;
        CubeFlyOrderActivity.k(CubeFlyOrderActivity.this);
        localObject1 = localObject2;
      }
    }
  };
  private TextView j;
  private TextView k;
  private TextView p;
  private LinearLayout q;
  private Button r;
  private Button s;
  private ImageView t;
  private TextView u;
  private RelativeLayout v;
  private TextView w;
  private TextView x;
  private TextView y;
  private Button z;
  
  private static double a(long paramLong, double paramDouble)
  {
    paramDouble = paramLong * 3.0E-4D * paramDouble;
    if (paramDouble > 5.0D) {
      return paramDouble;
    }
    return 5.0D;
  }
  
  private static ArrayList<e> a(List<f> paramList, String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      f localf = (f)paramList.next();
      e locale = new e();
      locale.sname = localf.stockName;
      locale.action = localf.action;
      locale.scode = localf.stockSymbol;
      locale.price = String.valueOf(localf.price);
      locale.amount = String.valueOf(localf.volume);
      locale.otype = paramString;
      localArrayList.add(locale);
    }
    return localArrayList;
  }
  
  private void a(double paramDouble)
  {
    ai localai = com.xueqiu.android.base.q.a().b();
    long l = this.A;
    String str = this.B;
    p local12 = new p(this)
    {
      public final void a(y paramAnonymousy) {}
    };
    localai.l.a(l, str, paramDouble, local12);
  }
  
  private void a(String paramString, TradeAccount paramTradeAccount)
  {
    com.xueqiu.android.trade.c.a(paramString, paramTradeAccount, this, new d()
    {
      public final void a()
      {
        CubeFlyOrderActivity.d(CubeFlyOrderActivity.this, true);
      }
      
      public final void b() {}
    }).a();
  }
  
  private CharSequence b(int paramInt1, int paramInt2)
  {
    SpannableStringBuilder localSpannableStringBuilder = new SpannableStringBuilder();
    if (this.H) {
      localSpannableStringBuilder.append("市价买入");
    }
    for (;;)
    {
      ForegroundColorSpan localForegroundColorSpan = new ForegroundColorSpan(Color.parseColor("#ff7700"));
      int i = localSpannableStringBuilder.length();
      localSpannableStringBuilder.append(String.valueOf(paramInt2));
      localSpannableStringBuilder.setSpan(localForegroundColorSpan, i, localSpannableStringBuilder.length(), 17);
      localSpannableStringBuilder.append("只股票");
      if (paramInt1 > paramInt2) {
        localSpannableStringBuilder.append("，忽略").append(String.valueOf(paramInt1 - paramInt2)).append("只");
      }
      return localSpannableStringBuilder;
      localSpannableStringBuilder.append("限价买入");
    }
  }
  
  private void j()
  {
    if ((this.D == null) || (this.D.size() <= 0)) {
      return;
    }
    if (!this.I)
    {
      this.q.setVisibility(8);
      return;
    }
    this.q.setVisibility(0);
    this.q.removeAllViews();
    final int i = 0;
    if (i < this.D.size())
    {
      localObject1 = (f)this.D.get(i);
      if ((((f)localObject1).volume > 0L) || (this.J))
      {
        localObject2 = View.inflate(this, 2130903303, null);
        ((TextView)((View)localObject2).findViewById(2131624991)).setText(((f)localObject1).stockName);
        localObject3 = (EditText)((View)localObject2).findViewById(2131624994);
        if (!this.H) {
          break label333;
        }
        ((EditText)localObject3).setVisibility(8);
        ((View)localObject2).findViewById(2131624995).setVisibility(0);
        label161:
        localObject3 = (ImageView)((View)localObject2).findViewById(2131624990);
        if (!((Boolean)this.E.get(i)).booleanValue()) {
          break label378;
        }
        ((ImageView)localObject3).setImageResource(2130838067);
      }
      for (;;)
      {
        ((ImageView)localObject3).setOnClickListener(new View.OnClickListener()
        {
          public final void onClick(View paramAnonymousView)
          {
            if (((Boolean)CubeFlyOrderActivity.o(CubeFlyOrderActivity.this).get(i)).booleanValue())
            {
              CubeFlyOrderActivity.o(CubeFlyOrderActivity.this).set(i, Boolean.valueOf(false));
              CubeFlyOrderActivity.p(CubeFlyOrderActivity.this);
            }
            for (;;)
            {
              CubeFlyOrderActivity.d(CubeFlyOrderActivity.this);
              return;
              CubeFlyOrderActivity.o(CubeFlyOrderActivity.this).set(i, Boolean.valueOf(true));
              CubeFlyOrderActivity.q(CubeFlyOrderActivity.this);
            }
          }
        });
        localObject3 = (EditText)((View)localObject2).findViewById(2131624993);
        ((EditText)localObject3).addTextChangedListener(new TextWatcher()
        {
          public final void afterTextChanged(Editable paramAnonymousEditable)
          {
            if (paramAnonymousEditable.length() > 0) {}
            for (((f)CubeFlyOrderActivity.n(CubeFlyOrderActivity.this).get(i)).volume = Long.parseLong(paramAnonymousEditable.toString().trim());; ((f)CubeFlyOrderActivity.n(CubeFlyOrderActivity.this).get(i)).volume = 0L)
            {
              CubeFlyOrderActivity.g(CubeFlyOrderActivity.this);
              return;
            }
          }
          
          public final void beforeTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
          
          public final void onTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
        });
        ((EditText)localObject3).setText(String.valueOf(((f)localObject1).volume));
        this.q.addView((View)localObject2);
        localObject1 = this.q;
        localObject2 = new View(this);
        localObject3 = new LinearLayout.LayoutParams(-1, 1);
        ((LinearLayout.LayoutParams)localObject3).setMargins((int)ay.a(this, 12.0F), 0, 0, 0);
        ((LinearLayout.LayoutParams)localObject3).gravity = 16;
        ((View)localObject2).setLayoutParams((ViewGroup.LayoutParams)localObject3);
        ((View)localObject2).setBackgroundColor(getResources().getColor(2131558436));
        ((LinearLayout)localObject1).addView((View)localObject2);
        i += 1;
        break;
        label333:
        ((EditText)localObject3).setVisibility(0);
        ((EditText)localObject3).setText(String.valueOf(((f)localObject1).price));
        ((EditText)localObject3).addTextChangedListener(new TextWatcher()
        {
          public final void afterTextChanged(Editable paramAnonymousEditable)
          {
            if (paramAnonymousEditable.length() > 0) {}
            for (((f)CubeFlyOrderActivity.n(CubeFlyOrderActivity.this).get(i)).price = Double.valueOf(paramAnonymousEditable.toString().trim()).doubleValue();; ((f)CubeFlyOrderActivity.n(CubeFlyOrderActivity.this).get(i)).price = 0.0D)
            {
              CubeFlyOrderActivity.g(CubeFlyOrderActivity.this);
              return;
            }
          }
          
          public final void beforeTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
          
          public final void onTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
        });
        ((View)localObject2).findViewById(2131624995).setVisibility(8);
        break label161;
        label378:
        ((ImageView)localObject3).setImageResource(2130838066);
      }
    }
    if ((this.G == this.F) || (this.J))
    {
      this.q.removeViewAt(this.q.getChildCount() - 1);
      return;
    }
    Object localObject1 = new TextView(this);
    Object localObject2 = new LinearLayout.LayoutParams(-1, (int)ay.a(this, 36.0F));
    ((LinearLayout.LayoutParams)localObject2).gravity = 17;
    Object localObject3 = String.format("查看已忽略的%d只小仓位股票", new Object[] { Integer.valueOf(this.F - this.G) });
    ((TextView)localObject1).setLayoutParams((ViewGroup.LayoutParams)localObject2);
    ((TextView)localObject1).setBackgroundResource(2130837744);
    ((TextView)localObject1).setText((CharSequence)localObject3);
    ((TextView)localObject1).setTextColor(r.a(2131558672));
    ((TextView)localObject1).setGravity(17);
    ((TextView)localObject1).setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        CubeFlyOrderActivity.r(CubeFlyOrderActivity.this);
        CubeFlyOrderActivity.d(CubeFlyOrderActivity.this);
      }
    });
    this.q.addView((View)localObject1);
  }
  
  private void k()
  {
    this.M = false;
    com.xueqiu.android.common.q.a(v.b("/broker/bind-list"), this);
  }
  
  public void onBackPressed()
  {
    super.onBackPressed();
    i.a().a(new SNBEvent(1402, 8));
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903283);
    setTitle(getString(2131165418));
    this.j = ((TextView)findViewById(2131624851));
    this.k = ((TextView)findViewById(2131624853));
    this.p = ((TextView)findViewById(2131624855));
    this.q = ((LinearLayout)findViewById(2131624856));
    this.r = ((Button)findViewById(2131624858));
    this.s = ((Button)findViewById(2131624857));
    this.t = ((ImageView)findViewById(2131624861));
    this.u = ((TextView)findViewById(2131624860));
    this.v = ((RelativeLayout)findViewById(2131624862));
    this.w = ((TextView)findViewById(2131624864));
    this.x = ((TextView)findViewById(2131624865));
    this.y = ((TextView)findViewById(2131624866));
    paramBundle = this.y;
    SpannableStringBuilder localSpannableStringBuilder = new SpannableStringBuilder();
    localSpannableStringBuilder.append("点击购买按钮即表示同意");
    ForegroundColorSpan localForegroundColorSpan = new ForegroundColorSpan(Color.parseColor("#416cb2"));
    int i = localSpannableStringBuilder.length();
    localSpannableStringBuilder.append("《投资组合下单免责条款》");
    localSpannableStringBuilder.setSpan(localForegroundColorSpan, i, localSpannableStringBuilder.length(), 17);
    paramBundle.setText(localSpannableStringBuilder);
    this.z = ((Button)findViewById(2131624867));
    this.A = getIntent().getLongExtra("take_order_id", 0L);
    this.B = getIntent().getStringExtra("take_order_name");
    if ((this.A <= 0L) && (this.B == null))
    {
      finish();
      return;
    }
    this.p.setOnClickListener(this.N);
    this.r.setOnClickListener(this.N);
    this.s.setOnClickListener(this.N);
    this.z.setOnClickListener(this.N);
    this.y.setOnClickListener(this.N);
    this.v.setOnClickListener(this.N);
    findViewById(2131624850).setOnClickListener(this.N);
    com.xueqiu.android.base.q.a().b().c(this.A, this.B, new p(this)
    {
      public final void a(y paramAnonymousy) {}
    });
    a(0.0D);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\cube\CubeFlyOrderActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
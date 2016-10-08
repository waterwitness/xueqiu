package com.xueqiu.android.trade.c;

import android.app.Dialog;
import android.os.Bundle;
import android.text.Editable;
import android.text.InputFilter;
import android.text.InputFilter.LengthFilter;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.TranslateAnimation;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;
import com.android.volley.y;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.xueqiu.android.base.b.ai;
import com.xueqiu.android.base.storage.prefs.UserPrefs;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.base.util.ay;
import com.xueqiu.android.common.widget.g;
import com.xueqiu.android.common.widget.r;
import com.xueqiu.android.trade.e;
import com.xueqiu.android.trade.model.TradeAccount;
import com.xueqiu.android.trade.model.TradeBroker;
import com.xueqiu.android.trade.model.TradeBroker.OauthConfig;
import com.xueqiu.android.trade.model.TradeTokenExpiresTime;
import java.util.ArrayList;

public final class b
  extends com.xueqiu.android.common.widget.f
{
  private static long o = 0L;
  private TextView A;
  private LinearLayout B;
  private ImageView C;
  private Dialog D = null;
  com.xueqiu.android.common.b h;
  public d i = null;
  public c j = null;
  com.xueqiu.android.common.widget.p k;
  TradeAccount l;
  public ArrayList<TradeAccount> m;
  com.xueqiu.android.trade.view.a n;
  private boolean p = true;
  private EditText q;
  private EditText r;
  private ImageView s;
  private View t;
  private TextView u;
  private String v;
  private ai w;
  private e x = null;
  private int y;
  private ImageView z;
  
  private b(com.xueqiu.android.common.b paramb, Bundle paramBundle)
  {
    super(paramb);
    this.h = paramb;
    this.l = ((TradeAccount)paramBundle.getParcelable("arg_broker"));
    if (this.l == null) {
      return;
    }
    int i1;
    if ("DYZQ".equals(this.l.getTid()))
    {
      this.y = 2;
      this.w = com.xueqiu.android.base.q.a().b();
      this.p = paramBundle.getBoolean("arg_need_verify_code");
      paramBundle = this.h.getLayoutInflater().inflate(2130903525, null);
      paramb = new RelativeLayout.LayoutParams(-1, -2);
      paramb.bottomMargin = ((int)ay.a(16.0F));
      paramb.topMargin = ((int)ay.a(12.0F));
      paramb.leftMargin = ((int)ay.a(20.0F));
      paramb.rightMargin = ((int)ay.a(20.0F));
      paramBundle.setLayoutParams(paramb);
      this.z = ((ImageView)paramBundle.findViewById(2131625196));
      this.A = ((TextView)paramBundle.findViewById(2131625197));
      this.B = ((LinearLayout)paramBundle.findViewById(2131625195));
      this.C = ((ImageView)paramBundle.findViewById(2131625198));
      this.q = ((EditText)paramBundle.findViewById(2131625261));
      this.r = ((EditText)paramBundle.findViewById(2131624177));
      this.s = ((ImageView)paramBundle.findViewById(2131625264));
      this.t = paramBundle.findViewById(2131625263);
      paramb = this.t;
      if (!this.p) {
        break label626;
      }
      i1 = 0;
      label281:
      paramb.setVisibility(i1);
      if (this.p) {
        d();
      }
      this.u = ((TextView)paramBundle.findViewById(2131624359));
      i1 = UserPrefs.getInt(this.h, "trade_write_token_expires", TradeTokenExpiresTime.ALL_DAY.value());
      this.u.setText(TradeTokenExpiresTime.fromValue(i1).lableResId());
      this.q.setOnEditorActionListener(new TextView.OnEditorActionListener()
      {
        public final boolean onEditorAction(TextView paramAnonymousTextView, int paramAnonymousInt, KeyEvent paramAnonymousKeyEvent)
        {
          if (((paramAnonymousInt & 0x6) == 6) && (!TextUtils.isEmpty(b.a(b.this).getText().toString())))
          {
            b.b(b.this);
            return true;
          }
          return false;
        }
      });
      c();
      this.B.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          if (b.c(b.this) != null)
          {
            paramAnonymousView = b.this;
            ArrayList localArrayList = b.c(b.this);
            if (localArrayList.size() > 1)
            {
              if (paramAnonymousView.k != null) {
                paramAnonymousView.k.b();
              }
              if (paramAnonymousView.isShowing()) {
                paramAnonymousView.dismiss();
              }
              b.2 local2 = new b.2(paramAnonymousView);
              paramAnonymousView.n = new com.xueqiu.android.trade.view.a(paramAnonymousView.h, paramAnonymousView.l, localArrayList, local2);
              paramAnonymousView.n.a();
            }
          }
        }
      });
      if (this.y != 2) {
        break label632;
      }
      paramb = this.h.getString(2131166357);
      this.q.setFilters(new InputFilter[] { new InputFilter.LengthFilter(4) });
    }
    for (;;)
    {
      this.q.setHint(paramb);
      this.b = new g()
      {
        public final void a(com.xueqiu.android.common.widget.f paramAnonymousf, int paramAnonymousInt)
        {
          switch (paramAnonymousInt)
          {
          case 1: 
          default: 
            return;
          case 0: 
            b.this.cancel();
            return;
          }
          b.b(b.this);
          if (b.d(b.this) != null) {
            b.d(b.this).b();
          }
          com.xueqiu.android.base.util.b.a(b.e(b.this), 2131166530);
        }
      };
      a(paramb).a(paramBundle).a(true).c(this.h.getString(2131165296)).d(this.h.getString(2131165361));
      this.e.setEnabled(false);
      this.q.addTextChangedListener(new TextWatcher()
      {
        public final void afterTextChanged(Editable paramAnonymousEditable) {}
        
        public final void beforeTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
        
        public final void onTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3)
        {
          TextView localTextView = b.this.e;
          if ((2 == b.f(b.this)) && (!TextUtils.isDigitsOnly(paramAnonymousCharSequence))) {
            paramAnonymousCharSequence.subSequence(0, paramAnonymousInt2);
          }
          if (paramAnonymousCharSequence.length() > 0)
          {
            localTextView.setEnabled(true);
            return;
          }
          localTextView.setEnabled(false);
        }
      });
      this.u.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          if ((b.g(b.this) == null) || (!b.g(b.this).b()))
          {
            b.a(b.this, new e(b.e(b.this)));
            b.g(b.this).c = new com.xueqiu.android.trade.f()
            {
              public final void a(int paramAnonymous2Int)
              {
                b.h(b.this).setText(TradeTokenExpiresTime.fromValue(paramAnonymous2Int).lableResId());
              }
            };
            b.g(b.this).a();
          }
        }
      });
      this.s.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          b.i(b.this);
        }
      });
      this.k = new com.xueqiu.android.common.widget.p(this.h, 5, this.q);
      this.k.j = ((FrameLayout)findViewById(2131624758));
      this.k.i = new com.xueqiu.android.common.widget.q()
      {
        public final void a(boolean paramAnonymousBoolean)
        {
          TranslateAnimation localTranslateAnimation = new TranslateAnimation(0.0F, 0.0F, 0.0F, 0 - b.d(b.this).c.getMeasuredHeight() / 2);
          localTranslateAnimation.setDuration(200L);
          b.this.f.startAnimation(localTranslateAnimation);
          localTranslateAnimation.setAnimationListener(new Animation.AnimationListener()
          {
            public final void onAnimationEnd(Animation paramAnonymous2Animation)
            {
              paramAnonymous2Animation = b.this;
              int i = b.d(b.this).c.getMeasuredHeight();
              FrameLayout.LayoutParams localLayoutParams = new FrameLayout.LayoutParams((int)ay.a(282.0F), paramAnonymous2Animation.f.getHeight());
              localLayoutParams.gravity = 81;
              localLayoutParams.bottomMargin = ((i + (ay.b(paramAnonymous2Animation.a) - paramAnonymous2Animation.f.getMeasuredHeight())) / 2);
              paramAnonymous2Animation.f.setLayoutParams(localLayoutParams);
              paramAnonymous2Animation.f.invalidate();
              paramAnonymous2Animation = new TranslateAnimation(0.0F, 0.0F, 0.0F, 0.0F);
              b.this.f.setAnimation(paramAnonymous2Animation);
            }
            
            public final void onAnimationRepeat(Animation paramAnonymous2Animation) {}
            
            public final void onAnimationStart(Animation paramAnonymous2Animation) {}
          });
        }
      };
      this.q.setOnTouchListener(new View.OnTouchListener()
      {
        public final boolean onTouch(View paramAnonymousView, MotionEvent paramAnonymousMotionEvent)
        {
          b.a(b.this).requestFocus();
          b.d(b.this).a(5, b.a(b.this), new r()
          {
            public final void a(EditText paramAnonymous2EditText, int paramAnonymous2Int) {}
          });
          return false;
        }
      });
      this.k.a();
      this.r.setOnTouchListener(new View.OnTouchListener()
      {
        public final boolean onTouch(View paramAnonymousView, MotionEvent paramAnonymousMotionEvent)
        {
          b.j(b.this).requestFocus();
          b.d(b.this).a(5, b.j(b.this), new r()
          {
            public final void a(EditText paramAnonymous2EditText, int paramAnonymous2Int) {}
          });
          return false;
        }
      });
      return;
      this.y = 1;
      break;
      label626:
      i1 = 8;
      break label281;
      label632:
      paramb = this.h.getString(2131166356);
    }
  }
  
  public static b a(com.xueqiu.android.common.b paramb, TradeAccount paramTradeAccount, boolean paramBoolean)
  {
    Bundle localBundle = new Bundle();
    localBundle.putParcelable("arg_broker", paramTradeAccount);
    if (System.currentTimeMillis() - o < 300000L) {
      paramBoolean = true;
    }
    localBundle.putBoolean("arg_need_verify_code", paramBoolean);
    return new b(paramb, localBundle);
  }
  
  private void c()
  {
    if ((this.m != null) && (this.m.size() > 1)) {
      this.C.setVisibility(0);
    }
    for (;;)
    {
      if (this.l.getTradeBroker().getTraderLogo() != null) {
        com.d.a.b.f.a().a(this.l.getTradeBroker().getTraderLogo(), this.z);
      }
      if (this.l.getTradeBroker().getTraderName() != null) {
        this.A.setText(this.l.getTradeBroker().getTraderName());
      }
      return;
      this.C.setVisibility(8);
    }
  }
  
  private void d()
  {
    this.w.h(this.l.getTradeBroker().getOauthConfig().getOauthCaptchaUrl(), new com.xueqiu.android.base.b.p()
    {
      public final void a(y paramAnonymousy)
      {
        aa.a(paramAnonymousy);
      }
    });
  }
  
  public final void b()
  {
    if ((this.D != null) && (this.D.isShowing())) {}
    try
    {
      this.D.dismiss();
      this.D = null;
      return;
    }
    catch (IllegalArgumentException localIllegalArgumentException) {}
  }
  
  public final void cancel()
  {
    if (this.i != null) {
      this.i.b();
    }
    if (this.k != null) {
      this.k.b();
    }
    com.xueqiu.android.base.util.b.a(this.h, 2131166528);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\trade\c\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
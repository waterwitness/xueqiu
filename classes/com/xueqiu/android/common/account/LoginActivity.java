package com.xueqiu.android.common.account;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.preference.PreferenceManager;
import android.support.v7.a.g;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnFocusChangeListener;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.view.Window;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.android.volley.y;
import com.xueqiu.android.base.b.ai;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.i;
import com.xueqiu.android.base.t;
import com.xueqiu.android.base.u;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.base.util.ag;
import com.xueqiu.android.base.util.ay;
import com.xueqiu.android.base.util.bc;
import com.xueqiu.android.common.WebViewActivity;
import com.xueqiu.android.common.model.LoginResult;
import com.xueqiu.android.common.model.RequestResult;
import com.xueqiu.android.common.model.SNBEvent;
import com.xueqiu.android.common.widget.EmailAutoTextView;
import com.xueqiu.android.community.CountryCodeSelectActivity;
import java.util.Random;
import java.util.concurrent.TimeUnit;

public class LoginActivity
  extends com.xueqiu.android.common.b
{
  private View A;
  private View B;
  private View C;
  private View D;
  private TextView E;
  private EmailAutoTextView F;
  private EditText G;
  private View H;
  private TextView I;
  private EditText J;
  private EditText K;
  private EditText L;
  private View M;
  private View N;
  private TextView O;
  private TextView P;
  private RelativeLayout Q;
  private View R;
  private View S;
  private View T;
  private View U;
  private View V;
  private String W;
  private a X;
  private b Y;
  private c Z;
  private boolean aa = false;
  private Context ab;
  private LinearLayout ac;
  private LinearLayout ad;
  private String ae = null;
  private TextWatcher af = new TextWatcher()
  {
    public final void afterTextChanged(Editable paramAnonymousEditable)
    {
      if (TextUtils.isEmpty(paramAnonymousEditable))
      {
        LoginActivity.a(LoginActivity.this, false);
        return;
      }
      String str = (String)LoginActivity.d(LoginActivity.this).getTag();
      if ((!TextUtils.isEmpty(str)) && (str.equals("86")) && (paramAnonymousEditable.length() == 11))
      {
        LoginActivity.a(LoginActivity.this, true);
        return;
      }
      if ((!TextUtils.isEmpty(str)) && (!str.equals("86")) && (paramAnonymousEditable.length() > 1))
      {
        LoginActivity.a(LoginActivity.this, true);
        return;
      }
      LoginActivity.a(LoginActivity.this, false);
    }
    
    public final void beforeTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
    
    public final void onTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
  };
  private TextWatcher ag = new TextWatcher()
  {
    public final void afterTextChanged(Editable paramAnonymousEditable)
    {
      if ((paramAnonymousEditable.length() == 4) && (!TextUtils.isEmpty(LoginActivity.e(LoginActivity.this).getText())))
      {
        paramAnonymousEditable = LoginActivity.m(LoginActivity.this).getText().toString();
        String str1 = LoginActivity.e(LoginActivity.this).getText().toString();
        String str2 = (String)LoginActivity.d(LoginActivity.this).getTag();
        b localb = LoginActivity.g(LoginActivity.this);
        com.xueqiu.android.base.q.a().b().a(str2, str1, paramAnonymousEditable, localb.b, new b.4(localb));
        LoginActivity.b(LoginActivity.this, true);
        return;
      }
      LoginActivity.m(LoginActivity.this).setCompoundDrawablesWithIntrinsicBounds(0, 0, 0, 0);
      LoginActivity.b(LoginActivity.this, false);
    }
    
    public final void beforeTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
    
    public final void onTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
  };
  private TextWatcher ah = new TextWatcher()
  {
    public final void afterTextChanged(Editable paramAnonymousEditable)
    {
      if ((paramAnonymousEditable != null) && (!TextUtils.isEmpty(LoginActivity.q(LoginActivity.this).getText())) && (paramAnonymousEditable.length() >= 6))
      {
        LoginActivity.b(LoginActivity.this, true);
        return;
      }
      LoginActivity.b(LoginActivity.this, false);
    }
    
    public final void beforeTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
    
    public final void onTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
  };
  TextView j;
  EditText k;
  Handler p = null;
  int q = 0;
  Handler r = new Handler(Looper.getMainLooper())
  {
    public final void handleMessage(Message paramAnonymousMessage)
    {
      super.handleMessage(paramAnonymousMessage);
      switch (paramAnonymousMessage.what)
      {
      default: 
        return;
      }
      paramAnonymousMessage = new Random();
      int i = paramAnonymousMessage.nextInt(LoginActivity.c(LoginActivity.this).getWidth() / 2);
      int j = paramAnonymousMessage.nextInt(LoginActivity.c(LoginActivity.this).getWidth());
      int k = LoginActivity.c(LoginActivity.this).getWidth() / 4;
      int m = LoginActivity.c(LoginActivity.this).getWidth() * 3 / 4;
      int n = paramAnonymousMessage.nextInt(LoginActivity.c(LoginActivity.this).getHeight());
      int i1 = LoginActivity.c(LoginActivity.this).getHeight() / 2;
      int i2 = LoginActivity.c(LoginActivity.this).getHeight() / 2;
      LoginActivity.a(LoginActivity.this, i, j % k + m, n % i1 + i2);
    }
  };
  boolean s = false;
  boolean t = false;
  private byte u = -1;
  private View v;
  private FrameLayout w;
  private ImageView x;
  private View y;
  private View z;
  
  private void a(byte paramByte)
  {
    switch (paramByte)
    {
    default: 
    case 1: 
    case 3: 
      for (;;)
      {
        this.u = paramByte;
        return;
        this.ad.setVisibility(8);
        this.ac.setVisibility(0);
        this.k.setVisibility(0);
        this.B.setVisibility(0);
        this.C.setVisibility(8);
        this.K.setHint(com.xueqiu.android.base.r.d(2131165726));
        this.K.setInputType(129);
        this.K.setCompoundDrawablesWithIntrinsicBounds(0, 0, 0, 0);
        this.K.setText("");
        this.L.setHint(com.xueqiu.android.base.r.d(2131165725));
        this.L.setText("");
        this.L.setInputType(2);
        this.L.addTextChangedListener(this.af);
        this.k.addTextChangedListener(this.ag);
        this.M.setVisibility(8);
        this.P.setText(com.xueqiu.android.base.r.d(2131165927));
        this.P.setOnClickListener(new View.OnClickListener()
        {
          public final void onClick(View paramAnonymousView)
          {
            if (LoginActivity.g(LoginActivity.this).c) {
              LoginActivity.this.j();
            }
            for (;;)
            {
              i.a().a(new SNBEvent(2400, 4));
              return;
              if (LoginActivity.m(LoginActivity.this).getText().length() != 4) {
                aa.a("请输入4位数验证码");
              } else if (LoginActivity.g(LoginActivity.this).d != null) {
                aa.a(LoginActivity.g(LoginActivity.this).d);
              }
            }
          }
        });
        c(false);
        this.R.setVisibility(0);
        localObject = this.T;
        ((View)localObject).setVisibility(0);
        ((View)localObject).setOnClickListener(new View.OnClickListener()
        {
          public final void onClick(View paramAnonymousView)
          {
            LoginActivity.n(LoginActivity.this).b();
          }
        });
        localObject = this.U;
        ((View)localObject).setVisibility(0);
        ((View)localObject).setOnClickListener(new View.OnClickListener()
        {
          public final void onClick(View paramAnonymousView)
          {
            LoginActivity.n(LoginActivity.this).d();
          }
        });
        this.V.setOnClickListener(new View.OnClickListener()
        {
          public final void onClick(View paramAnonymousView)
          {
            LoginActivity.n(LoginActivity.this).f();
          }
        });
        continue;
        this.ad.setVisibility(0);
        this.ac.setVisibility(8);
        this.D.setVisibility(0);
        this.B.setVisibility(8);
        this.C.setVisibility(0);
        this.F.setHint(com.xueqiu.android.base.r.d(2131165720));
        this.F.setText("");
        this.G.setHint(com.xueqiu.android.base.r.d(2131165722));
        this.G.setInputType(129);
        this.G.removeTextChangedListener(this.ag);
        this.G.addTextChangedListener(this.ah);
        this.G.setText("");
        this.M.setVisibility(0);
        this.O.setText(com.xueqiu.android.base.r.d(2131165719));
        this.O.setOnClickListener(new View.OnClickListener()
        {
          public final void onClick(View paramAnonymousView)
          {
            LoginActivity.a(LoginActivity.this, (byte)2);
          }
        });
        this.P.setText(com.xueqiu.android.base.r.d(2131165721));
        this.P.setOnClickListener(new View.OnClickListener()
        {
          public final void onClick(View paramAnonymousView)
          {
            if (LoginActivity.b(LoginActivity.this).getText().toString().trim().equals("")) {
              aa.a(com.xueqiu.android.base.r.d(2131165811));
            }
            for (;;)
            {
              i.a().a(new SNBEvent(2500, 3));
              return;
              if (LoginActivity.b(LoginActivity.this).getText().toString().trim().equals("")) {
                aa.a(com.xueqiu.android.base.r.d(2131165785));
              } else if ((!TextUtils.isEmpty(LoginActivity.b(LoginActivity.this).getText())) && (LoginActivity.b(LoginActivity.this).getText().toString().contains("@"))) {
                LoginActivity.o(LoginActivity.this);
              } else {
                LoginActivity.p(LoginActivity.this);
              }
            }
          }
        });
        this.R.setVisibility(8);
        c(false);
        k();
      }
    }
    this.ad.setVisibility(0);
    this.ac.setVisibility(8);
    this.D.setVisibility(8);
    this.B.setVisibility(8);
    this.C.setVisibility(0);
    Object localObject = PreferenceManager.getDefaultSharedPreferences(this).getString("user_account", "");
    if (!TextUtils.isEmpty((CharSequence)localObject))
    {
      this.F.setText((CharSequence)localObject);
      this.G.requestFocus();
    }
    for (;;)
    {
      this.G.setHint(com.xueqiu.android.base.r.d(2131165722));
      this.G.setInputType(129);
      this.G.setText("");
      this.G.addTextChangedListener(this.ah);
      this.M.setVisibility(0);
      this.O.setText(com.xueqiu.android.base.r.d(2131165724));
      this.O.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          LoginActivity.a(LoginActivity.this, (byte)3);
        }
      });
      this.P.setText(com.xueqiu.android.base.r.d(2131165721));
      this.P.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          if (TextUtils.isEmpty(LoginActivity.b(LoginActivity.this).getText())) {
            aa.a(com.xueqiu.android.base.r.d(2131165811));
          }
          for (;;)
          {
            i.a().a(new SNBEvent(2500, 1));
            return;
            if (TextUtils.isEmpty(LoginActivity.b(LoginActivity.this).getText())) {
              aa.a(com.xueqiu.android.base.r.d(2131165785));
            } else if ((!TextUtils.isEmpty(LoginActivity.b(LoginActivity.this).getText())) && (LoginActivity.b(LoginActivity.this).getText().toString().contains("@"))) {
              LoginActivity.o(LoginActivity.this);
            } else if ((!TextUtils.isEmpty(LoginActivity.b(LoginActivity.this).getText())) && (LoginActivity.b(LoginActivity.this).getText().length() != 11)) {
              aa.a(com.xueqiu.android.base.r.d(2131165813));
            } else {
              LoginActivity.p(LoginActivity.this);
            }
          }
        }
      });
      k();
      this.R.setVisibility(8);
      c(false);
      break;
      this.F.setHint(com.xueqiu.android.base.r.d(2131165720));
      this.F.setText("");
    }
  }
  
  private void c(boolean paramBoolean)
  {
    if (!paramBoolean)
    {
      this.P.setClickable(false);
      this.P.setTextColor(com.xueqiu.android.base.r.j(76));
      return;
    }
    this.P.setClickable(true);
    this.P.setTextColor(com.xueqiu.android.base.r.j(255));
  }
  
  private void k()
  {
    this.T.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        LoginActivity.n(LoginActivity.this).c();
        paramAnonymousView = new SNBEvent(2500, 2);
        paramAnonymousView.addProperty("log_name", "新浪微博");
        i.a().a(paramAnonymousView);
      }
    });
    this.U.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        LoginActivity.n(LoginActivity.this).e();
        paramAnonymousView = new SNBEvent(2500, 2);
        paramAnonymousView.addProperty("log_name", "QQ");
        i.a().a(paramAnonymousView);
      }
    });
    this.V.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        LoginActivity.n(LoginActivity.this).a();
        paramAnonymousView = new SNBEvent(2500, 2);
        paramAnonymousView.addProperty("log_name", "微信");
        i.a().a(paramAnonymousView);
      }
    });
  }
  
  private void l()
  {
    com.xueqiu.android.base.q.a().b().d(null, null, null, new p()
    {
      public final void a(y paramAnonymousy)
      {
        aa.a(paramAnonymousy);
        ag.c.a(new rx.c.a()
        {
          public final void a()
          {
            LoginActivity.u(LoginActivity.this);
          }
        }, 1L, TimeUnit.SECONDS);
      }
    });
  }
  
  public final void b(final boolean paramBoolean)
  {
    final int i = com.xueqiu.android.base.r.c(2131230727);
    final int m = com.xueqiu.android.base.r.c(2131230726);
    final int n = (int)ay.a(80.0F);
    final int i1 = (int)ay.a(40.0F);
    final int i2 = (int)ay.a(60.0F);
    final int i3 = (int)ay.a(30.0F);
    final int i4 = (int)ay.a(40.0F);
    final int i5 = (int)ay.a(20.0F);
    ValueAnimator localValueAnimator = ValueAnimator.ofInt(new int[] { 0, 100 });
    localValueAnimator.addListener(new Animator.AnimatorListener()
    {
      public final void onAnimationCancel(Animator paramAnonymousAnimator)
      {
        LoginActivity.this.s = false;
      }
      
      public final void onAnimationEnd(Animator paramAnonymousAnimator)
      {
        LoginActivity.this.s = false;
      }
      
      public final void onAnimationRepeat(Animator paramAnonymousAnimator)
      {
        LoginActivity.this.s = true;
      }
      
      public final void onAnimationStart(Animator paramAnonymousAnimator)
      {
        LoginActivity.this.s = true;
      }
    });
    localValueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener()
    {
      public final void onAnimationUpdate(ValueAnimator paramAnonymousValueAnimator)
      {
        int i1 = ((Integer)paramAnonymousValueAnimator.getAnimatedValue()).intValue();
        paramAnonymousValueAnimator = LoginActivity.c(LoginActivity.this).getLayoutParams();
        int i2;
        if (paramBoolean)
        {
          paramAnonymousValueAnimator.height = LoginActivity.a(i, this.c, i1, true);
          LoginActivity.c(LoginActivity.this).setLayoutParams(paramAnonymousValueAnimator);
          paramAnonymousValueAnimator = (FrameLayout.LayoutParams)LoginActivity.s(LoginActivity.this).getLayoutParams();
          if (!paramBoolean) {
            break label224;
          }
          i2 = LoginActivity.a(n, this.f, i1, true);
          paramAnonymousValueAnimator.height = i2;
          paramAnonymousValueAnimator.width = i2;
          paramAnonymousValueAnimator.setMargins(paramAnonymousValueAnimator.leftMargin, LoginActivity.a(i2, this.h, i1, true), paramAnonymousValueAnimator.rightMargin, paramAnonymousValueAnimator.bottomMargin);
          label131:
          LoginActivity.s(LoginActivity.this).setLayoutParams(paramAnonymousValueAnimator);
          paramAnonymousValueAnimator = (LinearLayout.LayoutParams)LoginActivity.t(LoginActivity.this).getLayoutParams();
          if (!paramBoolean) {
            break label280;
          }
          paramAnonymousValueAnimator.setMargins(paramAnonymousValueAnimator.leftMargin, LoginActivity.a(i4, this.l, i1, true), paramAnonymousValueAnimator.rightMargin, paramAnonymousValueAnimator.bottomMargin);
        }
        for (;;)
        {
          LoginActivity.t(LoginActivity.this).setLayoutParams(paramAnonymousValueAnimator);
          return;
          paramAnonymousValueAnimator.height = LoginActivity.a(m, this.c, i1, false);
          break;
          label224:
          i2 = LoginActivity.a(i1, this.f, i1, false);
          paramAnonymousValueAnimator.height = i2;
          paramAnonymousValueAnimator.width = i2;
          paramAnonymousValueAnimator.setMargins(paramAnonymousValueAnimator.leftMargin, LoginActivity.a(i3, this.h, i1, false), paramAnonymousValueAnimator.rightMargin, paramAnonymousValueAnimator.bottomMargin);
          break label131;
          label280:
          paramAnonymousValueAnimator.setMargins(paramAnonymousValueAnimator.leftMargin, LoginActivity.a(i5, this.l, i1, false), paramAnonymousValueAnimator.rightMargin, paramAnonymousValueAnimator.bottomMargin);
        }
      }
    });
    localValueAnimator.setDuration(300L);
    localValueAnimator.start();
  }
  
  public final void j()
  {
    if (this.W == null) {
      this.W = this.L.getText().toString().trim();
    }
    String str1 = (String)this.I.getTag();
    if (com.xueqiu.android.base.b.a.c.a(this.W)) {
      aa.a(2131165812);
    }
    String str2;
    String str3;
    do
    {
      return;
      if ((str1.equals("86")) && (!TextUtils.isEmpty(this.W)) && (this.W.length() != 11))
      {
        aa.a(com.xueqiu.android.base.r.d(2131165813));
        return;
      }
      str2 = this.J.getText().toString().trim();
      str3 = this.K.getText().toString().trim();
      if (com.xueqiu.android.base.b.a.c.a(str3))
      {
        aa.a(getString(2131165785));
        return;
      }
      if (com.xueqiu.android.base.b.a.c.a(str2))
      {
        aa.a(2131165767);
        return;
      }
      if ((com.xueqiu.android.base.b.a.c.a(str2)) || (!bc.a(str2)))
      {
        aa.a(2131165706);
        return;
      }
      if (!str3.matches("(?=^.{8,16}$)(?=.*\\d)(?=.*[a-zA-Z]).*$"))
      {
        aa.a(2131166162);
        return;
      }
    } while (TextUtils.isEmpty(this.ae));
    c_(com.xueqiu.android.base.r.d(2131166049));
    com.xueqiu.android.base.q.a().b().a(str1, this.W, str3, this.ae, str2, null, new p(this)
    {
      public final void a(y paramAnonymousy)
      {
        aa.a(paramAnonymousy);
        LoginActivity.this.i();
      }
    });
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    String str;
    if ((paramInt1 == 99) && (paramInt2 == -1))
    {
      str = paramIntent.getStringExtra("extra_country_code");
      this.I.setTag(str);
      this.I.setText("+" + str);
    }
    for (;;)
    {
      this.Z.a(paramInt1, paramInt2, paramIntent);
      return;
      if ((paramInt1 == 98) && (paramInt2 == -1))
      {
        str = paramIntent.getStringExtra("extra_country_code");
        this.E.setTag(str);
        this.E.setText("+" + str);
      }
    }
  }
  
  protected void onCreate(final Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.ab = this;
    this.i.b().d();
    paramBundle = getIntent().getExtras();
    if (paramBundle == null) {
      finish();
    }
    do
    {
      return;
      this.u = paramBundle.getByte("extra_mode", (byte)2).byteValue();
      this.aa = paramBundle.getBoolean("extra_need_back", false);
      this.X = new a(this, 1);
      this.Y = new b(this);
      this.Z = new c(this);
      this.m = false;
      this.v = View.inflate(this.ab, 2130903068, null);
      this.ac = ((LinearLayout)this.v.findViewById(2131624155));
      this.ad = ((LinearLayout)this.v.findViewById(2131624128));
      this.Q = ((RelativeLayout)this.v.findViewById(2131624142));
      this.w = ((FrameLayout)this.v.findViewById(2131624133));
      this.x = ((ImageView)this.v.findViewById(2131624135));
      this.y = this.v.findViewById(2131624134);
      this.z = this.v.findViewById(2131624136);
      this.A = this.v.findViewById(2131624139);
      this.B = this.v.findViewById(2131624138);
      this.C = this.v.findViewById(2131624141);
      this.D = this.v.findViewById(2131624129);
      this.E = ((TextView)this.v.findViewById(2131624130));
      this.F = ((EmailAutoTextView)this.v.findViewById(2131624131));
      this.G = ((EditText)this.v.findViewById(2131624132));
      this.H = this.v.findViewById(2131624158);
      this.I = ((TextView)this.v.findViewById(2131624159));
      this.j = ((TextView)this.v.findViewById(2131624162));
      this.J = ((EditText)this.v.findViewById(2131624156));
      this.K = ((EditText)this.v.findViewById(2131624157));
      this.L = ((EditText)this.v.findViewById(2131624161));
      this.k = ((EditText)this.v.findViewById(2131624163));
      this.j = ((TextView)this.v.findViewById(2131624162));
      this.M = this.v.findViewById(2131624143);
      this.N = this.v.findViewById(2131624127);
      this.O = ((TextView)this.v.findViewById(2131624144));
      this.P = ((TextView)this.v.findViewById(2131624145));
      this.R = this.v.findViewById(2131624146);
      this.S = this.v.findViewById(2131624147);
      this.T = this.v.findViewById(2131624148);
      this.U = this.v.findViewById(2131624150);
      this.V = this.v.findViewById(2131624149);
      paramBundle = com.xueqiu.android.base.r.d(2131165380);
      this.I.setTag(paramBundle);
      this.I.setText("+" + paramBundle);
      if (this.aa)
      {
        this.Q.setVisibility(0);
        this.Q.setOnClickListener(new View.OnClickListener()
        {
          public final void onClick(View paramAnonymousView)
          {
            LoginActivity.this.finish();
          }
        });
      }
      this.z.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          LoginActivity.a(LoginActivity.this, (byte)1);
        }
      });
      this.A.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          LoginActivity.a(LoginActivity.this, (byte)2);
        }
      });
      this.N.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          paramAnonymousView = new Intent(LoginActivity.a(LoginActivity.this), VerifyPhoneNumActivity.class);
          paramAnonymousView.putExtra("extra_verify_phone_intent", 2);
          LoginActivity.a(LoginActivity.this).startActivity(paramAnonymousView);
          i.a().a(new SNBEvent(2500, 4));
        }
      });
      this.F.setOnFocusChangeListener(new View.OnFocusChangeListener()
      {
        public final void onFocusChange(View paramAnonymousView, boolean paramAnonymousBoolean)
        {
          if (paramAnonymousBoolean)
          {
            paramAnonymousView = LoginActivity.b(LoginActivity.this).getText().toString().trim();
            if (!TextUtils.isEmpty(paramAnonymousView))
            {
              LoginActivity.b(LoginActivity.this).performFiltering(paramAnonymousView, 0);
              paramAnonymousView = new LinearLayout.LayoutParams(-1, (int)ay.a(LoginActivity.this, 120.0F));
              LoginActivity.c(LoginActivity.this).setLayoutParams(paramAnonymousView);
            }
          }
        }
      });
      this.H.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          paramAnonymousView = new Intent();
          paramAnonymousView.setClass(LoginActivity.a(LoginActivity.this), CountryCodeSelectActivity.class);
          LoginActivity.this.startActivityForResult(paramAnonymousView, 99);
        }
      });
      this.D.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          paramAnonymousView = new Intent();
          paramAnonymousView.setClass(LoginActivity.a(LoginActivity.this), CountryCodeSelectActivity.class);
          LoginActivity.this.startActivityForResult(paramAnonymousView, 98);
        }
      });
      this.j.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          paramAnonymousView = "+" + LoginActivity.d(LoginActivity.this).getTag();
          LoginActivity.a(LoginActivity.this, LoginActivity.e(LoginActivity.this).getText().toString());
          final String str = (String)LoginActivity.d(LoginActivity.this).getTag();
          if (com.xueqiu.android.base.b.a.c.a(LoginActivity.f(LoginActivity.this)))
          {
            aa.a("请先填写手机号");
            return;
          }
          if ((str.equals("86")) && (!TextUtils.isEmpty(LoginActivity.f(LoginActivity.this))) && (LoginActivity.f(LoginActivity.this).length() != 11))
          {
            aa.a(com.xueqiu.android.base.r.d(2131165813));
            return;
          }
          new AlertDialog.Builder(LoginActivity.a(LoginActivity.this)).setTitle(com.xueqiu.android.base.r.d(2131166217)).setNegativeButton(com.xueqiu.android.base.r.d(2131165296), null).setPositiveButton(com.xueqiu.android.base.r.d(2131165361), new DialogInterface.OnClickListener()
          {
            public final void onClick(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
            {
              paramAnonymous2DialogInterface = LoginActivity.g(LoginActivity.this);
              String str1 = str;
              String str2 = LoginActivity.f(LoginActivity.this);
              paramAnonymous2DialogInterface.a.c_(com.xueqiu.android.base.r.d(2131166049));
              paramAnonymous2DialogInterface.a(str1, str2, paramAnonymous2DialogInterface.b, false);
            }
          }).setMessage(com.xueqiu.android.base.r.d(2131166286) + "\n" + paramAnonymousView + " " + LoginActivity.f(LoginActivity.this)).create().show();
          i.a().a(new SNBEvent(2400, 1));
        }
      });
      this.J.setOnFocusChangeListener(new View.OnFocusChangeListener()
      {
        public final void onFocusChange(View paramAnonymousView, boolean paramAnonymousBoolean)
        {
          paramAnonymousView = LoginActivity.h(LoginActivity.this).getText().toString().trim();
          if ((!paramAnonymousBoolean) && (!TextUtils.isEmpty(paramAnonymousView))) {
            LoginActivity.b(LoginActivity.this, paramAnonymousView);
          }
        }
      });
      this.K.setOnFocusChangeListener(new View.OnFocusChangeListener()
      {
        public final void onFocusChange(View paramAnonymousView, boolean paramAnonymousBoolean)
        {
          paramAnonymousView = LoginActivity.i(LoginActivity.this).getText().toString().trim();
          if ((!paramAnonymousBoolean) && (!TextUtils.isEmpty(paramAnonymousView)) && (!paramAnonymousView.matches("(?=^.{8,16}$)(?=.*\\d)(?=.*[a-zA-Z]).*$"))) {
            aa.a("需包含数字和字母，8-16位");
          }
        }
      });
      this.S.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          paramAnonymousView = new Intent();
          paramAnonymousView.setClass(LoginActivity.a(LoginActivity.this), WebViewActivity.class);
          paramAnonymousView.putExtra("extra_url_path", com.xueqiu.android.base.r.d(2131165708));
          LoginActivity.a(LoginActivity.this).startActivity(paramAnonymousView);
        }
      });
      a(this.u);
      setContentView(this.v);
      paramBundle = getWindow().getDecorView().findViewById(16908290);
      paramBundle.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener()
      {
        public final void onGlobalLayout()
        {
          if (paramBundle.getRootView().getHeight() - paramBundle.getHeight() > 100) {
            if (!LoginActivity.this.s) {}
          }
          while ((!LoginActivity.this.t) || (LoginActivity.this.s))
          {
            return;
            if (!LoginActivity.this.t) {
              LoginActivity.this.b(true);
            }
            LoginActivity.this.t = true;
            return;
          }
          LoginActivity.this.b(false);
          LoginActivity.this.t = false;
        }
      });
      this.w.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          if (LoginActivity.this.t) {
            ((InputMethodManager)LoginActivity.this.getSystemService("input_method")).toggleSoftInput(1, 0);
          }
        }
      });
      this.ae = u.a().a;
    } while (!TextUtils.isEmpty(this.ae));
    l();
  }
  
  protected void onDestroy()
  {
    Object localObject = this.Z;
    if (((c)localObject).b != null)
    {
      f localf = ((c)localObject).b;
      ((c)localObject).k.unregisterReceiver(localf);
    }
    if (((c)localObject).l != null)
    {
      com.xueqiu.android.base.b.a();
      android.support.v4.content.r.a(com.xueqiu.android.base.b.d()).a(((c)localObject).l);
      ((c)localObject).l = null;
    }
    if (((c)localObject).j != null)
    {
      com.xueqiu.android.base.b.a();
      android.support.v4.content.r.a(com.xueqiu.android.base.b.d()).a(((c)localObject).j);
    }
    this.X.b();
    localObject = this.Y;
    android.support.v4.content.r.a(((b)localObject).a).a(((b)localObject).f);
    finish();
    overridePendingTransition(2130968583, 2130968584);
    super.onDestroy();
  }
  
  protected void onNewIntent(Intent paramIntent)
  {
    super.onNewIntent(paramIntent);
    if (paramIntent != null)
    {
      String str = paramIntent.getStringExtra("extra_phone_number");
      paramIntent = paramIntent.getStringExtra("extra_area_code");
      if (!TextUtils.isEmpty(paramIntent))
      {
        this.I.setText("+" + paramIntent);
        this.I.setTag(paramIntent);
      }
      if (!TextUtils.isEmpty(str)) {
        this.L.setText(str);
      }
    }
  }
  
  public void onWindowFocusChanged(boolean paramBoolean)
  {
    super.onWindowFocusChanged(paramBoolean);
    if (paramBoolean)
    {
      this.r.sendEmptyMessageDelayed(1, 3000L);
      return;
    }
    this.y.setVisibility(8);
    this.r.removeMessages(1);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\account\LoginActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
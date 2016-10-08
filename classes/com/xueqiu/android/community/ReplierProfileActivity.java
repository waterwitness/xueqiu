package com.xueqiu.android.community;

import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v7.a.a;
import android.support.v7.a.g;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.d.a.b.c.c;
import com.d.a.b.d;
import com.d.a.b.e;
import com.xueqiu.android.base.h;
import com.xueqiu.android.base.i;
import com.xueqiu.android.base.j;
import com.xueqiu.android.base.storage.prefs.UserPrefs;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.base.util.ay;
import com.xueqiu.android.base.util.n;
import com.xueqiu.android.base.util.v;
import com.xueqiu.android.common.GuideTutorialActivity;
import com.xueqiu.android.common.model.GuideTutorialType;
import com.xueqiu.android.common.model.SNBEvent;
import com.xueqiu.android.community.model.User;
import com.xueqiu.android.community.model.UserVerifyType;
import java.util.Locale;

public class ReplierProfileActivity
  extends j<com.xueqiu.android.community.d.b>
  implements View.OnClickListener, com.xueqiu.android.community.b.f
{
  private static final String p = ReplierProfileActivity.class.getSimpleName();
  private ImageView A;
  private com.d.a.b.f B;
  private RelativeLayout C;
  private long D;
  private String E;
  private boolean F = false;
  private float G;
  private boolean H = false;
  private boolean I = false;
  private boolean J;
  private RelativeLayout K;
  private TextView L;
  private RelativeLayout M;
  private d N;
  private ImageView q;
  private TextView r;
  private TextView s;
  private TextView t;
  private LinearLayout u;
  private LinearLayout v;
  private LinearLayout w;
  private TextView x;
  private EditText y;
  private TextView z;
  
  public ReplierProfileActivity()
  {
    e locale = n.a();
    locale.b = 2130838024;
    locale.c = 2130838024;
    locale.a = 2130838024;
    locale.q = new c((int)ay.a(70.0F));
    this.N = locale.b();
  }
  
  private void b(float paramFloat)
  {
    String str = String.format(Locale.CHINA, "%.2f", new Object[] { Float.valueOf(paramFloat) });
    this.y.setText(str);
    this.y.setSelection(str.length());
    aa.a(2131165707);
  }
  
  private void l()
  {
    Intent localIntent = new Intent(this, GuideTutorialActivity.class);
    localIntent.putExtra("extra_which_view", GuideTutorialType.PAY_ASK_FIRST_IN);
    localIntent.putExtra("extra_view_click_position", new int[] { 2131624531 });
    startActivity(localIntent);
    overridePendingTransition(2130968583, 2130968584);
  }
  
  public final void a(float paramFloat)
  {
    String str = String.format(Locale.CHINA, "%.2f", new Object[] { Float.valueOf(paramFloat / 100.0F) });
    this.G = Float.parseFloat(str);
    this.y.setText(str);
    if (!TextUtils.isEmpty(this.y.getText().toString())) {
      this.y.setSelection(this.y.getText().toString().length());
    }
  }
  
  public final void a(User paramUser)
  {
    this.E = paramUser.getScreenName();
    this.r.setText(paramUser.getScreenName());
    if (!TextUtils.isEmpty(paramUser.getVerifiedDescription()))
    {
      this.s.setVisibility(0);
      this.s.setText(paramUser.getVerifiedDescription());
      if (TextUtils.isEmpty(paramUser.getDescription())) {
        break label109;
      }
      this.t.setVisibility(0);
      this.t.setText(paramUser.getDescription());
    }
    for (;;)
    {
      this.B.a(paramUser.getProfileLargeImageUrl(), this.q, this.N);
      return;
      this.s.setVisibility(8);
      break;
      label109:
      this.t.setVisibility(8);
    }
  }
  
  public final void a(boolean paramBoolean, UserVerifyType paramUserVerifyType)
  {
    ImageView localImageView = this.A;
    if (paramBoolean) {}
    for (int i = 0;; i = 8)
    {
      localImageView.setVisibility(i);
      this.A.setImageResource(paramUserVerifyType.iconResId());
      return;
    }
  }
  
  protected final void e()
  {
    com.xueqiu.android.base.b.a();
    if (com.xueqiu.android.base.b.i())
    {
      setTheme(2131361881);
      return;
    }
    super.e();
  }
  
  public final void j()
  {
    this.u.setVisibility(8);
    this.v.setVisibility(0);
  }
  
  public void onClick(View paramView)
  {
    if (paramView.getId() == 2131624230) {
      if ((this.y.getText() == null) || (TextUtils.isEmpty(this.y.getText().toString()))) {
        b(this.G);
      }
    }
    label307:
    label314:
    do
    {
      do
      {
        return;
        if (Float.parseFloat(this.y.getText().toString()) < this.G)
        {
          b(this.G);
          return;
        }
        SNBEvent localSNBEvent;
        if (this.F)
        {
          paramView = new Intent(this, WriteStatusActivity.class);
          localObject = new Bundle();
          ((Bundle)localObject).putBoolean("extra_user_selected", true);
          float f = Float.parseFloat(this.y.getText().toString());
          v.a(p, "onClick amount = " + f);
          ((Bundle)localObject).putFloat("extra_amount", f);
          ((Bundle)localObject).putString("user_id", String.valueOf(this.D));
          ((Bundle)localObject).putString("user_name", this.E);
          ((Bundle)localObject).putBoolean("from_user_profile", this.F);
          ((Bundle)localObject).putInt("extra_write_type", 5);
          ((Bundle)localObject).putBoolean("is_verified_realname", ((com.xueqiu.android.community.d.b)this.j).a);
          paramView.putExtras((Bundle)localObject);
          localSNBEvent = new SNBEvent(3101, 1);
          if (!((com.xueqiu.android.community.d.b)this.j).a) {
            break label307;
          }
        }
        for (Object localObject = "true";; localObject = "false")
        {
          localSNBEvent.addProperty("certified_status", (String)localObject);
          i.a().a(localSNBEvent);
          if (!this.F) {
            break label314;
          }
          startActivity(paramView);
          finish();
          overridePendingTransition(2130968598, 2130968597);
          return;
          paramView = new Intent();
          break;
        }
        setResult(-1, paramView);
        finish();
      } while (!this.I);
      overridePendingTransition(2130968598, 2130968597);
      return;
      if (paramView.getId() == 2131624218)
      {
        ((InputMethodManager)getSystemService("input_method")).hideSoftInputFromWindow(this.y.getWindowToken(), 0);
        this.y.clearFocus();
        this.y.setCursorVisible(false);
        return;
      }
      if (paramView.getId() == 2131624229)
      {
        this.y.setCursorVisible(true);
        return;
      }
    } while (paramView.getId() != 2131624556);
    finish();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.i.b().d();
    if (getIntent() != null)
    {
      this.D = Long.parseLong(getIntent().getStringExtra("user_id"));
      this.F = getIntent().getBooleanExtra("from_user_profile", false);
      this.H = getIntent().getBooleanExtra("is_show_hint", false);
      this.I = getIntent().getBooleanExtra("to_pick_user", false);
      this.J = getIntent().getBooleanExtra("extra_check_show_hint", false);
    }
    setContentView(2130903079);
    this.M = ((RelativeLayout)findViewById(2131624555));
    this.M.setBackgroundColor(getResources().getColor(2131558535));
    this.K = ((RelativeLayout)findViewById(2131624556));
    this.K.setOnClickListener(this);
    this.L = ((TextView)findViewById(2131624558));
    this.L.setText(getResources().getString(2131165793));
    this.C = ((RelativeLayout)findViewById(2131624218));
    this.C.setOnClickListener(this);
    this.q = ((ImageView)findViewById(2131624220));
    this.A = ((ImageView)findViewById(2131624222));
    this.r = ((TextView)findViewById(2131624221));
    this.s = ((TextView)findViewById(2131624223));
    this.t = ((TextView)findViewById(2131624224));
    this.u = ((LinearLayout)findViewById(2131624225));
    this.v = ((LinearLayout)findViewById(2131624227));
    this.w = ((LinearLayout)findViewById(2131624228));
    this.x = ((TextView)findViewById(2131624226));
    this.y = ((EditText)findViewById(2131624229));
    this.y.clearFocus();
    this.y.addTextChangedListener(new TextWatcher()
    {
      public final void afterTextChanged(Editable paramAnonymousEditable)
      {
        if ((paramAnonymousEditable == null) || (TextUtils.isEmpty(paramAnonymousEditable.toString()))) {}
        do
        {
          return;
          float f1 = 0.0F;
          try
          {
            float f2 = Float.parseFloat(paramAnonymousEditable.toString());
            f1 = f2;
          }
          catch (NumberFormatException paramAnonymousEditable)
          {
            for (;;)
            {
              v.e(ReplierProfileActivity.k(), "Parse float error");
            }
          }
        } while (f1 <= 10000.0F);
        paramAnonymousEditable = String.format(Locale.CHINA, "%.2f", new Object[] { Float.valueOf(10000.0F) });
        ReplierProfileActivity.a(ReplierProfileActivity.this).setText(paramAnonymousEditable);
        ReplierProfileActivity.a(ReplierProfileActivity.this).setSelection(paramAnonymousEditable.length());
        aa.a(2131166321);
      }
      
      public final void beforeTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3)
      {
        v.a(ReplierProfileActivity.k(), "beforeTextChanged");
      }
      
      public final void onTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3)
      {
        v.a(ReplierProfileActivity.k(), "onTextChanged");
      }
    });
    this.y.setOnClickListener(this);
    this.z = ((TextView)findViewById(2131624230));
    this.z.setOnClickListener(this);
    this.B = com.d.a.b.f.a();
    paramBundle = new SNBEvent(3108, 1);
    paramBundle.addProperty("target_id", String.valueOf(this.D));
    i.a().a(paramBundle);
  }
  
  protected void onResume()
  {
    super.onResume();
    if (this.H)
    {
      this.H = false;
      l();
    }
    if ((this.J) && (!UserPrefs.getBoolean(this, "pay_ask_first_in", false)))
    {
      this.J = false;
      l();
      UserPrefs.setBoolean(this, "pay_ask_first_in", true);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\community\ReplierProfileActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
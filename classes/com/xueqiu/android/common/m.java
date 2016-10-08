package com.xueqiu.android.common;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.support.v4.a.k;
import android.support.v4.view.ak;
import android.text.Html;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import com.android.volley.y;
import com.d.a.b.e;
import com.d.a.b.f;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.umeng.analytics.MobclickAgent;
import com.xueqiu.android.base.b.ai;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.h;
import com.xueqiu.android.base.storage.DBManager;
import com.xueqiu.android.base.storage.prefs.UserLogonDataPrefs;
import com.xueqiu.android.base.storage.prefs.UserPrefs;
import com.xueqiu.android.base.t;
import com.xueqiu.android.base.u;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.base.util.ac;
import com.xueqiu.android.base.util.ay;
import com.xueqiu.android.base.util.n;
import com.xueqiu.android.base.util.o;
import com.xueqiu.android.common.account.LoginActivity;
import com.xueqiu.android.common.model.ProfileMenuItem;
import com.xueqiu.android.common.model.SNBEvent;
import com.xueqiu.android.common.setting.SettingActivity;
import com.xueqiu.android.common.widget.SwitchButton;
import com.xueqiu.android.community.SimpleStatusListActivity;
import com.xueqiu.android.community.UserListActivity;
import com.xueqiu.android.community.UserProfileActivity;
import com.xueqiu.android.community.model.User;
import com.xueqiu.android.community.model.User.Gender;
import com.xueqiu.android.community.model.UserVerifyType;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class m
  extends c
{
  private long a = 0L;
  private List<View> ak = new ArrayList();
  private List<View> al = new ArrayList();
  private List<TextView> am = new ArrayList();
  private TextView an;
  private TextView ao;
  private TextView ap;
  private View aq;
  private List<ImageView> ar = new ArrayList();
  private BroadcastReceiver as = new BroadcastReceiver()
  {
    public final void onReceive(Context paramAnonymousContext, Intent paramAnonymousIntent)
    {
      if ((paramAnonymousIntent != null) && (paramAnonymousIntent.getExtras() != null)) {
        m.a(m.this, (User)paramAnonymousIntent.getExtras().getParcelable("user"));
      }
      m.a(m.this);
    }
  };
  private int at = 1;
  private BroadcastReceiver au = new BroadcastReceiver()
  {
    public final void onReceive(Context paramAnonymousContext, Intent paramAnonymousIntent)
    {
      if ((paramAnonymousIntent.getAction().equals("intent_action_profile_menu_config_updated")) && (m.this.g() != null)) {
        m.k(m.this);
      }
    }
  };
  private User b = null;
  private int c;
  private ViewGroup d = null;
  private LayoutInflater e = null;
  private RelativeLayout f;
  private LinearLayout g;
  private ScrollView h;
  
  private void C()
  {
    if ((this.T == null) || (this.b == null)) {
      return;
    }
    ((TextView)c(2131625150)).setText(String.valueOf(this.b.getStatusesCount()));
    ((TextView)c(2131625153)).setText(String.valueOf(this.b.getFriendsCount()));
    ((TextView)c(2131625156)).setText(String.valueOf(this.b.getFollowersCount()));
    D();
    c(2131625149).setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        paramAnonymousView = new Intent(m.this.g(), SimpleStatusListActivity.class);
        paramAnonymousView.putExtra("extra_status_source", 2);
        m.this.a(paramAnonymousView);
        MobclickAgent.onEvent(m.this.f(), "my_status");
      }
    });
    c(2131625152).setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        paramAnonymousView = new Intent(m.this.g(), UserListActivity.class);
        paramAnonymousView.putExtra("extra_list_type", 1);
        paramAnonymousView.putExtra("extra_user", m.b(m.this));
        m.this.a(paramAnonymousView);
        com.xueqiu.android.base.util.b.a(m.this.f(), 2131166470);
      }
    });
    c(2131625154).setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        m.c(m.this);
        m.d(m.this);
        paramAnonymousView = new Intent(m.this.g(), UserListActivity.class);
        paramAnonymousView.putExtra("extra_list_type", 2);
        paramAnonymousView.putExtra("extra_user", m.b(m.this));
        m.this.a(paramAnonymousView);
        com.xueqiu.android.base.util.b.a(m.this.f(), 2131166469);
      }
    });
  }
  
  private void D()
  {
    if ((this.T == null) || (g() == null)) {
      return;
    }
    ImageView localImageView = (ImageView)c(2131625157);
    if (this.c > 0)
    {
      int i = this.c;
      String str;
      if (i == 0) {
        str = "";
      }
      for (;;)
      {
        localImageView.setImageDrawable(a(str, g().getResources()));
        localImageView.setVisibility(0);
        return;
        if (i >= 1000) {
          str = "999+";
        } else {
          str = String.valueOf(i);
        }
      }
    }
    localImageView.setVisibility(8);
  }
  
  private void E()
  {
    Object localObject1;
    label155:
    Object localObject2;
    if ((this.T != null) && (this.b != null))
    {
      ((TextView)c(2131624440)).setText(this.b.getScreenName());
      localObject1 = (TextView)c(2131624457);
      if (TextUtils.isEmpty(this.b.getVerifiedDescription())) {
        break label275;
      }
      ((TextView)localObject1).setText(this.b.getVerifiedDescription());
      if (this.b.isVerified())
      {
        localObject1 = (ImageView)c(2131624401);
        ((ImageView)localObject1).setVisibility(0);
        ((ImageView)localObject1).setImageResource(this.b.getVerifyType().iconResId());
      }
      if (!this.b.isVerifiedRealName()) {
        break label305;
      }
      this.an.setVisibility(0);
      localObject1 = (LinearLayout.LayoutParams)this.ao.getLayoutParams();
      ((LinearLayout.LayoutParams)localObject1).setMargins(com.xueqiu.android.base.r.i(7), 0, 0, 0);
      this.ao.setLayoutParams((ViewGroup.LayoutParams)localObject1);
      localObject1 = (ImageView)c(2131624151);
      if (!TextUtils.isEmpty(this.b.getProfileImageWidth_100()))
      {
        localObject2 = n.b().b();
        f.a().a(this.b.getProfileImageWidth_100(), (ImageView)localObject1, (com.d.a.b.d)localObject2, new com.d.a.b.f.d());
      }
      if ((this.b == null) || (this.b.getGender() != User.Gender.FEMALE)) {
        break label344;
      }
    }
    label275:
    label305:
    label344:
    for (int i = 2130838659;; i = 2130838664)
    {
      ((ImageView)localObject1).setImageResource(i);
      localObject1 = this.b.getGender();
      localObject2 = (ImageView)c(2131625146);
      if (localObject1 != User.Gender.MALE) {
        break label351;
      }
      ((ImageView)localObject2).setVisibility(0);
      ((ImageView)localObject2).setImageResource(2130838144);
      return;
      if (TextUtils.isEmpty(this.b.getDescription())) {
        break;
      }
      ((TextView)localObject1).setText(Html.fromHtml(this.b.getDescription()));
      break;
      this.an.setVisibility(8);
      localObject1 = (LinearLayout.LayoutParams)this.ao.getLayoutParams();
      ((LinearLayout.LayoutParams)localObject1).setMargins(0, 0, 0, 0);
      this.ao.setLayoutParams((ViewGroup.LayoutParams)localObject1);
      break label155;
    }
    label351:
    if (localObject1 == User.Gender.FEMALE)
    {
      ((ImageView)localObject2).setVisibility(0);
      ((ImageView)localObject2).setImageResource(2130838143);
      return;
    }
    ((ImageView)localObject2).setVisibility(8);
  }
  
  private void F()
  {
    Object localObject1;
    Object localObject2;
    Object localObject4;
    Object localObject3;
    int i;
    if (u.a().d)
    {
      localObject1 = "profile_menu_config_anonymous";
      localObject2 = "profile_menu_config_updated_anonymous";
      localObject4 = UserPrefs.getString(f(), (String)localObject1, "");
      localObject3 = localObject4;
      if (TextUtils.isEmpty((CharSequence)localObject4))
      {
        localObject3 = H();
        UserPrefs.setString(f(), (String)localObject1, (String)localObject3);
        UserPrefs.setLong(f(), (String)localObject2, 0L);
      }
      localObject2 = (List)com.xueqiu.android.base.util.m.a().fromJson((String)localObject3, new TypeToken() {}.getType());
      localObject3 = h();
      localObject4 = n.a().b();
      i = 0;
    }
    for (;;)
    {
      if (i >= ((List)localObject2).size()) {
        return;
      }
      Object localObject5 = (List)((List)localObject2).get(i);
      LinearLayout localLinearLayout = new LinearLayout(f());
      localLinearLayout.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
      localLinearLayout.setOrientation(1);
      localObject1 = g().getTheme().obtainStyledAttributes(new int[] { 2130772050 });
      localLinearLayout.setBackgroundResource(((TypedArray)localObject1).getResourceId(0, 0));
      ((TypedArray)localObject1).recycle();
      this.ak.add(localLinearLayout);
      int j = 0;
      label209:
      if (j < ((List)localObject5).size())
      {
        final Object localObject6 = (ProfileMenuItem)((List)localObject5).get(j);
        label254:
        Object localObject7;
        Object localObject8;
        if ("ACTIVITY".equals(((ProfileMenuItem)localObject6).getName()))
        {
          localObject1 = G();
          localObject7 = (ImageView)((View)localObject1).findViewById(2131624096);
          localObject8 = (TextView)((View)localObject1).findViewById(2131624097);
          TextView localTextView = (TextView)((View)localObject1).findViewById(2131624534);
          ImageView localImageView = (ImageView)((View)localObject1).findViewById(2131624533);
          if (localImageView != null) {
            this.ar.add(localImageView);
          }
          if (!"IDENTIFY".equals(((ProfileMenuItem)localObject6).getName())) {
            break label732;
          }
          this.ap = ((TextView)localObject8);
          label339:
          ((TextView)localObject8).setText(((ProfileMenuItem)localObject6).getTitle());
          if (!TextUtils.isEmpty(((ProfileMenuItem)localObject6).getSubTitle()))
          {
            localTextView.setText(((ProfileMenuItem)localObject6).getSubTitle());
            localTextView.setVisibility(0);
          }
          if (!"CUBE".equals(((ProfileMenuItem)localObject6).getName())) {
            break label747;
          }
          ((ImageView)localObject7).setImageResource(2130838286);
          ((View)localObject1).setOnClickListener(new View.OnClickListener()
          {
            public final void onClick(View paramAnonymousView)
            {
              if (m.a(paramAnonymousView)) {
                m.a(m.this, paramAnonymousView, localObject6);
              }
              m.e(m.this);
            }
          });
          label412:
          if ((((ProfileMenuItem)localObject6).isBadge()) && (!"ACTIVITY".equals(((ProfileMenuItem)localObject6).getName())))
          {
            localObject7 = ((ProfileMenuItem)localObject6).getName() + ((ProfileMenuItem)localObject6).getUrl();
            if (!UserPrefs.getBoolean(f(), (String)localObject7, false))
            {
              localObject7 = (ImageView)((View)localObject1).findViewById(2131624535);
              ((ImageView)localObject7).setVisibility(0);
              ((ImageView)localObject7).setImageDrawable(a("new", h()));
            }
          }
          localLinearLayout.addView((View)localObject1);
          if (!"NIGHT".equals(((ProfileMenuItem)localObject6).getName())) {
            break label1239;
          }
          this.aq = ((View)localObject1);
        }
        for (;;)
        {
          if (j != ((List)localObject5).size() - 1)
          {
            localObject1 = new View(f());
            localObject6 = g().getTheme().obtainStyledAttributes(new int[] { 2130772270 });
            ((View)localObject1).setBackgroundResource(((TypedArray)localObject6).getResourceId(0, 0));
            ((TypedArray)localObject6).recycle();
            localObject6 = new LinearLayout.LayoutParams(-2, 1);
            ((LinearLayout.LayoutParams)localObject6).setMargins((int)ay.a(47.0F), 0, 0, 0);
            ((View)localObject1).setLayoutParams((ViewGroup.LayoutParams)localObject6);
            localLinearLayout.addView((View)localObject1);
            this.al.add(localObject1);
          }
          j += 1;
          break label209;
          localObject1 = "profile_menu_config";
          localObject2 = "profile_menu_config_updated";
          break;
          if ("NIGHT".equals(((ProfileMenuItem)localObject6).getName()))
          {
            localObject1 = this.e.inflate(2130903178, null);
            break label254;
          }
          if ("IDENTIFY".equals(((ProfileMenuItem)localObject6).getName()))
          {
            localObject1 = G();
            break label254;
          }
          localObject1 = this.e.inflate(2130903177, null);
          break label254;
          label732:
          this.am.add(localObject8);
          break label339;
          label747:
          if ("FAV".equals(((ProfileMenuItem)localObject6).getName()))
          {
            ((ImageView)localObject7).setImageResource(2130838287);
            ((View)localObject1).setOnClickListener(new View.OnClickListener()
            {
              public final void onClick(View paramAnonymousView)
              {
                if (m.a(paramAnonymousView)) {
                  m.a(m.this, paramAnonymousView, localObject6);
                }
                m.f(m.this);
              }
            });
            break label412;
          }
          if ("PROFIT".equals(((ProfileMenuItem)localObject6).getName()))
          {
            ((ImageView)localObject7).setImageResource(2130838289);
            ((View)localObject1).setOnClickListener(new View.OnClickListener()
            {
              public final void onClick(View paramAnonymousView)
              {
                if (m.a(paramAnonymousView)) {
                  m.a(m.this, paramAnonymousView, localObject6);
                }
                m.g(m.this);
              }
            });
            break label412;
          }
          if ("SECURITY".equals(((ProfileMenuItem)localObject6).getName())) {
            ((ImageView)localObject7).setImageResource(2130838290);
          }
          for (;;)
          {
            a((View)localObject1, (ProfileMenuItem)localObject6);
            break;
            if ("WALLET".equals(((ProfileMenuItem)localObject6).getName()))
            {
              ((ImageView)localObject7).setImageResource(2130838291);
            }
            else if ("ORDER".equals(((ProfileMenuItem)localObject6).getName()))
            {
              ((ImageView)localObject7).setImageResource(2130838288);
            }
            else
            {
              if (("WEB".equals(((ProfileMenuItem)localObject6).getName())) || ("ACTIVITY".equals(((ProfileMenuItem)localObject6).getName())))
              {
                if (ac.c.matcher(((ProfileMenuItem)localObject6).getIcon()).find())
                {
                  localObject8 = new o();
                  f.a().a(((ProfileMenuItem)localObject6).getIcon(), (ImageView)localObject7, (com.d.a.b.d)localObject4, (com.d.a.b.f.a)localObject8);
                }
                for (;;)
                {
                  a((View)localObject1, (ProfileMenuItem)localObject6);
                  break;
                  int k = ((Resources)localObject3).getIdentifier(f().getPackageName() + ":drawable/" + ((ProfileMenuItem)localObject6).getIcon(), null, null);
                  if (k != 0) {
                    ((ImageView)localObject7).setImageDrawable(((Resources)localObject3).getDrawable(k));
                  }
                }
              }
              if ("NIGHT".equals(((ProfileMenuItem)localObject6).getName()))
              {
                localObject7 = (SwitchButton)((View)localObject1).findViewById(2131624536);
                ((SwitchButton)localObject7).setOnCheckedChangeListener(null);
                com.xueqiu.android.base.b.a();
                ((SwitchButton)localObject7).setChecked(com.xueqiu.android.base.b.i());
                ((SwitchButton)localObject7).setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener()
                {
                  public final void onCheckedChanged(CompoundButton paramAnonymousCompoundButton, boolean paramAnonymousBoolean)
                  {
                    if (paramAnonymousBoolean) {
                      m.h(m.this);
                    }
                    for (;;)
                    {
                      com.xueqiu.android.base.a.a().e();
                      return;
                      m.i(m.this);
                    }
                  }
                });
                break;
              }
              if ("SETTING".equals(((ProfileMenuItem)localObject6).getName()))
              {
                ((ImageView)localObject7).setImageResource(2130838467);
                ((View)localObject1).setOnClickListener(new View.OnClickListener()
                {
                  public final void onClick(View paramAnonymousView)
                  {
                    m.j(m.this);
                  }
                });
                break;
              }
              if ("TRADER".equals(((ProfileMenuItem)localObject6).getName()))
              {
                ((ImageView)localObject7).setImageResource(2130838462);
              }
              else
              {
                if (!"IDENTIFY".equals(((ProfileMenuItem)localObject6).getName())) {
                  break;
                }
                ((ImageView)localObject7).setImageResource(2130838142);
                com.xueqiu.android.base.b.a();
                if (!com.xueqiu.android.base.b.i()) {
                  ((TextView)localObject8).setTextColor(h().getColor(2131558644));
                } else {
                  ((TextView)localObject8).setTextColor(h().getColor(2131558637));
                }
              }
            }
          }
          label1239:
          this.ak.add(localObject1);
        }
      }
      a(localLinearLayout, 0);
      a(localLinearLayout, localLinearLayout.getChildCount());
      this.d.addView(localLinearLayout);
      localObject1 = new LinearLayout.LayoutParams(-1, (int)ay.a(f(), 10.0F));
      localObject5 = new View(f());
      ((View)localObject5).setLayoutParams((ViewGroup.LayoutParams)localObject1);
      this.d.addView((View)localObject5, (ViewGroup.LayoutParams)localObject1);
      i += 1;
    }
  }
  
  private View G()
  {
    return this.e.inflate(2130903176, null);
  }
  
  private String H()
  {
    ByteArrayOutputStream localByteArrayOutputStream;
    for (;;)
    {
      try
      {
        if (!u.a().d)
        {
          Object localObject = "profile_menu_default";
          localObject = g().getAssets().open((String)localObject);
          localByteArrayOutputStream = new ByteArrayOutputStream();
          byte[] arrayOfByte = new byte['Ȁ'];
          int i = ((InputStream)localObject).read(arrayOfByte);
          if (i == -1) {
            break;
          }
          localByteArrayOutputStream.write(arrayOfByte, 0, i);
          continue;
        }
        str = "profile_menu_default_anonymous";
      }
      catch (IOException localIOException)
      {
        localIOException.printStackTrace();
        return null;
      }
    }
    String str = new String(localByteArrayOutputStream.toByteArray(), "utf-8");
    return str;
  }
  
  private static Drawable a(String paramString, Resources paramResources)
  {
    Paint localPaint1 = new Paint(1);
    Object localObject = new Rect();
    localPaint1.setTextSize(paramResources.getDimensionPixelSize(2131231000));
    localPaint1.setColor(paramResources.getColor(2131558728));
    localPaint1.getTextBounds(paramString, 0, paramString.length(), (Rect)localObject);
    int n = (int)localPaint1.measureText(paramString);
    int i = ((Rect)localObject).height();
    int j = paramResources.getDimensionPixelSize(2131230998);
    int k = paramResources.getDimensionPixelSize(2131230999);
    int m = paramResources.getDimensionPixelSize(2131230997);
    n = Math.max(n + j * 2, m);
    int i1 = Math.max(k * 2 + i, m);
    localObject = Bitmap.createBitmap(n, i1, Bitmap.Config.ARGB_8888);
    Canvas localCanvas = new Canvas((Bitmap)localObject);
    Paint localPaint2 = new Paint(3);
    localPaint2.setColor(paramResources.getColor(2131558638));
    localCanvas.drawRoundRect(new RectF(0.0F, 0.0F, n, i1), m, m, localPaint2);
    localCanvas.drawText(paramString, j, i + k, localPaint1);
    paramString = new BitmapDrawable(paramResources, (Bitmap)localObject);
    paramString.setBounds(new Rect(0, 0, n, i1));
    return paramString;
  }
  
  private void a(View paramView, final ProfileMenuItem paramProfileMenuItem)
  {
    paramView.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        if ("IDENTIFY".equals(paramProfileMenuItem.getName()))
        {
          SNBEvent localSNBEvent = new SNBEvent(3000, 1);
          com.xueqiu.android.base.i.a().a(localSNBEvent);
        }
        if (m.a(paramAnonymousView)) {
          m.a(m.this, paramAnonymousView, paramProfileMenuItem);
        }
        if ((u.a().d) && (paramProfileMenuItem.getUrl().contains("broker/myaccount")))
        {
          t.a(m.this.g(), false);
          return;
        }
        q.a(paramProfileMenuItem.getUrl(), m.this.f());
      }
    });
  }
  
  private void a(ViewGroup paramViewGroup, int paramInt)
  {
    View localView = new View(f());
    localView.setLayoutParams(new ViewGroup.LayoutParams(-1, 1));
    TypedArray localTypedArray = g().getTheme().obtainStyledAttributes(new int[] { 2130772270 });
    localView.setBackgroundResource(localTypedArray.getResourceId(0, 0));
    localTypedArray.recycle();
    paramViewGroup.addView(localView, paramInt);
    this.al.add(localView);
  }
  
  public static m u()
  {
    return new m();
  }
  
  public final View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    super.a(paramLayoutInflater, paramViewGroup, paramBundle);
    e_(false);
    d(2131165745);
    if (u.a().d) {
      return paramLayoutInflater.inflate(2130903342, paramViewGroup, false);
    }
    return paramLayoutInflater.inflate(2130903341, paramViewGroup, false);
  }
  
  public final void a(Bundle paramBundle)
  {
    super.a(paramBundle);
    u.a();
    this.a = UserLogonDataPrefs.getLogonUserId();
    if (this.r != null) {
      this.c = this.r.getInt("followers", 0);
    }
    this.e = LayoutInflater.from(f());
    android.support.v4.content.r localr = android.support.v4.content.r.a(g());
    IntentFilter localIntentFilter = new IntentFilter();
    localIntentFilter.addAction("intent_action_profile_menu_config_updated");
    localr.a(this.au, localIntentFilter);
    if (paramBundle != null) {
      MyActivity.b(paramBundle.getBoolean("com.xueqiu.android.intent.action.CHANGE_THEME"));
    }
  }
  
  public final void a(Menu paramMenu, MenuInflater paramMenuInflater)
  {
    paramMenuInflater = g().getTheme().obtainStyledAttributes(new int[] { 2130772142 });
    ak.a(paramMenu.add(0, this.at, 0, "设置").setIcon(paramMenuInflater.getResourceId(0, 0)), 2);
    paramMenuInflater.recycle();
  }
  
  public final void a(View paramView, Bundle paramBundle)
  {
    super.a(paramView, paramBundle);
    this.an = ((TextView)this.T.findViewById(2131625147));
    this.ao = ((TextView)this.T.findViewById(2131624457));
    this.h = ((ScrollView)this.T.findViewById(2131624459));
    this.f = ((RelativeLayout)this.T.findViewById(2131625144));
    this.g = ((LinearLayout)this.T.findViewById(2131625148));
    this.al.add(this.T.findViewById(2131625143));
    this.al.add(this.T.findViewById(2131624443));
    this.al.add(this.T.findViewById(2131625158));
    this.am.add((TextView)this.T.findViewById(2131624440));
    this.am.add((TextView)this.T.findViewById(2131625150));
    this.am.add((TextView)this.T.findViewById(2131625153));
    this.am.add((TextView)this.T.findViewById(2131625156));
    this.am.add((TextView)this.T.findViewById(2131624440));
    this.am.add((TextView)this.T.findViewById(2131624440));
    this.ar.add((ImageView)this.T.findViewById(2131624533));
    if (u.a().d)
    {
      c(2131624115).setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          paramAnonymousView = new Bundle();
          paramAnonymousView.putByte("extra_mode", (byte)1);
          paramAnonymousView.putBoolean("extra_need_back", true);
          Intent localIntent = new Intent(m.this.g(), LoginActivity.class);
          localIntent.putExtras(paramAnonymousView);
          m.this.g().startActivity(localIntent);
          com.xueqiu.android.base.util.b.a(m.this.g(), 2131166472);
        }
      });
      c(2131624116).setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          paramAnonymousView = new Bundle();
          paramAnonymousView.putBoolean("extra_need_back", true);
          paramAnonymousView.putByte("extra_mode", (byte)2);
          Intent localIntent = new Intent(m.this.g(), LoginActivity.class);
          localIntent.putExtras(paramAnonymousView);
          m.this.g().startActivity(localIntent);
          com.xueqiu.android.base.util.b.a(m.this.g(), 2131166471);
        }
      });
    }
    for (;;)
    {
      this.d = ((ViewGroup)this.T.findViewById(2131625159));
      F();
      if (!u.a().d)
      {
        paramView = x();
        u.a();
        paramView.g(UserLogonDataPrefs.getLogonUserId(), new p(this)
        {
          public final void a(y paramAnonymousy)
          {
            aa.a(paramAnonymousy);
          }
        });
        android.support.v4.content.r.a(v()).a(this.as, new IntentFilter("com.xueqiu.android.user.UPDATE_USER_INFO"));
      }
      return;
      this.b = DBManager.getInstance().queryUserByUserId(this.a);
      E();
      this.f.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          if ((m.b(m.this) != null) && (!TextUtils.isEmpty(m.b(m.this).getScreenName())))
          {
            paramAnonymousView = new Intent();
            paramAnonymousView.setClass(m.this.f(), UserProfileActivity.class);
            paramAnonymousView.putExtra("extra_user", m.b(m.this));
            m.this.f().startActivity(paramAnonymousView);
            com.xueqiu.android.base.util.b.a(m.this.f(), 2131166479);
          }
        }
      });
      C();
    }
  }
  
  public final boolean a(MenuItem paramMenuItem)
  {
    if (paramMenuItem.getItemId() == this.at)
    {
      a(new Intent(g(), SettingActivity.class));
      com.xueqiu.android.base.util.b.a(f(), 2131166478);
      return true;
    }
    return super.a(paramMenuItem);
  }
  
  public final void d(Bundle paramBundle)
  {
    super.d(paramBundle);
    paramBundle.putBoolean("com.xueqiu.android.intent.action.CHANGE_THEME", MyActivity.j());
  }
  
  public final void q()
  {
    if ((this.b != null) && (u.a().c)) {
      DBManager.getInstance().insertUser(this.b);
    }
    if (this.as != null) {
      android.support.v4.content.r.a(v()).a(this.as);
    }
    if (this.au != null) {
      android.support.v4.content.r.a(g()).a(this.au);
    }
    super.q();
  }
  
  public final boolean y_()
  {
    return super.y_();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\m.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
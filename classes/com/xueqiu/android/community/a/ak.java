package com.xueqiu.android.community.a;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.SharedPreferences.OnSharedPreferenceChangeListener;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.os.Parcelable;
import android.preference.PreferenceManager;
import android.text.Html;
import android.text.TextUtils;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.WindowManager;
import android.widget.AbsListView.LayoutParams;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import android.widget.Toast;
import com.android.volley.y;
import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.r;
import com.xueqiu.android.base.storage.prefs.UserLogonDataPrefs;
import com.xueqiu.android.base.u;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.base.util.ap;
import com.xueqiu.android.base.util.ar;
import com.xueqiu.android.base.util.as;
import com.xueqiu.android.base.util.au;
import com.xueqiu.android.base.util.aw;
import com.xueqiu.android.base.util.ay;
import com.xueqiu.android.base.util.m;
import com.xueqiu.android.base.util.n;
import com.xueqiu.android.base.util.o;
import com.xueqiu.android.common.ImageActivity;
import com.xueqiu.android.common.model.RequestResult;
import com.xueqiu.android.common.model.SNBEvent;
import com.xueqiu.android.common.widget.SnowBallTextView;
import com.xueqiu.android.community.PromotionActivity;
import com.xueqiu.android.community.StatusDetailActivity;
import com.xueqiu.android.community.UserProfileActivity;
import com.xueqiu.android.community.WriteStatusActivity;
import com.xueqiu.android.community.l;
import com.xueqiu.android.community.model.Card;
import com.xueqiu.android.community.model.RecommendCard;
import com.xueqiu.android.community.model.RecommendStock;
import com.xueqiu.android.community.model.Status;
import com.xueqiu.android.community.model.Status.PreparedShowObj;
import com.xueqiu.android.community.model.User;
import com.xueqiu.android.community.model.User.Gender;
import com.xueqiu.android.community.model.UserVerifyType;
import com.xueqiu.android.cube.CubeActivity;
import com.xueqiu.android.cube.model.Cube;
import com.xueqiu.android.cube.model.CubeCalGainType;
import com.xueqiu.android.cube.model.Market;
import com.xueqiu.android.stock.c.x;
import com.xueqiu.android.stock.model.StockQuote;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

public class ak
  extends com.xueqiu.android.common.a.d<Status>
{
  private static final String n = ak.class.getSimpleName();
  private com.d.a.b.d A = null;
  private com.d.a.b.d B = null;
  private com.d.a.b.d C = null;
  private com.d.a.b.f.d D = null;
  private com.d.a.b.d E = null;
  private View.OnClickListener F = new View.OnClickListener()
  {
    public final void onClick(View paramAnonymousView)
    {
      String str = (String)paramAnonymousView.getTag(paramAnonymousView.getId());
      Intent localIntent = new Intent(ak.this.c, ImageActivity.class);
      if ((str.indexOf(".jpg!") == -1) && (str.indexOf(".jpeg!") == -1))
      {
        paramAnonymousView = str;
        if (str.indexOf(".png!") == -1) {}
      }
      else
      {
        paramAnonymousView = str.substring(0, str.lastIndexOf('!'));
      }
      localIntent.putExtra("url", paramAnonymousView);
      ak.this.c.startActivity(localIntent);
      ((Activity)ak.this.c).overridePendingTransition(2130968583, 2130968584);
    }
  };
  Activity e;
  public ar f = null;
  public l g;
  public boolean h = false;
  public String i;
  public List<RecommendCard<User>> j;
  public List<RecommendCard<RecommendStock>> k;
  public List<RecommendCard<Cube>> l;
  public List<RecommendCard<Status>> m;
  private float o = 17.0F;
  private WeakReference<Drawable> p = null;
  private WeakReference<Drawable> q = null;
  private WeakReference<Drawable> r = null;
  private WeakReference<Drawable> s = null;
  private WeakReference<Drawable> t = null;
  private WeakReference<Drawable> u = null;
  private WeakReference<Drawable> v = null;
  private WeakReference<Drawable> w = null;
  private SharedPreferences.OnSharedPreferenceChangeListener x = null;
  private be y = null;
  private com.d.a.b.f z;
  
  public ak(Activity paramActivity)
  {
    super(paramActivity, 2130903168);
    this.e = paramActivity;
    paramActivity = PreferenceManager.getDefaultSharedPreferences(paramActivity);
    this.x = new SharedPreferences.OnSharedPreferenceChangeListener()
    {
      public final void onSharedPreferenceChanged(SharedPreferences paramAnonymousSharedPreferences, String paramAnonymousString)
      {
        if (paramAnonymousString.equals(ak.this.c.getString(2131165659))) {
          ak.a(ak.this, Float.valueOf(paramAnonymousSharedPreferences.getString(paramAnonymousString, ak.this.c.getString(2131165540))).floatValue());
        }
      }
    };
    paramActivity.registerOnSharedPreferenceChangeListener(this.x);
    this.o = Float.valueOf(paramActivity.getString(this.e.getString(2131165659), this.c.getString(2131165540))).floatValue();
    registerDataSetObserver(new DataSetObserver()
    {
      public final void onChanged()
      {
        ak.a(ak.this);
        super.onChanged();
      }
      
      public final void onInvalidated()
      {
        ak.a(ak.this);
        super.onInvalidated();
      }
    });
    paramActivity = this.c.getResources();
    this.r = new WeakReference(paramActivity.getDrawable(2130838672));
    this.s = new WeakReference(paramActivity.getDrawable(2130838673));
    this.t = new WeakReference(paramActivity.getDrawable(2130838145));
    this.u = new WeakReference(paramActivity.getDrawable(2130838670));
    this.v = new WeakReference(paramActivity.getDrawable(2130838674));
    this.w = new WeakReference(paramActivity.getDrawable(2130838675));
    Object localObject = this.c.getTheme().obtainStyledAttributes(new int[] { 2130772281, 2130772282, 2130772158 });
    this.p = new WeakReference(paramActivity.getDrawable(((TypedArray)localObject).getResourceId(0, 0)));
    this.q = new WeakReference(paramActivity.getDrawable(((TypedArray)localObject).getResourceId(1, 0)));
    paramActivity = paramActivity.getDrawable(((TypedArray)localObject).getResourceId(2, 0));
    this.z = com.d.a.b.f.a();
    localObject = n.a().a(Bitmap.Config.RGB_565);
    ((com.d.a.b.e)localObject).j = com.d.a.b.a.e.e;
    ((com.d.a.b.e)localObject).d = paramActivity;
    ((com.d.a.b.e)localObject).e = paramActivity;
    this.A = ((com.d.a.b.e)localObject).b();
    paramActivity = n.a().a(Bitmap.Config.RGB_565);
    paramActivity.j = com.d.a.b.a.e.e;
    paramActivity.b = 2130838155;
    paramActivity.a = 2130838155;
    paramActivity.c = 2130838155;
    this.C = paramActivity.b();
    paramActivity = n.a().a(Bitmap.Config.RGB_565);
    paramActivity.j = com.d.a.b.a.e.e;
    paramActivity.c = 2130838024;
    paramActivity.b = 2130838024;
    paramActivity.a = 2130838024;
    paramActivity.q = new com.d.a.b.c.c((int)ay.a(18.0F));
    this.E = paramActivity.b();
    paramActivity = n.a().a(Bitmap.Config.RGB_565);
    paramActivity.j = com.d.a.b.a.e.e;
    this.B = paramActivity.b();
    this.D = new o();
    this.f = ar.a();
    ((com.xueqiu.android.common.b)this.e).a(rx.a.b.a.b(this.e, new IntentFilter("com.xueqiu.android.action.statusAnswerComplete")).c(new rx.c.b() {}));
  }
  
  private View a(View paramView, int paramInt)
  {
    final RecommendCard localRecommendCard = ((Status)getItem(paramInt)).getRecommendStatusCard();
    LinearLayout localLinearLayout = (LinearLayout)a(paramView, paramInt, localRecommendCard);
    List localList = localRecommendCard.getElements();
    if (localList.size() == 0) {}
    label158:
    for (;;)
    {
      return localLinearLayout;
      paramInt = 0;
      for (;;)
      {
        if (paramInt >= localList.size()) {
          break label158;
        }
        final Status localStatus = (Status)localList.get(paramInt);
        if (localStatus == null) {
          break;
        }
        ViewGroup localViewGroup = (ViewGroup)LayoutInflater.from(this.c).inflate(2130903168, (ViewGroup)paramView, false);
        View localView = localViewGroup.getChildAt(0);
        if (localView != null) {
          localView.setVisibility(8);
        }
        localViewGroup.setOnClickListener(new View.OnClickListener()
        {
          public final void onClick(View paramAnonymousView)
          {
            if (localStatus.getType().equals("normal"))
            {
              paramAnonymousView = new Intent(ak.d(ak.this), StatusDetailActivity.class);
              paramAnonymousView.putExtra("status", localStatus);
              ak.d(ak.this).startActivity(paramAnonymousView);
              if (ak.e(ak.this) != null) {
                ak.e(ak.this).a(localRecommendCard.getId(), String.valueOf(localStatus.getStatusId()), localRecommendCard.getType(), localRecommendCard.getLocation());
              }
            }
          }
        });
        c(localStatus);
        a(localViewGroup, localStatus);
        localLinearLayout.addView(localViewGroup);
        paramInt += 1;
      }
    }
  }
  
  private View a(View paramView, final int paramInt, final RecommendCard paramRecommendCard)
  {
    LinearLayout localLinearLayout = new LinearLayout(this.c);
    localLinearLayout.setLayoutParams(new AbsListView.LayoutParams(-1, -2));
    localLinearLayout.setOrientation(1);
    localLinearLayout.removeAllViews();
    paramView = LayoutInflater.from(this.c).inflate(2130903149, (ViewGroup)paramView, false);
    ((SnowBallTextView)paramView.findViewById(2131624420)).setText(com.xueqiu.android.base.util.ai.a(paramRecommendCard.getName(), this.c));
    ImageView localImageView = (ImageView)paramView.findViewById(2131624421);
    localImageView.setVisibility(0);
    localImageView.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        ak.a(ak.this, paramInt, paramRecommendCard.getId());
      }
    });
    localLinearLayout.addView(paramView);
    return localLinearLayout;
  }
  
  private void a(View paramView, final Status paramStatus)
  {
    final Object localObject1;
    Object localObject4;
    final Object localObject2;
    if (paramView.getTag() == null)
    {
      localObject1 = new al();
      ((al)localObject1).a = ((ImageView)paramView.findViewById(2131624464));
      ((al)localObject1).b = ((ImageView)paramView.findViewById(2131624401));
      ((al)localObject1).c = ((TextView)paramView.findViewById(2131624488));
      ((al)localObject1).d = ((TextView)paramView.findViewById(2131624441));
      ((al)localObject1).e = ((TextView)paramView.findViewById(2131624490));
      ((al)localObject1).f = ((SnowBallTextView)paramView.findViewById(2131624491));
      ((al)localObject1).g = ((ImageView)paramView.findViewById(2131624492));
      ((al)localObject1).h = ((TextView)paramView.findViewById(2131624505));
      ((al)localObject1).i = ((TextView)paramView.findViewById(2131624454));
      ((al)localObject1).j = ((TextView)paramView.findViewById(2131624508));
      ((al)localObject1).k = ((SnowBallTextView)paramView.findViewById(2131624509));
      ((al)localObject1).l = ((ImageView)paramView.findViewById(2131624510));
      ((al)localObject1).g.setVisibility(8);
      ((al)localObject1).q = paramView.findViewById(2131624515);
      ((al)localObject1).r = paramView.findViewById(2131624517);
      ((al)localObject1).s = paramView.findViewById(2131624519);
      ((al)localObject1).t = paramView.findViewById(2131624514);
      ((al)localObject1).p = ((TextView)paramView.findViewById(2131624475));
      ((al)localObject1).n = ((TextView)paramView.findViewById(2131624511));
      ((al)localObject1).m = paramView.findViewById(2131624452);
      ((al)localObject1).u = paramView.findViewById(2131624501);
      ((al)localObject1).v = paramView.findViewById(2131624500);
      ((al)localObject1).w = ((TextView)paramView.findViewById(2131624502));
      ((al)localObject1).x = ((LinearLayout)paramView.findViewById(2131624512));
      ((al)localObject1).x.setVisibility(8);
      ((al)localObject1).y = ((TextView)paramView.findViewById(2131624429));
      ((al)localObject1).g.setOnClickListener(this.F);
      ((al)localObject1).l.setOnClickListener(this.F);
      ((al)localObject1).l.setVisibility(8);
      ((al)localObject1).o = ((TextView)paramView.findViewById(2131624442));
      ((al)localObject1).z = paramView.findViewById(2131624489);
      ((al)localObject1).A = paramView.findViewById(2131624503);
      ((al)localObject1).B = paramView.findViewById(2131624507);
      ((al)localObject1).C = paramView.findViewById(2131624506);
      paramView.setTag(localObject1);
      localObject4 = paramStatus.getPreparedShowObj();
      localObject2 = paramStatus.getUser().getProfileImageUrl();
      if (paramStatus.getMark() != 4) {
        break label652;
      }
      paramView.findViewById(2131624497).setVisibility(0);
      paramView.findViewById(2131624499).setVisibility(0);
      paramView.findViewById(2131624451).setVisibility(8);
      paramView.findViewById(2131624452).setVisibility(8);
      paramView.findViewById(2131624235).setVisibility(8);
      ((al)localObject1).y.setText(paramStatus.getText());
    }
    label652:
    label749:
    Object localObject5;
    label847:
    label929:
    label962:
    label995:
    label1077:
    int i1;
    final int i2;
    label1124:
    label1281:
    label1404:
    label1437:
    label1470:
    label1564:
    label1687:
    label1752:
    label1930:
    label2257:
    label2270:
    label2283:
    label2296:
    label2309:
    label2322:
    Object localObject3;
    for (;;)
    {
      paramView.findViewById(2131624513).setVisibility(0);
      if ((paramStatus.card == null) || (!"rebalancing".equals(paramStatus.card.type))) {
        break label2764;
      }
      ((al)localObject1).x.setVisibility(0);
      paramView.findViewById(2131624504).setVisibility(8);
      b(((al)localObject1).x, paramStatus.card);
      return;
      localObject1 = (al)paramView.getTag();
      break;
      paramView.findViewById(2131624497).setVisibility(8);
      paramView.findViewById(2131624499).setVisibility(8);
      paramView.findViewById(2131624451).setVisibility(0);
      paramView.findViewById(2131624452).setVisibility(0);
      paramView.findViewById(2131624235).setVisibility(0);
      int i3;
      if ((localObject2 != null) && (!TextUtils.isEmpty((CharSequence)localObject2)))
      {
        this.z.a((String)localObject2, ((al)localObject1).a, this.B, new o()
        {
          public final void a(String paramAnonymousString, View paramAnonymousView)
          {
            if (paramStatus.getUser().getGender() == User.Gender.FEMALE)
            {
              ((ImageView)paramAnonymousView).setImageDrawable(ak.b(ak.this));
              return;
            }
            ((ImageView)paramAnonymousView).setImageDrawable(ak.c(ak.this));
          }
        });
        if (!paramStatus.getUser().isVerified()) {
          break label2257;
        }
        ((al)localObject1).b.setVisibility(0);
        localObject2 = paramStatus.getUser().getVerifyType();
        localObject5 = ((al)localObject1).b;
        if (localObject2 != UserVerifyType.ALALYST) {
          break label1930;
        }
        if ((this.r == null) || (this.r.get() == null)) {
          this.r = new WeakReference(this.c.getResources().getDrawable(2130838672));
        }
        ((ImageView)localObject5).setImageDrawable((Drawable)this.r.get());
        ((al)localObject1).c.setText(aw.a(paramStatus.getUser(), paramStatus.getCreatedAt(), paramView.getWidth()));
        if (TextUtils.isEmpty(paramStatus.getUser().getRemark())) {
          break label2270;
        }
        ((al)localObject1).d.setText("(" + paramStatus.getUser().getRemark() + ")");
        ((al)localObject1).d.setVisibility(0);
        if (TextUtils.isEmpty(((Status.PreparedShowObj)localObject4).titleFromHtml)) {
          break label2283;
        }
        ((al)localObject1).e.setText(((Status.PreparedShowObj)localObject4).titleFromHtml);
        ((al)localObject1).e.setVisibility(0);
        if (TextUtils.isEmpty(((Status.PreparedShowObj)localObject4).textFromHtml)) {
          break label2296;
        }
        ((al)localObject1).f.setText(((Status.PreparedShowObj)localObject4).textFromHtml);
        ((al)localObject1).f.setVisibility(0);
        ((al)localObject1).e.setTextSize(2, this.o);
        ((al)localObject1).f.setTextSize(2, this.o);
        if ((paramStatus.getAndthumbPic() == null) || (TextUtils.isEmpty(paramStatus.getAndthumbPic()))) {
          break label2309;
        }
        a(((al)localObject1).g, paramStatus);
        ((al)localObject1).g.setVisibility(0);
        ((al)localObject1).g.setTag(((al)localObject1).g.getId(), paramStatus.getBmiddlePic());
        i1 = paramStatus.getCommentsCount();
        i2 = paramStatus.getRetweetsCount();
        i3 = paramStatus.getRewardUserCount();
        localObject5 = (TextView)((al)localObject1).s.findViewById(2131624520);
        if (i3 != 0) {
          break label2322;
        }
        localObject2 = r.f(2131165950);
        ((TextView)localObject5).setText((CharSequence)localObject2);
        ((al)localObject1).s.setOnClickListener(new View.OnClickListener()
        {
          public final void onClick(View paramAnonymousView)
          {
            if (u.a().d)
            {
              com.xueqiu.android.base.t.a(ak.d(ak.this), false);
              return;
            }
            long l = paramStatus.getUserId();
            u.a();
            if (l == UserLogonDataPrefs.getLogonUserId())
            {
              Toast.makeText(ak.d(ak.this), "不能给自己打赏", 0).show();
              return;
            }
            if (paramStatus.isTruncated())
            {
              Toast.makeText(ak.d(ak.this), "不能打赏已删除帖子", 0).show();
              return;
            }
            ak.a(ak.this, paramStatus);
          }
        });
        if (!"UNANSWERED".equals(ap.b(paramStatus))) {
          break label2332;
        }
        long l1 = ap.a(paramStatus);
        u.a();
        if (l1 != UserLogonDataPrefs.getLogonUserId()) {
          break label2332;
        }
        paramView.findViewById(2131624235).setVisibility(8);
        ((al)localObject1).t.setVisibility(0);
        ((al)localObject1).t.setOnClickListener(new View.OnClickListener()
        {
          public final void onClick(View paramAnonymousView)
          {
            ak.this.a(paramStatus);
          }
        });
        ((al)localObject1).o.setText(d(paramStatus));
        ((al)localObject1).p.setText(((Status.PreparedShowObj)localObject4).sourceLabel);
        if (paramStatus.getMark() != 2) {
          break label2482;
        }
        ((al)localObject1).z.setVisibility(8);
        ((al)localObject1).A.setVisibility(0);
        b(((al)localObject1).A, paramStatus);
        if (paramStatus.getRetweetedStatus() == null) {
          break label2602;
        }
        localObject2 = paramStatus.getRetweetedStatus();
        localObject4 = ((Status)localObject2).getPreparedShowObj();
        if (((Status)localObject2).getUser() == null) {
          break label2517;
        }
        ((al)localObject1).h.setText(((Status)localObject2).getUser().getScreenName());
        ((al)localObject1).h.setOnClickListener(new View.OnClickListener()
        {
          public final void onClick(View paramAnonymousView)
          {
            paramAnonymousView = new Intent();
            if (localObject2.getUser().getUserId() != 0L)
            {
              paramAnonymousView.setClass(ak.this.c, UserProfileActivity.class);
              paramAnonymousView.putExtra("extra_user", localObject2.getUser());
            }
            for (;;)
            {
              ak.this.c.startActivity(paramAnonymousView);
              return;
              paramAnonymousView = localObject2.getUser().getScreenName();
              paramAnonymousView = paramAnonymousView.substring(paramAnonymousView.lastIndexOf("(") + 1, paramAnonymousView.lastIndexOf(")"));
              paramAnonymousView = com.xueqiu.android.base.util.q.a(ak.this.c, new StockQuote(paramAnonymousView));
            }
          }
        });
        if (TextUtils.isEmpty(((Status)localObject2).getUser().getRemark())) {
          break label2504;
        }
        ((al)localObject1).i.setText("(" + ((Status)localObject2).getUser().getRemark() + ")");
        ((al)localObject1).i.setVisibility(0);
        if (TextUtils.isEmpty(((Status.PreparedShowObj)localObject4).titleFromHtml)) {
          break label2541;
        }
        ((al)localObject1).j.setText(((Status.PreparedShowObj)localObject4).titleFromHtml);
        ((al)localObject1).j.setVisibility(0);
        if (TextUtils.isEmpty(((Status.PreparedShowObj)localObject4).textFromHtml)) {
          break label2554;
        }
        ((al)localObject1).k.setText(((Status.PreparedShowObj)localObject4).textFromHtml);
        ((al)localObject1).k.setVisibility(0);
        ((al)localObject1).j.setTextSize(2, this.o - 0.2F);
        ((al)localObject1).k.setTextSize(2, this.o - 0.2F);
        if ((((Status)localObject2).getAndthumbPic() == null) || (TextUtils.isEmpty(((Status)localObject2).getAndthumbPic()))) {
          break label2567;
        }
        a(((al)localObject1).l, (Status)localObject2);
        ((al)localObject1).l.setVisibility(0);
        ((al)localObject1).l.setTag(((al)localObject1).l.getId(), ((Status)localObject2).getBmiddlePic());
        localObject4 = String.format(this.c.getString(2131165931), new Object[] { Integer.valueOf(((Status)localObject2).getCommentsCount()) });
        ((al)localObject1).n.setText((CharSequence)localObject4);
        ((al)localObject1).n.setOnClickListener(new View.OnClickListener()
        {
          public final void onClick(View paramAnonymousView)
          {
            ak.this.b(localObject2);
          }
        });
        ((al)localObject1).m.setOnClickListener(new View.OnClickListener()
        {
          public final void onClick(View paramAnonymousView)
          {
            paramAnonymousView = new Intent(ak.this.c, StatusDetailActivity.class);
            paramAnonymousView.putExtra("status", paramStatus.getRetweetedStatus());
            ak.this.c.startActivity(paramAnonymousView);
          }
        });
        ((al)localObject1).m.setVisibility(0);
        if (((Status)localObject2).getMark() != 2) {
          break label2580;
        }
        ((al)localObject1).B.setVisibility(8);
        ((al)localObject1).C.setVisibility(0);
        b(((al)localObject1).C, (Status)localObject2);
        ((al)localObject1).a.setOnClickListener(new View.OnClickListener()
        {
          public final void onClick(View paramAnonymousView)
          {
            paramAnonymousView = new Intent();
            if (paramStatus.getUser().getUserId() != 0L)
            {
              paramAnonymousView.setClass(ak.this.c, UserProfileActivity.class);
              paramAnonymousView.putExtra("extra_user", paramStatus.getUser());
            }
            for (;;)
            {
              ak.this.c.startActivity(paramAnonymousView);
              do
              {
                return;
                paramAnonymousView = paramStatus.getUser().getScreenName();
              } while (paramAnonymousView == null);
              paramAnonymousView = paramAnonymousView.substring(paramAnonymousView.lastIndexOf("(") + 1, paramAnonymousView.lastIndexOf(")"));
              paramAnonymousView = com.xueqiu.android.base.util.q.a(ak.this.c, new StockQuote(paramAnonymousView));
            }
          }
        });
        l1 = paramStatus.getUser().getUserId();
        u.a();
        if (l1 != UserLogonDataPrefs.getLogonUserId()) {
          break label2615;
        }
        ((al)localObject1).u.setVisibility(0);
        ((al)localObject1).v.setOnClickListener(new View.OnClickListener()
        {
          public final void onClick(View paramAnonymousView)
          {
            ak.b(ak.this, paramStatus);
          }
        });
        localObject4 = this.c.getResources();
        if (paramStatus.getMark() != 2) {
          break label2643;
        }
        localObject5 = ((al)localObject1).w;
        if (paramStatus.getMarkDesc() == null) {
          break label2628;
        }
      }
      label2332:
      label2382:
      label2472:
      label2482:
      label2504:
      label2517:
      label2541:
      label2554:
      label2567:
      label2580:
      label2602:
      label2615:
      label2628:
      for (localObject2 = paramStatus.getMarkDesc();; localObject3 = this.e.getString(2131166118))
      {
        ((TextView)localObject5).setText((CharSequence)localObject2);
        com.xueqiu.android.base.util.a.a(((al)localObject1).w, ((Resources)localObject4).getDrawable(2130837675));
        ((al)localObject1).w.setVisibility(0);
        if (!x.class.getSimpleName().equals(this.i)) {
          break;
        }
        try
        {
          localObject2 = new SNBEvent(1600, 26);
          ((SNBEvent)localObject2).addProperty("ad_id", String.valueOf(paramStatus.getPromotionId()));
          com.xueqiu.android.base.i.a().a((SNBEvent)localObject2);
        }
        catch (Exception localException)
        {
          localException.printStackTrace();
        }
        break;
        if (paramStatus.getUser().getGender() == User.Gender.FEMALE)
        {
          ((al)localObject1).a.setImageDrawable(d());
          break label749;
        }
        ((al)localObject1).a.setImageDrawable(c());
        break label749;
        if (localException == UserVerifyType.COMPANY)
        {
          if ((this.s == null) || (this.s.get() == null)) {
            this.s = new WeakReference(this.c.getResources().getDrawable(2130838673));
          }
          ((ImageView)localObject5).setImageDrawable((Drawable)this.s.get());
          break label847;
        }
        if (localException == UserVerifyType.ADVISER)
        {
          if ((this.u == null) || (this.u.get() == null)) {
            this.u = new WeakReference(this.c.getResources().getDrawable(2130838670));
          }
          ((ImageView)localObject5).setImageDrawable((Drawable)this.u.get());
          break label847;
        }
        if (localException == UserVerifyType.STAFF)
        {
          if ((this.t == null) || (this.t.get() == null)) {
            this.t = new WeakReference(this.c.getResources().getDrawable(2130838145));
          }
          ((ImageView)localObject5).setImageDrawable((Drawable)this.t.get());
          break label847;
        }
        if (localException == UserVerifyType.TRADING)
        {
          if ((this.w == null) || (this.w.get() == null)) {
            this.w = new WeakReference(this.c.getResources().getDrawable(2130838675));
          }
          ((ImageView)localObject5).setImageDrawable((Drawable)this.w.get());
          break label847;
        }
        if ((this.v == null) || (this.v.get() == null)) {
          this.v = new WeakReference(this.c.getResources().getDrawable(2130838674));
        }
        ((ImageView)localObject5).setImageDrawable((Drawable)this.v.get());
        break label847;
        ((al)localObject1).b.setVisibility(8);
        break label847;
        ((al)localObject1).d.setVisibility(8);
        break label929;
        ((al)localObject1).e.setVisibility(8);
        break label962;
        ((al)localObject1).f.setVisibility(8);
        break label995;
        ((al)localObject1).g.setVisibility(8);
        break label1077;
        localObject3 = au.a(i3);
        break label1124;
        paramView.findViewById(2131624235).setVisibility(0);
        ((al)localObject1).t.setVisibility(8);
        localObject5 = (TextView)((al)localObject1).r.findViewById(2131624518);
        if (i1 == 0)
        {
          localObject3 = r.f(2131165342);
          ((TextView)localObject5).setText((CharSequence)localObject3);
          localObject5 = (TextView)((al)localObject1).q.findViewById(2131624516);
          if (i2 != 0) {
            break label2472;
          }
        }
        for (localObject3 = r.f(2131165944);; localObject3 = String.valueOf(i2))
        {
          ((TextView)localObject5).setText((CharSequence)localObject3);
          ((al)localObject1).q.setOnClickListener(new View.OnClickListener()
          {
            public final void onClick(View paramAnonymousView)
            {
              paramAnonymousView = ak.this;
              Status localStatus = paramStatus;
              Intent localIntent = new Intent(paramAnonymousView.c, WriteStatusActivity.class);
              localIntent.putExtra("extra_write_type", 2);
              localIntent.putExtra("extra_status_id", localStatus.getStatusId());
              localIntent.putExtra("extra_paid_to_user", localStatus.getUser());
              if ((localStatus.getPaidMention() != null) && (localStatus.getPaidMention().size() > 0)) {
                localIntent.putExtra("extra_paid_mention", (Parcelable)localStatus.getPaidMention().get(0));
              }
              if (localStatus.getRetweetedStatus() != null)
              {
                String str = localStatus.getUser().getScreenName();
                str = "//<a href=\"/n/" + str + "\" target=\"_blank\">@" + str + "</a>:";
                localIntent.putExtra("extra_retweet_text", str + localStatus.getDescription());
              }
              paramAnonymousView.c.startActivity(localIntent);
              if (ak.e(ak.this) != null) {
                ak.e(ak.this).a(paramStatus.getStatusId());
              }
            }
          });
          ((al)localObject1).r.setOnClickListener(new View.OnClickListener()
          {
            public final void onClick(View paramAnonymousView)
            {
              if (paramStatus.getCommentsCount() == 0) {
                ak.this.a(paramStatus);
              }
              for (;;)
              {
                if (ak.e(ak.this) != null) {
                  ak.e(ak.this).b(paramStatus.getStatusId());
                }
                return;
                ak.this.b(paramStatus);
              }
            }
          });
          break;
          localObject3 = String.valueOf(i1);
          break label2382;
        }
        ((al)localObject1).z.setVisibility(0);
        ((al)localObject1).A.setVisibility(8);
        break label1281;
        ((al)localObject1).i.setVisibility(8);
        break label1404;
        ((al)localObject1).h.setText(2131166570);
        ((al)localObject1).i.setVisibility(8);
        break label1404;
        ((al)localObject1).j.setVisibility(8);
        break label1437;
        ((al)localObject1).k.setVisibility(8);
        break label1470;
        ((al)localObject1).l.setVisibility(8);
        break label1564;
        ((al)localObject1).B.setVisibility(0);
        ((al)localObject1).C.setVisibility(8);
        break label1687;
        ((al)localObject1).m.setVisibility(8);
        break label1687;
        ((al)localObject1).u.setVisibility(8);
        break label1752;
      }
      label2643:
      if (paramStatus.getMark() == 3)
      {
        ((al)localObject1).w.setText(this.e.getString(2131166120));
        com.xueqiu.android.base.util.a.a(((al)localObject1).w, ((Resources)localObject4).getDrawable(2130837675));
        ((al)localObject1).w.setVisibility(0);
      }
      else if (paramStatus.getMark() == 1)
      {
        ((al)localObject1).w.setText(this.e.getString(2131166124));
        com.xueqiu.android.base.util.a.a(((al)localObject1).w, ((Resources)localObject4).getDrawable(2130837676));
        ((al)localObject1).w.setVisibility(0);
      }
      else
      {
        ((al)localObject1).w.setVisibility(8);
      }
    }
    label2764:
    if ((paramStatus.card != null) && ("cube".equals(paramStatus.card.type)))
    {
      ((al)localObject1).x.setVisibility(0);
      paramView.findViewById(2131624504).setVisibility(8);
      a(((al)localObject1).x, paramStatus.card);
      return;
    }
    if ((paramStatus.card != null) && ("stock".equals(paramStatus.card.type)))
    {
      ((al)localObject1).x.setVisibility(0);
      paramView.findViewById(2131624504).setVisibility(8);
      LinearLayout localLinearLayout = ((al)localObject1).x;
      paramView = paramStatus.card;
      localLinearLayout.removeAllViews();
      if (TextUtils.isEmpty(paramView.data))
      {
        localLinearLayout.setVisibility(8);
        return;
      }
      paramStatus = (JsonObject)m.a().fromJson(paramView.data, JsonObject.class);
      paramView = null;
      localObject3 = paramView;
      if (paramStatus.has("quotes"))
      {
        localObject3 = paramView;
        if (paramStatus.get("quotes").isJsonArray()) {
          localObject3 = paramStatus.get("quotes").getAsJsonArray().get(0).getAsJsonObject();
        }
      }
      if (localObject3 == null)
      {
        localLinearLayout.setVisibility(8);
        return;
      }
      label3056:
      label3094:
      label3132:
      label3169:
      label3207:
      TextView localTextView2;
      if ((((JsonObject)localObject3).has("symbol")) && (!((JsonObject)localObject3).get("symbol").isJsonNull()))
      {
        paramStatus = ((JsonObject)localObject3).get("symbol").getAsString();
        if ((!((JsonObject)localObject3).has("name")) || (((JsonObject)localObject3).get("name").isJsonNull())) {
          break label3490;
        }
        localObject1 = ((JsonObject)localObject3).get("name").getAsString();
        if ((!((JsonObject)localObject3).has("current")) || (((JsonObject)localObject3).get("current").isJsonNull())) {
          break label3498;
        }
        localObject4 = ((JsonObject)localObject3).get("current").getAsString();
        if ((!((JsonObject)localObject3).has("percentage")) || (((JsonObject)localObject3).get("percentage").isJsonNull())) {
          break label3506;
        }
        localObject5 = ((JsonObject)localObject3).get("percentage").getAsString();
        if ((!((JsonObject)localObject3).has("change")) || (((JsonObject)localObject3).get("change").isJsonNull())) {
          break label3514;
        }
        paramView = ((JsonObject)localObject3).get("change").getAsString();
        if ((!((JsonObject)localObject3).has("type")) || (((JsonObject)localObject3).get("type").isJsonNull())) {
          break label3521;
        }
        i2 = ((JsonObject)localObject3).get("type").getAsInt();
        localObject3 = LayoutInflater.from(this.c).inflate(2130903523, localLinearLayout, false);
        ((View)localObject3).setOnClickListener(new View.OnClickListener()
        {
          public final void onClick(View paramAnonymousView)
          {
            paramAnonymousView = com.xueqiu.android.base.util.q.a(ak.this.c, new StockQuote(localObject1, paramStatus));
            ak.this.c.startActivity(paramAnonymousView);
            paramAnonymousView = new SNBEvent(1300, 10);
            paramAnonymousView.addProperty("symbol", paramStatus);
            com.xueqiu.android.base.i.a().a(paramAnonymousView);
          }
        });
        View localView = ((View)localObject3).findViewById(2131624422);
        TextView localTextView3 = (TextView)((View)localObject3).findViewById(2131624423);
        TextView localTextView1 = (TextView)((View)localObject3).findViewById(2131624424);
        TextView localTextView4 = (TextView)((View)localObject3).findViewById(2131624425);
        TextView localTextView5 = (TextView)((View)localObject3).findViewById(2131624426);
        localTextView2 = (TextView)((View)localObject3).findViewById(2131624623);
        localTextView3.setText((CharSequence)localObject4);
        localTextView4.setText((CharSequence)localObject1);
        localTextView5.setText(paramStatus);
        float f1 = Float.valueOf(paramView).floatValue();
        localObject1 = paramView;
        if (f1 > 0.0F) {
          localObject1 = "+" + paramView;
        }
        localTextView1.setText(String.format("%s(%s%%)", new Object[] { localObject1, localObject5 }));
        i1 = this.f.a(f1);
        if (i1 != r.a(2131558626)) {
          break label3527;
        }
        i1 = 2130838421;
        label3424:
        com.xueqiu.android.base.util.a.a(localView, r.h(i1));
        if (!as.g(i2)) {
          break label3554;
        }
        localTextView2.setVisibility(0);
        localTextView2.setText(r.d(2131166197));
        localTextView2.setOnClickListener(new View.OnClickListener()
        {
          public final void onClick(View paramAnonymousView)
          {
            if ("--".equalsIgnoreCase(paramStatus)) {
              return;
            }
            com.xueqiu.android.trade.g.a(ak.this.c, paramStatus, false, i2);
            paramAnonymousView = new SNBEvent(1300, 11);
            paramAnonymousView.addProperty("symbol", paramStatus);
            com.xueqiu.android.base.i.a().a(paramAnonymousView);
          }
        });
      }
      for (;;)
      {
        localLinearLayout.addView((View)localObject3);
        return;
        paramStatus = "";
        break;
        label3490:
        localObject1 = "";
        break label3056;
        label3498:
        localObject4 = "";
        break label3094;
        label3506:
        localObject5 = "";
        break label3132;
        label3514:
        paramView = "";
        break label3169;
        label3521:
        i2 = 0;
        break label3207;
        label3527:
        if (i1 == r.a(2131558624))
        {
          i1 = 2130838420;
          break label3424;
        }
        i1 = 2130838419;
        break label3424;
        label3554:
        localTextView2.setVisibility(8);
      }
    }
    ((al)localObject1).x.setVisibility(8);
    paramView.findViewById(2131624513).setVisibility(8);
    paramView.findViewById(2131624504).setVisibility(0);
  }
  
  private void a(ImageView paramImageView, Status paramStatus)
  {
    paramStatus = paramStatus.getAndthumbPic();
    if ((paramStatus == null) || (paramStatus.equals(""))) {
      return;
    }
    this.z.a(paramStatus, paramImageView, this.A, this.D);
  }
  
  private void a(LinearLayout paramLinearLayout, Card paramCard)
  {
    paramLinearLayout.removeAllViews();
    if (TextUtils.isEmpty(paramCard.data))
    {
      paramLinearLayout.setVisibility(8);
      return;
    }
    Object localObject4 = (JsonObject)m.a().fromJson(paramCard.data, JsonObject.class);
    Object localObject1 = null;
    Object localObject2;
    if ((((JsonObject)localObject4).has("style")) && (((JsonObject)localObject4).get("style").isJsonObject()))
    {
      localObject2 = ((JsonObject)localObject4).get("style").getAsJsonObject();
      paramCard = (Card)localObject1;
      if (((JsonObject)localObject2).has("color0"))
      {
        paramCard = (Card)localObject1;
        if (!((JsonObject)localObject2).get("color0").isJsonNull()) {
          paramCard = ((JsonObject)localObject2).get("color0").getAsString();
        }
      }
      if ((((JsonObject)localObject2).has("color1")) && (!((JsonObject)localObject2).get("color1").isJsonNull()))
      {
        localObject2 = ((JsonObject)localObject2).get("color1").getAsString();
        localObject1 = paramCard;
        paramCard = (Card)localObject2;
      }
    }
    for (;;)
    {
      String str2;
      label243:
      final String str1;
      label281:
      Object localObject3;
      label319:
      String str3;
      label357:
      float f1;
      label394:
      String str4;
      label432:
      String str5;
      label470:
      label508:
      View localView1;
      View localView2;
      TextView localTextView8;
      TextView localTextView4;
      TextView localTextView5;
      ImageView localImageView1;
      TextView localTextView1;
      TextView localTextView6;
      ImageView localImageView2;
      TextView localTextView7;
      TextView localTextView9;
      TextView localTextView10;
      ImageView localImageView3;
      LinearLayout localLinearLayout;
      TextView localTextView2;
      TextView localTextView3;
      int i1;
      if ((((JsonObject)localObject4).has("photo_domain")) && (!((JsonObject)localObject4).get("photo_domain").isJsonNull()))
      {
        localObject2 = ((JsonObject)localObject4).get("photo_domain").getAsString();
        if ((!((JsonObject)localObject4).has("name")) || (((JsonObject)localObject4).get("name").isJsonNull())) {
          break label956;
        }
        str2 = ((JsonObject)localObject4).get("name").getAsString();
        if ((!((JsonObject)localObject4).has("symbol")) || (((JsonObject)localObject4).get("symbol").isJsonNull())) {
          break label964;
        }
        str1 = ((JsonObject)localObject4).get("symbol").getAsString();
        if ((!((JsonObject)localObject4).has("tag")) || (((JsonObject)localObject4).get("tag").isJsonNull())) {
          break label972;
        }
        localObject3 = ((JsonObject)localObject4).get("tag").getAsString();
        if ((!((JsonObject)localObject4).has("market")) || (((JsonObject)localObject4).get("market").isJsonNull())) {
          break label980;
        }
        str3 = ((JsonObject)localObject4).get("market").getAsString();
        if ((!((JsonObject)localObject4).has("total_gain")) || (((JsonObject)localObject4).get("total_gain").isJsonNull())) {
          break label988;
        }
        f1 = ((JsonObject)localObject4).get("total_gain").getAsFloat();
        if ((!((JsonObject)localObject4).has("owner_name")) || (((JsonObject)localObject4).get("owner_name").isJsonNull())) {
          break label993;
        }
        str4 = ((JsonObject)localObject4).get("owner_name").getAsString();
        if ((!((JsonObject)localObject4).has("owner_profile_image_url")) || (((JsonObject)localObject4).get("owner_profile_image_url").isJsonNull())) {
          break label1001;
        }
        str5 = ((JsonObject)localObject4).get("owner_profile_image_url").getAsString();
        if ((!((JsonObject)localObject4).has("follower_count")) || (((JsonObject)localObject4).get("follower_count").isJsonNull())) {
          break label1009;
        }
        localObject4 = ((JsonObject)localObject4).get("follower_count").getAsString();
        ArrayList localArrayList = new ArrayList();
        localView1 = LayoutInflater.from(this.c).inflate(2130903293, paramLinearLayout, false);
        localView2 = localView1.findViewById(2131624573);
        localTextView8 = (TextView)localView1.findViewById(2131624097);
        localTextView4 = (TextView)localView1.findViewById(2131624941);
        localTextView5 = (TextView)localView1.findViewById(2131624854);
        localImageView1 = (ImageView)localView1.findViewById(2131624427);
        localTextView1 = (TextView)localView1.findViewById(2131624943);
        localTextView6 = (TextView)localView1.findViewById(2131624944);
        localImageView2 = (ImageView)localView1.findViewById(2131624912);
        localTextView7 = (TextView)localView1.findViewById(2131624945);
        localTextView9 = (TextView)localView1.findViewById(2131624947);
        localTextView10 = (TextView)localView1.findViewById(2131624948);
        localImageView3 = (ImageView)localView1.findViewById(2131624430);
        localLinearLayout = (LinearLayout)localView1.findViewById(2131624892);
        localTextView2 = (TextView)localView1.findViewById(2131624942);
        localTextView3 = (TextView)localView1.findViewById(2131624429);
        if ((!TextUtils.isEmpty((CharSequence)localObject1)) && (!TextUtils.isEmpty(paramCard)))
        {
          i1 = Color.parseColor((String)localObject1);
          i2 = Color.parseColor(paramCard);
          paramCard = new ShapeDrawable(new OvalShape());
          paramCard.getPaint().setFlags(3);
          paramCard.getPaint().setColor(new int[] { i1, i2 }[0]);
          com.xueqiu.android.base.util.a.a(localView2, paramCard);
        }
        localLinearLayout.removeAllViews();
        localArrayList.clear();
        if (!TextUtils.isEmpty((CharSequence)localObject3)) {
          localArrayList.addAll(Arrays.asList(((String)localObject3).split(",")));
        }
        if (localArrayList.size() <= 0) {
          break label1034;
        }
        i1 = 0;
        label851:
        if (i1 >= localArrayList.size()) {
          break label1034;
        }
        paramCard = (String)localArrayList.get(i1);
        localObject1 = new LinearLayout.LayoutParams(-2, -2);
        if (i1 != 0) {
          break label1017;
        }
      }
      label956:
      label964:
      label972:
      label980:
      label988:
      label993:
      label1001:
      label1009:
      label1017:
      for (int i2 = 0;; i2 = (int)ay.a(localView2.getContext(), 5.0F))
      {
        ((LinearLayout.LayoutParams)localObject1).setMargins(i2, 0, 0, 0);
        localObject3 = (TextView)LayoutInflater.from(this.c).inflate(2130903319, localLinearLayout, false);
        ((TextView)localObject3).setText(paramCard);
        localLinearLayout.addView((View)localObject3, (ViewGroup.LayoutParams)localObject1);
        i1 += 1;
        break label851;
        localObject2 = "";
        break;
        str2 = "";
        break label243;
        str1 = "";
        break label281;
        localObject3 = "";
        break label319;
        str3 = "";
        break label357;
        f1 = 0.0F;
        break label394;
        str4 = "";
        break label432;
        str5 = "";
        break label470;
        localObject4 = "";
        break label508;
      }
      label1034:
      localTextView8.setText(str2);
      localTextView9.setVisibility(8);
      localTextView10.setVisibility(8);
      if (!TextUtils.isEmpty(str5))
      {
        paramCard = str5.split(",");
        if ((paramCard != null) && (paramCard.length > 0))
        {
          paramCard = (String)localObject2 + paramCard[(paramCard.length - 1)];
          com.d.a.b.f.a().a(paramCard, localImageView3, this.E, new o());
        }
      }
      localTextView4.setText(com.xueqiu.android.cube.a.c.a(f1));
      localTextView5.setText(2131165446);
      localTextView6.setText(str4);
      localImageView2.setVisibility(8);
      localTextView7.setText(com.xueqiu.android.cube.a.c.a(String.valueOf(localObject4)));
      paramCard = Market.valueOf(str3.toUpperCase());
      localTextView2.setText(paramCard.description());
      localTextView2.setBackgroundResource(paramCard.bgResId());
      if (as.b(str3.toLowerCase()))
      {
        localTextView1.setVisibility(0);
        localImageView1.setVisibility(8);
        localTextView1.setOnClickListener(new View.OnClickListener()
        {
          public final void onClick(View paramAnonymousView)
          {
            com.xueqiu.android.trade.g.a(ak.this.c, 0L, str1);
            com.xueqiu.android.base.util.b.a(ak.this.c, 2131166465);
            paramAnonymousView = new SNBEvent(1300, 16);
            paramAnonymousView.addProperty("symbol", str1);
            com.xueqiu.android.base.i.a().a(paramAnonymousView);
          }
        });
      }
      for (;;)
      {
        localView1.setOnClickListener(new View.OnClickListener()
        {
          public final void onClick(View paramAnonymousView)
          {
            paramAnonymousView = new Intent(ak.this.c, CubeActivity.class);
            paramAnonymousView.putExtra("extra_cube_symbol", str1);
            ak.this.c.startActivity(paramAnonymousView);
            paramAnonymousView = new SNBEvent(1300, 15);
            paramAnonymousView.addProperty("symbol", str1);
            com.xueqiu.android.base.i.a().a(paramAnonymousView);
          }
        });
        localTextView3.setVisibility(8);
        paramLinearLayout.addView(localView1);
        return;
        localTextView1.setVisibility(8);
        localImageView1.setVisibility(8);
      }
      localObject2 = null;
      localObject1 = paramCard;
      paramCard = (Card)localObject2;
      continue;
      paramCard = null;
      localObject1 = null;
    }
  }
  
  private View b(View paramView, int paramInt)
  {
    final RecommendCard localRecommendCard = ((Status)getItem(paramInt)).getRecommendStockCard();
    paramView = (LinearLayout)a(paramView, paramInt, localRecommendCard);
    Iterator localIterator = localRecommendCard.getElements().iterator();
    if (localIterator.hasNext())
    {
      final RecommendStock localRecommendStock = (RecommendStock)localIterator.next();
      final View localView1 = LayoutInflater.from(this.c).inflate(2130903150, null, false);
      localView1.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          Intent localIntent = com.xueqiu.android.base.util.q.a(paramAnonymousView.getContext(), new StockQuote(localRecommendStock.getName(), localRecommendStock.getSymbol()));
          paramAnonymousView.getContext().startActivity(localIntent);
          if (ak.e(ak.this) != null) {
            ak.e(ak.this).a(localRecommendCard.getId(), localRecommendStock.getSymbol(), localRecommendCard.getType(), localRecommendCard.getLocation());
          }
        }
      });
      View localView2 = localView1.findViewById(2131624422);
      TextView localTextView1 = (TextView)localView1.findViewById(2131624423);
      TextView localTextView2 = (TextView)localView1.findViewById(2131624424);
      TextView localTextView3 = (TextView)localView1.findViewById(2131624425);
      TextView localTextView4 = (TextView)localView1.findViewById(2131624426);
      TextView localTextView5 = (TextView)localView1.findViewById(2131624429);
      View localView3 = localView1.findViewById(2131624427);
      b((ImageView)localView3.findViewById(2131624428), localRecommendStock.isHasExist());
      localView3.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          Object localObject = ak.this;
          paramAnonymousView = localRecommendStock;
          View localView = localView1;
          localObject = new ak.27((ak)localObject, (com.xueqiu.android.common.b)((ak)localObject).e, paramAnonymousView, localView);
          if (paramAnonymousView.isHasExist())
          {
            com.xueqiu.android.common.b.g().d(paramAnonymousView.getSymbol(), (p)localObject);
            return;
          }
          com.xueqiu.android.common.b.g().a(paramAnonymousView.getSymbol(), 2, (p)localObject);
        }
      });
      localTextView1.setText(String.format(Locale.CHINA, "%.2f", new Object[] { Double.valueOf(localRecommendStock.getCurrent()) }));
      localTextView3.setText(localRecommendStock.getName());
      localTextView4.setText(localRecommendStock.getSymbol());
      localView2.setBackgroundColor(ar.a().a(localRecommendStock.getChange()));
      localTextView2.setText(String.format(Locale.CHINA, "%+.2f(%+.2f)", new Object[] { Double.valueOf(localRecommendStock.getChange()), Double.valueOf(localRecommendStock.getPercentage()) }));
      if (!TextUtils.isEmpty(localRecommendStock.getRecommendReason()))
      {
        localTextView5.setVisibility(0);
        localTextView5.setText(au.a("点评：", localRecommendStock.getRecommendReason(), "#ff7700"));
      }
      for (;;)
      {
        paramView.addView(localView1);
        break;
        localTextView5.setVisibility(8);
      }
    }
    return paramView;
  }
  
  private void b(View paramView, final Status paramStatus)
  {
    Object localObject1 = new SNBEvent(1300, 5);
    ((SNBEvent)localObject1).addProperty("ad_id", String.valueOf(paramStatus.getStatusId()));
    com.xueqiu.android.base.i.a().a((SNBEvent)localObject1);
    localObject1 = (ImageView)paramView.findViewById(2131624628);
    Object localObject2 = (TextView)paramView.findViewById(2131624629);
    TextView localTextView = (TextView)paramView.findViewById(2131624630);
    ((ImageView)localObject1).setLayoutParams(new LinearLayout.LayoutParams(-1, (int)((((Activity)this.c).getWindowManager().getDefaultDisplay().getWidth() - r.c(2131230926)) / 3.0D)));
    ((TextView)localObject2).setText(com.xueqiu.android.base.util.ai.a(paramStatus.getTitle(), this.c, true));
    localTextView.setText(com.xueqiu.android.base.util.ai.a(paramStatus.getDescription(), this.c, true));
    this.z.a(paramStatus.getPromotionPic(), (ImageView)localObject1, this.C, new o()
    {
      public final void a(String paramAnonymousString, View paramAnonymousView, Bitmap paramAnonymousBitmap)
      {
        super.a(paramAnonymousString, paramAnonymousView, paramAnonymousBitmap);
      }
    });
    if (paramStatus.getPromotionUrl() != null)
    {
      localObject2 = paramView.findViewById(2131624503);
      localObject1 = localObject2;
      if (localObject2 == null) {
        localObject1 = paramView.findViewById(2131624506);
      }
      if (localObject1 != null) {
        ((View)localObject1).setOnClickListener(new View.OnClickListener()
        {
          public final void onClick(View paramAnonymousView)
          {
            com.xueqiu.android.common.q.a(paramStatus.getPromotionUrl(), ak.this.c);
            paramAnonymousView = new SNBEvent(1300, 6);
            paramAnonymousView.addProperty("ad_id", String.valueOf(paramStatus.getPromotionId()));
            com.xueqiu.android.base.i.a().a(paramAnonymousView);
            paramAnonymousView = com.xueqiu.android.base.q.a().b();
            u.a();
            paramAnonymousView.d(UserLogonDataPrefs.getLogonUserId(), String.valueOf(paramStatus.getPromotionId()), new p()
            {
              public final void a(y paramAnonymous2y)
              {
                aa.a(paramAnonymous2y);
              }
            });
          }
        });
      }
    }
  }
  
  private static void b(ImageView paramImageView, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      paramImageView.setImageResource(2130837830);
      return;
    }
    paramImageView.setImageResource(2130837829);
  }
  
  private void b(LinearLayout paramLinearLayout, Card paramCard)
  {
    paramLinearLayout.removeAllViews();
    if (TextUtils.isEmpty(paramCard.data))
    {
      paramLinearLayout.setVisibility(8);
      return;
    }
    Object localObject3 = (JsonObject)m.a().fromJson(paramCard.data, JsonObject.class);
    int i1;
    if (((JsonObject)localObject3).has("balance_stock_count")) {
      if (((JsonObject)localObject3).get("balance_stock_count").isJsonNull()) {
        i1 = 0;
      }
    }
    for (;;)
    {
      final Object localObject1;
      if (((JsonObject)localObject3).has("total_gain")) {
        if (((JsonObject)localObject3).get("total_gain").isJsonNull()) {
          localObject1 = null;
        }
      }
      for (;;)
      {
        label95:
        if (((JsonObject)localObject3).has("balance_histories")) {
          if (((JsonObject)localObject3).get("balance_histories").isJsonNull()) {
            paramCard = null;
          }
        }
        for (;;)
        {
          label122:
          Object localObject2;
          if (((JsonObject)localObject3).has("name")) {
            if (((JsonObject)localObject3).get("name").isJsonNull()) {
              localObject2 = "--";
            }
          }
          for (;;)
          {
            label152:
            int i3 = 0;
            int i2 = i3;
            if (((JsonObject)localObject3).has("market"))
            {
              i2 = i3;
              if (!((JsonObject)localObject3).get("market").isJsonNull())
              {
                i2 = i3;
                if ("cn".equalsIgnoreCase(((JsonObject)localObject3).get("market").getAsString())) {
                  i2 = 1;
                }
              }
            }
            int i4 = r.a(2131558566);
            i3 = i4;
            if (((JsonObject)localObject3).has("color"))
            {
              i3 = i4;
              if (!((JsonObject)localObject3).get("color").isJsonNull()) {
                i3 = Color.parseColor(((JsonObject)localObject3).get("color").getAsString());
              }
            }
            LayoutInflater.from(this.c).inflate(2130903556, paramLinearLayout, true);
            paramLinearLayout.findViewById(2131625765).setBackgroundColor(i3);
            final long l1;
            label338:
            label415:
            label444:
            label458:
            label512:
            final TextView localTextView;
            float f1;
            label563:
            float f2;
            if ((((JsonObject)localObject3).has("cube_id")) && (!((JsonObject)localObject3).get("cube_id").isJsonNull()))
            {
              l1 = ((JsonObject)localObject3).get("cube_id").getAsLong();
              paramLinearLayout.setOnClickListener(new View.OnClickListener()
              {
                public final void onClick(View paramAnonymousView)
                {
                  paramAnonymousView = new Intent(ak.this.c, CubeActivity.class);
                  paramAnonymousView.putExtra("extra_cube_id", l1);
                  ak.this.c.startActivity(paramAnonymousView);
                  paramAnonymousView = new SNBEvent(1300, 12);
                  paramAnonymousView.addProperty("symbol", String.valueOf(l1));
                  com.xueqiu.android.base.i.a().a(paramAnonymousView);
                }
              });
              ((TextView)paramLinearLayout.findViewById(2131624097)).setText((CharSequence)localObject2);
              localObject2 = (TextView)paramLinearLayout.findViewById(2131625766);
              if (localObject1 == null) {
                break label1070;
              }
              if (((Float)localObject1).floatValue() < 0.0F) {
                break label1032;
              }
              com.xueqiu.android.base.b.a();
              if (!com.xueqiu.android.base.b.i()) {
                break label1018;
              }
              ((TextView)localObject2).setTextColor(r.a(2131558685));
              ((TextView)localObject2).setText(" " + localObject1 + "%");
              if ((paramCard == null) || (paramCard.size() <= 0)) {
                break label1289;
              }
              i3 = 0;
              if (i3 >= paramCard.size()) {
                break label1289;
              }
              localObject2 = paramCard.get(i3).getAsJsonObject();
              localObject3 = LayoutInflater.from(this.c).inflate(2130903554, paramLinearLayout, false);
              if (i2 == 0) {
                break label1081;
              }
              ((View)localObject3).findViewById(2131625019).setVisibility(0);
              localTextView = (TextView)((View)localObject3).findViewById(2131625763);
              if ((((JsonObject)localObject2).has("target_weight")) && (((JsonObject)localObject2).has("prev_weight_adjusted")))
              {
                if (!((JsonObject)localObject2).get("target_weight").isJsonNull()) {
                  break label1097;
                }
                f1 = 0.0F;
                if (!((JsonObject)localObject2).get("prev_weight_adjusted").isJsonNull()) {
                  break label1112;
                }
                f2 = 0.0F;
                label580:
                if (f1 - f2 <= 0.0F) {
                  break label1142;
                }
                localTextView.setText(r.d(2131165266));
                localTextView.setTag(Boolean.valueOf(true));
                com.xueqiu.android.base.b.a();
                if (!com.xueqiu.android.base.b.i()) {
                  break label1128;
                }
                com.xueqiu.android.base.util.a.a(localTextView, r.h(2130837834));
                label630:
                ((TextView)((View)localObject3).findViewById(2131624423)).setText(String.format("%.0f%% --> %.0f%%", new Object[] { Float.valueOf(f2), Float.valueOf(f1) }));
              }
              if ((!((JsonObject)localObject2).has("price")) || (((JsonObject)localObject2).get("price").isJsonNull())) {
                break label1200;
              }
              ((TextView)((View)localObject3).findViewById(2131625764)).setText(r.d(2131166406) + ((JsonObject)localObject2).get("price").getAsString());
              label741:
              if ((((JsonObject)localObject2).has("stock_symbol")) && (((JsonObject)localObject2).has("stock_name")))
              {
                if (!((JsonObject)localObject2).get("stock_symbol").isJsonNull()) {
                  break label1242;
                }
                localObject1 = "--";
                label782:
                if (!((JsonObject)localObject2).get("stock_name").isJsonNull()) {
                  break label1258;
                }
                localObject2 = "--";
                label801:
                ((TextView)((View)localObject3).findViewById(2131625015)).setText((CharSequence)localObject2);
                ((TextView)((View)localObject3).findViewById(2131625015)).setTag(localObject2);
                ((TextView)((View)localObject3).findViewById(2131625016)).setText((CharSequence)localObject1);
                ((TextView)((View)localObject3).findViewById(2131625016)).setTag(localObject1);
                ((View)localObject3).findViewById(2131625019).setOnClickListener(new View.OnClickListener()
                {
                  public final void onClick(View paramAnonymousView)
                  {
                    boolean bool = ((Boolean)localTextView.getTag()).booleanValue();
                    if ("--".equalsIgnoreCase(localObject1)) {
                      return;
                    }
                    paramAnonymousView = ak.this.c;
                    String str = localObject1;
                    if (!bool) {}
                    for (bool = true;; bool = false)
                    {
                      com.xueqiu.android.trade.g.a(paramAnonymousView, str, bool, -1);
                      paramAnonymousView = new SNBEvent(1300, 14);
                      paramAnonymousView.addProperty("symbol", localObject1);
                      com.xueqiu.android.base.i.a().a(paramAnonymousView);
                      return;
                    }
                  }
                });
              }
              if ((i1 > 2) || (i3 != paramCard.size() - 1)) {
                break label1274;
              }
              ((View)localObject3).findViewById(2131624880).setVisibility(8);
            }
            for (;;)
            {
              paramLinearLayout.addView((View)localObject3);
              ((View)localObject3).setOnClickListener(new View.OnClickListener()
              {
                public final void onClick(View paramAnonymousView)
                {
                  Object localObject = (String)paramAnonymousView.findViewById(2131625015).getTag();
                  paramAnonymousView = (String)paramAnonymousView.findViewById(2131625016).getTag();
                  localObject = com.xueqiu.android.base.util.q.a(ak.this.c, new StockQuote((String)localObject, paramAnonymousView));
                  ak.this.c.startActivity((Intent)localObject);
                  localObject = new SNBEvent(1300, 13);
                  ((SNBEvent)localObject).addProperty("symbol", paramAnonymousView);
                  com.xueqiu.android.base.i.a().a((SNBEvent)localObject);
                }
              });
              i3 += 1;
              break label458;
              i1 = ((JsonObject)localObject3).get("balance_stock_count").getAsInt();
              break;
              localObject1 = Float.valueOf(((JsonObject)localObject3).get("total_gain").getAsFloat());
              break label95;
              paramCard = ((JsonObject)localObject3).get("balance_histories").getAsJsonArray();
              break label122;
              localObject2 = ((JsonObject)localObject3).get("name").getAsString();
              break label152;
              l1 = 0L;
              break label338;
              label1018:
              ((TextView)localObject2).setTextColor(r.a(2131558684));
              break label415;
              label1032:
              com.xueqiu.android.base.b.a();
              if (com.xueqiu.android.base.b.i())
              {
                ((TextView)localObject2).setTextColor(r.a(2131558681));
                break label415;
              }
              ((TextView)localObject2).setTextColor(r.a(2131558680));
              break label415;
              label1070:
              ((TextView)localObject2).setText(" --%");
              break label444;
              label1081:
              ((View)localObject3).findViewById(2131625019).setVisibility(8);
              break label512;
              label1097:
              f1 = ((JsonObject)localObject2).get("target_weight").getAsFloat();
              break label563;
              label1112:
              f2 = ((JsonObject)localObject2).get("prev_weight_adjusted").getAsFloat();
              break label580;
              label1128:
              com.xueqiu.android.base.util.a.a(localTextView, r.h(2130837833));
              break label630;
              label1142:
              localTextView.setText(r.d(2131166104));
              localTextView.setTag(Boolean.valueOf(false));
              com.xueqiu.android.base.b.a();
              if (com.xueqiu.android.base.b.i())
              {
                com.xueqiu.android.base.util.a.a(localTextView, r.h(2130838465));
                break label630;
              }
              com.xueqiu.android.base.util.a.a(localTextView, r.h(2130838464));
              break label630;
              label1200:
              ((TextView)((View)localObject3).findViewById(2131625764)).setText(r.d(2131166406) + "--");
              break label741;
              label1242:
              localObject1 = ((JsonObject)localObject2).get("stock_symbol").getAsString();
              break label782;
              label1258:
              localObject2 = ((JsonObject)localObject2).get("stock_name").getAsString();
              break label801;
              label1274:
              ((View)localObject3).findViewById(2131624880).setVisibility(0);
            }
            label1289:
            LayoutInflater.from(this.c).inflate(2130903555, paramLinearLayout, true);
            paramLinearLayout = (TextView)paramLinearLayout.findViewById(2131625656);
            paramLinearLayout.setText(r.d(2131166349).replace("m", String.valueOf(i1)));
            if (i1 <= 2)
            {
              paramLinearLayout.setVisibility(8);
              return;
            }
            paramLinearLayout.setVisibility(0);
            return;
            localObject2 = "--";
          }
          paramCard = null;
        }
        localObject1 = null;
      }
      i1 = 0;
    }
  }
  
  private Drawable c()
  {
    if ((this.p == null) || (this.p.get() == null)) {
      this.p = new WeakReference(r.h(2130838665));
    }
    return (Drawable)this.p.get();
  }
  
  private View c(View paramView, int paramInt)
  {
    final RecommendCard localRecommendCard = ((Status)getItem(paramInt)).getRecommendCubeCard();
    LinearLayout localLinearLayout = (LinearLayout)a(paramView, paramInt, localRecommendCard);
    List localList = localRecommendCard.getElements();
    paramInt = 0;
    while (paramInt < localList.size())
    {
      View localView = LayoutInflater.from(this.c).inflate(2130903292, (ViewGroup)paramView, false);
      final com.xueqiu.android.cube.a.c localc = new com.xueqiu.android.cube.a.c();
      localc.a(localView, LayoutInflater.from(this.c), new com.xueqiu.android.cube.a.b()
      {
        public final void a(Cube paramAnonymousCube) {}
        
        public final void b(Cube paramAnonymousCube)
        {
          com.xueqiu.android.base.util.f.a(paramAnonymousCube, (com.xueqiu.android.common.b)ak.this.c, new com.xueqiu.android.base.util.g()
          {
            public final void a(Cube paramAnonymous2Cube)
            {
              ak.28.this.a.a(paramAnonymous2Cube, CubeCalGainType.TOTAL, false, false);
            }
            
            public final void b(Cube paramAnonymous2Cube)
            {
              ak.28.this.a.a(paramAnonymous2Cube, CubeCalGainType.TOTAL, false, false);
            }
            
            public final void c(Cube paramAnonymous2Cube)
            {
              ak.28.this.a.a(paramAnonymous2Cube, CubeCalGainType.TOTAL, false, false);
            }
          }, false);
        }
        
        public final void c(Cube paramAnonymousCube)
        {
          Intent localIntent = new Intent(ak.this.c, CubeActivity.class);
          localIntent.putExtra("extra_cube_symbol", paramAnonymousCube.getSymbol());
          ak.this.c.startActivity(localIntent);
          if (ak.e(ak.this) != null) {
            ak.e(ak.this).a(localRecommendCard.getId(), paramAnonymousCube.getSymbol(), localRecommendCard.getType(), localRecommendCard.getLocation());
          }
        }
      }, this.A);
      localc.a((Cube)localList.get(paramInt), CubeCalGainType.TOTAL, false, false);
      localLinearLayout.addView(localView);
      localView = new View(this.c);
      localView.setLayoutParams(new LinearLayout.LayoutParams(-1, 1));
      localView.setBackgroundResource(this.c.getTheme().obtainStyledAttributes(new int[] { 2130772270 }).getResourceId(0, 2131558698));
      localLinearLayout.addView(localView);
      paramInt += 1;
    }
    return localLinearLayout;
  }
  
  private void c(Status paramStatus)
  {
    Status.PreparedShowObj localPreparedShowObj = new Status.PreparedShowObj();
    localPreparedShowObj.createDateLabel = d(paramStatus);
    String str1;
    if (TextUtils.isEmpty(paramStatus.getTopicDesc()))
    {
      str1 = paramStatus.getDescription();
      String str2 = str1;
      if (paramStatus.isAnswer()) {
        str2 = ap.a(str1, paramStatus.isRefused(), this.c);
      }
      localPreparedShowObj.textFromHtml = com.xueqiu.android.base.util.ai.a(str2, this.c, true);
      if (TextUtils.isEmpty(paramStatus.getTopicTitle())) {
        break label151;
      }
      localPreparedShowObj.titleFromHtml = Html.fromHtml(paramStatus.getTopicTitle());
    }
    for (;;)
    {
      localPreparedShowObj.sourceLabel = String.format(this.c.getString(2131166105), new Object[] { paramStatus.getSource() });
      if (paramStatus.getRetweetedStatus() != null) {
        c(paramStatus.getRetweetedStatus());
      }
      paramStatus.setPreparedShowObj(localPreparedShowObj);
      return;
      str1 = paramStatus.getTopicDesc();
      break;
      label151:
      if (!TextUtils.isEmpty(paramStatus.getTitle())) {
        localPreparedShowObj.titleFromHtml = Html.fromHtml(paramStatus.getTitle());
      }
    }
  }
  
  private Drawable d()
  {
    if ((this.q == null) || (this.q.get() == null)) {
      this.q = new WeakReference(r.h(2130838660));
    }
    return (Drawable)this.q.get();
  }
  
  private String d(Status paramStatus)
  {
    paramStatus = paramStatus.getCreatedAt();
    if (paramStatus == null) {
      return "";
    }
    return com.xueqiu.android.base.util.h.a(paramStatus, this.c);
  }
  
  public final void a(Status paramStatus)
  {
    Intent localIntent = new Intent(this.c, WriteStatusActivity.class);
    localIntent.putExtra("extra_write_type", 1);
    localIntent.putExtra("extra_status_id", paramStatus.getStatusId());
    localIntent.putExtra("extra_reply_somebody", paramStatus.getUser().getScreenName());
    localIntent.putExtra("extra_paid_to_user", paramStatus.getUser());
    if ((paramStatus.getPaidMention() != null) && (paramStatus.getPaidMention().size() > 0)) {
      localIntent.putExtra("extra_paid_mention", (Parcelable)paramStatus.getPaidMention().get(0));
    }
    this.c.startActivity(localIntent);
  }
  
  public final void b(Status paramStatus)
  {
    Intent localIntent = new Intent(this.e, StatusDetailActivity.class);
    localIntent.putExtra("status", paramStatus);
    localIntent.putExtra("extra_position_to_comment", true);
    this.e.startActivity(localIntent);
  }
  
  public Object getItem(int paramInt)
  {
    return super.getItem(paramInt);
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    paramView = super.getView(paramInt, paramView, paramViewGroup);
    paramViewGroup = (Status)getItem(paramInt);
    final RecommendCard localRecommendCard;
    bd localbd;
    if (paramViewGroup.getType().equals("USER"))
    {
      localRecommendCard = ((Status)getItem(paramInt)).getRecommendUserCard();
      paramViewGroup = (LinearLayout)a(paramView, paramInt, localRecommendCard);
      paramView = paramViewGroup;
      if (localRecommendCard == null) {
        break label298;
      }
      localbd = new bd(this.c);
      localbd.a = localRecommendCard.getElements();
      paramInt = localbd.getCount();
      if (paramInt <= 3) {
        break label386;
      }
      paramInt = 3;
    }
    label298:
    label386:
    for (;;)
    {
      int i1 = 0;
      for (;;)
      {
        paramView = paramViewGroup;
        if (i1 >= paramInt) {
          break;
        }
        paramView = localbd.getView(i1, null, paramViewGroup);
        final Object localObject = (User)localbd.a.get(i1);
        paramView.setOnClickListener(new View.OnClickListener()
        {
          public final void onClick(View paramAnonymousView)
          {
            paramAnonymousView = new Intent(ak.this.c, UserProfileActivity.class);
            paramAnonymousView.putExtra("extra_user", localObject);
            ak.this.c.startActivity(paramAnonymousView);
            if (ak.e(ak.this) != null) {
              ak.e(ak.this).a(localRecommendCard.getId(), String.valueOf(localObject.getUserId()), localRecommendCard.getType(), localRecommendCard.getLocation());
            }
          }
        });
        final ImageView localImageView = (ImageView)paramView.findViewById(2131624458);
        localImageView.setOnClickListener(new View.OnClickListener()
        {
          public final void onClick(View paramAnonymousView)
          {
            ak.a(ak.this, localObject, localImageView);
            if (ak.e(ak.this) != null) {
              ak.e(ak.this).a(localRecommendCard.getId(), localObject.getUserId(), localRecommendCard.getLocation());
            }
          }
        });
        paramViewGroup.addView(paramView);
        if (i1 < paramInt - 1)
        {
          paramView = new View(this.c);
          paramView.setLayoutParams(new LinearLayout.LayoutParams(-1, 1, 1.0F));
          localObject = this.c.getTheme().obtainStyledAttributes(new int[] { 2130772270 });
          paramView.setBackgroundColor(this.c.getResources().getColor(((TypedArray)localObject).getResourceId(0, 0)));
          paramViewGroup.addView(paramView);
        }
        i1 += 1;
      }
      if (paramViewGroup.getType().equals("STATUS"))
      {
        paramView = a(paramView, paramInt);
        return paramView;
      }
      if (paramViewGroup.getType().equals("STOCK")) {
        return b(paramView, paramInt);
      }
      if (paramViewGroup.getType().equals("CUBE")) {
        return c(paramView, paramInt);
      }
      a(paramView, paramViewGroup);
      paramViewGroup = (ViewGroup)paramView;
      if ((paramInt == 0) && (this.h)) {
        paramViewGroup.getChildAt(0).setVisibility(8);
      }
      for (;;)
      {
        return paramView;
        paramViewGroup.getChildAt(0).setVisibility(0);
      }
    }
  }
  
  public boolean isEnabled(int paramInt)
  {
    return !((Status)getItem(paramInt)).getType().equals("USER");
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\community\a\ak.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
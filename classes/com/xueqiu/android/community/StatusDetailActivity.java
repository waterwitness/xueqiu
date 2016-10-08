package com.xueqiu.android.community;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.os.Bundle;
import android.os.Parcelable;
import android.preference.PreferenceManager;
import android.support.v4.content.r;
import android.support.v4.view.cp;
import android.text.Html;
import android.text.method.LinkMovementMethod;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.AbsListView.LayoutParams;
import android.widget.AbsListView.OnScrollListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.PopupMenu;
import android.widget.PopupMenu.OnMenuItemClickListener;
import android.widget.TextView;
import android.widget.Toast;
import com.android.volley.y;
import com.d.a.b.d;
import com.d.a.b.e;
import com.google.gson.JsonObject;
import com.google.gson.reflect.TypeToken;
import com.umeng.analytics.MobclickAgent;
import com.xueqiu.android.base.b.ai;
import com.xueqiu.android.base.b.x;
import com.xueqiu.android.base.h;
import com.xueqiu.android.base.storage.prefs.UserLogonDataPrefs;
import com.xueqiu.android.base.storage.prefs.UserPrefs;
import com.xueqiu.android.base.t;
import com.xueqiu.android.base.u;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.base.util.ap;
import com.xueqiu.android.base.util.aw;
import com.xueqiu.android.base.util.o;
import com.xueqiu.android.base.util.v;
import com.xueqiu.android.common.GuideTutorialActivity;
import com.xueqiu.android.common.MainActivity;
import com.xueqiu.android.common.SingleFragmentActivity;
import com.xueqiu.android.common.model.ClientInfo;
import com.xueqiu.android.common.model.GuideTutorialType;
import com.xueqiu.android.common.model.PagedGroup;
import com.xueqiu.android.common.model.PagedList;
import com.xueqiu.android.common.model.RequestResult;
import com.xueqiu.android.common.model.SNBEvent;
import com.xueqiu.android.common.widget.FloatingActionMenu;
import com.xueqiu.android.common.widget.an;
import com.xueqiu.android.common.widget.j;
import com.xueqiu.android.community.model.Comment;
import com.xueqiu.android.community.model.RewardCash;
import com.xueqiu.android.community.model.Status;
import com.xueqiu.android.community.model.User;
import com.xueqiu.android.cube.CubeActivity;
import com.xueqiu.android.cube.model.Cube;
import com.xueqiu.android.cube.model.CubeCalGainType;
import com.xueqiu.android.stock.model.StockQuote;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class StatusDetailActivity
  extends com.xueqiu.android.common.b
{
  private View A = null;
  private View B = null;
  private View C;
  private View D;
  private LinearLayout E;
  private TextView F;
  private FloatingActionMenu G;
  private View H;
  private View I;
  private LinearLayout J = null;
  private LinearLayout K = null;
  private com.xueqiu.android.community.a.a L = null;
  private com.xueqiu.android.community.a.a M = null;
  private Context N;
  private View.OnClickListener O;
  private x P;
  private j Q;
  private BroadcastReceiver R;
  private BroadcastReceiver S;
  private BroadcastReceiver T;
  Status j = null;
  boolean k;
  private Status p = null;
  private long q = 0L;
  private boolean r = false;
  private com.xueqiu.android.community.a.a s;
  private int t = 0;
  private int u = 0;
  private Comment v = null;
  private Dialog w = null;
  private boolean x = false;
  private JSONObject y = null;
  private ListView z = null;
  
  public StatusDetailActivity()
  {
    com.xueqiu.android.base.b.a();
    this.k = com.xueqiu.android.base.b.i();
    this.O = new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        paramAnonymousView = paramAnonymousView.findViewById(2131625836);
        if (paramAnonymousView.getVisibility() == 4)
        {
          StatusDetailActivity.r(StatusDetailActivity.this);
          paramAnonymousView.setVisibility(0);
        }
      }
    };
    this.P = null;
    this.Q = new j()
    {
      public final boolean a(int paramAnonymousInt)
      {
        if ((u.a().d) && ((paramAnonymousInt == 2) || (paramAnonymousInt == 10) || (paramAnonymousInt == 3))) {
          t.a(StatusDetailActivity.this, false);
        }
        while (StatusDetailActivity.a(StatusDetailActivity.this) == null) {
          return false;
        }
        boolean bool;
        Object localObject2;
        switch (paramAnonymousInt)
        {
        case 4: 
        case 6: 
        case 8: 
        case 9: 
        case 12: 
        case 13: 
        case 14: 
        case 15: 
        default: 
          localObject1 = "";
          bool = false;
          localObject2 = new SNBEvent(1700, 1);
          if ((paramAnonymousInt == 2) || (paramAnonymousInt == 5)) {
            ((SNBEvent)localObject2).addProperty("tab_name", (String)localObject1);
          }
          break;
        }
        for (Object localObject1 = localObject2;; localObject1 = localObject2)
        {
          com.xueqiu.android.base.i.a().a((SNBEvent)localObject1);
          return bool;
          StatusDetailActivity.this.j();
          localObject1 = "回复付费艾特";
          bool = true;
          break;
          StatusDetailActivity.this.j();
          localObject1 = "评论";
          bool = true;
          break;
          localObject1 = StatusDetailActivity.this;
          localObject2 = new StatusDetailActivity.25((StatusDetailActivity)localObject1, (com.xueqiu.android.base.b.q)localObject1);
          Object localObject3;
          long l;
          if (((StatusDetailActivity)localObject1).j.isFavorited())
          {
            localObject3 = StatusDetailActivity.g();
            l = ((StatusDetailActivity)localObject1).j.getStatusId();
            ((ai)localObject3).g.d(l, (com.xueqiu.android.base.b.p)localObject2);
          }
          for (;;)
          {
            ((StatusDetailActivity)localObject1).h();
            localObject1 = "收藏";
            bool = true;
            break;
            localObject3 = StatusDetailActivity.g();
            l = ((StatusDetailActivity)localObject1).j.getStatusId();
            ((ai)localObject3).g.e(l, (com.xueqiu.android.base.b.p)localObject2);
          }
          StatusDetailActivity localStatusDetailActivity = StatusDetailActivity.this;
          an localan;
          if (!com.xueqiu.android.base.g.a().c.isMonkeyTestVersion())
          {
            localan = new an();
            if ((localStatusDetailActivity.j.getTitle() == null) || (localStatusDetailActivity.j.getTitle().equals(""))) {
              break label648;
            }
            localObject1 = Html.fromHtml(localStatusDetailActivity.j.getTitle()).toString();
            label374:
            String str1 = "http://xueqiu.com" + localStatusDetailActivity.j.getTarget();
            String str2 = Html.fromHtml(localStatusDetailActivity.j.getDescription()).toString();
            if (localStatusDetailActivity.j.getUser().getUserId() == 0L) {
              break label659;
            }
            localObject2 = "@" + localStatusDetailActivity.j.getUser().getScreenName() + ":";
            label463:
            String str3 = (String)localObject2 + "%1$s" + " 分享自@雪球 " + str1;
            localObject3 = String.format(str3, new Object[] { str2 });
            localObject2 = localObject3;
            if (aw.a((String)localObject3) > 140) {
              localObject2 = String.format(str3, new Object[] { aw.a(str2, 140 - aw.a(str3) + aw.a("%1$s")) });
            }
            localan.b = ((String)localObject1);
            localan.d = str1;
            localan.c = ((String)localObject2);
            if ((localStatusDetailActivity.j.getBmiddlePic() == null) || (localStatusDetailActivity.j.getBmiddlePic().length() <= 0)) {
              break label692;
            }
            localan.e = localStatusDetailActivity.j.getBmiddlePic();
          }
          for (;;)
          {
            localan.i = 0;
            localan.a = localStatusDetailActivity.j;
            com.xueqiu.android.common.widget.aj.a(localStatusDetailActivity, localan, null);
            localObject1 = "分享";
            bool = true;
            break;
            label648:
            localObject1 = localStatusDetailActivity.getString(2131166073);
            break label374;
            label659:
            localObject2 = localStatusDetailActivity.j.getUser().getScreenName() + ":";
            break label463;
            label692:
            if ((localStatusDetailActivity.j.getRetweetedStatus() != null) && (localStatusDetailActivity.j.getRetweetedStatus().getBmiddlePic() != null) && (localStatusDetailActivity.j.getRetweetedStatus().getBmiddlePic().length() > 0))
            {
              localan.e = localStatusDetailActivity.j.getRetweetedStatus().getBmiddlePic();
            }
            else
            {
              localan.f = BitmapFactory.decodeResource(localStatusDetailActivity.getResources(), 2130837614);
              v.c("StatusDetailActivity", "send setThumbImage");
            }
          }
          if (com.xueqiu.android.base.g.a().c.isMonkeyTestVersion()) {
            return true;
          }
          StatusDetailActivity.a(StatusDetailActivity.this, StatusDetailActivity.a(StatusDetailActivity.this).getStatusId());
          localObject1 = "举报";
          bool = true;
          break;
          StatusDetailActivity.E(StatusDetailActivity.this);
          localObject1 = "删除";
          bool = true;
          break;
          StatusDetailActivity.b(StatusDetailActivity.this, 1);
          localObject1 = "主页置顶";
          bool = true;
          break;
          StatusDetailActivity.F(StatusDetailActivity.this);
          localObject1 = "取消置顶";
          bool = true;
          break;
          StatusDetailActivity.b(StatusDetailActivity.this, 2);
          localObject1 = "粉丝头条";
          bool = true;
          break;
          StatusDetailActivity.G(StatusDetailActivity.this);
          localObject1 = StatusDetailActivity.this.getString(2131165867);
          bool = true;
          break;
          localObject2 = new SNBEvent(1700, 2);
          ((SNBEvent)localObject2).addProperty("option_name", (String)localObject1);
        }
      }
    };
    this.R = new BroadcastReceiver()
    {
      public final void onReceive(Context paramAnonymousContext, Intent paramAnonymousIntent)
      {
        StatusDetailActivity.H(StatusDetailActivity.this);
      }
    };
    this.S = new BroadcastReceiver()
    {
      public final void onReceive(Context paramAnonymousContext, Intent paramAnonymousIntent)
      {
        paramAnonymousContext = (Comment)paramAnonymousIntent.getParcelableExtra("extra_comment");
        if ((paramAnonymousContext != null) && (paramAnonymousContext.isAnswer())) {
          StatusDetailActivity.I(StatusDetailActivity.this);
        }
        if (StatusDetailActivity.a(StatusDetailActivity.this) != null)
        {
          if (StatusDetailActivity.e(StatusDetailActivity.this) == null)
          {
            StatusDetailActivity.b(StatusDetailActivity.this, new com.xueqiu.android.community.a.a(StatusDetailActivity.this));
            StatusDetailActivity.e(StatusDetailActivity.this).e = StatusDetailActivity.a(StatusDetailActivity.this).getStatusId();
            StatusDetailActivity.e(StatusDetailActivity.this).a(new ArrayList());
            StatusDetailActivity.h(StatusDetailActivity.this).setAdapter(StatusDetailActivity.e(StatusDetailActivity.this));
          }
          if ((paramAnonymousContext != null) && (StatusDetailActivity.e(StatusDetailActivity.this).getCount() != 0)) {
            break label176;
          }
          StatusDetailActivity.t(StatusDetailActivity.this);
          StatusDetailActivity.r(StatusDetailActivity.this);
          if (StatusDetailActivity.h(StatusDetailActivity.this).findViewById(2131624257) != null) {
            StatusDetailActivity.L(StatusDetailActivity.this);
          }
        }
        return;
        label176:
        if (StatusDetailActivity.J(StatusDetailActivity.this) == 0) {
          StatusDetailActivity.e(StatusDetailActivity.this).a().add(0, paramAnonymousContext);
        }
        for (;;)
        {
          StatusDetailActivity.e(StatusDetailActivity.this).notifyDataSetChanged();
          break;
          if (StatusDetailActivity.K(StatusDetailActivity.this)) {
            StatusDetailActivity.e(StatusDetailActivity.this).a().add(paramAnonymousContext);
          }
        }
      }
    };
    this.T = new BroadcastReceiver()
    {
      public final void onReceive(Context paramAnonymousContext, Intent paramAnonymousIntent)
      {
        StatusDetailActivity.t(StatusDetailActivity.this);
        StatusDetailActivity.r(StatusDetailActivity.this);
        StatusDetailActivity.L(StatusDetailActivity.this);
      }
    };
  }
  
  private static void a(ImageView paramImageView, String paramString)
  {
    if ((paramString == null) || (paramString.equals(""))) {
      return;
    }
    d locald = com.xueqiu.android.base.util.n.a().b();
    o localo = new o();
    com.d.a.b.f.a().a(paramString, paramImageView, locald, localo);
  }
  
  private void a(Cube paramCube, com.xueqiu.android.cube.a.c paramc)
  {
    paramc.a(paramCube, CubeCalGainType.DAILY, true, true);
    paramCube = this.B.findViewById(2131624618);
    try
    {
      paramc = this.y.getJSONArray("list").getJSONObject(0);
      if ((paramc.has("display_gain")) && (paramc.has("display_gain_label")))
      {
        ((TextView)paramCube.findViewById(2131624941)).setText(com.xueqiu.android.cube.a.c.a(paramc.getDouble("display_gain")));
        ((TextView)paramCube.findViewById(2131624854)).setText(paramc.getString("display_gain_label"));
      }
      return;
    }
    catch (JSONException paramCube)
    {
      aa.a(paramCube);
    }
  }
  
  private void b(View paramView)
  {
    int n = this.z.findViewById(2131624609).getHeight();
    int m = this.z.getHeaderViewsCount();
    int i = 0;
    while (m < this.z.getChildCount() - this.z.getFooterViewsCount())
    {
      i += this.z.getChildAt(m).getHeight();
      if (i >= this.z.getHeight() - n) {
        return;
      }
      m += 1;
    }
    m = this.z.getHeight();
    int i1 = this.z.getPaddingBottom();
    View localView = paramView;
    if (paramView == null)
    {
      localView = new View(this);
      this.z.addFooterView(localView, null, false);
    }
    localView.setId(2131624034);
    localView.setLayoutParams(new AbsListView.LayoutParams(-1, m - n - i - i1));
  }
  
  private void k()
  {
    final a locala = new a(this, this.j, this.M);
    ViewGroup localViewGroup = (ViewGroup)this.K.findViewById(2131624606);
    localViewGroup.removeAllViews();
    final int i = 0;
    while (i < this.M.getCount())
    {
      View localView = this.M.getView(i, null, (ViewGroup)this.B);
      localView.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          if (StatusDetailActivity.f(StatusDetailActivity.this) != null)
          {
            StatusDetailActivity.f(StatusDetailActivity.this).dismiss();
            StatusDetailActivity.g(StatusDetailActivity.this);
          }
          locala.onItemClick(null, paramAnonymousView, i, 0L);
        }
      });
      localViewGroup.addView(localView);
      i += 1;
    }
  }
  
  private void l()
  {
    h();
    com.xueqiu.android.base.q.a().b().a(this.q, new com.xueqiu.android.base.b.p(this)
    {
      public final void a(y paramAnonymousy)
      {
        StatusDetailActivity.this.i();
        if (StatusDetailActivity.this.isFinishing()) {
          return;
        }
        aa.a(paramAnonymousy);
      }
    });
  }
  
  @SuppressLint({"NewApi"})
  private void m()
  {
    final Object localObject;
    int i;
    if (this.D.getVisibility() == 0)
    {
      localObject = this.D;
      localObject = (TextView)((View)localObject).findViewById(2131624612);
      n();
      if (this.t != 0) {
        break label98;
      }
      i = 2131165353;
    }
    for (;;)
    {
      ((TextView)localObject).setText(i);
      final PopupMenu localPopupMenu = new PopupMenu(this, (View)localObject);
      localPopupMenu.inflate(2131689472);
      ((TextView)localObject).setOnClickListener(new View.OnClickListener()
      {
        @TargetApi(11)
        public final void onClick(View paramAnonymousView)
        {
          localPopupMenu.show();
        }
      });
      localPopupMenu.setOnMenuItemClickListener(new PopupMenu.OnMenuItemClickListener()
      {
        public final boolean onMenuItemClick(MenuItem paramAnonymousMenuItem)
        {
          int i = paramAnonymousMenuItem.getOrder();
          String str;
          if (i == 0)
          {
            StatusDetailActivity.a(StatusDetailActivity.this, 0);
            str = "最新";
          }
          for (;;)
          {
            StatusDetailActivity.q(StatusDetailActivity.this);
            localObject.setText(paramAnonymousMenuItem.getTitle());
            paramAnonymousMenuItem = new SNBEvent(1700, 3);
            paramAnonymousMenuItem.addProperty("option_name", str);
            com.xueqiu.android.base.i.a().a(paramAnonymousMenuItem);
            return true;
            if (i == 1)
            {
              StatusDetailActivity.a(StatusDetailActivity.this, 1);
              str = "最早";
            }
            else
            {
              StatusDetailActivity.a(StatusDetailActivity.this, 2);
              str = "顶";
            }
          }
        }
      });
      return;
      localObject = this.C;
      break;
      label98:
      if (this.t == 2) {
        i = 2131165355;
      } else {
        i = 2131165352;
      }
    }
  }
  
  private void n()
  {
    if (this.j == null) {
      return;
    }
    if ((this.D != null) && (this.D.getVisibility() == 0)) {}
    for (Object localObject1 = this.D;; localObject1 = this.C)
    {
      Object localObject2 = ((View)localObject1).findViewById(2131624610);
      localObject1 = (TextView)((View)localObject2).findViewById(2131624518);
      localObject2 = (TextView)((View)localObject2).findViewById(2131624516);
      String str1 = String.format("评 %s", new Object[] { Integer.valueOf(this.j.getCommentsCount()) });
      String str2 = String.format("转 %s", new Object[] { Integer.valueOf(this.j.getRetweetsCount()) });
      ((TextView)localObject1).setText(str1);
      ((TextView)localObject2).setText(str2);
      return;
    }
  }
  
  private void o()
  {
    View localView = this.z.findViewById(2131624034);
    if (localView != null) {
      this.z.removeFooterView(localView);
    }
  }
  
  private void p()
  {
    View localView = this.z.findViewById(2131624257);
    if (localView != null) {
      this.z.removeFooterView(localView);
    }
  }
  
  private void q()
  {
    if ((this.P == null) || (this.P.i))
    {
      if (this.A != null) {
        ((TextView)this.A.findViewById(2131625835)).setText(2131165347);
      }
      this.u += 1;
      if (this.t == 2) {
        break label110;
      }
    }
    for (this.P = com.xueqiu.android.base.q.a().b().a(this.j.getStatusId(), this.u, this.t, "status", new com.xueqiu.android.base.b.p(this)
        {
          public final void a(y paramAnonymousy)
          {
            aa.a(paramAnonymousy);
            StatusDetailActivity.s(StatusDetailActivity.this);
            StatusDetailActivity.this.i();
          }
        });; this.P = com.xueqiu.android.base.q.a().b().b(this.j.getStatusId(), this.u, new com.xueqiu.android.base.b.p(this)
        {
          public final void a(y paramAnonymousy)
          {
            aa.a(paramAnonymousy);
            StatusDetailActivity.s(StatusDetailActivity.this);
            StatusDetailActivity.this.i();
          }
        }))
    {
      a(this.P);
      return;
      label110:
      if (this.u > 1) {
        a(new ArrayList());
      }
    }
  }
  
  private void r()
  {
    TypedArray localTypedArray = getTheme().obtainStyledAttributes(new int[] { 2130772150, 2130772156, 2130772155, 2130772152, 2130772154, 2130772148, 2130772149 });
    Object localObject;
    if ("UNANSWERED".equals(ap.b(this.j)))
    {
      long l = ap.a(this.j);
      u.a();
      if (l == UserLogonDataPrefs.getLogonUserId())
      {
        int i = Color.rgb(192, 162, 111);
        localObject = this.G;
        ((FloatingActionMenu)localObject).a(7, "回复", 2130838364, null, false, ((FloatingActionMenu)localObject).b.getResourceId(0, 0), 3, i);
        if ((this.j == null) || (!this.j.isFavorited())) {
          break label338;
        }
        this.G.a(3, getString(2131165219), localTypedArray.getResourceId(6, 0));
        label174:
        if (this.j == null) {
          break label379;
        }
        u.a();
        if (UserLogonDataPrefs.getLogonUserId() != this.j.getUser().getUserId()) {
          break label379;
        }
        localObject = this.G.a(6, localTypedArray.getResourceId(3, 0));
        if (this.j.getMark() != 1) {
          break label362;
        }
        ((com.xueqiu.android.common.widget.i)localObject).a(18, getString(2131165302));
        label243:
        ((com.xueqiu.android.common.widget.i)localObject).a(17, getString(2131166126));
        ((com.xueqiu.android.common.widget.i)localObject).a(19, getString(2131165867));
        ((com.xueqiu.android.common.widget.i)localObject).a(11, getString(2131165467));
      }
    }
    for (;;)
    {
      this.G.setOnMenuItemSelectedListener(this.Q);
      localTypedArray.recycle();
      return;
      this.G.a(2, "评论", localTypedArray.getResourceId(0, 0));
      this.G.a(5, "分享", localTypedArray.getResourceId(1, 0));
      break;
      label338:
      this.G.a(3, getString(2131165219), localTypedArray.getResourceId(5, 0));
      break label174;
      label362:
      ((com.xueqiu.android.common.widget.i)localObject).a(16, getString(2131166127));
      break label243;
      label379:
      this.G.a(10, getString(2131165937), localTypedArray.getResourceId(4, 0));
    }
  }
  
  private void s()
  {
    this.G.a.removeAllViews();
    r();
    this.G.invalidate();
  }
  
  public final void a(String paramString, int paramInt)
  {
    this.z.removeFooterView(this.A);
    Object localObject2 = this.z.findViewById(2131624257);
    Object localObject1 = localObject2;
    if (localObject2 == null)
    {
      localObject1 = View.inflate(this, 2130903575, null);
      com.xueqiu.android.base.b.a();
      if (!com.xueqiu.android.base.b.i()) {
        break label136;
      }
      ((View)localObject1).setBackgroundColor(getResources().getColor(2131558435));
    }
    for (;;)
    {
      ((View)localObject1).setLayoutParams(new AbsListView.LayoutParams(-1, getResources().getDimensionPixelOffset(2131230804)));
      o();
      this.z.addFooterView((View)localObject1, null, false);
      localObject2 = (TextView)((View)localObject1).findViewById(2131624334);
      localObject1 = (ImageView)((View)localObject1).findViewById(2131624093);
      ((TextView)localObject2).setText(paramString);
      ((ImageView)localObject1).setImageResource(paramInt);
      return;
      label136:
      ((View)localObject1).setBackgroundColor(getResources().getColor(2131558728));
    }
  }
  
  public final void a(ArrayList<Comment> paramArrayList)
  {
    if (this.A != null)
    {
      this.A.findViewById(2131625836).setVisibility(4);
      ((TextView)this.A.findViewById(2131625835)).setText(2131166201);
    }
    if ((this.u == 1) && (this.s != null) && (this.s.getCount() > 0)) {
      this.s.a().clear();
    }
    Object localObject;
    if ((paramArrayList instanceof PagedGroup))
    {
      localObject = (PagedGroup)paramArrayList;
      this.j.setCommentsCount(((PagedGroup)localObject).getTotalCount());
      if ((!((PagedGroup)localObject).hasMore()) && (this.z.getFooterViewsCount() > 0))
      {
        this.z.removeFooterView(this.A);
        this.x = true;
      }
    }
    this.C.setVisibility(0);
    if ((paramArrayList.size() == 1) && (((Comment)paramArrayList.get(0)).isAnswer()))
    {
      this.C.setVisibility(8);
      return;
    }
    if (paramArrayList != null)
    {
      localObject = this.s.a();
      Iterator localIterator = paramArrayList.iterator();
      while (localIterator.hasNext())
      {
        Comment localComment = (Comment)localIterator.next();
        if ((localComment.isBlocked()) || (((ArrayList)localObject).contains(localComment))) {
          localIterator.remove();
        }
      }
      ((ArrayList)localObject).addAll(paramArrayList);
      this.s.notifyDataSetChanged();
      if (getIntent().getBooleanExtra("extra_position_to_comment", false))
      {
        this.z.setSelection(1);
        paramArrayList = findViewById(2131624216);
        if (paramArrayList != null) {
          paramArrayList.setVisibility(0);
        }
        m();
        getIntent().putExtra("extra_position_to_comment", false);
      }
    }
    i();
    n();
    if (this.s.getCount() == 0)
    {
      if (this.t != 2) {
        break label365;
      }
      i = 2131165493;
      paramArrayList = getString(i);
      if (!this.k) {
        break label373;
      }
    }
    label365:
    label373:
    for (int i = 2130837913;; i = 2130837912)
    {
      a(paramArrayList, i);
      s();
      return;
      i = 2131165492;
      break;
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
    Intent localIntent = new Intent(this, WriteStatusActivity.class);
    localIntent.putExtra("extra_write_type", 1);
    localIntent.putExtra("extra_status_id", this.j.getStatusId());
    localIntent.putExtra("extra_reply_somebody", this.j.getUser().getScreenName());
    localIntent.putExtra("extra_paid_to_user", this.j.getUser());
    if ((this.j.getPaidMention() != null) && (this.j.getPaidMention().size() > 0)) {
      localIntent.putExtra("extra_paid_mention", (Parcelable)this.j.getPaidMention().get(0));
    }
    startActivity(localIntent);
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    final long l;
    if (paramInt2 == -1)
    {
      if (paramInt1 != 1) {
        break label68;
      }
      if ((paramIntent.getBooleanExtra("result_pay_state", false)) && (this.p != null)) {
        l = this.p.getStatusId();
      }
    }
    label68:
    Comment localComment;
    do
    {
      do
      {
        com.xueqiu.android.base.q.a().b().a(l, new com.xueqiu.android.base.b.p(this)
        {
          public final void a(y paramAnonymousy)
          {
            aa.a(paramAnonymousy);
          }
        });
        return;
        while ((paramInt1 != 6) || (!paramIntent.getBooleanExtra("result_pay_state", false)) || (this.v == null)) {}
        if ((UserPrefs.getBoolean(this, GuideTutorialType.SHARE_COMMENT_FIRST_IN.storeKey(), true)) && (!com.xueqiu.android.base.util.i.c()))
        {
          UserPrefs.setBoolean(this, GuideTutorialType.SHARE_COMMENT_FIRST_IN.storeKey(), false);
          paramIntent = new Intent(this, GuideTutorialActivity.class);
          paramIntent.putExtra("extra_which_view", GuideTutorialType.SHARE_COMMENT_FIRST_IN);
          paramIntent.putExtra("extra_view_click_position", new int[] { 2131624583 });
          startActivity(paramIntent);
          overridePendingTransition(2130968583, 2130968584);
        }
        paramIntent = this.s.a().iterator();
      } while (!paramIntent.hasNext());
      localComment = (Comment)paramIntent.next();
    } while (localComment.getId() != this.v.getId());
    localComment.setRewardUserCount(this.v.getRewardUserCount() + 1);
    this.s.notifyDataSetChanged();
  }
  
  public void onBackPressed()
  {
    if (this.j != null)
    {
      Intent localIntent = new Intent();
      localIntent.putExtra("back_status", this.j);
      setResult(5, localIntent);
    }
    super.onBackPressed();
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903077);
    setTitle(2131165729);
    this.N = this;
    paramBundle = new android.support.v7.a.c(21, (byte)0);
    View localView = View.inflate(this, 2130903198, null);
    this.i.b().a(localView, paramBundle);
    localView.findViewById(2131624522).setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        paramAnonymousView = new Intent(StatusDetailActivity.this, MainActivity.class);
        paramAnonymousView.setFlags(603979776);
        StatusDetailActivity.this.startActivity(paramAnonymousView);
        StatusDetailActivity.this.finish();
        MobclickAgent.onEvent(StatusDetailActivity.this.getBaseContext(), "statusDetail_home");
      }
    });
    this.i.b().d(true);
    this.t = PreferenceManager.getDefaultSharedPreferences(this).getInt("comment_sort", 0);
    paramBundle = new IntentFilter("com.xueqiu.android.action.commentSuccess");
    r.a(this).a(this.S, paramBundle);
    r.a(this).a(this.R, new IntentFilter("action_share"));
    r.a(this).a(this.T, new IntentFilter("com.xueqiu.android.action.statusDetailPaidMentionCommentSuccess"));
    paramBundle = LayoutInflater.from(this);
    this.D = findViewById(2131624216);
    this.D.setOnClickListener(null);
    this.z = ((ListView)findViewById(2131624215));
    this.B = paramBundle.inflate(2130903197, this.z, false);
    this.E = ((LinearLayout)this.B.findViewById(2131624604));
    this.F = ((TextView)this.B.findViewById(2131624600));
    this.H = this.B.findViewById(2131624616);
    this.I = this.B.findViewById(2131624617);
    this.C = paramBundle.inflate(2130903199, this.z, false);
    this.z.addHeaderView(this.B);
    this.z.addHeaderView(this.C);
    this.G = ((FloatingActionMenu)findViewById(2131624214));
    this.z.setOnScrollListener(new com.d.a.b.f.c(com.d.a.b.f.a(), false, true, new AbsListView.OnScrollListener()
    {
      public final void onScroll(AbsListView paramAnonymousAbsListView, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3)
      {
        paramAnonymousInt2 = 1;
        paramAnonymousAbsListView = StatusDetailActivity.this.findViewById(2131624216);
        if (paramAnonymousAbsListView == null) {}
        label55:
        label150:
        label294:
        label301:
        label304:
        label306:
        label309:
        for (;;)
        {
          return;
          if ((paramAnonymousInt1 > 0) && (paramAnonymousAbsListView.getVisibility() == 8) && (StatusDetailActivity.y(StatusDetailActivity.this).getVisibility() == 0))
          {
            paramAnonymousAbsListView.setVisibility(0);
            StatusDetailActivity.z(StatusDetailActivity.this);
            boolean bool = StatusDetailActivity.A(StatusDetailActivity.this);
            if ((paramAnonymousInt1 != 0) || (StatusDetailActivity.h(StatusDetailActivity.this).getLastVisiblePosition() != paramAnonymousInt3 - 1) || (StatusDetailActivity.h(StatusDetailActivity.this).getChildCount() <= StatusDetailActivity.h(StatusDetailActivity.this).getHeaderViewsCount()) || (StatusDetailActivity.h(StatusDetailActivity.this).findViewById(2131624034) != null) || (StatusDetailActivity.e(StatusDetailActivity.this).getCount() <= 0)) {
              break label301;
            }
            if (!bool) {
              break label294;
            }
            StatusDetailActivity.B(StatusDetailActivity.this);
            paramAnonymousInt1 = 1;
            if ((!bool) || (paramAnonymousInt1 != 0) || (StatusDetailActivity.h(StatusDetailActivity.this).getChildCount() <= 0) || (StatusDetailActivity.h(StatusDetailActivity.this).getChildCount() <= StatusDetailActivity.h(StatusDetailActivity.this).getFooterViewsCount())) {
              break label304;
            }
            if (StatusDetailActivity.h(StatusDetailActivity.this).getHeight() - StatusDetailActivity.h(StatusDetailActivity.this).getChildAt(StatusDetailActivity.h(StatusDetailActivity.this).getChildCount() - 1 - StatusDetailActivity.h(StatusDetailActivity.this).getFooterViewsCount()).getBottom() <= 0) {
              break label306;
            }
          }
          for (paramAnonymousInt1 = paramAnonymousInt2;; paramAnonymousInt1 = 0)
          {
            if (paramAnonymousInt1 == 0) {
              break label309;
            }
            StatusDetailActivity.D(StatusDetailActivity.this);
            return;
            if ((paramAnonymousInt1 != 0) || (paramAnonymousAbsListView.getVisibility() != 0)) {
              break label55;
            }
            StatusDetailActivity.this.findViewById(2131624216).setVisibility(8);
            StatusDetailActivity.z(StatusDetailActivity.this);
            break label55;
            StatusDetailActivity.C(StatusDetailActivity.this);
            paramAnonymousInt1 = 0;
            break label150;
            break;
          }
        }
      }
      
      public final void onScrollStateChanged(AbsListView paramAnonymousAbsListView, int paramAnonymousInt)
      {
        View localView = paramAnonymousAbsListView.findViewById(2131625834);
        if ((localView != null) && (paramAnonymousAbsListView.getLastVisiblePosition() == paramAnonymousAbsListView.getCount() - 1)) {
          StatusDetailActivity.x(StatusDetailActivity.this).onClick(localView);
        }
      }
    }));
    this.A = paramBundle.inflate(2130903580, this.z, false);
    this.A.setOnClickListener(this.O);
    this.z.addFooterView(this.A);
    this.J = ((LinearLayout)findViewById(2131624607));
    this.K = ((LinearLayout)findViewById(2131624605));
    this.j = ((Status)getIntent().getParcelableExtra("status"));
    if (this.j == null)
    {
      this.q = getIntent().getLongExtra("status_id", 0L);
      if (this.q < 0L)
      {
        finish();
        return;
      }
      if (this.q == 21596141L) {
        setTitle(2131165530);
      }
      l();
    }
    for (;;)
    {
      r();
      a(rx.a.b.a.b(this, new IntentFilter("com.xueqiu.android.action.statusAnswerComplete")).c(new rx.c.b() {}));
      return;
      this.q = this.j.getStatusId();
      l();
    }
  }
  
  public void onDestroy()
  {
    r.a(this).a(this.S);
    r.a(this).a(this.T);
    r.a(this).a(this.R);
    super.onDestroy();
  }
  
  protected void onResume()
  {
    super.onResume();
    if ((!u.a().d) && (this.r))
    {
      this.r = false;
      ai localai = com.xueqiu.android.base.q.a().b();
      com.xueqiu.android.base.b.p local28 = new com.xueqiu.android.base.b.p(this)
      {
        public final void a(y paramAnonymousy) {}
      };
      localai.g.e(local28);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\community\StatusDetailActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
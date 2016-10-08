package com.xueqiu.android.community.c;

import android.app.ActionBar;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.a.ac;
import android.support.v4.a.k;
import android.support.v4.a.q;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.xueqiu.android.base.b;
import com.xueqiu.android.base.h;
import com.xueqiu.android.base.storage.prefs.UserPrefs;
import com.xueqiu.android.base.util.ay;
import com.xueqiu.android.common.GuideTutorialActivity;
import com.xueqiu.android.common.c;
import com.xueqiu.android.common.model.GuideTutorialType;
import com.xueqiu.android.common.model.SNBEvent;

public class l
  extends c
{
  String a = "question";
  private View ak;
  private View al;
  private m am;
  private m an;
  private boolean ao = false;
  ImageView b;
  ImageView c;
  int d;
  int e;
  private View f;
  private View g;
  private View h;
  
  public final void F_()
  {
    super.F_();
  }
  
  public final View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    super.a(paramLayoutInflater, paramViewGroup, paramBundle);
    if (this.f == null)
    {
      this.f = paramLayoutInflater.inflate(2130903365, paramViewGroup, false);
      paramLayoutInflater = this.f.findViewById(2131625206);
      this.g = paramLayoutInflater.findViewById(2131625208);
      this.h = paramLayoutInflater.findViewById(2131625209);
      this.ak = paramLayoutInflater.findViewById(2131624142);
      this.al = paramLayoutInflater.findViewById(2131623946);
      this.b = ((ImageView)paramLayoutInflater.findViewById(2131625210));
      this.c = ((ImageView)paramLayoutInflater.findViewById(2131625211));
    }
    u();
    return this.f;
  }
  
  public final void a(Bundle paramBundle)
  {
    super.a(paramBundle);
    if (g().getActionBar() != null) {
      g().getActionBar().hide();
    }
    if (this.r != null)
    {
      this.a = this.r.getString("page_type", "question");
      this.d = this.r.getInt("question_count", 0);
      this.e = this.r.getInt("comment_count", 0);
      this.ao = this.r.getBoolean("is_show_hint", false);
    }
  }
  
  public final void a(View paramView, Bundle paramBundle)
  {
    super.a(paramView, paramBundle);
    this.g.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        l.this.a = "question";
        UserPrefs.setString(l.this.g(), "paid_page_type", "question");
        l.this.u();
        paramAnonymousView = new SNBEvent(3105, 2);
        paramAnonymousView.addProperty("type", "status");
        com.xueqiu.android.base.i.a().a(paramAnonymousView);
      }
    });
    this.h.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        l.this.a = "comment";
        UserPrefs.setString(l.this.g(), "paid_page_type", "comment");
        l.this.u();
        paramAnonymousView = new SNBEvent(3105, 2);
        paramAnonymousView.addProperty("type", "comment");
        com.xueqiu.android.base.i.a().a(paramAnonymousView);
      }
    });
    this.ak.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        l.this.g().finish();
      }
    });
    this.al.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        b.a();
        UserPrefs.setBoolean(b.d(), "pay_ask_first_in", true);
        paramAnonymousView = new Intent(l.this.g(), GuideTutorialActivity.class);
        paramAnonymousView.putExtra("extra_which_view", GuideTutorialType.PAY_ASK_FIRST_IN);
        paramAnonymousView.putExtra("extra_view_click_position", new int[] { 2131624531 });
        l.this.a(paramAnonymousView);
        l.this.g().overridePendingTransition(2130968583, 2130968584);
      }
    });
  }
  
  final void a(ImageView paramImageView, int paramInt)
  {
    if (paramInt == 0)
    {
      paramImageView.setVisibility(8);
      return;
    }
    paramImageView.setVisibility(0);
    paramImageView.setImageDrawable(ay.a(String.valueOf(paramInt), h()));
    paramImageView.setBackgroundResource(2130838416);
  }
  
  public final void d(Bundle paramBundle)
  {
    if (this.r != null) {
      this.r.putString("page_type", this.a);
    }
    super.d(paramBundle);
  }
  
  public final void o()
  {
    super.o();
    if (this.ao)
    {
      this.ao = false;
      Intent localIntent = new Intent(g(), GuideTutorialActivity.class);
      localIntent.putExtra("extra_which_view", GuideTutorialType.PAY_ASK_FIRST_IN);
      localIntent.putExtra("extra_view_click_position", new int[] { 2131624531 });
      a(localIntent);
      g().overridePendingTransition(2130968583, 2130968584);
    }
  }
  
  public final void u()
  {
    ac localac = i().a();
    if (this.a.equals("question"))
    {
      this.am = ((m)i().a("questionFragment"));
      this.an = ((m)i().a("commentFragment"));
      if (this.an != null) {
        localac.c(this.an);
      }
      if (this.am == null)
      {
        this.am = m.b(0);
        localac.a(2131625212, this.am, "questionFragment");
      }
    }
    for (;;)
    {
      localac.d();
      this.g.setSelected(false);
      this.h.setSelected(false);
      if (this.a.equals("question")) {
        this.g.setSelected(true);
      }
      if (this.a.equals("comment")) {
        this.h.setSelected(true);
      }
      a(this.b, this.d);
      a(this.c, this.e);
      return;
      localac.d(this.am);
      localac.f(this.am);
      continue;
      this.an = ((m)i().a("commentFragment"));
      this.am = ((m)i().a("questionFragment"));
      if (this.am != null) {
        localac.c(this.am);
      }
      if (this.an == null)
      {
        this.an = m.b(1);
        localac.a(2131625212, this.an, "commentFragment");
      }
      else
      {
        localac.d(this.an);
        localac.f(this.an);
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\community\c\l.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
package com.xueqiu.android.cube;

import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.content.Intent;
import android.graphics.Color;
import android.os.Bundle;
import android.support.v4.view.ak;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import com.android.volley.y;
import com.google.gson.JsonObject;
import com.xueqiu.android.base.b.ai;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.h;
import com.xueqiu.android.base.i;
import com.xueqiu.android.base.r;
import com.xueqiu.android.base.util.a;
import com.xueqiu.android.common.b;
import com.xueqiu.android.common.model.SNBEvent;
import com.xueqiu.android.common.widget.RotateImageView;

public class CubeRbAnalysisActivity
  extends b
{
  private View.OnClickListener A = new View.OnClickListener()
  {
    public final void onClick(View paramAnonymousView)
    {
      switch (paramAnonymousView.getId())
      {
      case 2131625003: 
      case 2131625004: 
      case 2131625005: 
      case 2131625006: 
      case 2131625007: 
      default: 
        paramAnonymousView = new SNBEvent(1406, 1);
      }
      for (;;)
      {
        paramAnonymousView.addProperty("symbol", CubeRbAnalysisActivity.g(CubeRbAnalysisActivity.this));
        i.a().a(paramAnonymousView);
        return;
        CubeRbAnalysisActivity.a(CubeRbAnalysisActivity.a(CubeRbAnalysisActivity.this), true, true);
        CubeRbAnalysisActivity.a(CubeRbAnalysisActivity.b(CubeRbAnalysisActivity.this), false, false);
        CubeRbAnalysisActivity.a(CubeRbAnalysisActivity.this, CubeRbAnalysisActivity.c(CubeRbAnalysisActivity.this), 1);
        paramAnonymousView = new SNBEvent(1406, 1);
        paramAnonymousView.addProperty("period", "3个月");
        continue;
        CubeRbAnalysisActivity.a(CubeRbAnalysisActivity.a(CubeRbAnalysisActivity.this), false, true);
        CubeRbAnalysisActivity.a(CubeRbAnalysisActivity.b(CubeRbAnalysisActivity.this), true, false);
        CubeRbAnalysisActivity.a(CubeRbAnalysisActivity.this, CubeRbAnalysisActivity.c(CubeRbAnalysisActivity.this), 3);
        paramAnonymousView = new SNBEvent(1406, 1);
        paramAnonymousView.addProperty("period", "1年");
        continue;
        CubeRbAnalysisActivity.a(CubeRbAnalysisActivity.d(CubeRbAnalysisActivity.this), true, true);
        CubeRbAnalysisActivity.a(CubeRbAnalysisActivity.e(CubeRbAnalysisActivity.this), false, false);
        CubeRbAnalysisActivity.b(CubeRbAnalysisActivity.this, CubeRbAnalysisActivity.f(CubeRbAnalysisActivity.this), 1);
        paramAnonymousView = new SNBEvent(1406, 2);
        paramAnonymousView.addProperty("period", "3个月");
        continue;
        CubeRbAnalysisActivity.a(CubeRbAnalysisActivity.d(CubeRbAnalysisActivity.this), false, true);
        CubeRbAnalysisActivity.a(CubeRbAnalysisActivity.e(CubeRbAnalysisActivity.this), true, false);
        CubeRbAnalysisActivity.b(CubeRbAnalysisActivity.this, CubeRbAnalysisActivity.f(CubeRbAnalysisActivity.this), 3);
        paramAnonymousView = new SNBEvent(1406, 2);
        paramAnonymousView.addProperty("period", "1年");
      }
    }
  };
  private Button j;
  private Button k;
  private Button p;
  private Button q;
  private ImageView r;
  private RotateImageView s;
  private View t;
  private TextView u;
  private TextView v;
  private String w;
  private long x;
  private JsonObject y;
  private JsonObject z;
  
  private static void b(Button paramButton, boolean paramBoolean1, boolean paramBoolean2)
  {
    if (paramButton == null) {
      return;
    }
    if (paramBoolean2)
    {
      if (paramBoolean1)
      {
        a.a(paramButton, r.h(2130838250));
        paramButton.setTextColor(r.a(2131558728));
        return;
      }
      a.a(paramButton, r.h(2130838249));
      paramButton.setTextColor(r.a(2131558507));
      return;
    }
    if (paramBoolean1)
    {
      paramButton.setTextColor(r.a(2131558728));
      a.a(paramButton, r.h(2130838410));
      return;
    }
    a.a(paramButton, r.h(2130838409));
    paramButton.setTextColor(r.a(2131558507));
  }
  
  private void b(final String paramString)
  {
    com.xueqiu.android.base.q.a().b().a(this.w, paramString, 3, new p(this)
    {
      public final void a(y paramAnonymousy) {}
    });
  }
  
  private static CharSequence c(String paramString)
  {
    SpannableStringBuilder localSpannableStringBuilder = new SpannableStringBuilder();
    localSpannableStringBuilder.append("相当于每 ");
    int i = localSpannableStringBuilder.length();
    localSpannableStringBuilder.append(paramString);
    localSpannableStringBuilder.setSpan(new ForegroundColorSpan(Color.parseColor("#ff7700")), i, localSpannableStringBuilder.length(), 17);
    localSpannableStringBuilder.append(" 天将持仓股票全部换一遍");
    return localSpannableStringBuilder;
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903306);
    setTitle("调仓分析");
    this.w = getIntent().getStringExtra("extra_cube_symbol");
    this.x = getIntent().getLongExtra("extra_cube_id", -1L);
    if (this.w == null)
    {
      finish();
      return;
    }
    this.j = ((Button)findViewById(2131625001));
    this.k = ((Button)findViewById(2131625002));
    this.p = ((Button)findViewById(2131625008));
    this.q = ((Button)findViewById(2131625009));
    this.j.setOnClickListener(this.A);
    this.k.setOnClickListener(this.A);
    this.p.setOnClickListener(this.A);
    this.q.setOnClickListener(this.A);
    this.j.setText(r.d(2131165391));
    this.k.setText(r.d(2131165390));
    this.p.setText(r.d(2131165391));
    this.q.setText(r.d(2131165390));
    a.a(this.j, r.h(2130838248));
    a.a(this.k, r.h(2130838408));
    a.a(this.p, r.h(2130838248));
    a.a(this.q, r.h(2130838408));
    b(this.j, true, true);
    b(this.k, false, false);
    b(this.p, true, true);
    b(this.q, false, false);
    this.r = ((ImageView)findViewById(2131625005));
    this.s = ((RotateImageView)findViewById(2131624887));
    this.t = findViewById(2131625011);
    this.u = ((TextView)findViewById(2131625004));
    this.v = ((TextView)findViewById(2131625012));
    b("turnover");
    b("liquidity");
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    ak.a(paramMenu.add(0, 1, 0, 2131165912), 2);
    return true;
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    if (paramMenuItem.getItemId() == 1)
    {
      if (this.x > 0L)
      {
        paramMenuItem = new Intent(this, CubeRbHistoryActivity.class);
        paramMenuItem.putExtra("extra_id", this.x);
        startActivity(paramMenuItem);
        paramMenuItem = new SNBEvent(1406, 3);
        i.a().a(paramMenuItem);
      }
      return true;
    }
    return super.onOptionsItemSelected(paramMenuItem);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\cube\CubeRbAnalysisActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
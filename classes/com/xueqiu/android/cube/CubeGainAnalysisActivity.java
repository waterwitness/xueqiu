package com.xueqiu.android.cube;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.Display;
import android.view.WindowManager;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.android.volley.y;
import com.google.gson.JsonObject;
import com.xueqiu.android.base.b.ai;
import com.xueqiu.android.base.b.c;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.common.b;
import com.xueqiu.android.common.widget.RotateImageView;
import com.xueqiu.android.common.widget.SNBScrollView;
import com.xueqiu.android.common.widget.af;
import com.xueqiu.android.cube.model.NavDailyList;
import com.xueqiu.android.cube.model.NavMonthlyList;
import com.xueqiu.chart.c.d;
import com.xueqiu.chart.view.BarChart;
import com.xueqiu.chart.view.LineChart;
import java.util.List;

public class CubeGainAnalysisActivity
  extends b
{
  private double A;
  private float B;
  private boolean C = false;
  private SNBScrollView j;
  private RotateImageView k;
  private LineChart p;
  private BarChart q;
  private TextView r;
  private TextView s;
  private TextView t;
  private TextView u;
  private TextView v;
  private LinearLayout w;
  private String x;
  private String y;
  private String z;
  
  private void b(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      this.u.setVisibility(0);
      this.p.setVisibility(8);
      return;
    }
    this.u.setVisibility(8);
    this.p.setVisibility(0);
  }
  
  private void c(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      this.t.setVisibility(0);
      this.q.setVisibility(8);
      return;
    }
    this.t.setVisibility(8);
    this.q.setVisibility(0);
  }
  
  private void d(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      this.v.setVisibility(0);
      this.w.setVisibility(8);
      return;
    }
    this.v.setVisibility(8);
    this.w.setVisibility(0);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setTitle("收益分析");
    setContentView(2130903286);
    this.x = getIntent().getStringExtra("extra_cube_symbol");
    if (this.x == null)
    {
      finish();
      return;
    }
    this.m = false;
    this.j = ((SNBScrollView)findViewById(2131624286));
    this.k = ((RotateImageView)findViewById(2131624887));
    this.p = ((LineChart)findViewById(2131624884));
    this.q = ((BarChart)findViewById(2131624881));
    this.r = ((TextView)findViewById(2131624888));
    this.s = ((TextView)findViewById(2131624889));
    this.t = ((TextView)findViewById(2131624883));
    this.u = ((TextView)findViewById(2131624885));
    this.w = ((LinearLayout)findViewById(2131624886));
    this.v = ((TextView)findViewById(2131624890));
    final int i = ((WindowManager)getBaseContext().getSystemService("window")).getDefaultDisplay().getHeight();
    this.j.setScrollChangedListener(new af()
    {
      public final void a()
      {
        if (!CubeGainAnalysisActivity.a(CubeGainAnalysisActivity.this))
        {
          int[] arrayOfInt = new int[2];
          int[] tmp15_14 = arrayOfInt;
          tmp15_14[0] = 0;
          int[] tmp19_15 = tmp15_14;
          tmp19_15[1] = 0;
          tmp19_15;
          CubeGainAnalysisActivity.b(CubeGainAnalysisActivity.this).getLocationInWindow(arrayOfInt);
          if (arrayOfInt[1] < i)
          {
            CubeGainAnalysisActivity.c(CubeGainAnalysisActivity.this);
            CubeGainAnalysisActivity.d(CubeGainAnalysisActivity.this);
          }
        }
      }
    });
    com.xueqiu.android.base.q.a().b().a(this.x, "volatility", 0, new p(this)
    {
      public final void a(y paramAnonymousy)
      {
        aa.a(paramAnonymousy);
        CubeGainAnalysisActivity.e(CubeGainAnalysisActivity.this);
      }
    });
    com.xueqiu.android.base.q.a().b().a(this.x, "max_draw", 0, new p(this)
    {
      public final void a(y paramAnonymousy)
      {
        CubeGainAnalysisActivity.f(CubeGainAnalysisActivity.this);
        aa.a(paramAnonymousy);
      }
    });
    paramBundle = com.xueqiu.android.base.q.a().b();
    String str = this.x;
    p local4 = new p(this)
    {
      public final void a(y paramAnonymousy)
      {
        CubeGainAnalysisActivity.h(CubeGainAnalysisActivity.this);
        aa.a(paramAnonymousy);
      }
    };
    paramBundle.l.d(str, local4);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\cube\CubeGainAnalysisActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
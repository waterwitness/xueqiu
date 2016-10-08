package com.xueqiu.android.trade;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v7.a.a;
import android.support.v7.a.g;
import android.view.SurfaceView;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup.LayoutParams;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.pingan.main.PAVideoManage;
import com.xueqiu.android.base.h5.b;
import com.xueqiu.android.base.j;
import com.xueqiu.android.base.util.ay;
import com.xueqiu.android.trade.b.i;

public class PAAccountVideoActivity
  extends j<com.xueqiu.android.trade.d.f>
  implements View.OnClickListener, i
{
  private RelativeLayout p;
  private SurfaceView q = null;
  private SurfaceView r = null;
  private TextView s = null;
  private b t;
  private String u;
  private String v;
  private RelativeLayout w;
  private ImageView x;
  private Animation y;
  
  public final void a(Intent paramIntent)
  {
    setResult(-1, paramIntent);
    finish();
  }
  
  public final void b(String paramString)
  {
    this.w.setVisibility(0);
    this.x.startAnimation(this.y);
    this.s.setText(paramString);
  }
  
  public final void c(String paramString)
  {
    this.s.setText(paramString);
  }
  
  public final void j()
  {
    this.w.setVisibility(8);
  }
  
  public void onBackPressed()
  {
    com.xueqiu.android.trade.d.f localf = (com.xueqiu.android.trade.d.f)this.j;
    localf.a.a(localf.c());
    super.onBackPressed();
  }
  
  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default: 
      return;
    }
    paramView = (com.xueqiu.android.trade.d.f)this.j;
    PAVideoManage.getInstance((Context)paramView.a).hangup();
    paramView.a.a(paramView.c());
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.i.b().d();
    setContentView(2130903129);
    paramBundle = (TextView)findViewById(2131624373);
    this.s = ((TextView)findViewById(2131624381));
    this.w = ((RelativeLayout)findViewById(2131624378));
    this.x = ((ImageView)findViewById(2131624379));
    paramBundle.setOnClickListener(this);
    this.p = ((RelativeLayout)findViewById(2131624375));
    this.q = ((SurfaceView)findViewById(2131624376));
    paramBundle = this.q.getLayoutParams();
    paramBundle.width = (ay.a(this) / 3);
    paramBundle.height = (paramBundle.width * 3 / 2);
    this.q.setLayoutParams(paramBundle);
    this.r = ((SurfaceView)findViewById(2131624377));
    this.y = AnimationUtils.loadAnimation(this, 2130968593);
    this.y.setRepeatCount(1);
    if (getIntent().getParcelableExtra("extra_event") != null)
    {
      paramBundle = getIntent();
      this.t = ((b)paramBundle.getParcelableExtra("extra_event"));
      this.u = paramBundle.getStringExtra("pavideo_channel_id");
      this.v = paramBundle.getStringExtra("pavideo_uid");
    }
  }
  
  protected void onDestroy()
  {
    PAVideoManage.getInstance((Context)((com.xueqiu.android.trade.d.f)this.j).a).onPADestroy();
    super.onDestroy();
  }
  
  protected void onPause()
  {
    super.onPause();
    PAVideoManage.getInstance((Context)((com.xueqiu.android.trade.d.f)this.j).a).onPAPause();
  }
  
  protected void onRestart()
  {
    PAVideoManage.getInstance((Context)((com.xueqiu.android.trade.d.f)this.j).a).onPARestart();
    super.onRestart();
  }
  
  protected void onResume()
  {
    super.onResume();
    PAVideoManage.getInstance((Context)((com.xueqiu.android.trade.d.f)this.j).a).onPAResume();
  }
  
  protected void onStart()
  {
    super.onStart();
    PAVideoManage.getInstance((Context)((com.xueqiu.android.trade.d.f)this.j).a).onPAStart();
  }
  
  protected void onStop()
  {
    PAVideoManage.getInstance((Context)((com.xueqiu.android.trade.d.f)this.j).a).onPAStop();
    super.onStop();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\trade\PAAccountVideoActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
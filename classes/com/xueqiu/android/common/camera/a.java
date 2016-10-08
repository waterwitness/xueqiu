package com.xueqiu.android.common.camera;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.hardware.Camera;
import android.os.Bundle;
import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Message;
import android.support.annotation.Nullable;
import android.support.v4.a.i;
import android.support.v4.a.k;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import com.xueqiu.android.base.util.ay;
import com.xueqiu.android.common.SingleFragmentActivity;
import com.xueqiu.android.common.c;

public class a
  extends c
  implements Handler.Callback, View.OnClickListener
{
  private CameraPreview a;
  private View ak;
  private TextView al;
  private TextView am;
  private View an;
  private View ao;
  private g ap;
  private b aq = new b(this, (byte)0);
  private Handler ar = new Handler(this);
  private boolean as = false;
  private boolean at = false;
  private int au;
  private d av = new d(this, (byte)0);
  private ImageView b;
  private Button c;
  private View d;
  private View e;
  private View f;
  private ImageButton g;
  private View h;
  
  private void C()
  {
    g().setResult(-1);
    g().finish();
  }
  
  public static Intent a(Context paramContext, g paramg)
  {
    Bundle localBundle = new Bundle();
    localBundle.putParcelable("extra_setting", paramg);
    return SingleFragmentActivity.a(paramContext, a.class, localBundle);
  }
  
  private void a(boolean paramBoolean)
  {
    int j = 0;
    Object localObject = this.c;
    label32:
    label49:
    boolean bool;
    if (paramBoolean)
    {
      i = 8;
      ((Button)localObject).setVisibility(i);
      localObject = this.d;
      if (!paramBoolean) {
        break label111;
      }
      i = 8;
      ((View)localObject).setVisibility(i);
      localObject = this.g;
      if (!paramBoolean) {
        break label116;
      }
      i = 8;
      ((ImageButton)localObject).setVisibility(i);
      localObject = this.g;
      if (paramBoolean) {
        break label121;
      }
      bool = true;
      label66:
      ((ImageButton)localObject).setEnabled(bool);
      localObject = this.e;
      if (!paramBoolean) {
        break label127;
      }
      i = 0;
      label83:
      ((View)localObject).setVisibility(i);
      localObject = this.f;
      if (!paramBoolean) {
        break label133;
      }
    }
    label111:
    label116:
    label121:
    label127:
    label133:
    for (int i = j;; i = 8)
    {
      ((View)localObject).setVisibility(i);
      return;
      i = 0;
      break;
      i = 0;
      break label32;
      i = 0;
      break label49;
      bool = false;
      break label66;
      i = 8;
      break label83;
    }
  }
  
  private void u()
  {
    int i = this.ak.getMeasuredHeight() - h().getDimensionPixelOffset(2131230764) * 2;
    if (i < 0)
    {
      this.ak.post(this.av);
      return;
    }
    Object localObject;
    label92:
    TextView localTextView;
    if (this.ap.c == 1)
    {
      this.au = ((int)(i * 0.71428573F));
      if (this.an.getLayoutParams() == null) {
        break label265;
      }
      localObject = (RelativeLayout.LayoutParams)this.an.getLayoutParams();
      ((RelativeLayout.LayoutParams)localObject).width = this.au;
      ((RelativeLayout.LayoutParams)localObject).height = i;
      this.an.setLayoutParams((ViewGroup.LayoutParams)localObject);
      if (this.ap.c != 0) {
        break label281;
      }
      this.am.setVisibility(0);
      if (this.am.getRotation() == 0.0F)
      {
        i = (ay.c(g()) - this.au) / 2;
        localObject = this.am.getLayoutParams();
        ((ViewGroup.LayoutParams)localObject).width = this.ao.getHeight();
        ((ViewGroup.LayoutParams)localObject).height = i;
        this.am.setLayoutParams((ViewGroup.LayoutParams)localObject);
        this.am.setPivotX(0.0F);
        this.am.setPivotY(0.0F);
        this.am.setRotation(90.0F);
        this.am.setTranslationX(i);
        this.am.setTranslationY((this.ao.getHeight() - this.am.getWidth()) / 2);
      }
      localTextView = this.al;
      localObject = "";
    }
    for (;;)
    {
      localTextView.setText((CharSequence)localObject);
      return;
      this.au = ((int)(i * 0.6666667F));
      break;
      label265:
      localObject = new RelativeLayout.LayoutParams(this.au, i);
      break label92;
      label281:
      this.am.setVisibility(8);
      localTextView = this.al;
      if (TextUtils.isEmpty(this.ap.e)) {
        localObject = a(2131165292);
      } else {
        localObject = this.ap.e;
      }
    }
  }
  
  public final void K_()
  {
    super.K_();
    this.a.a();
  }
  
  public final View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    return paramLayoutInflater.inflate(2130903337, paramViewGroup, false);
  }
  
  public final void a(View paramView, @Nullable Bundle paramBundle)
  {
    super.a(paramView, paramBundle);
    w().d();
    this.a = ((CameraPreview)c(2131625114));
    this.g = ((ImageButton)c(2131625125));
    this.b = ((ImageView)c(2131625123));
    this.c = ((Button)c(2131624114));
    this.d = c(2131625112);
    this.e = c(2131625124);
    this.f = c(2131625126);
    this.h = c(2131625121);
    this.ak = c(2131625115);
    this.al = ((TextView)c(2131625120));
    this.am = ((TextView)c(2131625122));
    this.ao = c(2131625117);
    this.an = c(2131625116);
    this.g.setOnClickListener(this);
    this.b.setOnClickListener(this);
    this.c.setOnClickListener(this);
    this.d.setOnClickListener(this);
    this.e.setOnClickListener(this);
    this.f.setOnClickListener(this);
    if (this.r != null) {
      this.ap = ((g)this.r.getParcelable("extra_setting"));
    }
    if (this.ap == null) {
      this.ap = new g();
    }
    this.a.setCameraSetting(this.ap);
    paramView = this.ap.d;
    if ((TextUtils.equals(paramView, "back")) || (TextUtils.equals(paramView, "front"))) {
      this.ak.setVisibility(8);
    }
    for (;;)
    {
      if (!TextUtils.isEmpty(this.ap.e)) {
        this.al.setText(this.ap.e);
      }
      return;
      this.ak.setVisibility(0);
    }
  }
  
  public final void d()
  {
    super.d();
    this.a.b();
  }
  
  public final void e()
  {
    this.ar.removeCallbacksAndMessages(null);
    this.ak.removeCallbacks(this.av);
    super.e();
  }
  
  public boolean handleMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    default: 
      return false;
    }
    z();
    a(true);
    this.b.setVisibility(0);
    this.b.setImageBitmap((Bitmap)paramMessage.getData().getParcelable("bitmap"));
    return false;
  }
  
  public final void o()
  {
    super.o();
    u();
  }
  
  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default: 
    case 2131625125: 
      do
      {
        return;
        paramView = this.a.getCamera();
      } while ((paramView == null) || (!this.a.a));
      this.h.setVisibility(0);
      this.ar.postDelayed(new Runnable()
      {
        public final void run()
        {
          a.a(a.this).setVisibility(8);
        }
      }, 100L);
      paramView.takePicture(this.aq, null, this.aq);
      this.g.setEnabled(false);
      return;
    case 2131624114: 
      g().setResult(0);
      g().finish();
      return;
    case 2131625112: 
      paramView = this.a;
      paramView.b();
      if (paramView.b.c == 0) {}
      for (paramView.b.c = 1;; paramView.b.c = 0)
      {
        paramView.a();
        u();
        return;
      }
    case 2131625126: 
      this.at = true;
      if (this.as) {
        C();
      }
      break;
    }
    for (;;)
    {
      this.b.setVisibility(8);
      a(false);
      this.a.a();
      return;
      y();
    }
  }
  
  public final void p()
  {
    super.p();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\camera\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
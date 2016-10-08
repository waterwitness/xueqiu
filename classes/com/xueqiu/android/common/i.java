package com.xueqiu.android.common;

import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Handler;
import android.support.annotation.Nullable;
import android.support.v4.a.k;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.android.volley.y;
import com.xueqiu.android.base.b;
import com.xueqiu.android.base.b.ai;
import com.xueqiu.android.base.b.an;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.b.q;
import com.xueqiu.android.base.h;
import com.xueqiu.android.base.r;
import com.xueqiu.android.base.t;
import com.xueqiu.android.base.u;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.base.util.v;
import com.xueqiu.android.common.account.LoginActivity;
import com.xueqiu.android.common.model.SNBEvent;
import com.xueqiu.android.common.widget.FlowLayout;
import com.xueqiu.android.community.model.InterestTopic;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class i
  extends c
  implements View.OnClickListener, CompoundButton.OnCheckedChangeListener
{
  private static final String b = i.class.getSimpleName();
  j a;
  private Handler ak = new Handler();
  private boolean al = false;
  private boolean am = false;
  private FlowLayout an;
  private String ao;
  private LayoutInflater ap;
  private View c;
  private List<CheckBox> d = new ArrayList();
  private TextView e;
  private TextView f;
  private TextView g;
  private LinearLayout h;
  
  private void C()
  {
    v.a(b, "playShowAnim");
    this.ak.postDelayed(new Runnable()
    {
      public final void run()
      {
        i.a(i.this).setVisibility(0);
        i.b(i.this).setVisibility(8);
        try
        {
          b.a();
          Animation localAnimation = AnimationUtils.loadAnimation(b.d(), 2130968607);
          i.a(i.this).startAnimation(localAnimation);
          return;
        }
        catch (Exception localException)
        {
          v.e(i.u(), "playShowAnim Exception : " + localException.getMessage());
        }
      }
    }, 300L);
  }
  
  private String D()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    Iterator localIterator = this.d.iterator();
    while (localIterator.hasNext())
    {
      CheckBox localCheckBox = (CheckBox)localIterator.next();
      if (localCheckBox.isChecked())
      {
        localStringBuilder.append(localCheckBox.getTag());
        localStringBuilder.append(",");
      }
    }
    if (localStringBuilder.length() > 0) {
      localStringBuilder.deleteCharAt(localStringBuilder.length() - 1);
    }
    v.a(b, "getSelectedTopics result = " + localStringBuilder.toString());
    return localStringBuilder.toString();
  }
  
  public final View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    v.c(b, "onCreateView");
    if (this.c != null) {
      return this.c;
    }
    this.ap = paramLayoutInflater;
    this.c = paramLayoutInflater.inflate(2130903363, paramViewGroup, false);
    paramLayoutInflater = this.c;
    this.an = ((FlowLayout)paramLayoutInflater.findViewById(2131625189));
    this.h = ((LinearLayout)paramLayoutInflater.findViewById(2131624718));
    this.e = ((TextView)paramLayoutInflater.findViewById(2131625186));
    this.e.setOnClickListener(this);
    if ((u.a().c) && (!u.a().d)) {
      this.e.setVisibility(4);
    }
    for (;;)
    {
      this.f = ((TextView)paramLayoutInflater.findViewById(2131625187));
      this.f.setOnClickListener(this);
      this.g = ((TextView)paramLayoutInflater.findViewById(2131625190));
      this.g.setOnClickListener(this);
      return this.c;
      this.e.setVisibility(0);
    }
  }
  
  public final void c(@Nullable Bundle paramBundle)
  {
    v.c(b, "onActivityCreated");
    super.c(paramBundle);
    paramBundle = x();
    p local1 = new p(this)
    {
      public final void a(y paramAnonymousy)
      {
        String str2 = i.u();
        StringBuilder localStringBuilder = new StringBuilder("onErrorResponse error = ");
        if (paramAnonymousy != null) {}
        for (String str1 = paramAnonymousy.toString();; str1 = "")
        {
          v.a(str2, str1);
          aa.a(paramAnonymousy);
          i.a(i.this).setVisibility(8);
          i.b(i.this).setVisibility(0);
          i.c(i.this).setEnabled(true);
          i.c(i.this).setTextColor(r.a(2131558708));
          return;
        }
      }
    };
    paramBundle.h.f(local1);
  }
  
  public final void c_(boolean paramBoolean)
  {
    super.c_(paramBoolean);
    v.a(b, "onHiddenChanged hidden = " + paramBoolean);
  }
  
  public final void o()
  {
    super.o();
    if (this.al)
    {
      C();
      this.am = true;
    }
    v.a(b, "onResume");
  }
  
  public void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    Drawable localDrawable;
    if (paramBoolean)
    {
      localDrawable = r.h(2130838563);
      SNBEvent localSNBEvent = new SNBEvent(2600, 1);
      localSNBEvent.addProperty("topic_name", paramCompoundButton.getText().toString());
      com.xueqiu.android.base.i.a().a(localSNBEvent);
    }
    for (;;)
    {
      localDrawable.setBounds(0, 0, r.i(18), r.i(18));
      paramCompoundButton.setCompoundDrawables(null, null, localDrawable, null);
      paramCompoundButton.startAnimation(AnimationUtils.loadAnimation(g(), 2130968606));
      this.g.setEnabled(true);
      this.g.setTextColor(r.a(2131558708));
      return;
      localDrawable = r.h(2130837599);
    }
  }
  
  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    }
    do
    {
      return;
      paramView = new Bundle();
      paramView.putByte("extra_mode", (byte)2);
      paramView.putBoolean("extra_need_back", true);
      Intent localIntent = new Intent(g(), LoginActivity.class);
      localIntent.putExtras(paramView);
      a(localIntent);
      if (g() != null) {
        g().finish();
      }
      paramView = new SNBEvent(2600, 3);
      com.xueqiu.android.base.i.a().a(paramView);
      return;
      if (g() != null) {
        g().finish();
      }
      paramView = new SNBEvent(2600, 4);
      com.xueqiu.android.base.i.a().a(paramView);
      return;
      paramView = new SNBEvent(2600, 2);
      com.xueqiu.android.base.i.a().a(paramView);
      paramView = D();
    } while (this.a == null);
    if (TextUtils.isEmpty(paramView))
    {
      this.a.a(paramView, true);
      return;
    }
    if (!paramView.equals(this.ao))
    {
      this.ao = paramView;
      this.a.a(this.ao, true);
      return;
    }
    this.a.a(this.ao, false);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\i.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
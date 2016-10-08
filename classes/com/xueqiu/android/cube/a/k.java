package com.xueqiu.android.cube.a;

import android.app.Activity;
import android.app.Dialog;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.android.volley.y;
import com.xueqiu.android.base.b.a.c;
import com.xueqiu.android.base.b.ai;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.q;
import com.xueqiu.android.base.r;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.common.a.d;
import com.xueqiu.android.common.model.RequestResult;
import com.xueqiu.android.common.widget.ae;
import com.xueqiu.android.community.model.User;
import com.xueqiu.android.cube.model.Cube;
import com.xueqiu.android.cube.model.Market;

public final class k
  extends d<Cube>
{
  Activity e;
  Dialog f = null;
  private boolean g = false;
  
  public k(Activity paramActivity)
  {
    this(paramActivity, (byte)0);
  }
  
  private k(Activity paramActivity, byte paramByte)
  {
    super(paramActivity, 2130903473);
    this.e = paramActivity;
    this.g = false;
  }
  
  private static void b(l paraml, Cube paramCube)
  {
    if (paramCube.isFollowing())
    {
      paraml.d.setImageResource(2130837830);
      return;
    }
    paraml.d.setImageResource(2130837829);
  }
  
  protected final void b()
  {
    if ((this.f != null) && (this.f.isShowing()))
    {
      this.f.dismiss();
      this.f = null;
    }
  }
  
  public final View getView(int paramInt, final View paramView, ViewGroup paramViewGroup)
  {
    View localView = super.getView(paramInt, paramView, paramViewGroup);
    final Cube localCube;
    if (localView.getTag() == null)
    {
      paramView = new l();
      paramView.b = ((TextView)localView.findViewById(2131625535));
      paramView.c = ((TextView)localView.findViewById(2131625538));
      paramView.d = ((ImageView)localView.findViewById(2131624458));
      paramView.a = ((ImageView)localView.findViewById(2131625544));
      localView.setTag(paramView);
      localCube = (Cube)getItem(paramInt);
      paramView.b.setText(localCube.getName());
      String str = localCube.getSymbol() + " ";
      if (!c.a(localCube.getOwner().getScreenName())) {
        break label319;
      }
      paramViewGroup = "";
      label151:
      Object localObject = r.d(2131166027);
      localObject = new SpannableStringBuilder(str + paramViewGroup + (String)localObject);
      ForegroundColorSpan localForegroundColorSpan = new ForegroundColorSpan(r.a(2131558670));
      paramInt = str.length();
      int i = str.length();
      ((SpannableStringBuilder)localObject).setSpan(localForegroundColorSpan, paramInt, paramViewGroup.length() + i, 34);
      paramView.c.setText((CharSequence)localObject);
      b(paramView, localCube);
      paramViewGroup = Market.valueOf(localCube.getMarket().toUpperCase());
      if (!paramViewGroup.isHK()) {
        break label331;
      }
      paramView.a.setVisibility(0);
      paramView.a.setImageResource(2130838560);
    }
    for (;;)
    {
      paramView.d.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          boolean bool = true;
          if (!k.a(k.this))
          {
            paramAnonymousView = new p()
            {
              public final void a(y paramAnonymous2y)
              {
                aa.a(paramAnonymous2y);
                k.this.b();
              }
            };
            if (localCube.isFollowing()) {
              q.a().b().d(localCube.getSymbol(), paramAnonymousView);
            }
            for (;;)
            {
              paramAnonymousView = k.this;
              if ((paramAnonymousView.e != null) && (!paramAnonymousView.e.isFinishing())) {
                break;
              }
              return;
              q.a().b().a(localCube.getSymbol(), 1, paramAnonymousView);
            }
            if (paramAnonymousView.f != null) {
              paramAnonymousView.f.dismiss();
            }
            paramAnonymousView.f = new ae(paramAnonymousView.e);
            paramAnonymousView.f.show();
            return;
          }
          paramAnonymousView = localCube;
          if (!localCube.isFollowing()) {}
          for (;;)
          {
            paramAnonymousView.setFollowing(bool);
            k.this.notifyDataSetChanged();
            return;
            bool = false;
          }
        }
      });
      return localView;
      paramView = (l)localView.getTag();
      break;
      label319:
      paramViewGroup = localCube.getOwner().getScreenName();
      break label151;
      label331:
      if (paramViewGroup.isUS())
      {
        paramView.a.setVisibility(0);
        paramView.a.setImageResource(2130838562);
      }
      else
      {
        paramView.a.setVisibility(8);
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\cube\a\k.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
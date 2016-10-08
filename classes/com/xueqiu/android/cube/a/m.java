package com.xueqiu.android.cube.a;

import android.app.Activity;
import android.content.Intent;
import android.graphics.Bitmap;
import android.support.v4.view.ViewPager;
import android.support.v4.view.bd;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageView;
import com.android.volley.y;
import com.d.a.b.d;
import com.d.a.b.e;
import com.d.a.b.f;
import com.google.gson.JsonObject;
import com.imbryk.viewPager.LoopViewPager;
import com.xueqiu.android.base.b.ai;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.h;
import com.xueqiu.android.base.i;
import com.xueqiu.android.base.storage.prefs.UserLogonDataPrefs;
import com.xueqiu.android.base.storage.prefs.UserPrefs;
import com.xueqiu.android.base.t;
import com.xueqiu.android.base.u;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.base.util.n;
import com.xueqiu.android.base.util.o;
import com.xueqiu.android.common.model.SNBEvent;
import com.xueqiu.android.cube.CubeEditorialActivity;
import com.xueqiu.android.cube.model.Editorial;
import java.util.List;

public final class m
  extends bd
{
  Activity b;
  private List<Editorial> c;
  private LayoutInflater d;
  private d e;
  
  public m(Activity paramActivity, List<Editorial> paramList)
  {
    this.c = paramList;
    this.b = paramActivity;
    this.d = ((LayoutInflater)this.b.getSystemService("layout_inflater"));
    paramActivity = n.a();
    paramActivity.b = 2130837903;
    paramActivity.a = 2130837903;
    paramActivity.c = 2130837903;
    this.e = paramActivity.b();
  }
  
  public final Object a(final ViewGroup paramViewGroup, final int paramInt)
  {
    ImageView localImageView = (ImageView)this.d.inflate(2130903278, paramViewGroup, false);
    paramViewGroup.addView(localImageView);
    paramViewGroup = (Editorial)this.c.get(paramInt);
    o local1 = new o()
    {
      public final void a(String paramAnonymousString, View paramAnonymousView, Bitmap paramAnonymousBitmap)
      {
        super.a(paramAnonymousString, paramAnonymousView, paramAnonymousBitmap);
        if ((paramAnonymousView == null) || (paramAnonymousView.getParent() == null)) {}
        double d;
        do
        {
          do
          {
            return;
            paramAnonymousString = paramAnonymousView.getParent();
          } while (!(paramAnonymousString instanceof LoopViewPager));
          paramAnonymousString = (LoopViewPager)paramAnonymousString;
          d = paramAnonymousString.getWidth() * (paramAnonymousBitmap.getHeight() / paramAnonymousBitmap.getWidth());
        } while (paramAnonymousString.getHeight() == d);
        UserPrefs.setDouble(m.this.b, "discover_header_img_height", d);
        paramAnonymousString.setLayoutParams(new FrameLayout.LayoutParams(-1, (int)d));
        paramAnonymousString.setMinimumHeight((int)d);
      }
    };
    f.a().a(String.format("%s!discover.webp", new Object[] { paramViewGroup.getImage() }), localImageView, this.e, local1);
    localImageView.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        paramAnonymousView = paramViewGroup.getUrl();
        if ((u.a().d) && (com.xueqiu.android.common.q.b(paramAnonymousView)) && (m.this.b != null)) {
          t.a(m.this.b, false);
        }
        for (;;)
        {
          paramAnonymousView = new SNBEvent(1100, 3);
          paramAnonymousView.addProperty("ad_id", String.valueOf(paramViewGroup.getId()));
          paramAnonymousView.addProperty("pos", String.valueOf(paramInt));
          i.a().a(paramAnonymousView);
          paramAnonymousView = com.xueqiu.android.base.q.a().b();
          u.a();
          paramAnonymousView.d(UserLogonDataPrefs.getLogonUserId(), String.valueOf(paramViewGroup.getId()), new p()
          {
            public final void a(y paramAnonymous2y)
            {
              aa.a(paramAnonymous2y);
            }
          });
          return;
          if (paramAnonymousView.split("\\?")[0].contains("/p/discover"))
          {
            paramAnonymousView = new Intent(m.this.b, CubeEditorialActivity.class);
            paramAnonymousView.putExtra("extra_show_footer", true);
            paramAnonymousView.putExtra("extra_editorial_id", paramViewGroup.getId());
            m.this.b.startActivity(paramAnonymousView);
          }
          else
          {
            com.xueqiu.android.common.q.a(paramViewGroup.getUrl(), m.this.b);
          }
        }
      }
    });
    return localImageView;
  }
  
  public final void a(ViewGroup paramViewGroup, int paramInt, Object paramObject)
  {
    ((ViewPager)paramViewGroup).removeView((View)paramObject);
  }
  
  public final boolean a(View paramView, Object paramObject)
  {
    return paramView == paramObject;
  }
  
  public final int b()
  {
    if (this.c == null) {
      return 0;
    }
    return this.c.size();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\cube\a\m.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
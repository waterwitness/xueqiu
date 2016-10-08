package com.xueqiu.android.community.a;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.text.Html;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import com.android.volley.k;
import com.android.volley.y;
import com.xueqiu.android.base.g;
import com.xueqiu.android.base.storage.DBManager;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.base.util.l;
import com.xueqiu.android.base.util.n;
import com.xueqiu.android.base.util.o;
import com.xueqiu.android.common.b;
import com.xueqiu.android.common.model.ClientInfo;
import com.xueqiu.android.common.model.RequestResult;
import com.xueqiu.android.community.model.User;
import com.xueqiu.android.community.model.User.Gender;
import com.xueqiu.android.community.model.UserVerifyType;
import java.lang.ref.WeakReference;
import rx.i;

public final class ba
  extends com.xueqiu.android.common.a.d<User>
{
  protected Handler e = new Handler();
  public boolean f = false;
  public com.xueqiu.android.common.a.e g = null;
  public bb h = null;
  private int i = 0;
  private boolean j = true;
  private Activity k;
  private com.d.a.b.f l;
  private com.d.a.b.d m = null;
  private WeakReference<Drawable> n = null;
  private WeakReference<Drawable> o = null;
  
  public ba(Activity paramActivity)
  {
    this(paramActivity, 2130903170);
  }
  
  public ba(Activity paramActivity, int paramInt)
  {
    super(paramActivity, paramInt);
    this.k = paramActivity;
    this.i = paramInt;
    this.l = com.d.a.b.f.a();
    this.m = n.a().b();
  }
  
  public static String a(User paramUser, Context paramContext)
  {
    if (paramUser.getStockStatusCount() > 0) {
      return String.format(paramContext.getString(2131166149), new Object[] { Integer.valueOf(paramUser.getStockStatusCount()) });
    }
    if (paramUser.getRecommend() != null)
    {
      if (paramUser.getRecommend().equals("3")) {
        return String.format(paramContext.getString(2131165544), new Object[] { paramUser.getRecExtraMsg() });
      }
      if (paramUser.getRecommend().equals("4")) {
        return String.format(paramContext.getString(2131165356), new Object[] { Integer.valueOf(paramUser.getCommonCount()) });
      }
      if (paramUser.getRecommend().equals("5")) {
        return String.format(paramContext.getString(2131165357), new Object[] { Integer.valueOf(paramUser.getCommonCount()) });
      }
      if (paramUser.getRecommend().equals("6")) {
        return String.format(paramContext.getString(2131166140), new Object[] { paramUser.getRecExtraMsg() });
      }
    }
    return null;
  }
  
  private Drawable b()
  {
    if ((this.n == null) || (this.n.get() == null))
    {
      TypedArray localTypedArray = this.c.getTheme().obtainStyledAttributes(new int[] { 2130772281 });
      this.n = new WeakReference(this.c.getResources().getDrawable(localTypedArray.getResourceId(0, 0)));
    }
    return (Drawable)this.n.get();
  }
  
  private Drawable c()
  {
    if ((this.o == null) || (this.o.get() == null))
    {
      TypedArray localTypedArray = this.c.getTheme().obtainStyledAttributes(new int[] { 2130772282 });
      this.o = new WeakReference(this.c.getResources().getDrawable(localTypedArray.getResourceId(0, 0)));
    }
    return (Drawable)this.o.get();
  }
  
  public final View getView(final int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    View localView = super.getView(paramInt, paramView, paramViewGroup);
    bc localbc;
    if (localView.getTag() == null)
    {
      localbc = new bc();
      localbc.a = ((TextView)localView.findViewById(2131624440));
      localbc.b = ((TextView)localView.findViewById(2131624441));
      localbc.c = ((ImageView)localView.findViewById(2131624464));
      localbc.d = ((TextView)localView.findViewById(2131624457));
      localbc.e = ((ImageView)localView.findViewById(2131624401));
      if (this.i == 2130903160) {
        localbc.f = ((ImageView)localView.findViewById(2131624458));
      }
    }
    for (;;)
    {
      localView.setTag(localbc);
      final User localUser = (User)getItem(paramInt);
      try
      {
        paramView = Html.fromHtml(localUser.getScreenName());
        localbc.a.setText(paramView);
        if (this.i == 2130903170)
        {
          if (!TextUtils.isEmpty(localUser.getRemark()))
          {
            localbc.b.setText("(" + Html.fromHtml(localUser.getRemark()) + ")");
            localbc.b.setVisibility(0);
          }
        }
        else
        {
          paramViewGroup = null;
          if (this.f) {
            paramViewGroup = a(localUser, this.c);
          }
          paramView = paramViewGroup;
          if (paramViewGroup == null)
          {
            if (TextUtils.isEmpty(localUser.getVerifiedDescription())) {
              break label810;
            }
            paramView = localUser.getVerifiedDescription();
          }
        }
        try
        {
          paramViewGroup = Html.fromHtml(paramView);
          paramView = paramViewGroup;
        }
        catch (Exception paramViewGroup)
        {
          final Object localObject;
          int i1;
          for (;;) {}
        }
        localObject = this.c;
        if (paramView != null)
        {
          paramViewGroup = paramView;
          if (paramView.length() != 0) {}
        }
        else
        {
          paramViewGroup = "";
          paramView = paramViewGroup;
          if (localUser.getProvince() != null)
          {
            paramView = paramViewGroup;
            if (!localUser.getProvince().equals(((Context)localObject).getString(2131165856)))
            {
              paramView = paramViewGroup;
              if (!localUser.getProvince().equals(((Context)localObject).getString(2131165312)))
              {
                paramView = paramViewGroup;
                if (!localUser.getProvince().equals(((Context)localObject).getString(2131165855))) {
                  paramView = localUser.getProvince();
                }
              }
            }
          }
          paramViewGroup = paramView;
          if (localUser.getCity() != null)
          {
            paramViewGroup = paramView;
            if (!localUser.getCity().equals(((Context)localObject).getString(2131165310)))
            {
              paramViewGroup = paramView;
              if (!localUser.getCity().equals(((Context)localObject).getString(2131165313)))
              {
                paramViewGroup = paramView;
                if (!localUser.getCity().equals(((Context)localObject).getString(2131165312))) {
                  paramViewGroup = paramView + localUser.getCity();
                }
              }
            }
          }
          paramView = paramViewGroup;
          if (paramViewGroup.length() > 0) {
            paramView = paramViewGroup + ", ";
          }
          paramViewGroup = paramView + this.c.getString(2131166565, new Object[] { String.valueOf(localUser.getStatusesCount()), String.valueOf(localUser.getFollowersCount()), String.valueOf(localUser.getFriendsCount()) });
        }
        localbc.d.setText(paramViewGroup);
        if (localUser.isVerified())
        {
          localbc.e.setVisibility(0);
          i1 = localUser.getVerifyType().iconResId();
          localbc.e.setImageResource(i1);
          if (TextUtils.isEmpty(localUser.getProfileImageUrl())) {
            break label858;
          }
          paramView = localbc.c;
          paramViewGroup = localUser.getProfileImageUrl();
          localObject = localUser.getGender();
          if ((paramViewGroup != null) && (!paramViewGroup.equals(""))) {
            break label832;
          }
          if (localbc.f != null)
          {
            if (!localUser.isFollowing()) {
              break label899;
            }
            localbc.f.setBackgroundResource(2130837857);
            localbc.f.setOnClickListener(new View.OnClickListener()
            {
              public final void onClick(View paramAnonymousView)
              {
                if (g.a().c.isMonkeyTestVersion()) {}
                do
                {
                  return;
                  if (!ba.a(ba.this)) {
                    break;
                  }
                  ba.a(ba.this, localUser);
                } while ((localUser.isFollowing()) || (ba.b(ba.this) == null));
                return;
                paramAnonymousView = localUser;
                if (!localUser.isFollowing()) {}
                for (boolean bool = true;; bool = false)
                {
                  paramAnonymousView.setFollowing(bool);
                  ba.this.notifyDataSetChanged();
                  return;
                }
              }
            });
          }
          if (localbc.g != null) {
            localbc.g.setOnClickListener(new View.OnClickListener()
            {
              public final void onClick(View paramAnonymousView)
              {
                ba.c(ba.this).a(localUser);
              }
            });
          }
          return localView;
          if (this.i != 2130903162) {
            continue;
          }
          localbc.g = ((Button)localView.findViewById(2131624468));
          continue;
          localbc = (bc)localView.getTag();
        }
      }
      catch (Exception paramView)
      {
        for (;;)
        {
          paramView = localUser.getScreenName();
          continue;
          localbc.b.setVisibility(8);
          continue;
          label810:
          paramView = localUser.getDescription();
          continue;
          localbc.e.setVisibility(8);
          continue;
          label832:
          this.l.a(paramViewGroup, paramView, this.m, new o()
          {
            public final void a(String paramAnonymousString, View paramAnonymousView)
            {
              if (localObject == User.Gender.FEMALE)
              {
                ((ImageView)paramAnonymousView).setImageDrawable(ba.d(ba.this));
                return;
              }
              ((ImageView)paramAnonymousView).setImageDrawable(ba.e(ba.this));
            }
          });
          continue;
          label858:
          if (localUser.getGender() == User.Gender.FEMALE)
          {
            localbc.c.setImageDrawable(c());
          }
          else
          {
            localbc.c.setImageDrawable(b());
            continue;
            label899:
            localbc.f.setBackgroundResource(2130838381);
          }
        }
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\community\a\ba.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
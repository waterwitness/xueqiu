package com.xueqiu.android.community.a;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.text.Html;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.d.a.b.f;
import com.xueqiu.android.base.util.h;
import com.xueqiu.android.base.util.o;
import com.xueqiu.android.community.model.Reward;
import com.xueqiu.android.community.model.User;
import com.xueqiu.android.community.model.User.Gender;
import com.xueqiu.android.community.model.UserVerifyType;
import java.lang.ref.WeakReference;

public final class af
  extends com.xueqiu.android.common.a.d<Reward>
{
  private f e = f.a();
  private com.d.a.b.d f = null;
  private WeakReference<Drawable> g = null;
  private WeakReference<Drawable> h = null;
  
  public af(Activity paramActivity)
  {
    super(paramActivity, 2130903167);
  }
  
  private Drawable b()
  {
    if ((this.g == null) || (this.g.get() == null))
    {
      TypedArray localTypedArray = this.c.getTheme().obtainStyledAttributes(new int[] { 2130772281 });
      this.g = new WeakReference(this.c.getResources().getDrawable(localTypedArray.getResourceId(0, 0)));
    }
    return (Drawable)this.g.get();
  }
  
  private Drawable c()
  {
    if ((this.h == null) || (this.h.get() == null))
    {
      TypedArray localTypedArray = this.c.getTheme().obtainStyledAttributes(new int[] { 2130772282 });
      this.h = new WeakReference(this.c.getResources().getDrawable(localTypedArray.getResourceId(0, 0)));
    }
    return (Drawable)this.h.get();
  }
  
  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    paramViewGroup = super.getView(paramInt, paramView, paramViewGroup);
    Object localObject2;
    final Object localObject1;
    if (paramViewGroup.getTag() == null)
    {
      paramView = new ag();
      paramView.a = ((TextView)paramViewGroup.findViewById(2131624440));
      paramView.b = ((TextView)paramViewGroup.findViewById(2131624441));
      paramView.c = ((ImageView)paramViewGroup.findViewById(2131624464));
      paramView.d = ((TextView)paramViewGroup.findViewById(2131624457));
      paramView.e = ((ImageView)paramViewGroup.findViewById(2131624401));
      paramView.f = ((TextView)paramViewGroup.findViewById(2131624442));
      paramViewGroup.setTag(paramView);
      localObject2 = (Reward)getItem(paramInt);
      localObject1 = ((Reward)localObject2).getUser();
      paramView.a.setText(((User)localObject1).getScreenName());
      if (TextUtils.isEmpty(((User)localObject1).getRemark())) {
        break label326;
      }
      paramView.b.setText("(" + Html.fromHtml(((User)localObject1).getRemark()) + ")");
      paramView.b.setVisibility(0);
      label189:
      paramView.d.setText(this.c.getString(2131165951, new Object[] { Integer.valueOf(((Reward)localObject2).getSnowCoin()) }));
      paramView.f.setText(h.a(((Reward)localObject2).getCreateAt()));
      if (!((User)localObject1).isVerified()) {
        break label338;
      }
      paramView.e.setVisibility(0);
      paramInt = ((User)localObject1).getVerifyType().iconResId();
      paramView.e.setImageResource(paramInt);
    }
    for (;;)
    {
      if (!TextUtils.isEmpty(((User)localObject1).getProfileImageUrl()))
      {
        paramView = paramView.c;
        localObject2 = ((User)localObject1).getProfileImageUrl();
        localObject1 = ((User)localObject1).getGender();
        if ((localObject2 == null) || (((String)localObject2).equals("")))
        {
          return paramViewGroup;
          paramView = (ag)paramViewGroup.getTag();
          break;
          label326:
          paramView.b.setVisibility(8);
          break label189;
          label338:
          paramView.e.setVisibility(8);
          continue;
        }
        this.e.a((String)localObject2, paramView, this.f, new o()
        {
          public final void a(String paramAnonymousString, View paramAnonymousView)
          {
            if (localObject1 == User.Gender.FEMALE)
            {
              ((ImageView)paramAnonymousView).setImageDrawable(af.a(af.this));
              return;
            }
            ((ImageView)paramAnonymousView).setImageDrawable(af.b(af.this));
          }
        });
        return paramViewGroup;
      }
    }
    if (((User)localObject1).getGender() == User.Gender.FEMALE)
    {
      paramView.c.setImageDrawable(c());
      return paramViewGroup;
    }
    paramView.c.setImageDrawable(b());
    return paramViewGroup;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\community\a\af.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
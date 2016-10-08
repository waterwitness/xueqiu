package com.xueqiu.android.community.a;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.SharedPreferences.OnSharedPreferenceChangeListener;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.d.a.b.e;
import com.d.a.b.f;
import com.xueqiu.android.base.r;
import com.xueqiu.android.base.util.ai;
import com.xueqiu.android.base.util.ap;
import com.xueqiu.android.base.util.aw;
import com.xueqiu.android.base.util.ay;
import com.xueqiu.android.base.util.n;
import com.xueqiu.android.base.util.o;
import com.xueqiu.android.common.ImageActivity;
import com.xueqiu.android.common.widget.SnowBallTextView;
import com.xueqiu.android.community.model.Status;
import com.xueqiu.android.community.model.User;
import com.xueqiu.android.community.model.UserVerifyType;

public final class k
  extends com.xueqiu.android.common.a.d<Status>
{
  private float e = 17.0F;
  private SharedPreferences.OnSharedPreferenceChangeListener f = null;
  private Activity g;
  private f h;
  private com.d.a.b.d i = null;
  private com.d.a.b.d j = null;
  private com.d.a.b.f.d k = null;
  private View.OnClickListener l = new View.OnClickListener()
  {
    public final void onClick(View paramAnonymousView)
    {
      String str = (String)paramAnonymousView.getTag(paramAnonymousView.getId());
      Intent localIntent = new Intent(k.this.c, ImageActivity.class);
      if ((str.indexOf(".jpg!") == -1) && (str.indexOf(".jpeg!") == -1))
      {
        paramAnonymousView = str;
        if (str.indexOf(".png!") == -1) {}
      }
      else
      {
        paramAnonymousView = str.substring(0, str.lastIndexOf('!'));
      }
      localIntent.putExtra("url", paramAnonymousView);
      k.this.c.startActivity(localIntent);
      ((Activity)k.this.c).overridePendingTransition(2130968583, 2130968584);
    }
  };
  
  public k(Activity paramActivity)
  {
    super(paramActivity, 2130903165);
    this.g = paramActivity;
    paramActivity = PreferenceManager.getDefaultSharedPreferences(paramActivity);
    this.f = new SharedPreferences.OnSharedPreferenceChangeListener()
    {
      public final void onSharedPreferenceChanged(SharedPreferences paramAnonymousSharedPreferences, String paramAnonymousString)
      {
        if (paramAnonymousString.equals(k.this.c.getString(2131165659))) {
          k.a(k.this, Float.valueOf(paramAnonymousSharedPreferences.getString(paramAnonymousString, k.this.c.getString(2131165540))).floatValue());
        }
      }
    };
    paramActivity.registerOnSharedPreferenceChangeListener(this.f);
    this.e = Float.valueOf(paramActivity.getString(this.g.getString(2131165659), this.c.getString(2131165540))).floatValue();
    Object localObject1 = this.c.getResources();
    Object localObject2 = this.c.getTheme().obtainStyledAttributes(new int[] { 2130772281, 2130772282, 2130772158 });
    paramActivity = ((Resources)localObject1).getDrawable(((TypedArray)localObject2).getResourceId(2, 0));
    localObject1 = ((Resources)localObject1).getDrawable(((TypedArray)localObject2).getResourceId(0, 0));
    this.h = f.a();
    localObject2 = n.a();
    ((e)localObject2).d = paramActivity;
    ((e)localObject2).e = paramActivity;
    ((e)localObject2).f = paramActivity;
    this.i = ((e)localObject2).b();
    paramActivity = n.a();
    paramActivity.d = ((Drawable)localObject1);
    paramActivity.e = ((Drawable)localObject1);
    paramActivity.f = ((Drawable)localObject1);
    this.j = paramActivity.b();
    this.k = new o();
    ((com.xueqiu.android.common.b)this.g).a(rx.a.b.a.b(this.g, new IntentFilter("com.xueqiu.android.action.statusAnswerComplete")).c(new rx.c.b() {}));
  }
  
  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    paramView = super.getView(paramInt, paramView, paramViewGroup);
    paramViewGroup = (Status)getItem(paramInt);
    if (paramView.getTag() == null)
    {
      locall = new l(this);
      locall.a = ((ImageView)paramView.findViewById(2131624464));
      locall.b = ((TextView)paramView.findViewById(2131624488));
      locall.c = ((TextView)paramView.findViewById(2131624441));
      locall.d = ((ImageView)paramView.findViewById(2131624401));
      locall.e = ((TextView)paramView.findViewById(2131624490));
      locall.f = ((SnowBallTextView)paramView.findViewById(2131624491));
      locall.g = ((ImageView)paramView.findViewById(2131624492));
      locall.g.setVisibility(8);
      locall.i = ((TextView)paramView.findViewById(2131624475));
      locall.g.setOnClickListener(locall.n.l);
      locall.h = ((TextView)paramView.findViewById(2131624442));
      locall.j = ((TextView)paramView.findViewById(2131624476));
      locall.k = ((TextView)paramView.findViewById(2131624477));
      locall.l = ((LinearLayout)paramView.findViewById(2131624487));
      locall.m = ((FrameLayout)paramView.findViewById(2131624486));
      paramView.setTag(locall);
    }
    l locall = (l)paramView.getTag();
    Object localObject = paramViewGroup.getUser().getProfileImageUrl();
    locall.n.h.a((String)localObject, locall.a, locall.n.j);
    locall.b.setText(aw.a(paramViewGroup.getUser(), paramViewGroup.getCreatedAt(), ay.c(locall.n.c)));
    label405:
    label452:
    ImageView localImageView;
    String str;
    if (!TextUtils.isEmpty(paramViewGroup.getUser().getRemark()))
    {
      locall.c.setText(String.format("（%s）", new Object[] { paramViewGroup.getUser().getRemark() }));
      locall.c.setVisibility(0);
      if (TextUtils.isEmpty(paramViewGroup.getTitle())) {
        break label820;
      }
      locall.e.setText(paramViewGroup.getTitle());
      locall.e.setVisibility(0);
      if (TextUtils.isEmpty(paramViewGroup.getText())) {
        break label833;
      }
      locall.f.setText(ai.a(paramViewGroup.getDescription(), locall.n.c, locall.f));
      locall.f.setVisibility(0);
      locall.e.setTextSize(2, locall.n.e);
      locall.f.setTextSize(2, locall.n.e);
      if ((paramViewGroup.getAndthumbPic() == null) || (TextUtils.isEmpty(paramViewGroup.getAndthumbPic()))) {
        break label871;
      }
      localObject = locall.n;
      localImageView = locall.g;
      str = paramViewGroup.getAndthumbPic();
      if ((str != null) && (!str.equals(""))) {
        break label846;
      }
      label539:
      locall.g.setVisibility(0);
      locall.g.setTag(locall.g.getId(), paramViewGroup.getBmiddlePic());
      label568:
      locall.h.setText(ap.a(paramViewGroup.getCreatedAt()));
      locall.i.setText(String.format(locall.n.c.getString(2131166105), new Object[] { paramViewGroup.getSource() }));
      locall.k.setVisibility(8);
      locall.j.setTextColor(r.a(2131558672));
      localObject = ap.b(paramViewGroup);
      locall.m.setVisibility(8);
      if (!"UNANSWERED".equals(localObject)) {
        break label884;
      }
      locall.j.setText("待回复");
      locall.j.setTextColor(r.a(2131558535));
      locall.k.setVisibility(0);
      locall.k.setText(ap.b(paramViewGroup.getCreatedAt()));
      locall.m.setVisibility(0);
      label728:
      if (!paramViewGroup.getUser().isVerified()) {
        break label972;
      }
      locall.d.setVisibility(0);
      localObject = paramViewGroup.getUser().getVerifyType();
      locall.d.setImageResource(((UserVerifyType)localObject).iconResId());
    }
    for (;;)
    {
      locall.a.setOnClickListener(new l.1(locall, paramViewGroup));
      locall.l.setOnClickListener(new l.2(locall, paramViewGroup));
      return paramView;
      locall.c.setVisibility(8);
      break;
      label820:
      locall.e.setVisibility(8);
      break label405;
      label833:
      locall.f.setVisibility(8);
      break label452;
      label846:
      ((k)localObject).h.a(str, localImageView, ((k)localObject).i, ((k)localObject).k);
      break label539;
      label871:
      locall.g.setVisibility(8);
      break label568;
      label884:
      if ("ANSWERED".equals(localObject))
      {
        locall.j.setText("已回复");
        break label728;
      }
      if ("OUTDATED".equals(localObject))
      {
        locall.j.setText("已过期");
        break label728;
      }
      if ("REFUSED".equals(localObject))
      {
        locall.j.setText("已拒绝");
        break label728;
      }
      locall.j.setVisibility(8);
      break label728;
      label972:
      locall.d.setVisibility(8);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\community\a\k.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
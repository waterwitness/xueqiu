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
import com.xueqiu.android.base.b.a.c;
import com.xueqiu.android.base.r;
import com.xueqiu.android.base.util.ai;
import com.xueqiu.android.base.util.ap;
import com.xueqiu.android.base.util.aw;
import com.xueqiu.android.base.util.ay;
import com.xueqiu.android.base.util.n;
import com.xueqiu.android.base.util.o;
import com.xueqiu.android.common.ImageActivity;
import com.xueqiu.android.common.widget.SnowBallTextView;
import com.xueqiu.android.community.model.Comment;
import com.xueqiu.android.community.model.Status;
import com.xueqiu.android.community.model.User;
import com.xueqiu.android.community.model.UserVerifyType;

public final class i
  extends com.xueqiu.android.common.a.d<Comment>
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
      Intent localIntent = new Intent(i.this.c, ImageActivity.class);
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
      i.this.c.startActivity(localIntent);
      ((Activity)i.this.c).overridePendingTransition(2130968583, 2130968584);
    }
  };
  
  public i(Activity paramActivity)
  {
    super(paramActivity, 2130903164);
    this.g = paramActivity;
    paramActivity = PreferenceManager.getDefaultSharedPreferences(paramActivity);
    this.f = new SharedPreferences.OnSharedPreferenceChangeListener()
    {
      public final void onSharedPreferenceChanged(SharedPreferences paramAnonymousSharedPreferences, String paramAnonymousString)
      {
        if (paramAnonymousString.equals(i.this.c.getString(2131165659))) {
          i.a(i.this, Float.valueOf(paramAnonymousSharedPreferences.getString(paramAnonymousString, i.this.c.getString(2131165540))).floatValue());
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
    paramViewGroup = (Comment)getItem(paramInt);
    if (paramView.getTag() == null)
    {
      localj = new j(this);
      localj.a = ((ImageView)paramView.findViewById(2131624151));
      localj.b = ((TextView)paramView.findViewById(2131624400));
      localj.c = ((TextView)paramView.findViewById(2131624474));
      localj.d = ((ImageView)paramView.findViewById(2131624401));
      localj.e = ((SnowBallTextView)paramView.findViewById(2131624449));
      localj.g = ((TextView)paramView.findViewById(2131624475));
      localj.f = ((TextView)paramView.findViewById(2131624442));
      localj.h = ((TextView)paramView.findViewById(2131624476));
      localj.i = ((TextView)paramView.findViewById(2131624477));
      localj.j = ((TextView)paramView.findViewById(2131624479));
      localj.k = ((TextView)paramView.findViewById(2131624480));
      localj.l = ((TextView)paramView.findViewById(2131624482));
      localj.m = ((SnowBallTextView)paramView.findViewById(2131624483));
      localj.n = ((ImageView)paramView.findViewById(2131624484));
      localj.o = ((TextView)paramView.findViewById(2131624485));
      localj.p = ((LinearLayout)paramView.findViewById(2131624487));
      localj.q = ((FrameLayout)paramView.findViewById(2131624486));
      paramView.setTag(localj);
    }
    j localj = (j)paramView.getTag();
    Object localObject1 = paramViewGroup.getUser().getProfileImageUrl();
    localj.r.h.a((String)localObject1, localj.a, localj.r.j);
    localj.b.setText(aw.a(paramViewGroup.getUser(), paramViewGroup.getCreatedAt(), ay.c(localj.r.c)));
    label451:
    label628:
    label669:
    Object localObject2;
    label768:
    label801:
    ImageView localImageView;
    String str;
    if (!c.a(paramViewGroup.getUser().getRemark()))
    {
      localj.c.setText(String.format("（%s）", new Object[] { paramViewGroup.getUser().getRemark() }));
      localj.c.setVisibility(0);
      if (c.a(paramViewGroup.getText())) {
        break label1035;
      }
      localj.e.setText(ai.a(paramViewGroup.getText(), localj.r.c, localj.e));
      localj.e.setVisibility(0);
      localj.e.setTextSize(2, localj.r.e);
      localj.f.setText(ap.a(paramViewGroup.getCreatedAt()));
      localj.g.setText(String.format(localj.r.c.getString(2131166105), new Object[] { paramViewGroup.getSource() }));
      localj.i.setVisibility(8);
      localj.h.setTextColor(r.a(2131558672));
      localObject1 = ap.a(paramViewGroup);
      localj.q.setVisibility(8);
      if (!"UNANSWERED".equals(localObject1)) {
        break label1048;
      }
      localj.h.setText("待回复");
      localj.h.setTextColor(r.a(2131558535));
      localj.i.setVisibility(0);
      localj.i.setText(ap.b(paramViewGroup.getCreatedAt()));
      localj.q.setVisibility(0);
      if (!paramViewGroup.getUser().isVerified()) {
        break label1136;
      }
      localj.d.setVisibility(0);
      localObject1 = paramViewGroup.getUser().getVerifyType();
      localj.d.setImageResource(((UserVerifyType)localObject1).iconResId());
      localj.a.setOnClickListener(new j.1(localj, paramViewGroup));
      localObject1 = paramViewGroup.getStatus();
      localObject2 = ((Status)localObject1).getUser();
      localj.j.setText(((User)localObject2).getScreenName());
      if (c.a(((User)localObject2).getRemark())) {
        break label1149;
      }
      localj.k.setText("(" + ((User)localObject2).getRemark() + ")");
      localj.k.setVisibility(0);
      if (c.a(((Status)localObject1).getTitle())) {
        break label1162;
      }
      localj.l.setText(((Status)localObject1).getTitle());
      localj.l.setVisibility(0);
      localj.m.setText(ai.a(((Status)localObject1).getDescription(), localj.r.g, localj.m));
      localj.l.setTextSize(2, localj.r.e - 0.2F);
      localj.m.setTextSize(2, localj.r.e - 0.2F);
      if ((((Status)localObject1).getAndthumbPic() == null) || (TextUtils.isEmpty(((Status)localObject1).getAndthumbPic()))) {
        break label1200;
      }
      localObject2 = localj.r;
      localImageView = localj.n;
      str = ((Status)localObject1).getAndthumbPic();
      if ((str != null) && (!str.equals(""))) {
        break label1175;
      }
      label928:
      localj.n.setVisibility(0);
      localj.n.setTag(localj.n.getId(), ((Status)localObject1).getBmiddlePic());
    }
    for (;;)
    {
      localObject1 = String.format(localj.r.c.getString(2131165931), new Object[] { Integer.valueOf(((Status)localObject1).getCommentsCount()) });
      localj.o.setText((CharSequence)localObject1);
      localj.p.setOnClickListener(new j.2(localj, paramViewGroup));
      return paramView;
      localj.c.setVisibility(8);
      break;
      label1035:
      localj.e.setVisibility(8);
      break label451;
      label1048:
      if ("ANSWERED".equals(localObject1))
      {
        localj.h.setText("已回复");
        break label628;
      }
      if ("OUTDATED".equals(localObject1))
      {
        localj.h.setText("已过期");
        break label628;
      }
      if ("REFUSED".equals(localObject1))
      {
        localj.h.setText("已拒绝");
        break label628;
      }
      localj.h.setVisibility(8);
      break label628;
      label1136:
      localj.d.setVisibility(8);
      break label669;
      label1149:
      localj.k.setVisibility(8);
      break label768;
      label1162:
      localj.l.setVisibility(8);
      break label801;
      label1175:
      ((i)localObject2).h.a(str, localImageView, ((i)localObject2).i, ((i)localObject2).k);
      break label928;
      label1200:
      localj.n.setVisibility(8);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\community\a\i.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
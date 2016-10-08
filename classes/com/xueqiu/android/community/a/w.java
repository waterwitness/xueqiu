package com.xueqiu.android.community.a;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.graphics.Bitmap.Config;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.d.a.b.f;
import com.xueqiu.android.base.r;
import com.xueqiu.android.base.util.ai;
import com.xueqiu.android.base.util.h;
import com.xueqiu.android.base.util.n;
import com.xueqiu.android.base.util.o;
import com.xueqiu.android.common.widget.SnowBallTextView;
import com.xueqiu.android.community.model.Comment;
import com.xueqiu.android.community.model.Question;
import com.xueqiu.android.community.model.User;
import com.xueqiu.android.community.model.User.Gender;
import com.xueqiu.android.community.model.UserVerifyType;
import java.lang.ref.WeakReference;

public final class w
  extends com.xueqiu.android.common.a.d<Question>
{
  private WeakReference<Drawable> e = null;
  private WeakReference<Drawable> f = null;
  private WeakReference<Drawable> g = null;
  private WeakReference<Drawable> h = null;
  private WeakReference<Drawable> i = null;
  private WeakReference<Drawable> j = null;
  private WeakReference<Drawable> k = null;
  private WeakReference<Drawable> l = null;
  private com.d.a.b.d m;
  private f n;
  private Context o;
  
  public w(Context paramContext)
  {
    super(paramContext, 2130903134);
    Object localObject = n.a().a(Bitmap.Config.RGB_565);
    ((com.d.a.b.e)localObject).j = com.d.a.b.a.e.e;
    this.m = ((com.d.a.b.e)localObject).b();
    this.n = f.a();
    this.o = paramContext;
    paramContext = this.c.getResources();
    this.g = new WeakReference(paramContext.getDrawable(2130838672));
    this.h = new WeakReference(paramContext.getDrawable(2130838673));
    this.i = new WeakReference(paramContext.getDrawable(2130838145));
    this.j = new WeakReference(paramContext.getDrawable(2130838670));
    this.k = new WeakReference(paramContext.getDrawable(2130838674));
    this.l = new WeakReference(paramContext.getDrawable(2130838675));
    localObject = this.c.getTheme().obtainStyledAttributes(new int[] { 2130772281, 2130772282, 2130772158 });
    this.e = new WeakReference(paramContext.getDrawable(((TypedArray)localObject).getResourceId(0, 0)));
    this.f = new WeakReference(paramContext.getDrawable(((TypedArray)localObject).getResourceId(1, 0)));
  }
  
  private Drawable b()
  {
    if ((this.e == null) || (this.e.get() == null)) {
      this.e = new WeakReference(r.h(2130838665));
    }
    return (Drawable)this.e.get();
  }
  
  private Drawable c()
  {
    if ((this.f == null) || (this.f.get() == null)) {
      this.f = new WeakReference(r.h(2130838660));
    }
    return (Drawable)this.f.get();
  }
  
  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    paramViewGroup = super.getView(paramInt, paramView, paramViewGroup);
    Object localObject;
    final Comment localComment;
    label196:
    ImageView localImageView;
    if (paramViewGroup.getTag() == null)
    {
      paramView = new x();
      paramView.a = ((SnowBallTextView)paramViewGroup.findViewById(2131624398));
      paramView.b = ((ImageView)paramViewGroup.findViewById(2131624399));
      paramView.c = ((TextView)paramViewGroup.findViewById(2131624400));
      paramView.d = ((ImageView)paramViewGroup.findViewById(2131624401));
      paramView.e = ((TextView)paramViewGroup.findViewById(2131624402));
      paramView.f = ((SnowBallTextView)paramViewGroup.findViewById(2131624403));
      paramViewGroup.setTag(paramView);
      localObject = (Question)getItem(paramInt);
      localComment = ((Question)localObject).getAnswer();
      paramView.a.setText(ai.a(((Question)localObject).getDescription(), this.o, paramView.a));
      localObject = localComment.getUser().getProfileImageUrl();
      if ((localObject == null) || (TextUtils.isEmpty((CharSequence)localObject))) {
        break label364;
      }
      this.n.a((String)localObject, paramView.b, this.m, new o()
      {
        public final void a(String paramAnonymousString, View paramAnonymousView)
        {
          if (localComment.getUser().getGender() == User.Gender.FEMALE)
          {
            ((ImageView)paramAnonymousView).setImageDrawable(w.a(w.this));
            return;
          }
          ((ImageView)paramAnonymousView).setImageDrawable(w.b(w.this));
        }
      });
      paramView.c.setText(localComment.getUser().getScreenName());
      if (!localComment.getUser().isVerified()) {
        break label728;
      }
      paramView.d.setVisibility(0);
      localObject = localComment.getUser().getVerifyType();
      localImageView = paramView.d;
      if (localObject != UserVerifyType.ALALYST) {
        break label406;
      }
      if ((this.g == null) || (this.g.get() == null)) {
        this.g = new WeakReference(this.c.getResources().getDrawable(2130838672));
      }
      localImageView.setImageDrawable((Drawable)this.g.get());
    }
    for (;;)
    {
      paramView.e.setText(h.a(localComment.getCreatedAt(), this.o));
      paramView.f.setText(ai.a(localComment.getDescription(), this.o, paramView.f));
      return paramViewGroup;
      paramView = (x)paramViewGroup.getTag();
      break;
      label364:
      if (localComment.getUser().getGender() == User.Gender.FEMALE)
      {
        paramView.b.setImageDrawable(c());
        break label196;
      }
      paramView.b.setImageDrawable(b());
      break label196;
      label406:
      if (localObject == UserVerifyType.COMPANY)
      {
        if ((this.h == null) || (this.h.get() == null)) {
          this.h = new WeakReference(this.c.getResources().getDrawable(2130838673));
        }
        localImageView.setImageDrawable((Drawable)this.h.get());
      }
      else if (localObject == UserVerifyType.STAFF)
      {
        if ((this.i == null) || (this.i.get() == null)) {
          this.i = new WeakReference(this.c.getResources().getDrawable(2130838145));
        }
        localImageView.setImageDrawable((Drawable)this.i.get());
      }
      else if (localObject == UserVerifyType.ADVISER)
      {
        if ((this.j == null) || (this.j.get() == null)) {
          this.j = new WeakReference(this.c.getResources().getDrawable(2130838670));
        }
        localImageView.setImageDrawable((Drawable)this.j.get());
      }
      else if (localObject == UserVerifyType.TRADING)
      {
        if ((this.l == null) || (this.l.get() == null)) {
          this.l = new WeakReference(this.c.getResources().getDrawable(2130838675));
        }
        localImageView.setImageDrawable((Drawable)this.l.get());
      }
      else
      {
        if ((this.k == null) || (this.k.get() == null)) {
          this.k = new WeakReference(this.c.getResources().getDrawable(2130838674));
        }
        localImageView.setImageDrawable((Drawable)this.k.get());
        continue;
        label728:
        paramView.d.setVisibility(8);
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\community\a\w.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
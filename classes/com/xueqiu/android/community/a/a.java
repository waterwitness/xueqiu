package com.xueqiu.android.community.a;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.android.volley.y;
import com.d.a.b.e;
import com.d.a.b.f;
import com.xueqiu.android.base.b.ai;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.h;
import com.xueqiu.android.base.i;
import com.xueqiu.android.base.q;
import com.xueqiu.android.base.storage.prefs.UserLogonDataPrefs;
import com.xueqiu.android.base.t;
import com.xueqiu.android.base.u;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.base.util.ap;
import com.xueqiu.android.base.util.aw;
import com.xueqiu.android.base.util.n;
import com.xueqiu.android.base.util.o;
import com.xueqiu.android.common.model.RequestResult;
import com.xueqiu.android.common.model.SNBEvent;
import com.xueqiu.android.common.widget.SnowBallTextView;
import com.xueqiu.android.community.UserProfileActivity;
import com.xueqiu.android.community.model.Comment;
import com.xueqiu.android.community.model.Comment.PreparedShowObj;
import com.xueqiu.android.community.model.Status;
import com.xueqiu.android.community.model.User;
import com.xueqiu.android.community.model.User.Gender;
import com.xueqiu.android.community.model.UserVerifyType;
import java.lang.ref.WeakReference;
import java.util.Locale;

public final class a
  extends com.xueqiu.android.common.a.d<Comment>
{
  public long e = 0L;
  private boolean f = false;
  private WeakReference<Drawable> g = null;
  private WeakReference<Drawable> h = null;
  private WeakReference<Drawable> i = null;
  private WeakReference<Drawable> j = null;
  private WeakReference<Drawable> k = null;
  private WeakReference<Drawable> l = null;
  private WeakReference<Drawable> m = null;
  private WeakReference<Drawable> n = null;
  private f o;
  private com.d.a.b.d p = null;
  
  public a(Activity paramActivity)
  {
    super(paramActivity, 2130903156);
    b();
  }
  
  public a(com.xueqiu.android.common.b paramb)
  {
    super(paramb, 2130903157);
    b();
    this.f = true;
  }
  
  private void b()
  {
    registerDataSetObserver(new DataSetObserver()
    {
      public final void onChanged()
      {
        a.a(a.this);
        super.onChanged();
      }
      
      public final void onInvalidated()
      {
        a.a(a.this);
        super.onInvalidated();
      }
    });
    Resources localResources = this.c.getResources();
    this.i = new WeakReference(localResources.getDrawable(2130838672));
    this.j = new WeakReference(localResources.getDrawable(2130838673));
    this.k = new WeakReference(localResources.getDrawable(2130838145));
    this.l = new WeakReference(localResources.getDrawable(2130838670));
    this.m = new WeakReference(localResources.getDrawable(2130838674));
    this.n = new WeakReference(localResources.getDrawable(2130838675));
    TypedArray localTypedArray = this.c.getTheme().obtainStyledAttributes(new int[] { 2130772281, 2130772282, 2130772158 });
    this.g = new WeakReference(localResources.getDrawable(localTypedArray.getResourceId(0, 0)));
    this.h = new WeakReference(localResources.getDrawable(localTypedArray.getResourceId(1, 0)));
    this.o = f.a();
    this.p = n.a().b();
  }
  
  private Drawable c()
  {
    if ((this.g == null) || (this.g.get() == null))
    {
      TypedArray localTypedArray = this.c.getTheme().obtainStyledAttributes(new int[] { 2130772281 });
      this.g = new WeakReference(this.c.getResources().getDrawable(localTypedArray.getResourceId(0, 0)));
      localTypedArray.recycle();
    }
    return (Drawable)this.g.get();
  }
  
  private Drawable d()
  {
    if ((this.h == null) || (this.h.get() == null))
    {
      TypedArray localTypedArray = this.c.getTheme().obtainStyledAttributes(new int[] { 2130772282 });
      this.h = new WeakReference(this.c.getResources().getDrawable(localTypedArray.getResourceId(0, 0)));
      localTypedArray.recycle();
    }
    return (Drawable)this.h.get();
  }
  
  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    View localView = super.getView(paramInt, paramView, paramViewGroup);
    label211:
    final Comment localComment;
    label307:
    long l1;
    label382:
    Object localObject;
    final User.Gender localGender;
    if (localView.getTag() == null)
    {
      paramViewGroup = new b();
      paramViewGroup.a = ((TextView)localView.findViewById(2131624440));
      paramViewGroup.b = ((TextView)localView.findViewById(2131624442));
      paramViewGroup.e = ((SnowBallTextView)localView.findViewById(2131624449));
      paramViewGroup.f = ((ImageView)localView.findViewById(2131624445));
      paramViewGroup.g = ((ImageView)localView.findViewById(2131624438));
      paramViewGroup.h = ((ImageView)localView.findViewById(2131624401));
      paramViewGroup.k = ((TextView)localView.findViewById(2131624441));
      if (this.f)
      {
        paramViewGroup.i = ((TextView)localView.findViewById(2131624453));
        paramViewGroup.l = ((TextView)localView.findViewById(2131624454));
        paramViewGroup.j = ((SnowBallTextView)localView.findViewById(2131624455));
        paramViewGroup.j.setVisibility(0);
        paramViewGroup.m = ((ImageView)localView.findViewById(2131624456));
        localView.setTag(paramViewGroup);
        localComment = (Comment)getItem(paramInt);
        if (localComment.getUser() != null)
        {
          paramView = localComment.getUser();
          paramViewGroup.a.setText(aw.a(paramView, localComment.getCreatedAt(), localView.getWidth()));
          if (TextUtils.isEmpty(paramView.getRemark())) {
            break label885;
          }
          paramViewGroup.k.setText("(" + paramView.getRemark() + ")");
          paramViewGroup.k.setVisibility(0);
        }
        Comment.PreparedShowObj localPreparedShowObj = localComment.getPreparedShowObj();
        paramViewGroup.b.setText(localPreparedShowObj.createdAtFormated);
        paramViewGroup.e.setText(localPreparedShowObj.textFromHtml);
        if (!"UNANSWERED".equals(ap.a(localComment))) {
          break label897;
        }
        l1 = ap.b(localComment);
        u.a();
        if (l1 != UserLogonDataPrefs.getLogonUserId()) {
          break label897;
        }
        paramViewGroup.f.setImageResource(2130838364);
        paramViewGroup.f.setOnClickListener(new View.OnClickListener()
        {
          public final void onClick(View paramAnonymousView)
          {
            if ((u.a().d) && ((a.this.c instanceof Activity)))
            {
              t.a((Activity)a.this.c, false);
              return;
            }
            a.a(a.this, localComment);
            paramAnonymousView = new SNBEvent(1700, 5);
            i.a().a(paramAnonymousView);
          }
        });
        if ((localComment.getUser() == null) || (TextUtils.isEmpty(localComment.getUser().getProfileImageUrl()))) {
          break label964;
        }
        paramView = paramViewGroup.g;
        localObject = localComment.getUser().getProfileImageUrl();
        localGender = localComment.getUser().getGender();
        if ((localObject != null) && (!((String)localObject).equals(""))) {
          break label937;
        }
        label461:
        if (!localComment.getUser().isVerified()) {
          break label1325;
        }
        paramViewGroup.h.setVisibility(0);
        paramView = localComment.getUser().getVerifyType();
        localObject = paramViewGroup.h;
        if (paramView != UserVerifyType.ALALYST) {
          break label1002;
        }
        if ((this.i == null) || (this.i.get() == null)) {
          this.i = new WeakReference(this.c.getResources().getDrawable(2130838672));
        }
        ((ImageView)localObject).setImageDrawable((Drawable)this.i.get());
        label558:
        if (!this.f) {
          break label1393;
        }
        paramView = null;
        if (localComment.getReplyComment() == null) {
          break label1337;
        }
        paramView = localComment.getReplyComment().getUser();
        label584:
        if (paramView != null)
        {
          paramViewGroup.i.setText(paramView.getScreenName() + ":");
          if (TextUtils.isEmpty(paramView.getRemark())) {
            break label1357;
          }
          paramViewGroup.l.setText("(" + paramView.getRemark() + ")");
          paramViewGroup.l.setVisibility(0);
          label669:
          if ((localPreparedShowObj.replyCommentTextFromHtml == null) || (TextUtils.isEmpty(localPreparedShowObj.replyCommentTextFromHtml))) {
            break label1369;
          }
          paramViewGroup.j.setText(localPreparedShowObj.replyCommentTextFromHtml);
          paramViewGroup.j.setVisibility(0);
          label708:
          if ((localComment.getStatus() == null) || (localComment.getStatus().getAndthumbPic() == null) || (TextUtils.isEmpty(localComment.getStatus().getAndthumbPic()))) {
            break label1381;
          }
          paramView = localComment.getStatus().getAndthumbPic();
          this.o.a(paramView, paramViewGroup.m, this.p, new o());
          paramViewGroup.m.setVisibility(0);
        }
      }
    }
    for (;;)
    {
      paramViewGroup.g.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          paramAnonymousView = new Intent();
          paramAnonymousView.setClass(a.this.c, UserProfileActivity.class);
          paramAnonymousView.putExtra("extra_user", localComment.getUser());
          a.this.c.startActivity(paramAnonymousView);
        }
      });
      return localView;
      paramViewGroup.c = ((TextView)localView.findViewById(2131624444));
      paramViewGroup.d = localView.findViewById(2131624443);
      paramViewGroup.n = ((ImageView)localView.findViewById(2131624448));
      paramViewGroup.o = ((TextView)localView.findViewById(2131624447));
      paramViewGroup.p = localView.findViewById(2131624446);
      break;
      paramViewGroup = (b)localView.getTag();
      break label211;
      label885:
      paramViewGroup.k.setVisibility(8);
      break label307;
      label897:
      paramView = this.c.getTheme().obtainStyledAttributes(new int[] { 2130772150 });
      paramViewGroup.f.setImageResource(paramView.getResourceId(0, 0));
      paramView.recycle();
      break label382;
      label937:
      this.o.a((String)localObject, paramView, this.p, new o()
      {
        public final void a(String paramAnonymousString, View paramAnonymousView)
        {
          if (localGender == User.Gender.FEMALE)
          {
            ((ImageView)paramAnonymousView).setImageDrawable(a.b(a.this));
            return;
          }
          ((ImageView)paramAnonymousView).setImageDrawable(a.c(a.this));
        }
      });
      break label461;
      label964:
      if (localComment.getUser().getGender() == User.Gender.FEMALE) {}
      for (paramView = d();; paramView = c())
      {
        paramViewGroup.g.setImageDrawable(paramView);
        break;
      }
      label1002:
      if (paramView == UserVerifyType.COMPANY)
      {
        if ((this.j == null) || (this.j.get() == null)) {
          this.j = new WeakReference(this.c.getResources().getDrawable(2130838673));
        }
        ((ImageView)localObject).setImageDrawable((Drawable)this.j.get());
        break label558;
      }
      if (paramView == UserVerifyType.STAFF)
      {
        if ((this.k == null) || (this.k.get() == null)) {
          this.k = new WeakReference(this.c.getResources().getDrawable(2130838145));
        }
        ((ImageView)localObject).setImageDrawable((Drawable)this.k.get());
        break label558;
      }
      if (paramView == UserVerifyType.ADVISER)
      {
        if ((this.l == null) || (this.l.get() == null)) {
          this.l = new WeakReference(this.c.getResources().getDrawable(2130838670));
        }
        ((ImageView)localObject).setImageDrawable((Drawable)this.l.get());
        break label558;
      }
      if (paramView == UserVerifyType.TRADING)
      {
        if ((this.n == null) || (this.n.get() == null)) {
          this.n = new WeakReference(this.c.getResources().getDrawable(2130838675));
        }
        ((ImageView)localObject).setImageDrawable((Drawable)this.n.get());
        break label558;
      }
      if ((this.m == null) || (this.m.get() == null)) {
        this.m = new WeakReference(this.c.getResources().getDrawable(2130838674));
      }
      ((ImageView)localObject).setImageDrawable((Drawable)this.m.get());
      break label558;
      label1325:
      paramViewGroup.h.setVisibility(8);
      break label558;
      label1337:
      if (localComment.getStatus() == null) {
        break label584;
      }
      paramView = localComment.getStatus().getUser();
      break label584;
      label1357:
      paramViewGroup.l.setVisibility(8);
      break label669;
      label1369:
      paramViewGroup.j.setVisibility(8);
      break label708;
      label1381:
      paramViewGroup.m.setVisibility(8);
    }
    label1393:
    if (localComment.getRewardUserCount() > 0)
    {
      paramViewGroup.c.setVisibility(0);
      paramViewGroup.d.setVisibility(0);
      paramView = String.format(Locale.CHINA, "%d人已打赏", new Object[] { Integer.valueOf(localComment.getRewardUserCount()) });
      l1 = localComment.getUserId();
      u.a();
      if (l1 == UserLogonDataPrefs.getLogonUserId()) {
        paramView = String.format(Locale.CHINA, "%d人已打赏，共收入￥%.2f", new Object[] { Integer.valueOf(localComment.getRewardUserCount()), Float.valueOf(localComment.getRewardAmount() / 100.0F) });
      }
      paramViewGroup.c.setText(paramView);
      label1510:
      if (localComment.getLikeCount() <= 0) {
        break label1594;
      }
      paramViewGroup.o.setVisibility(0);
      paramViewGroup.o.setText(String.valueOf(localComment.getLikeCount()));
    }
    for (;;)
    {
      paramViewGroup.p.setSelected(localComment.isLiked());
      paramViewGroup.p.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          Object localObject = new SNBEvent(1700, 4);
          i.a().a((SNBEvent)localObject);
          a.d(a.this);
          if ((u.a().d) && ((a.this.c instanceof Activity)))
          {
            t.a((Activity)a.this.c, false);
            return;
          }
          long l = localComment.getUserId();
          u.a();
          if (l == UserLogonDataPrefs.getLogonUserId())
          {
            aa.a(2131165344);
            return;
          }
          boolean bool;
          p local1;
          if (!paramAnonymousView.isSelected())
          {
            bool = true;
            paramAnonymousView.setSelected(bool);
            bool = paramAnonymousView.isSelected();
            localObject = q.a().b();
            local1 = new p()
            {
              public final void a(y paramAnonymous2y)
              {
                aa.a(paramAnonymous2y);
              }
            };
            if (!bool) {
              break label217;
            }
            ((ai)localObject).e(localComment.getId(), local1);
            localComment.setLikeCount(localComment.getLikeCount() + 1);
            localComment.setLiked(true);
          }
          for (;;)
          {
            paramAnonymousView = (TextView)paramAnonymousView.findViewById(2131624447);
            if (localComment.getLikeCount() <= 0) {
              break label257;
            }
            paramAnonymousView.setVisibility(0);
            paramAnonymousView.setText(String.valueOf(localComment.getLikeCount()));
            return;
            bool = false;
            break;
            label217:
            ((ai)localObject).f(localComment.getId(), local1);
            localComment.setLikeCount(localComment.getLikeCount() - 1);
            localComment.setLiked(false);
          }
          label257:
          paramAnonymousView.setVisibility(8);
        }
      });
      break;
      paramViewGroup.c.setVisibility(8);
      paramViewGroup.d.setVisibility(8);
      break label1510;
      label1594:
      paramViewGroup.o.setVisibility(8);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\community\a\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
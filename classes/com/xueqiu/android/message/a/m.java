package com.xueqiu.android.message.a;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.TextView;
import com.d.a.b.e;
import com.emilsjolander.components.stickylistheaders.StickyListHeadersAdapter;
import com.xueqiu.android.base.storage.prefs.UserLogonDataPrefs;
import com.xueqiu.android.base.u;
import com.xueqiu.android.base.util.au;
import com.xueqiu.android.community.model.User;
import com.xueqiu.android.community.model.User.Gender;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public final class m
  extends ArrayAdapter<User>
  implements StickyListHeadersAdapter
{
  public boolean a = false;
  public n b;
  public Map<Long, User> c;
  private final Context d;
  private com.d.a.b.f e;
  private LayoutInflater f;
  private List<User> g;
  private final int h;
  private int[] i;
  private com.d.a.b.a.f j;
  private com.d.a.b.d k;
  
  public m(Context paramContext, com.d.a.b.f paramf, int[] paramArrayOfInt, List<User> paramList)
  {
    super(paramContext, 2130903406, paramList);
    this.d = paramContext;
    this.h = 2130903406;
    this.e = paramf;
    this.i = paramArrayOfInt;
    this.g = paramList;
    this.f = LayoutInflater.from(paramContext);
    this.c = new HashMap();
    int m = Math.round(paramContext.getResources().getDimension(2131230826));
    this.j = new com.d.a.b.a.f(m, m);
    paramContext = new e();
    paramContext.h = true;
    this.k = paramContext.b();
  }
  
  public final List<User> a()
  {
    return new ArrayList(this.c.values());
  }
  
  public final long getHeaderId(int paramInt)
  {
    long l = ((User)this.g.get(paramInt)).getUserId();
    u.a();
    if (l == UserLogonDataPrefs.getLogonUserId()) {
      return 2L;
    }
    if (((User)this.g.get(paramInt)).isFollowing()) {
      return 1L;
    }
    return 0L;
  }
  
  public final View getHeaderView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    View localView = paramView;
    if (paramView == null)
    {
      localView = this.f.inflate(2130903244, paramViewGroup, false);
      localView.setTag(b.a(localView));
    }
    paramView = (b)localView.getTag();
    paramView.a.setText("aaa");
    long l = ((User)this.g.get(paramInt)).getUserId();
    u.a();
    if (l == UserLogonDataPrefs.getLogonUserId())
    {
      paramView.a.setText(this.d.getString(2131165754));
      return localView;
    }
    if (!((User)this.g.get(paramInt)).isFollowing())
    {
      paramView.a.setText(this.d.getString(2131165631));
      return localView;
    }
    paramView.a.setText(this.d.getString(2131165605));
    return localView;
  }
  
  public final View getView(final int paramInt, final View paramView, ViewGroup paramViewGroup)
  {
    View localView;
    if (paramView != null)
    {
      localView = paramView;
      if (paramView.getTag() != null) {}
    }
    else
    {
      localView = this.f.inflate(this.h, paramViewGroup, false);
      paramView = new o((byte)0);
      paramView.a = ((CheckBox)localView.findViewById(this.i[0]));
      paramView.b = ((ImageView)localView.findViewById(this.i[1]));
      paramView.c = ((TextView)localView.findViewById(this.i[2]));
      localView.setTag(paramView);
    }
    paramView = (o)localView.getTag();
    paramViewGroup = (User)this.g.get(paramInt);
    paramView.a.setChecked(this.c.containsKey(Long.valueOf(paramViewGroup.getUserId())));
    CheckBox localCheckBox = paramView.a;
    if (this.a)
    {
      long l = paramViewGroup.getUserId();
      u.a();
      if (l != UserLogonDataPrefs.getLogonUserId())
      {
        paramInt = 0;
        localCheckBox.setVisibility(paramInt);
        if (paramViewGroup.getGender() != User.Gender.FEMALE) {
          break label267;
        }
      }
    }
    label267:
    for (paramInt = 2130838659;; paramInt = 2130838664)
    {
      paramView.b.setTag(paramViewGroup.getProfileImageUrl());
      this.e.a(paramViewGroup.getProfileImageUrl(), this.j, this.k, new com.d.a.b.f.d()
      {
        public final void a()
        {
          paramView.b.setImageResource(paramInt);
        }
        
        public final void a(String paramAnonymousString, View paramAnonymousView)
        {
          paramView.b.setImageResource(paramInt);
        }
        
        public final void a(String paramAnonymousString, View paramAnonymousView, Bitmap paramAnonymousBitmap)
        {
          if ((paramAnonymousBitmap != null) && (paramView.b.getTag() != null) && (paramView.b.getTag().equals(paramAnonymousString))) {
            paramView.b.setImageBitmap(paramAnonymousBitmap);
          }
        }
      });
      if (!au.a(paramViewGroup.getRemark())) {
        break label274;
      }
      paramView.c.setText(paramViewGroup.getScreenName());
      return localView;
      paramInt = 8;
      break;
    }
    label274:
    paramView.c.setText(String.format("%s(%s)", new Object[] { paramViewGroup.getScreenName(), paramViewGroup.getRemark() }));
    return localView;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\message\a\m.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
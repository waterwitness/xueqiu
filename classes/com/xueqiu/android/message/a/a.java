package com.xueqiu.android.message.a;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.text.Html;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.SectionIndexer;
import android.widget.TextView;
import com.d.a.b.f;
import com.emilsjolander.components.stickylistheaders.StickyListHeadersAdapter;
import com.xueqiu.android.base.util.af;
import com.xueqiu.android.base.util.o;
import com.xueqiu.android.base.util.v;
import com.xueqiu.android.community.model.User;
import com.xueqiu.android.community.model.User.Gender;
import com.xueqiu.android.community.model.UserVerifyType;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;

public final class a
  extends BaseAdapter
  implements SectionIndexer, StickyListHeadersAdapter
{
  public List<User> a;
  public List<User> b;
  public String c;
  public boolean d = false;
  private Context e;
  private f f;
  private List<User> g;
  private int[] h;
  private Character[] i;
  private LayoutInflater j;
  private String k = "ABCDEFGHIJKLMNOPQRSTUVWXYZ#";
  private long[] l;
  
  public a(Context paramContext, f paramf, long[] paramArrayOfLong, List<User> paramList)
  {
    this.e = paramContext;
    this.f = paramf;
    this.l = paramArrayOfLong;
    this.i = b();
    this.b = new ArrayList();
    a(paramList);
    this.j = LayoutInflater.from(paramContext);
  }
  
  private boolean a(long paramLong)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (this.l != null)
    {
      bool1 = bool2;
      if (this.l.length > 0)
      {
        bool1 = bool2;
        if (Arrays.binarySearch(this.l, paramLong) >= 0) {
          bool1 = true;
        }
      }
    }
    return bool1;
  }
  
  private static boolean b(char paramChar)
  {
    return (paramChar == '_') || (paramChar == '-') || ((paramChar <= '9') && (paramChar >= '0'));
  }
  
  private Character[] b()
  {
    Character[] arrayOfCharacter = new Character[this.k.length()];
    int m = 0;
    while (m < arrayOfCharacter.length)
    {
      arrayOfCharacter[m] = Character.valueOf(this.k.charAt(m));
      m += 1;
    }
    return arrayOfCharacter;
  }
  
  protected final void a()
  {
    int n = 0;
    int m = 0;
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(Integer.valueOf(0));
    Object localObject;
    if (this.a.size() == 0)
    {
      localObject = new int[localArrayList.size()];
      while (m < localArrayList.size())
      {
        localObject[m] = ((Integer)localArrayList.get(m)).intValue();
        m += 1;
      }
    }
    for (;;)
    {
      this.h = ((int[])localObject);
      this.i = b();
      return;
      char c2 = ((User)this.a.get(0)).getAlphabets().charAt(0);
      m = 1;
      while (m < this.a.size())
      {
        localObject = Character.valueOf(((User)this.a.get(m)).getAlphabets().charAt(0));
        char c1 = c2;
        if (!b(c2))
        {
          c1 = c2;
          if (b(((Character)localObject).charValue()))
          {
            c1 = ((Character)localObject).charValue();
            localArrayList.add(Integer.valueOf(m));
          }
        }
        c2 = c1;
        if (!b(c1))
        {
          c2 = c1;
          if (((Character)localObject).charValue() != c1)
          {
            c2 = ((Character)localObject).charValue();
            localArrayList.add(Integer.valueOf(m));
          }
        }
        m += 1;
      }
      localObject = new int[localArrayList.size()];
      m = n;
      while (m < localArrayList.size())
      {
        localObject[m] = ((Integer)localArrayList.get(m)).intValue();
        m += 1;
      }
    }
  }
  
  public final void a(final String paramString)
  {
    if (((this.g == null) || (this.g.size() == 0)) && ((this.a == null) || (this.a.size() == 0))) {
      return;
    }
    new Thread()
    {
      public final void run()
      {
        a.a(a.this, paramString);
        if (a.a(a.this) == null) {
          a.a(a.this, a.b(a.this));
        }
        if ((a.c(a.this) == null) || (a.c(a.this).length() <= 0))
        {
          a.b(a.this, a.a(a.this));
          new Handler(Looper.getMainLooper()).post(new Runnable()
          {
            public final void run()
            {
              a.this.a();
              a.this.notifyDataSetChanged();
            }
          });
          return;
        }
        a.b(a.this, new ArrayList());
        Iterator localIterator = a.a(a.this).iterator();
        label126:
        label270:
        label274:
        for (;;)
        {
          User localUser;
          if (localIterator.hasNext())
          {
            localUser = (User)localIterator.next();
            String str1 = paramString;
            String str2 = localUser.getScreenName();
            String str3 = localUser.getPinyinScreenName();
            String str4 = localUser.getRemark();
            String str5 = localUser.getPinyinRemark();
            String str6 = localUser.getDescription();
            if ((!str2.contains(str1)) && ((str3 == null) || (!str3.contains(str1))) && ((str4 == null) || (!str4.contains(str1))) && ((str5 == null) || (!str5.contains(str1))) && ((str6 == null) || (!str6.contains(str1)))) {
              break label270;
            }
          }
          for (int i = 1;; i = 0)
          {
            if (i == 0) {
              break label274;
            }
            a.b(a.this).add(localUser);
            break label126;
            break;
          }
        }
      }
    }.start();
  }
  
  public final void a(List<User> paramList)
  {
    if (paramList != null)
    {
      ArrayList localArrayList = new ArrayList();
      paramList = paramList.iterator();
      while (paramList.hasNext())
      {
        User localUser = (User)paramList.next();
        localUser.setPinyinScreenName(af.a(localUser.getScreenName()));
        localArrayList.add(localUser);
      }
      if ((this.l != null) && (this.l.length > 0)) {
        Arrays.sort(this.l);
      }
      Collections.sort(localArrayList, new Comparator() {});
      this.a = localArrayList;
      a();
      notifyDataSetInvalidated();
    }
  }
  
  public final boolean a(int paramInt)
  {
    return a(((User)this.a.get(paramInt)).getUserId());
  }
  
  public final User addMember(int paramInt)
  {
    User localUser = (User)this.a.get(paramInt);
    this.b.add(localUser);
    return localUser;
  }
  
  public final int getCount()
  {
    if (this.a != null) {
      return this.a.size();
    }
    return 0;
  }
  
  public final long getHeaderId(int paramInt)
  {
    char c1 = ((User)this.a.get(paramInt)).getAlphabets().subSequence(0, 1).charAt(0);
    if (b(c1)) {
      return 35L;
    }
    return c1;
  }
  
  public final View getHeaderView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    View localView = paramView;
    if (paramView == null)
    {
      localView = this.j.inflate(2130903244, paramViewGroup, false);
      localView.setTag(b.a(localView));
    }
    b localb = (b)localView.getTag();
    paramViewGroup = String.valueOf(((User)this.a.get(paramInt)).getAlphabets().charAt(0)).toUpperCase();
    paramView = paramViewGroup;
    if (b(paramViewGroup.charAt(0))) {
      paramView = "#";
    }
    localb.a.setText(paramView);
    if ((this.c == null) || (this.c.length() > 0))
    {
      localView.setVisibility(0);
      return localView;
    }
    localView.setVisibility(8);
    return localView;
  }
  
  public final Object getItem(int paramInt)
  {
    if ((this.a != null) && (this.a.size() > paramInt) && (paramInt >= 0)) {
      return this.a.get(paramInt);
    }
    return null;
  }
  
  public final long getItemId(int paramInt)
  {
    return paramInt;
  }
  
  public final int getPositionForSection(int paramInt)
  {
    while (paramInt >= 0)
    {
      int m = 0;
      while (m < this.a.size())
      {
        if (Character.toUpperCase(((User)this.a.get(m)).getAlphabets().charAt(0)) == this.i[paramInt].charValue())
        {
          v.a("Select", "selection: " + m);
          return m;
        }
        m += 1;
      }
      paramInt -= 1;
    }
    return 0;
  }
  
  public final int getSectionForPosition(int paramInt)
  {
    int m = 0;
    while (m < this.h.length)
    {
      if (paramInt < this.h[m]) {
        return m - 1;
      }
      m += 1;
    }
    return this.h.length - 1;
  }
  
  public final Object[] getSections()
  {
    return this.i;
  }
  
  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    View localView;
    if (paramView != null)
    {
      localView = paramView;
      if (paramView.getTag() != null) {}
    }
    else
    {
      localView = this.j.inflate(2130903411, paramViewGroup, false);
      paramView = new c();
      paramView.a = ((CheckBox)localView.findViewById(2131625326));
      paramView.b = ((ImageView)localView.findViewById(2131625330));
      paramView.c = ((ImageView)localView.findViewById(2131625320));
      paramView.d = ((TextView)localView.findViewById(2131624440));
      paramView.e = ((TextView)localView.findViewById(2131624441));
      paramView.f = ((TextView)localView.findViewById(2131624457));
      paramView.g = ((ImageView)localView.findViewById(2131624401));
      paramView.h = localView.getContext();
      if (!this.d) {
        break label729;
      }
      paramView.a.setVisibility(0);
      localView.setTag(paramView);
    }
    c localc = (c)localView.getTag();
    User localUser = (User)this.a.get(paramInt);
    paramView = this.f;
    localc.a.setChecked(false);
    localc.d.setText(localUser.getScreenName());
    if (localUser.getGender().equals(User.Gender.FEMALE))
    {
      paramView.a(localUser.getProfileImageUrl(), localc.c, localc.j, new o());
      label263:
      if (TextUtils.isEmpty(localUser.getRemark())) {
        break label770;
      }
      localc.e.setText("(" + localUser.getRemark() + "）");
      localc.e.setVisibility(0);
      label318:
      if (TextUtils.isEmpty(localUser.getVerifiedDescription())) {
        break label783;
      }
      paramView = localUser.getVerifiedDescription();
    }
    try
    {
      label335:
      paramViewGroup = Html.fromHtml(paramView);
      paramView = paramViewGroup;
    }
    catch (Exception paramViewGroup)
    {
      Context localContext;
      label660:
      label695:
      label729:
      label770:
      label783:
      label806:
      label819:
      for (;;) {}
    }
    localContext = localc.h;
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
        if (!localUser.getProvince().equals(localContext.getString(2131165856)))
        {
          paramView = paramViewGroup;
          if (!localUser.getProvince().equals(localContext.getString(2131165312)))
          {
            paramView = paramViewGroup;
            if (!localUser.getProvince().equals(localContext.getString(2131165855))) {
              paramView = localUser.getProvince();
            }
          }
        }
      }
      paramViewGroup = paramView;
      if (localUser.getCity() != null)
      {
        paramViewGroup = paramView;
        if (!localUser.getCity().equals(localContext.getString(2131165310)))
        {
          paramViewGroup = paramView;
          if (!localUser.getCity().equals(localContext.getString(2131165313)))
          {
            paramViewGroup = paramView;
            if (!localUser.getCity().equals(localContext.getString(2131165312))) {
              paramViewGroup = paramView + localUser.getCity();
            }
          }
        }
      }
      paramView = paramViewGroup;
      if (paramViewGroup.length() > 0) {
        paramView = paramViewGroup + ", ";
      }
      paramViewGroup = paramView + localContext.getString(2131166565, new Object[] { String.valueOf(localUser.getStatusesCount()), String.valueOf(localUser.getFollowersCount()), String.valueOf(localUser.getFriendsCount()) });
    }
    if ((paramViewGroup != null) && (paramViewGroup.length() > 0))
    {
      localc.f.setText(paramViewGroup);
      if (!localUser.isVerified()) {
        break label806;
      }
      localc.g.setVisibility(0);
      paramInt = localUser.getVerifyType().iconResId();
      localc.g.setImageResource(paramInt);
      if (!a(localUser.getUserId())) {
        break label819;
      }
      localc.a.setVisibility(8);
      localc.b.setVisibility(0);
    }
    while (!this.d)
    {
      return localView;
      paramView.a.setVisibility(8);
      break;
      paramView.a(localUser.getProfileImageUrl(), localc.c, localc.i, new o());
      break label263;
      localc.e.setVisibility(8);
      break label318;
      paramView = localUser.getDescription();
      break label335;
      localc.f.setText("");
      break label660;
      localc.g.setVisibility(8);
      break label695;
    }
    localc.a.setChecked(this.b.contains(localUser));
    localc.a.setVisibility(0);
    localc.b.setVisibility(8);
    return localView;
  }
  
  public final boolean isEnabled(int paramInt)
  {
    return !a(paramInt);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\message\a\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
package com.xueqiu.android.message;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.v4.view.ak;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.AdapterView.OnItemLongClickListener;
import android.widget.ListView;
import com.android.volley.y;
import com.d.a.b.f;
import com.d.a.b.f.c;
import com.emilsjolander.components.stickylistheaders.StickyListHeadersListView;
import com.umeng.analytics.MobclickAgent;
import com.xueqiu.android.base.b.ai;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.storage.prefs.UserLogonDataPrefs;
import com.xueqiu.android.base.u;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.common.b;
import com.xueqiu.android.community.UserProfileActivity;
import com.xueqiu.android.community.model.User;
import com.xueqiu.android.message.a.m;
import com.xueqiu.android.message.a.n;
import com.xueqiu.android.message.model.BatchResult;
import com.xueqiu.android.message.model.IMGroup;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class GroupMemberListActivity
  extends b
{
  m j;
  IMGroup k;
  private StickyListHeadersListView p;
  private List<User> q;
  private ai r;
  private AdapterView.OnItemLongClickListener s = new AdapterView.OnItemLongClickListener()
  {
    public final boolean onItemLongClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
    {
      paramAnonymousAdapterView = (User)GroupMemberListActivity.a(GroupMemberListActivity.this).getItem(paramAnonymousInt);
      paramAnonymousView = GroupMemberListActivity.this;
      paramAnonymousLong = paramAnonymousAdapterView.getUserId();
      u.a();
      if (paramAnonymousLong == UserLogonDataPrefs.getLogonUserId()) {
        new AlertDialog.Builder(paramAnonymousView).setNegativeButton(paramAnonymousView.getString(2131165632), null).setTitle(paramAnonymousView.getString(2131166217)).setMessage(paramAnonymousView.getString(2131165607)).create().show();
      }
      for (;;)
      {
        return true;
        new AlertDialog.Builder(paramAnonymousView).setNegativeButton(paramAnonymousView.getString(2131165296), null).setPositiveButton(paramAnonymousView.getString(2131165361), new GroupMemberListActivity.6(paramAnonymousView, paramAnonymousAdapterView)).setTitle(paramAnonymousView.getString(2131166217)).setMessage(paramAnonymousView.getString(2131165610)).create().show();
      }
    }
  };
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903407);
    this.p = ((StickyListHeadersListView)findViewById(2131624241));
    paramBundle = getIntent().getParcelableArrayListExtra("extra_member_list");
    this.k = ((IMGroup)getIntent().getParcelableExtra("extra_group"));
    ArrayList localArrayList1 = new ArrayList();
    ArrayList localArrayList2 = new ArrayList();
    Iterator localIterator = paramBundle.iterator();
    paramBundle = null;
    long l;
    while (localIterator.hasNext())
    {
      localObject = (User)localIterator.next();
      l = ((User)localObject).getUserId();
      u.a();
      if (l == UserLogonDataPrefs.getLogonUserId())
      {
        paramBundle = (Bundle)localObject;
      }
      else
      {
        if (!((User)localObject).isFollowing())
        {
          l = ((User)localObject).getUserId();
          u.a();
          if (l != UserLogonDataPrefs.getLogonUserId()) {}
        }
        else
        {
          localArrayList1.add(localObject);
          continue;
        }
        localArrayList2.add(localObject);
      }
    }
    this.q = new ArrayList();
    if (paramBundle != null) {
      this.q.add(paramBundle);
    }
    this.q.addAll(localArrayList1);
    this.q.addAll(localArrayList2);
    paramBundle = f.a();
    Object localObject = this.q;
    this.j = new m(this, paramBundle, new int[] { 2131625326, 2131625320, 2131625321 }, (List)localObject);
    this.j.b = new n() {};
    this.p.setAdapter(this.j);
    this.p.setOnItemClickListener(new AdapterView.OnItemClickListener()
    {
      public final void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
      {
        if (GroupMemberListActivity.a(GroupMemberListActivity.this).a)
        {
          paramAnonymousAdapterView = GroupMemberListActivity.a(GroupMemberListActivity.this);
          paramAnonymousView = (User)paramAnonymousAdapterView.getItem(paramAnonymousInt);
          if (paramAnonymousAdapterView.c.containsKey(Long.valueOf(paramAnonymousView.getUserId()))) {
            paramAnonymousAdapterView.c.remove(Long.valueOf(paramAnonymousView.getUserId()));
          }
          for (;;)
          {
            paramAnonymousAdapterView.notifyDataSetChanged();
            return;
            paramAnonymousAdapterView.c.put(Long.valueOf(paramAnonymousView.getUserId()), paramAnonymousView);
          }
        }
        paramAnonymousView = new Intent(paramAnonymousView.getContext(), UserProfileActivity.class);
        paramAnonymousView.putExtra("extra_user", (Parcelable)paramAnonymousAdapterView.getItemAtPosition(paramAnonymousInt));
        GroupMemberListActivity.this.startActivity(paramAnonymousView);
      }
    });
    this.p.setOnScrollListener(new c(paramBundle, false, true));
    if (this.k != null) {}
    try
    {
      l = this.k.getMasterId();
      u.a();
      if (l == UserLogonDataPrefs.getLogonUserId())
      {
        setTitle(2131165628);
        this.p.getWrappedList().setOnItemLongClickListener(this.s);
      }
      for (;;)
      {
        this.r = com.xueqiu.android.base.q.a().b();
        MobclickAgent.onEvent(this, "IM_group_member");
        return;
        setTitle(2131165639);
      }
    }
    catch (Exception paramBundle)
    {
      for (;;)
      {
        paramBundle.printStackTrace();
      }
    }
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    MenuItem localMenuItem;
    if (this.k != null)
    {
      long l = this.k.getMasterId();
      u.a();
      if (l == UserLogonDataPrefs.getLogonUserId())
      {
        localMenuItem = paramMenu.add(2131165681).setOnMenuItemClickListener(new MenuItem.OnMenuItemClickListener()
        {
          public final boolean onMenuItemClick(MenuItem paramAnonymousMenuItem)
          {
            boolean bool = false;
            if (GroupMemberListActivity.a(GroupMemberListActivity.this) != null)
            {
              if ((GroupMemberListActivity.a(GroupMemberListActivity.this).a) && (GroupMemberListActivity.a(GroupMemberListActivity.this).a().size() > 0))
              {
                paramAnonymousMenuItem = GroupMemberListActivity.this;
                new AlertDialog.Builder(paramAnonymousMenuItem).setNegativeButton(2131165296, null).setPositiveButton(2131165361, new GroupMemberListActivity.5(paramAnonymousMenuItem)).setTitle(2131166217).setMessage(String.format(paramAnonymousMenuItem.getString(2131165611), new Object[] { Integer.valueOf(paramAnonymousMenuItem.j.a().size()) })).create().show();
              }
            }
            else {
              return true;
            }
            paramAnonymousMenuItem = GroupMemberListActivity.a(GroupMemberListActivity.this);
            if (!GroupMemberListActivity.a(GroupMemberListActivity.this).a) {
              bool = true;
            }
            paramAnonymousMenuItem.a = bool;
            GroupMemberListActivity.a(GroupMemberListActivity.this).notifyDataSetChanged();
            GroupMemberListActivity.this.b();
            return true;
          }
        });
        if (!this.j.a) {
          break label81;
        }
      }
    }
    label81:
    for (int i = 2130838114;; i = 2130838315)
    {
      ak.a(localMenuItem.setIcon(i), 2);
      return super.onCreateOptionsMenu(paramMenu);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\message\GroupMemberListActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
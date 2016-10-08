package com.xueqiu.android.message;

import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v7.a.c;
import android.support.v7.a.g;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;
import com.emilsjolander.components.stickylistheaders.StickyListHeadersListView;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.b.q;
import com.xueqiu.android.base.storage.DBManager;
import com.xueqiu.android.base.storage.prefs.DataStore;
import com.xueqiu.android.base.util.ag;
import com.xueqiu.android.common.b;
import com.xueqiu.android.community.model.User;
import com.xueqiu.android.message.a.u;
import com.xueqiu.android.message.model.IMGroup;
import com.xueqiu.android.message.model.Talk;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import rx.h;

public class TalkSearchActivity
  extends b
{
  private EditText j;
  private com.xueqiu.android.base.b.x k;
  private List<Talk> p;
  private View q;
  private u r;
  private View s;
  private StickyListHeadersListView t;
  private com.d.a.b.f u;
  
  private static com.xueqiu.android.message.a.y b(List<User> paramList)
  {
    com.xueqiu.android.message.a.y localy = new com.xueqiu.android.message.a.y();
    localy.b = "用户";
    localy.c = 2;
    Iterator localIterator = paramList.iterator();
    if (localIterator.hasNext())
    {
      User localUser = (User)localIterator.next();
      if (localUser.getProfileLargeImageUrl() != null) {}
      for (paramList = localUser.getProfileLargeImageUrl();; paramList = localUser.getProfileImageUrl())
      {
        paramList = new com.xueqiu.android.message.a.x(paramList, localUser.getScreenName(), localUser.getDescription());
        paramList.d = localUser;
        localy.a.add(paramList);
        break;
      }
    }
    return localy;
  }
  
  private static com.xueqiu.android.message.a.y c(List<IMGroup> paramList)
  {
    com.xueqiu.android.message.a.y localy = new com.xueqiu.android.message.a.y();
    localy.b = "已加入群组";
    localy.c = 1;
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      IMGroup localIMGroup = (IMGroup)paramList.next();
      com.xueqiu.android.message.a.x localx = new com.xueqiu.android.message.a.x(localIMGroup.getProfileImageUrl(), localIMGroup.getName(), localIMGroup.getDescription());
      localx.d = localIMGroup;
      localy.a.add(localx);
    }
    return localy;
  }
  
  private static com.xueqiu.android.message.a.y d(List<Talk> paramList)
  {
    com.xueqiu.android.message.a.y localy = new com.xueqiu.android.message.a.y();
    localy.b = "本地对话";
    localy.c = 0;
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      Talk localTalk = (Talk)paramList.next();
      com.xueqiu.android.message.a.x localx = new com.xueqiu.android.message.a.x(localTalk.getProfileImageUrl(), localTalk.getName(), localTalk.getSummary());
      localx.d = localTalk;
      localy.a.add(localx);
    }
    return localy;
  }
  
  public void onBackPressed()
  {
    a(0, 0);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903110);
    this.u = com.d.a.b.f.a();
    this.p = DataStore.getInstance(this).getTalks(false);
    this.j = new EditText(this);
    this.j.setTextColor(-1);
    this.j.setHintTextColor(getResources().getColor(2131558470));
    this.j.setImeOptions(3);
    this.i.b().a(this.j, new c(-1));
    this.i.b().d(true);
    this.i.b().c(false);
    this.j.setHint(2131166309);
    this.j.setImeActionLabel(getString(2131166024), 3);
    this.j.setOnEditorActionListener(new TextView.OnEditorActionListener()
    {
      public final boolean onEditorAction(final TextView paramAnonymousTextView, int paramAnonymousInt, KeyEvent paramAnonymousKeyEvent)
      {
        if (paramAnonymousInt == 3)
        {
          paramAnonymousTextView = paramAnonymousTextView.getText().toString();
          if ((paramAnonymousTextView != null) && (paramAnonymousTextView.length() > 0))
          {
            ag.c.a(new rx.c.a()
            {
              public final void a()
              {
                TalkSearchActivity.a(TalkSearchActivity.this, paramAnonymousTextView);
              }
            });
            return true;
          }
        }
        return false;
      }
    });
    this.j.addTextChangedListener(new TextWatcher()
    {
      public final void afterTextChanged(Editable paramAnonymousEditable)
      {
        if (TalkSearchActivity.a(TalkSearchActivity.this) == null) {}
        do
        {
          return;
          if ((paramAnonymousEditable.toString().trim().length() == 0) && (TalkSearchActivity.a(TalkSearchActivity.this).getCount() > 0) && (TalkSearchActivity.b(TalkSearchActivity.this).hasFocus()))
          {
            TalkSearchActivity.a(TalkSearchActivity.this).a.clear();
            TalkSearchActivity.a(TalkSearchActivity.this).notifyDataSetChanged();
            TalkSearchActivity.c(TalkSearchActivity.this).setVisibility(0);
            TalkSearchActivity.d(TalkSearchActivity.this).setVisibility(8);
            return;
          }
        } while (!TalkSearchActivity.b(TalkSearchActivity.this).hasFocus());
        TalkSearchActivity.c(TalkSearchActivity.this).setVisibility(8);
        TalkSearchActivity.d(TalkSearchActivity.this).setVisibility(0);
      }
      
      public final void beforeTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
      
      public final void onTextChanged(final CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3)
      {
        synchronized (TalkSearchActivity.this)
        {
          paramAnonymousCharSequence = paramAnonymousCharSequence.toString();
          if ((paramAnonymousCharSequence != null) && (paramAnonymousCharSequence.length() > 0)) {
            ag.c.a(new rx.c.a()
            {
              public final void a()
              {
                TalkSearchActivity.a(TalkSearchActivity.this, paramAnonymousCharSequence);
              }
            });
          }
          return;
        }
      }
    });
    this.q = findViewById(2131624334);
    this.t = ((StickyListHeadersListView)findViewById(2131624255));
    this.t.setAreHeadersSticky(false);
    this.r = new u(getBaseContext(), this.u);
    this.t.setAdapter(this.r);
    this.t.setEmptyView(this.q);
    this.q.setVisibility(4);
    this.t.setOnScrollListener(new AbsListView.OnScrollListener()
    {
      public final void onScroll(AbsListView paramAnonymousAbsListView, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
      
      public final void onScrollStateChanged(AbsListView paramAnonymousAbsListView, int paramAnonymousInt)
      {
        if ((TalkSearchActivity.b(TalkSearchActivity.this) != null) && (TalkSearchActivity.b(TalkSearchActivity.this).isFocused())) {
          ((InputMethodManager)TalkSearchActivity.this.getSystemService("input_method")).hideSoftInputFromWindow(TalkSearchActivity.b(TalkSearchActivity.this).getWindowToken(), 0);
        }
        if (paramAnonymousInt == 2)
        {
          TalkSearchActivity.e(TalkSearchActivity.this).f();
          return;
        }
        TalkSearchActivity.e(TalkSearchActivity.this).g();
      }
    });
    this.s = findViewById(2131624257);
    this.t.setOnItemClickListener(new AdapterView.OnItemClickListener()
    {
      public final void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
      {
        paramAnonymousAdapterView = (com.xueqiu.android.message.a.x)TalkSearchActivity.a(TalkSearchActivity.this).getItem(paramAnonymousInt);
        Intent localIntent = new Intent(TalkSearchActivity.this.getBaseContext(), ChatActivity.class);
        if ((paramAnonymousAdapterView.d != null) && ((paramAnonymousAdapterView.d instanceof Talk)))
        {
          paramAnonymousAdapterView = (Talk)paramAnonymousAdapterView.d;
          localIntent.putExtra("talk", paramAnonymousAdapterView);
          TalkSearchActivity.this.startActivity(localIntent);
        }
        do
        {
          return;
          if ((paramAnonymousAdapterView.d != null) && ((paramAnonymousAdapterView.d instanceof User)))
          {
            User localUser = (User)paramAnonymousAdapterView.d;
            paramAnonymousView = DataStore.getInstance(TalkSearchActivity.this.getBaseContext()).getTalk(localUser.getUserId(), false);
            paramAnonymousAdapterView = paramAnonymousView;
            if (paramAnonymousView == null)
            {
              paramAnonymousAdapterView = new Talk();
              paramAnonymousAdapterView.setGroup(false);
              paramAnonymousAdapterView.setId(localUser.getUserId());
              paramAnonymousAdapterView.setName(localUser.getScreenName());
              paramAnonymousAdapterView.setProfileImageUrl(localUser.getProfileImageUrl());
            }
            paramAnonymousAdapterView.setCollapsed(false);
            paramAnonymousAdapterView.setActive(true);
            paramAnonymousAdapterView.setLastTime(new Date());
            DataStore.getInstance(TalkSearchActivity.this.getBaseContext()).saveTalk(paramAnonymousAdapterView);
            DBManager.getInstance().insertOrUpdateUserByKeepFollowShip(localUser);
            break;
          }
        } while ((paramAnonymousAdapterView.d == null) || (!(paramAnonymousAdapterView.d instanceof IMGroup)));
        paramAnonymousView = (IMGroup)paramAnonymousAdapterView.d;
        paramAnonymousAdapterView = DataStore.getInstance(TalkSearchActivity.this.getBaseContext()).getTalk(paramAnonymousView.getId(), true);
        if (paramAnonymousAdapterView == null)
        {
          paramAnonymousAdapterView = new Talk();
          paramAnonymousAdapterView.setGroup(true);
          paramAnonymousAdapterView.setId(paramAnonymousView.getId());
          paramAnonymousAdapterView.setName(paramAnonymousView.getName());
          paramAnonymousAdapterView.setProfileImageUrl(paramAnonymousView.getProfileImageUrl());
          paramAnonymousAdapterView.setCollapsed(false);
        }
        for (;;)
        {
          DataStore.getInstance(TalkSearchActivity.this.getBaseContext()).saveTalk(paramAnonymousAdapterView);
          break;
        }
      }
    });
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\message\TalkSearchActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
package com.xueqiu.android.community;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import com.android.volley.n;
import com.xueqiu.android.base.b.ai;
import com.xueqiu.android.base.b.aj;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.b.x;
import com.xueqiu.android.base.storage.prefs.UserLogonDataPrefs;
import com.xueqiu.android.base.u;
import com.xueqiu.android.base.v;
import com.xueqiu.android.common.a.d;
import com.xueqiu.android.common.b;
import com.xueqiu.android.common.r;
import com.xueqiu.android.common.t;
import com.xueqiu.android.common.widget.SNBPullToRefreshListView;
import com.xueqiu.android.community.a.w;
import com.xueqiu.android.community.model.Question;
import com.xueqiu.android.community.model.User;
import java.util.ArrayList;
import java.util.Locale;

public class UserAnsweredQuestionActivity
  extends b
  implements t<Question>
{
  private User j;
  private r<Question> k;
  private w p;
  
  private x<ArrayList<Question>> a(boolean paramBoolean, p<ArrayList<Question>> paramp)
  {
    Object localObject = this.k.c.a();
    long l1;
    long l2;
    if (((ArrayList)localObject).size() != 0) {
      if (!paramBoolean)
      {
        l1 = ((Question)((ArrayList)localObject).get(0)).getAid();
        l2 = 0L;
      }
    }
    for (;;)
    {
      localObject = com.xueqiu.android.base.q.a().b();
      long l3 = this.j.getUserId();
      return ((ai)localObject).g.a(l3, l1, l2, paramp);
      l2 = ((Question)((ArrayList)localObject).get(((ArrayList)localObject).size() - 1)).getAid();
      l1 = 0L;
      continue;
      l1 = 0L;
      l2 = 0L;
    }
  }
  
  public final n<ArrayList<Question>> a(p<ArrayList<Question>> paramp)
  {
    return a(false, paramp);
  }
  
  public final void a(ArrayList<Question> paramArrayList, Throwable paramThrowable, boolean paramBoolean) {}
  
  public final n<ArrayList<Question>> b(p<ArrayList<Question>> paramp)
  {
    return a(true, paramp);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903122);
    this.j = ((User)getIntent().getParcelableExtra("extra_user"));
    this.k = new r((SNBPullToRefreshListView)findViewById(2131624364), this);
    this.p = new w(this);
    this.k.a(this.p);
    this.k.f = 10;
    this.k.c(false);
    this.k.a(new AdapterView.OnItemClickListener()
    {
      public final void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
      {
        com.xueqiu.android.common.q.a(v.b(((Question)UserAnsweredQuestionActivity.a(UserAnsweredQuestionActivity.this).a().get(paramAnonymousInt - 1)).getTarget()), UserAnsweredQuestionActivity.this);
      }
    });
    long l = this.j.getUserId();
    u.a();
    int i;
    Locale localLocale;
    if (l == UserLogonDataPrefs.getLogonUserId())
    {
      i = 1;
      localLocale = Locale.CHINA;
      if (i == 0) {
        break label170;
      }
    }
    label170:
    for (paramBundle = "我";; paramBundle = this.j.getScreenName())
    {
      setTitle(String.format(localLocale, "%s回复的提问", new Object[] { paramBundle }));
      this.k.a(true);
      return;
      i = 0;
      break;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\community\UserAnsweredQuestionActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
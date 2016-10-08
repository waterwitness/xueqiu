package com.xueqiu.android.common.search;

import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v7.a.a;
import android.support.v7.a.c;
import android.support.v7.a.f;
import android.support.v7.a.g;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;
import com.android.volley.n;
import com.xueqiu.android.base.b.ai;
import com.xueqiu.android.base.b.aj;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.b.x;
import com.xueqiu.android.base.q;
import com.xueqiu.android.base.r;
import com.xueqiu.android.base.util.ba;
import com.xueqiu.android.common.b;
import com.xueqiu.android.common.t;
import com.xueqiu.android.common.widget.SNBPullToRefreshListView;
import com.xueqiu.android.community.a.ak;
import com.xueqiu.android.community.model.Status;
import com.xueqiu.android.community.model.User;
import com.xueqiu.android.community.widget.i;
import java.util.ArrayList;
import java.util.Locale;

public class UserStatusSearchActivity
  extends b
  implements t<Status>
{
  private User j;
  private EditText k;
  private i p;
  private ak q;
  private int r = 1;
  private String s;
  
  private x<ArrayList<Status>> a(int paramInt, p<ArrayList<Status>> paramp)
  {
    ai localai = q.a().b();
    String str = this.s;
    long l = this.j.getUserId();
    return localai.g.a(str, l, null, null, paramInt, 20, "time", paramp);
  }
  
  public final n<ArrayList<Status>> a(p<ArrayList<Status>> paramp)
  {
    return a(1, paramp);
  }
  
  public final void a(ArrayList<Status> paramArrayList, Throwable paramThrowable, boolean paramBoolean) {}
  
  public final n<ArrayList<Status>> b(p<ArrayList<Status>> paramp)
  {
    this.r += 1;
    return a(this.r, paramp);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903128);
    this.j = ((User)getIntent().getParcelableExtra("extra_user"));
    this.k = new EditText(this);
    this.k.setTextColor(r.a(2131558729));
    this.k.setTextSize(16.0F);
    this.k.setSingleLine(true);
    this.k.setHintTextColor(getResources().getColor(2131558729));
    this.k.setImeOptions(3);
    this.i.b().a(this.k, new c(-1));
    this.i.b().d(true);
    this.i.b().c(false);
    this.k.setHint(String.format(Locale.CHINA, "搜索%s的讨论", new Object[] { ba.b(this.j) }));
    this.k.setImeActionLabel(getString(2131166024), 3);
    this.k.setOnEditorActionListener(new TextView.OnEditorActionListener()
    {
      public final boolean onEditorAction(TextView paramAnonymousTextView, int paramAnonymousInt, KeyEvent paramAnonymousKeyEvent)
      {
        if (paramAnonymousInt == 3)
        {
          UserStatusSearchActivity.a(UserStatusSearchActivity.this, paramAnonymousTextView.getText().toString().trim());
          if (!TextUtils.isEmpty(UserStatusSearchActivity.a(UserStatusSearchActivity.this)))
          {
            UserStatusSearchActivity.b(UserStatusSearchActivity.this).c();
            UserStatusSearchActivity.b(UserStatusSearchActivity.this).a(false);
            return true;
          }
          UserStatusSearchActivity.c(UserStatusSearchActivity.this).requestFocus();
          return true;
        }
        return false;
      }
    });
    this.k.requestFocus();
    this.p = new i((SNBPullToRefreshListView)findViewById(2131624372), this);
    this.p.c(false);
    this.p.b(false);
    this.q = new ak(this);
    this.q.h = true;
    this.p.a(this.q);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\search\UserStatusSearchActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
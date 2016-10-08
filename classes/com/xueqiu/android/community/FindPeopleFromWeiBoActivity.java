package com.xueqiu.android.community;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.support.v4.view.ViewPager;
import android.support.v4.view.ak;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import com.viewpagerindicator.TabPageIndicator;
import com.xueqiu.android.base.b.ap;
import com.xueqiu.android.base.b.h;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.common.b;
import com.xueqiu.android.common.model.OAuthBindResult;

public class FindPeopleFromWeiBoActivity
  extends b
{
  private String[] j = null;
  private android.support.v4.a.i[] k = null;
  private ap p = null;
  private int q = 1;
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    ViewPager localViewPager = (ViewPager)findViewById(2131624310);
    if ((localViewPager != null) && (this.k[localViewPager.getCurrentItem()] != null)) {
      this.k[localViewPager.getCurrentItem()].a(paramInt1, paramInt2, paramIntent);
    }
    if (this.p != null) {
      this.p.a(paramInt1, paramInt2, paramIntent);
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903153);
    setTitle(2131165545);
    this.j = new String[] { "待关注", "待邀请", "已关注" };
    paramBundle = new f();
    paramBundle.a = "unfollowing";
    paramBundle.e(getIntent().getExtras());
    Object localObject = new f();
    ((f)localObject).a = "invite";
    ((f)localObject).e(getIntent().getExtras());
    f localf = new f();
    localf.a = "following";
    localf.e(getIntent().getExtras());
    this.k = new android.support.v4.a.i[] { paramBundle, localObject, localf };
    paramBundle = new g(this, c());
    localObject = (ViewPager)findViewById(2131624310);
    ((ViewPager)localObject).setAdapter(paramBundle);
    ((TabPageIndicator)findViewById(2131624326)).setViewPager((ViewPager)localObject);
    int i = getIntent().getIntExtra("extra_bound_weibo_status", 0);
    PreferenceManager.getDefaultSharedPreferences(this);
    if ((i == 0) || (i == 2))
    {
      findViewById(2131624407).setVisibility(0);
      findViewById(2131624435).setVisibility(4);
      paramBundle = (TextView)findViewById(2131624408);
      localObject = (Button)findViewById(2131624409);
      if (i != 0) {
        break label301;
      }
      paramBundle.setText("你未绑定新浪微博，系统无法为你找到加入雪球的新浪微博好友，现在去绑定？");
      ((Button)localObject).setText("好呀，绑定看看");
    }
    for (;;)
    {
      this.p = new ap(this, new h()
      {
        public final void a()
        {
          FindPeopleFromWeiBoActivity.b(FindPeopleFromWeiBoActivity.this).a(new com.xueqiu.android.base.b.i()
          {
            public final void a()
            {
              FindPeopleFromWeiBoActivity.a(FindPeopleFromWeiBoActivity.this);
            }
          });
        }
      });
      ((Button)localObject).setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          FindPeopleFromWeiBoActivity.b(FindPeopleFromWeiBoActivity.this).a();
        }
      });
      return;
      label301:
      paramBundle.setText("授权过期，需要重新授权");
      ((Button)localObject).setText("重新授权");
    }
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    TypedArray localTypedArray = getTheme().obtainStyledAttributes(new int[] { 2130772142 });
    ak.a(paramMenu.add(0, this.q, 0, "设置").setIcon(localTypedArray.getResourceId(0, 0)), 2);
    return super.onCreateOptionsMenu(paramMenu);
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    if (paramMenuItem.getItemId() == this.q)
    {
      paramMenuItem = new Intent();
      paramMenuItem.setClass(this, AccountBindingActivity.class);
      startActivity(paramMenuItem);
      return true;
    }
    return super.onOptionsItemSelected(paramMenuItem);
  }
  
  protected final Boolean w_()
  {
    if (((ViewPager)findViewById(2131624310)).getCurrentItem() == 0) {
      return Boolean.valueOf(true);
    }
    return Boolean.valueOf(false);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\community\FindPeopleFromWeiBoActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
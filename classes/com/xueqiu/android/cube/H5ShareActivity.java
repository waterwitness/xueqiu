package com.xueqiu.android.cube;

import android.content.Intent;
import android.graphics.BitmapFactory;
import android.os.Bundle;
import android.support.v4.view.ak;
import android.view.Menu;
import android.view.MenuItem;
import com.xueqiu.android.base.h5.H5Activity;
import com.xueqiu.android.common.widget.aj;
import com.xueqiu.android.common.widget.an;
import java.util.Map;

public class H5ShareActivity
  extends H5Activity
{
  private String p;
  private String q;
  private int r;
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.p = getIntent().getStringExtra("extra_share_content");
    this.q = getIntent().getStringExtra("extra_share_wx_content");
    this.r = getIntent().getIntExtra("extra_share_image", -1);
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    ak.a(paramMenu.add(0, 2131623957, 0, 2131166070).setIcon(2130838335), 2);
    return false;
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    if (paramMenuItem.getItemId() == 2131623957)
    {
      if ((this.p == null) || (this.q == null)) {}
      for (;;)
      {
        return true;
        paramMenuItem = new an();
        paramMenuItem.c = this.p;
        paramMenuItem.l.put("wx_content_type", this.q);
        paramMenuItem.l.put("wx_friend_content", this.q);
        paramMenuItem.k.put("wx_title", this.q);
        paramMenuItem.d = this.j;
        paramMenuItem.f = BitmapFactory.decodeResource(getResources(), 2130837614);
        aj.a(this, paramMenuItem, null);
      }
    }
    return super.onOptionsItemSelected(paramMenuItem);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\cube\H5ShareActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
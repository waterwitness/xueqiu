package com.xueqiu.android.common.imagepicker;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.a.q;
import android.support.v4.view.ak;
import android.support.v7.a.a;
import android.support.v7.a.f;
import android.view.Menu;
import android.view.MenuItem;
import com.xueqiu.android.common.b;

public class PreviewActivity
  extends b
{
  private PreviewActivity.PreviewFragment j;
  
  private void j()
  {
    this.i.b().a(String.format("%d/%d", new Object[] { Integer.valueOf(this.j.u() + 1), Integer.valueOf(this.j.C()) }));
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903086);
    this.j = ((PreviewActivity.PreviewFragment)c().a(2131624249));
    paramBundle = getIntent().getStringArrayListExtra("extra_images");
    this.j.a(paramBundle);
    this.j.a(new g()
    {
      public final void a()
      {
        PreviewActivity.a(PreviewActivity.this);
      }
    });
    j();
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    ak.a(paramMenu.add(0, 1, 0, 2131166047).setIcon(2130838131), 2);
    return super.onCreateOptionsMenu(paramMenu);
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    if (paramMenuItem.getItemId() == 1)
    {
      setResult(-1);
      finish();
    }
    return super.onOptionsItemSelected(paramMenuItem);
  }
  
  protected final Boolean w_()
  {
    if (this.j.u() == 0) {}
    for (boolean bool = true;; bool = false) {
      return Boolean.valueOf(bool);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\imagepicker\PreviewActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
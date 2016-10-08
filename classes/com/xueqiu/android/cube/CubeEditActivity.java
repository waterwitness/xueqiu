package com.xueqiu.android.cube;

import android.content.Intent;
import android.os.Bundle;
import android.text.InputFilter;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.widget.EditText;
import com.android.volley.y;
import com.xueqiu.android.base.b.ai;
import com.xueqiu.android.base.b.c;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.base.util.as;
import com.xueqiu.android.base.util.aw;
import com.xueqiu.android.base.util.u;
import com.xueqiu.android.common.b;
import com.xueqiu.android.common.model.RequestResult;
import com.xueqiu.android.cube.model.Cube;

public class CubeEditActivity
  extends b
{
  private Cube j;
  private EditText k;
  private EditText p;
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903097);
    this.j = ((Cube)getIntent().getParcelableExtra("extra_cube"));
    this.k = ((EditText)findViewById(2131624313));
    this.p = ((EditText)findViewById(2131624315));
    this.k.setFilters(new InputFilter[] { new u(16) });
    this.p.setFilters(new InputFilter[] { new u(200) });
    paramBundle = this.j;
    this.k.setText(paramBundle.getName());
    this.p.setText(paramBundle.getDescription());
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    getMenuInflater().inflate(2131689473, paramMenu);
    return super.onCreateOptionsMenu(paramMenu);
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    if (paramMenuItem.getItemId() == 2131623944)
    {
      if (aw.a(this.k.getText()) < 4)
      {
        i = 2131166236;
        aa.a(i);
      }
      for (int i = 0;; i = 1)
      {
        if (i != 0) {
          break label95;
        }
        return true;
        if (aw.a(this.k.getText()) > 16)
        {
          i = 2131166235;
          break;
        }
        if (aw.a(this.p.getText()) > 200)
        {
          i = 2131166232;
          break;
        }
      }
      label95:
      String str1;
      String str2;
      Object localObject;
      if (this.j.isSpCube())
      {
        paramMenuItem = com.xueqiu.android.base.q.a().b();
        str1 = this.j.getSymbol();
        str2 = this.k.getText().toString();
        localObject = this.p.getText().toString();
        p local1 = new p(this)
        {
          public final void a(y paramAnonymousy)
          {
            aa.a(paramAnonymousy);
          }
        };
        paramMenuItem.l.a(str1, as.f(str1), str2, (String)localObject, local1);
      }
      for (;;)
      {
        return true;
        paramMenuItem = com.xueqiu.android.base.q.a().b();
        long l = this.j.getId();
        str1 = this.k.getText().toString();
        str2 = this.p.getText().toString();
        localObject = new p(this)
        {
          public final void a(y paramAnonymousy)
          {
            aa.a(paramAnonymousy);
          }
        };
        paramMenuItem.l.a(l, str1, str2, (p)localObject);
      }
    }
    return super.onOptionsItemSelected(paramMenuItem);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\cube\CubeEditActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
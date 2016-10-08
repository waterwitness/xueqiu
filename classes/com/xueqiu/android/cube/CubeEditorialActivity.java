package com.xueqiu.android.cube;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.content.r;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ListView;
import com.android.volley.y;
import com.xueqiu.android.base.b.ai;
import com.xueqiu.android.base.b.c;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.cube.a.a;
import com.xueqiu.android.cube.model.Cube;
import com.xueqiu.android.cube.model.Editorial;
import com.xueqiu.android.cube.model.EditorialCube;

public class CubeEditorialActivity
  extends com.xueqiu.android.common.b
{
  private ListView j;
  private a k;
  private Editorial p;
  private long q;
  private boolean r;
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if ((paramInt1 == 1) && (paramInt2 == -1) && (paramIntent != null))
    {
      Cube localCube = (Cube)paramIntent.getParcelableExtra("extra_cube");
      if ((localCube != null) && (this.k != null))
      {
        this.k.a(localCube);
        this.k.notifyDataSetChanged();
      }
    }
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903102);
    this.r = getIntent().getBooleanExtra("extra_show_footer", false);
    this.q = getIntent().getLongExtra("extra_editorial_id", -1L);
    if (this.q < 0L) {
      finish();
    }
    paramBundle = com.xueqiu.android.base.q.a().b();
    long l = this.q;
    p local1 = new p(this)
    {
      public final void a(y paramAnonymousy)
      {
        aa.a(paramAnonymousy);
      }
    };
    paramBundle.l.b(l, local1);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\cube\CubeEditorialActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
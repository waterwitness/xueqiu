package com.xueqiu.android.tactic;

import android.content.Intent;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.os.Bundle;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.k;
import android.view.View;
import com.xueqiu.android.base.b.ai;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.r;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.common.b;
import com.xueqiu.android.tactic.a.j;
import com.xueqiu.android.tactic.d.i;
import java.util.ArrayList;
import java.util.List;

public class TacticSubscribeActivity
  extends b
{
  private RecyclerView j;
  private View k;
  private j p;
  private k q;
  private List<i> r;
  
  private void j()
  {
    ai localai = com.xueqiu.android.base.q.a().b();
    p local2 = new p(this)
    {
      public final void a(com.android.volley.y paramAnonymousy)
      {
        aa.a(paramAnonymousy, true);
      }
    };
    localai.n.a(local2);
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if (paramInt1 == 1) {
      j();
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903516);
    setTitle(getString(2131166184));
    this.r = new ArrayList();
    this.q = new k(1);
    this.j = ((RecyclerView)findViewById(2131625637));
    this.j.setLayoutManager(this.q);
    this.p = new j(this.r, this);
    this.j.setAdapter(this.p);
    this.j.a(new android.support.v7.widget.y()
    {
      Paint a = new Paint();
      
      public final void a(Canvas paramAnonymousCanvas, RecyclerView paramAnonymousRecyclerView, android.support.v7.widget.al paramAnonymousal)
      {
        super.a(paramAnonymousCanvas, paramAnonymousRecyclerView, paramAnonymousal);
        this.a.setColor(r.a(2131558698));
        int j = paramAnonymousRecyclerView.getChildCount();
        int i = 0;
        while (i < j)
        {
          paramAnonymousal = paramAnonymousRecyclerView.getChildAt(i);
          paramAnonymousCanvas.drawLine(paramAnonymousal.getLeft(), paramAnonymousal.getBottom(), paramAnonymousal.getRight(), paramAnonymousal.getBottom(), this.a);
          i += 1;
        }
      }
    });
    this.k = findViewById(2131625638);
    j();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\tactic\TacticSubscribeActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
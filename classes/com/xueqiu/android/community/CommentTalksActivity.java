package com.xueqiu.android.community;

import android.content.Intent;
import android.os.Bundle;
import com.android.volley.n;
import com.xueqiu.android.base.b.ai;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.b.x;
import com.xueqiu.android.base.q;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.common.a.d;
import com.xueqiu.android.common.b;
import com.xueqiu.android.common.r;
import com.xueqiu.android.common.t;
import com.xueqiu.android.common.widget.SNBPullToRefreshListView;
import com.xueqiu.android.community.model.Comment;
import com.xueqiu.android.community.model.Status;
import java.util.ArrayList;

public class CommentTalksActivity
  extends b
  implements t<Comment>
{
  private r j = null;
  private Status k;
  private long p;
  private int q = 1;
  
  private x<ArrayList<Comment>> c(p<ArrayList<Comment>> paramp)
  {
    getApplication();
    return q.a().b().a(this.k.getStatusId(), this.p, this.q, paramp);
  }
  
  public final n<ArrayList<Comment>> a(p<ArrayList<Comment>> paramp)
  {
    ArrayList localArrayList = this.j.c.a();
    if ((localArrayList == null) || (localArrayList.size() == 0)) {
      return c(paramp);
    }
    paramp.a(new ArrayList());
    return null;
  }
  
  public final void a(ArrayList<Comment> paramArrayList, Throwable paramThrowable, boolean paramBoolean)
  {
    if (paramArrayList == null) {
      aa.a(paramThrowable);
    }
  }
  
  public final n<ArrayList<Comment>> b(p<ArrayList<Comment>> paramp)
  {
    this.q += 1;
    return c(paramp);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.k = ((Status)getIntent().getParcelableExtra("extra_status"));
    this.p = getIntent().getLongExtra("extra_comment_id", -1L);
    setContentView(2130903445);
    paramBundle = new com.xueqiu.android.community.a.a(this);
    paramBundle.e = this.k.getStatusId();
    this.j = new r((SNBPullToRefreshListView)findViewById(2131624301), this);
    this.j.a(paramBundle);
    paramBundle = new a(this, this.k, paramBundle);
    paramBundle.a = true;
    this.j.a(paramBundle);
    setTitle(2131165354);
    this.j.a(true);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\community\CommentTalksActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
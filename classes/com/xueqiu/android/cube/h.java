package com.xueqiu.android.cube;

import android.support.v4.a.i;
import android.support.v4.a.q;
import android.support.v4.a.v;
import java.util.List;

final class h
  extends v
{
  public h(CubeTopListActivity paramCubeTopListActivity, q paramq)
  {
    super(paramq);
  }
  
  public final i a(int paramInt)
  {
    return (i)CubeTopListActivity.j(this.b).get(paramInt % CubeTopListActivity.j(this.b).size());
  }
  
  public final int b()
  {
    return CubeTopListActivity.j(this.b).size();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\cube\h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
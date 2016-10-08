package com.xueqiu.android.stock;

import android.support.v4.a.i;
import android.support.v4.a.q;
import android.support.v4.a.v;
import java.util.ArrayList;

final class r
  extends v
{
  public r(USETFRankActivity paramUSETFRankActivity, q paramq)
  {
    super(paramq);
  }
  
  public final i a(int paramInt)
  {
    return USETFRankActivity.a(this.b)[(paramInt % USETFRankActivity.a(this.b).length)];
  }
  
  public final int b()
  {
    return USETFRankActivity.b(this.b).size();
  }
  
  public final CharSequence b(int paramInt)
  {
    return (CharSequence)USETFRankActivity.b(this.b).get(paramInt % USETFRankActivity.a(this.b).length);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\stock\r.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
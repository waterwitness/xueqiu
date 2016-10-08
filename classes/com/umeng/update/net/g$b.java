package com.umeng.update.net;

import android.os.AsyncTask;
import u.a.d;
import u.a.f;

class g$b
  extends AsyncTask<Integer, Integer, f>
{
  private d b;
  private g.a c;
  
  public g$b(g paramg, d paramd, g.a parama)
  {
    this.b = paramd;
    this.c = parama;
  }
  
  protected f a(Integer... paramVarArgs)
  {
    return this.a.a(this.b);
  }
  
  protected void a(f paramf)
  {
    if (this.c != null) {
      this.c.a(paramf);
    }
  }
  
  protected void onPreExecute()
  {
    if (this.c != null) {
      this.c.a();
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\umeng\update\net\g$b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
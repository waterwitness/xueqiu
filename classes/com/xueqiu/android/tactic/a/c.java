package com.xueqiu.android.tactic.a;

import android.content.Context;
import android.support.v7.widget.ao;
import android.support.v7.widget.s;
import android.view.LayoutInflater;
import com.d.a.b.d;
import com.d.a.b.e;
import com.xueqiu.android.base.util.n;

public abstract class c
  extends s<ao>
{
  public Context c;
  public LayoutInflater d;
  public d e;
  
  public c(Context paramContext)
  {
    this.c = paramContext;
    this.d = LayoutInflater.from(paramContext);
    this.e = n.a().b();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\tactic\a\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
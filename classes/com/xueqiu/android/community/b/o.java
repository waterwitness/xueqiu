package com.xueqiu.android.community.b;

import com.xueqiu.android.common.model.PagedList;
import com.xueqiu.android.community.model.Question;
import com.xueqiu.android.community.model.SimpleFund;
import com.xueqiu.android.community.model.Status;
import com.xueqiu.android.community.model.User;
import java.util.ArrayList;

public abstract interface o
{
  public abstract void a(PagedList<Question> paramPagedList);
  
  public abstract void a(User paramUser, boolean paramBoolean);
  
  public abstract void a(ArrayList<SimpleFund> paramArrayList);
  
  public abstract void b(ArrayList<Status> paramArrayList);
  
  public abstract void b(boolean paramBoolean);
  
  public abstract void c(ArrayList<Status> paramArrayList);
  
  public abstract void j();
  
  public abstract void k();
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\community\b\o.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
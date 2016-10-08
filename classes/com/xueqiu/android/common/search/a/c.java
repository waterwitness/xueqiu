package com.xueqiu.android.common.search.a;

import android.graphics.Bitmap;
import com.xueqiu.android.common.model.SearchHots;
import com.xueqiu.android.community.model.User;
import com.xueqiu.android.cube.a.k;
import com.xueqiu.android.cube.model.Cube;
import com.xueqiu.android.stock.a.ad;
import java.util.List;

public abstract interface c
{
  public abstract void a(ad paramad);
  
  public abstract void a(List<String> paramList);
  
  public abstract void a(List<Cube> paramList, k paramk);
  
  public abstract void a(boolean paramBoolean, Bitmap paramBitmap, String paramString, long paramLong);
  
  public abstract void b(List<User> paramList);
  
  public abstract void b(boolean paramBoolean);
  
  public abstract void c(List<SearchHots> paramList);
  
  public abstract void c(boolean paramBoolean);
  
  public abstract void d(boolean paramBoolean);
  
  public abstract void e(boolean paramBoolean);
  
  public abstract void f(boolean paramBoolean);
  
  public abstract void g(boolean paramBoolean);
  
  public abstract void h(boolean paramBoolean);
  
  public abstract void j();
  
  public abstract String k();
  
  public abstract void l();
  
  public abstract void m();
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\search\a\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
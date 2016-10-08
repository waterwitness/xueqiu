package com.xueqiu.android.cube.a;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.d.a.b.e;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.base.util.ay;
import com.xueqiu.android.base.util.n;
import com.xueqiu.android.cube.model.Cube;
import com.xueqiu.android.cube.model.CubeCalGainType;
import java.util.ArrayList;

public final class a
  extends com.xueqiu.android.common.a.d<Cube>
{
  public b e;
  public CubeCalGainType f = CubeCalGainType.TOTAL;
  private LayoutInflater g;
  private com.d.a.b.d h;
  private boolean i = true;
  private boolean j = true;
  
  public a(Context paramContext)
  {
    super(paramContext);
    this.g = LayoutInflater.from(paramContext);
    paramContext = n.a();
    paramContext.c = 2130838024;
    paramContext.b = 2130838024;
    paramContext.a = 2130838024;
    paramContext.q = new com.d.a.b.c.c((int)ay.a(18.0F));
    this.h = paramContext.b();
  }
  
  public final void a(Cube paramCube)
  {
    int k = 0;
    for (;;)
    {
      if (k < a().size())
      {
        if (((Cube)a().get(k)).getId() == paramCube.getId())
        {
          a().remove(k);
          a().add(k, paramCube);
        }
      }
      else {
        return;
      }
      k += 1;
    }
  }
  
  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    View localView = paramView;
    if (paramView == null)
    {
      localView = this.g.inflate(2130903292, paramViewGroup, false);
      localView.setTag(new c().a(localView, this.g, this.e, this.h));
    }
    paramView = (Cube)getItem(paramInt);
    paramViewGroup = (c)localView.getTag();
    try
    {
      paramViewGroup.a(paramView, this.f, this.i, this.j);
      return localView;
    }
    catch (Throwable paramView)
    {
      aa.a(new Exception(paramView));
    }
    return localView;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\cube\a\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
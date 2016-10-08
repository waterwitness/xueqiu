package com.xueqiu.android.cube;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.d.a.b.e;
import com.d.a.b.f;
import com.xueqiu.android.base.util.h;
import com.xueqiu.android.base.util.o;
import com.xueqiu.android.cube.model.Editorial;

final class m
  extends com.xueqiu.android.common.a.d<Editorial>
{
  private static f e;
  private static com.d.a.b.d f;
  private LayoutInflater g;
  
  m(Context paramContext)
  {
    super(paramContext);
    this.g = LayoutInflater.from(paramContext);
    e = f.a();
    paramContext = com.xueqiu.android.base.util.n.a();
    paramContext.c = 2130837902;
    paramContext.b = 2130837902;
    paramContext.a = 2130837902;
    f = paramContext.b();
  }
  
  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    View localView = paramView;
    if (paramView == null)
    {
      localView = this.g.inflate(2130903101, paramViewGroup, false);
      paramView = new n(this);
      paramView.a = ((ImageView)localView.findViewById(2131624318));
      paramView.b = ((TextView)localView.findViewById(2131624319));
      paramView.c = ((TextView)localView.findViewById(2131624320));
      localView.setTag(paramView);
    }
    paramView = (Editorial)getItem(paramInt);
    paramViewGroup = (n)localView.getTag();
    String str = paramView.getImage();
    e.a(str, paramViewGroup.a, f, new o());
    paramViewGroup.b.setText(paramView.getName());
    paramViewGroup.c.setText(h.a(paramView.getCreatedAt(), "yyyy.MM.dd"));
    return localView;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\cube\m.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
package com.xueqiu.android.message.a;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.d.a.b.f;
import com.xueqiu.android.common.a.d;
import com.xueqiu.android.message.model.IMGroup;
import java.util.ArrayList;

public final class p
  extends d<IMGroup>
{
  public p(Context paramContext)
  {
    super(paramContext, 2130903404);
  }
  
  public p(Context paramContext, int paramInt)
  {
    super(paramContext, paramInt);
  }
  
  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    paramViewGroup = super.getView(paramInt, paramView, paramViewGroup);
    Context localContext;
    if (paramViewGroup.getTag() == null)
    {
      paramView = new q();
      paramView.a = ((ImageView)paramViewGroup.findViewById(2131625320));
      paramView.b = ((TextView)paramViewGroup.findViewById(2131625321));
      paramView.c = ((LinearLayout)paramViewGroup.findViewById(2131624134));
      paramViewGroup.setTag(paramView);
      IMGroup localIMGroup = (IMGroup)this.b.get(paramInt);
      localContext = this.c;
      f.a().a(localIMGroup.getProfileImageUrl(), paramView.a);
      paramView.b.setText(localIMGroup.getName());
      if (paramView.c == null) {
        return paramViewGroup;
      }
      paramView.c.removeAllViews();
      int i = localIMGroup.getStar();
      paramInt = 1;
      label136:
      if (paramInt > 5) {
        return paramViewGroup;
      }
      if (i <= (paramInt - 1) * 20) {
        break label184;
      }
      paramView.c.addView(q.a(2130838075, localContext));
    }
    for (;;)
    {
      paramInt += 1;
      break label136;
      paramView = (q)paramViewGroup.getTag();
      break;
      label184:
      paramView.c.addView(q.a(2130838076, localContext));
    }
    return paramViewGroup;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\message\a\p.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
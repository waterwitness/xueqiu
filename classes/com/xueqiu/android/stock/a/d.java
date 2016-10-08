package com.xueqiu.android.stock.a;

import android.content.Context;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.xueqiu.android.common.widget.ag;
import com.xueqiu.android.stock.model.F10Table;

public final class d
  extends com.xueqiu.android.common.a.d<F10Table>
{
  private LayoutInflater e;
  private Context f;
  
  public d(Context paramContext)
  {
    super(paramContext);
    this.f = paramContext;
    this.e = LayoutInflater.from(this.f);
  }
  
  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    paramView = this.e.inflate(2130903330, paramViewGroup, false);
    paramViewGroup = new e(new e(this).h);
    paramViewGroup.a = paramView.findViewById(2131625064);
    paramViewGroup.b = ((TextView)paramView.findViewById(2131625065));
    paramViewGroup.c = ((TextView)paramView.findViewById(2131625066));
    paramViewGroup.d = ((TextView)paramView.findViewById(2131625067));
    paramViewGroup.e = ((ImageView)paramView.findViewById(2131625068));
    paramViewGroup.f = ((ViewGroup)paramView.findViewById(2131625070));
    paramViewGroup.g = paramView.findViewById(2131625069);
    F10Table localF10Table = (F10Table)getItem(paramInt);
    if (TextUtils.isEmpty(localF10Table.getTitle()))
    {
      paramViewGroup.a.setVisibility(8);
      paramViewGroup.g.setVisibility(8);
    }
    for (;;)
    {
      if (paramViewGroup.f.getChildCount() == 0)
      {
        ag localag = new ag(paramViewGroup.h.c);
        paramViewGroup.f.addView(localag);
        if (localF10Table.getRowdata() == null) {
          localF10Table.setRowdata(new String[0][]);
        }
        localag.setColumnsWidth(localF10Table.getWidth());
        localag.setHeadNames(localF10Table.getHeader());
        localag.setData(localF10Table.getRowdata());
        localag.setColumnsAlign(localF10Table.getAlign());
        localag.postInvalidate();
      }
      return paramView;
      paramViewGroup.b.setText(localF10Table.getTitle());
      if (TextUtils.isEmpty(localF10Table.getSubtitle()))
      {
        paramViewGroup.c.setVisibility(8);
        label286:
        if (!TextUtils.isEmpty(localF10Table.getTime())) {
          break label344;
        }
        paramViewGroup.d.setVisibility(8);
      }
      for (;;)
      {
        if (!TextUtils.isEmpty(localF10Table.getLink())) {
          break label359;
        }
        paramViewGroup.e.setVisibility(8);
        break;
        paramViewGroup.c.setText(localF10Table.getSubtitle());
        break label286;
        label344:
        paramViewGroup.d.setText(localF10Table.getTime());
      }
      label359:
      paramViewGroup.e.setVisibility(0);
      paramViewGroup.a.setOnClickListener(new e.1(paramViewGroup, localF10Table));
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\stock\a\d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
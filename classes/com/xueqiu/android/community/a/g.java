package com.xueqiu.android.community.a;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.TextView;
import com.xueqiu.android.base.i;
import com.xueqiu.android.base.r;
import com.xueqiu.android.base.util.ai;
import com.xueqiu.android.common.a.d;
import com.xueqiu.android.common.model.SNBEvent;
import com.xueqiu.android.common.q;
import com.xueqiu.android.community.model.LiveNews;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public final class g
  extends d<LiveNews>
{
  private DateFormat e = new SimpleDateFormat("HH:mm");
  
  public g(Context paramContext)
  {
    super(paramContext, 2130903163);
  }
  
  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    View localView = super.getView(paramInt, paramView, paramViewGroup);
    final LiveNews localLiveNews;
    int i;
    label158:
    label171:
    Object localObject;
    Calendar localCalendar;
    if (localView.getTag() == null)
    {
      paramView = new h();
      paramView.a = ((TextView)localView.findViewById(2131624442));
      paramView.b = ((TextView)localView.findViewById(2131624240));
      paramView.c = localView.findViewById(2131624469);
      paramView.d = localView.findViewById(2131624473);
      paramView.e = localView.findViewById(2131624472);
      localView.setTag(paramView);
      localLiveNews = (LiveNews)getItem(paramInt);
      paramView.a.setText(this.e.format(localLiveNews.getCreatedAt()));
      paramView.b.setText(ai.a(localLiveNews.getText(), this.c, false));
      if ((paramInt > 0) && (paramInt < getCount() - 1)) {
        break label376;
      }
      i = 0;
      if (i == 0) {
        break label452;
      }
      paramView.d.setVisibility(4);
      if (paramInt <= 0) {
        break label463;
      }
      localObject = ((LiveNews)getItem(paramInt)).getCreatedAt();
      paramViewGroup = Calendar.getInstance();
      paramViewGroup.setTime((Date)localObject);
      localObject = ((LiveNews)getItem(paramInt - 1)).getCreatedAt();
      localCalendar = Calendar.getInstance();
      localCalendar.setTime((Date)localObject);
      if (paramViewGroup.get(5) == localCalendar.get(5)) {
        break label463;
      }
      i = 1;
      label242:
      if (i == 0) {
        break label489;
      }
      paramView.c.setVisibility(0);
      paramViewGroup = ((LiveNews)getItem(paramInt)).getCreatedAt();
      localObject = Calendar.getInstance();
      ((Calendar)localObject).setTime(paramViewGroup);
      paramInt = ((Calendar)localObject).get(5);
      localObject = (TextView)paramView.c.findViewById(2131624470);
      if (paramInt <= 10) {
        break label469;
      }
      paramViewGroup = String.valueOf(paramInt);
      label310:
      ((TextView)localObject).setText(paramViewGroup);
      label316:
      if (!localLiveNews.isImportant()) {
        break label501;
      }
      paramView.e.setVisibility(0);
      paramView.b.setTextColor(r.a(2131558666));
    }
    for (;;)
    {
      paramView.b.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          if (!TextUtils.isEmpty(localLiveNews.getTarget())) {
            q.a(localLiveNews.getTarget(), g.this.c);
          }
          paramAnonymousView = new SNBEvent(1901, 1);
          paramAnonymousView.addProperty("page_id", String.valueOf(localLiveNews.getId()));
          i.a().a(paramAnonymousView);
        }
      });
      return localView;
      paramView = (h)localView.getTag();
      break;
      label376:
      localObject = ((LiveNews)getItem(paramInt)).getCreatedAt();
      paramViewGroup = Calendar.getInstance();
      paramViewGroup.setTime((Date)localObject);
      localObject = ((LiveNews)getItem(paramInt + 1)).getCreatedAt();
      localCalendar = Calendar.getInstance();
      localCalendar.setTime((Date)localObject);
      if (paramViewGroup.get(5) != localCalendar.get(5))
      {
        i = 1;
        break label158;
      }
      i = 0;
      break label158;
      label452:
      paramView.d.setVisibility(0);
      break label171;
      label463:
      i = 0;
      break label242;
      label469:
      paramViewGroup = "0" + paramInt;
      break label310;
      label489:
      paramView.c.setVisibility(8);
      break label316;
      label501:
      paramView.e.setVisibility(8);
      paramView.b.setTextColor(r.a(2131558668));
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\community\a\g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
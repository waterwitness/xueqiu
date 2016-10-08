package com.xueqiu.android.cube.a;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.emilsjolander.components.stickylistheaders.StickyListHeadersAdapter;
import java.util.Iterator;
import java.util.List;

public final class p
  extends BaseAdapter
  implements StickyListHeadersAdapter
{
  private Context a;
  private List<q> b;
  private LayoutInflater c;
  
  public p(Context paramContext, List<q> paramList)
  {
    this.a = paramContext;
    this.b = paramList;
    this.c = LayoutInflater.from(paramContext);
  }
  
  public final int getCount()
  {
    Iterator localIterator = this.b.iterator();
    int i = 0;
    if (localIterator.hasNext())
    {
      q localq = (q)localIterator.next();
      if (localq.b.size() <= 0) {
        break label60;
      }
      i = localq.b.size() + i;
    }
    label60:
    for (;;)
    {
      break;
      return i;
    }
  }
  
  public final long getHeaderId(int paramInt)
  {
    int j = 0;
    int i = paramInt;
    paramInt = j;
    while (i >= ((q)this.b.get(paramInt)).b.size())
    {
      i -= ((q)this.b.get(paramInt)).b.size();
      paramInt += 1;
    }
    return ((q)this.b.get(paramInt)).hashCode();
  }
  
  public final View getHeaderView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (paramView == null) {
      paramView = this.c.inflate(2130903244, paramViewGroup, false);
    }
    for (;;)
    {
      paramViewGroup = (TextView)paramView;
      int j = 0;
      int i = paramInt;
      paramInt = j;
      while (i >= ((q)this.b.get(paramInt)).b.size())
      {
        i -= ((q)this.b.get(paramInt)).b.size();
        paramInt += 1;
      }
      paramViewGroup.setText(((q)this.b.get(paramInt)).a);
      return paramView;
    }
  }
  
  public final Object getItem(int paramInt)
  {
    int j = 0;
    int i = paramInt;
    paramInt = j;
    while (i >= ((q)this.b.get(paramInt)).b.size())
    {
      i -= ((q)this.b.get(paramInt)).b.size();
      paramInt += 1;
    }
    return ((q)this.b.get(paramInt)).b.get(i);
  }
  
  public final long getItemId(int paramInt)
  {
    return 0L;
  }
  
  public final View getView(final int paramInt, View paramView, final ViewGroup paramViewGroup)
  {
    View localView = paramView;
    if (paramView == null)
    {
      localView = this.c.inflate(2130903277, paramViewGroup, false);
      paramView = new t();
      paramView.a = ((ImageView)localView.findViewById(2131624096));
      paramView.b = ((TextView)localView.findViewById(2131624097));
      paramView.c = localView.findViewById(2131624246);
      localView.setTag(paramView);
    }
    paramView = (t)localView.getTag();
    paramViewGroup = (r)getItem(paramInt);
    paramView.a.setImageResource(paramViewGroup.a);
    paramView.b.setText(paramViewGroup.b);
    int i = 0;
    int j = paramInt;
    while (j >= ((q)this.b.get(i)).b.size())
    {
      j -= ((q)this.b.get(i)).b.size();
      i += 1;
    }
    if ((j > 0) && (j == ((q)this.b.get(i)).b.size() - 1))
    {
      i = 1;
      if (i == 0) {
        break label257;
      }
      paramView.c.setVisibility(8);
    }
    for (;;)
    {
      localView.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView) {}
      });
      return localView;
      i = 0;
      break;
      label257:
      paramView.c.setVisibility(0);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\cube\a\p.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
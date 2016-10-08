package com.xueqiu.android.message.a;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.d.a.b.d;
import com.d.a.b.e;
import com.d.a.b.f;
import com.emilsjolander.components.stickylistheaders.StickyListHeadersAdapter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;

public final class u
  extends BaseAdapter
  implements StickyListHeadersAdapter
{
  public List<y> a;
  private int b;
  private int c;
  private int d;
  private int e;
  private int f;
  private int g;
  private Context h;
  private LayoutInflater i;
  private f j;
  private d k;
  
  public u(Context paramContext, f paramf)
  {
    this.h = paramContext;
    this.j = paramf;
    this.b = 2130903244;
    this.c = 2130903410;
    this.g = 2131624240;
    this.e = 2131625296;
    this.d = 2131624097;
    this.f = 2131624457;
    this.i = LayoutInflater.from(this.h);
    this.a = new ArrayList();
    paramContext = new e();
    paramContext.a = 2130838664;
    paramContext.b = 2130838664;
    paramContext.c = 2130838664;
    paramContext.h = true;
    paramContext = paramContext.a();
    paramContext.m = false;
    this.k = paramContext.b();
  }
  
  private y a(int paramInt)
  {
    Iterator localIterator = this.a.iterator();
    y localy;
    for (int m = 0; localIterator.hasNext(); m = localy.a.size() + m)
    {
      localy = (y)localIterator.next();
      if ((paramInt >= m) && (paramInt < localy.a.size() + m)) {
        return localy;
      }
    }
    return (y)this.a.get(this.a.size() - 1);
  }
  
  public final void a(List<y> paramList)
  {
    Collections.sort(paramList, new Comparator() {});
    this.a = paramList;
  }
  
  public final int getCount()
  {
    Iterator localIterator = this.a.iterator();
    for (int m = 0; localIterator.hasNext(); m = ((y)localIterator.next()).a.size() + m) {}
    return m;
  }
  
  public final long getHeaderId(int paramInt)
  {
    return a(paramInt).c;
  }
  
  public final View getHeaderView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    View localView = paramView;
    if (paramView == null)
    {
      localView = this.i.inflate(this.b, paramViewGroup, false);
      paramView = new v(this, (byte)0);
      paramView.a = ((TextView)localView.findViewById(this.g));
      localView.setTag(paramView);
    }
    paramView = a(paramInt);
    ((v)localView.getTag()).a.setText(paramView.b);
    return localView;
  }
  
  public final Object getItem(int paramInt)
  {
    Iterator localIterator = this.a.iterator();
    while (localIterator.hasNext())
    {
      y localy = (y)localIterator.next();
      if ((paramInt >= 0) && (paramInt < localy.a.size())) {
        return localy.a.get(paramInt);
      }
      paramInt -= localy.a.size();
    }
    return null;
  }
  
  public final long getItemId(int paramInt)
  {
    return paramInt;
  }
  
  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    View localView = paramView;
    if (paramView == null)
    {
      localView = this.i.inflate(this.c, paramViewGroup, false);
      paramView = new w(this, (byte)0);
      paramView.c = ((ImageView)localView.findViewById(this.e));
      paramView.a = ((TextView)localView.findViewById(this.d));
      paramView.b = ((TextView)localView.findViewById(this.f));
      localView.setTag(paramView);
    }
    paramView = (w)localView.getTag();
    paramViewGroup = (x)getItem(paramInt);
    if (paramViewGroup != null)
    {
      this.j.a(paramViewGroup.a, paramView.c, this.k);
      paramView.a.setText(paramViewGroup.b);
      paramView.b.setText(paramViewGroup.c);
    }
    return localView;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\message\a\u.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
package com.xueqiu.android.stock.a;

import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.TextView;
import com.xueqiu.android.stock.model.Portfolio;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class n
  extends BaseAdapter
{
  public List<Portfolio> a;
  public o b;
  public SparseArray<Portfolio> c = new SparseArray();
  
  public final List<Portfolio> a()
  {
    ArrayList localArrayList = new ArrayList();
    int i = 0;
    while (i < this.c.size())
    {
      int j = this.c.keyAt(i);
      localArrayList.add(this.c.get(j));
      i += 1;
    }
    return localArrayList;
  }
  
  public final void a(List<Portfolio> paramList)
  {
    this.c.clear();
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      Portfolio localPortfolio = (Portfolio)paramList.next();
      this.c.put(localPortfolio.getId(), localPortfolio);
    }
  }
  
  public final int getCount()
  {
    if (this.a != null) {
      return this.a.size() + 1;
    }
    return 1;
  }
  
  public final Object getItem(int paramInt)
  {
    if (paramInt > 0) {
      return this.a.get(paramInt - 1);
    }
    return null;
  }
  
  public final long getItemId(int paramInt)
  {
    return 0L;
  }
  
  public final View getView(final int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    View localView = paramView;
    if (paramView == null)
    {
      localView = LayoutInflater.from(paramViewGroup.getContext()).inflate(2130903231, paramViewGroup, false);
      paramView = new p(this);
      paramView.a = ((TextView)localView.findViewById(2131624716));
      paramView.b = ((CheckBox)localView.findViewById(2131624715));
      paramView.c = ((ImageView)localView.findViewById(2131624096));
      localView.setTag(paramView);
    }
    localView.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        if (n.a(n.this) != null) {
          n.a(n.this).a(paramInt);
        }
      }
    });
    paramView = (p)localView.getTag();
    if (paramInt > 0)
    {
      paramViewGroup = (Portfolio)getItem(paramInt);
      paramView.a.setText(paramViewGroup.getName());
      CheckBox localCheckBox = paramView.b;
      if (this.c.get(paramViewGroup.getId()) != null) {}
      for (boolean bool = true;; bool = false)
      {
        localCheckBox.setChecked(bool);
        paramView.c.setVisibility(4);
        paramView.b.setVisibility(0);
        return localView;
      }
    }
    paramView.a.setText(2131165386);
    paramView.c.setVisibility(0);
    paramView.b.setVisibility(4);
    return localView;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\stock\a\n.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
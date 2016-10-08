package com.xueqiu.android.common.a;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.List;

public final class k
  extends BaseAdapter
{
  public List<String> a;
  private LayoutInflater b;
  
  public k(Context paramContext)
  {
    this.b = LayoutInflater.from(paramContext);
    this.a = new ArrayList();
  }
  
  public final void a(String[] paramArrayOfString)
  {
    if ((paramArrayOfString != null) && (paramArrayOfString.length > 0))
    {
      this.a.clear();
      int j = paramArrayOfString.length;
      int i = 0;
      while (i < j)
      {
        String str = paramArrayOfString[i];
        this.a.add(str);
        i += 1;
      }
    }
  }
  
  public final int getCount()
  {
    return this.a.size();
  }
  
  public final Object getItem(int paramInt)
  {
    return this.a.get(paramInt);
  }
  
  public final long getItemId(int paramInt)
  {
    return 0L;
  }
  
  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    paramViewGroup = paramView;
    if (paramView == null)
    {
      paramViewGroup = this.b.inflate(2130903250, null);
      paramView = new l(this);
      paramView.a = ((TextView)paramViewGroup.findViewById(2131624776));
      paramViewGroup.setTag(paramView);
    }
    paramView = (l)paramViewGroup.getTag();
    String str = (String)getItem(paramInt);
    paramView.a.setText(str);
    return paramViewGroup;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\a\k.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
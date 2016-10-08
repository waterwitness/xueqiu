package com.xueqiu.android.common.a;

import android.content.Context;
import android.util.Pair;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.SectionIndexer;
import android.widget.TextView;
import com.xueqiu.android.common.model.IAlphabetSortable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;

public final class a
  extends m<String, IAlphabetSortable>
  implements SectionIndexer
{
  protected int a = 0;
  protected Context b = null;
  private HashMap<String, Integer> c;
  private String[] d;
  
  private a(Context paramContext, List<Pair<String, List<IAlphabetSortable>>> paramList)
  {
    super(paramList);
    this.b = paramContext;
    this.a = 2130903448;
    b();
  }
  
  public a(Context paramContext, List<Pair<String, List<IAlphabetSortable>>> paramList, byte paramByte)
  {
    this(paramContext, paramList);
  }
  
  private void b()
  {
    int j = 0;
    this.c = new HashMap();
    int i = 0;
    if (i < getCount())
    {
      localObject = (IAlphabetSortable)getItem(i);
      if (localObject != null) {
        if ((((IAlphabetSortable)localObject).getAlphabets() == null) || (((IAlphabetSortable)localObject).getAlphabets().length() <= 0)) {
          break label103;
        }
      }
      label103:
      for (localObject = ((IAlphabetSortable)localObject).getAlphabets().substring(0, 1).toUpperCase();; localObject = " ")
      {
        if (!this.c.containsKey(localObject)) {
          this.c.put(localObject, Integer.valueOf(i));
        }
        i += 1;
        break;
      }
    }
    Object localObject = new ArrayList(this.c.keySet());
    Collections.sort((List)localObject, new Comparator() {});
    this.d = new String[((ArrayList)localObject).size()];
    i = j;
    while (i < ((ArrayList)localObject).size())
    {
      this.d[i] = ((String)((ArrayList)localObject).get(i));
      i += 1;
    }
  }
  
  public final View a(int paramInt1, int paramInt2, View paramView)
  {
    b localb;
    if (paramView == null)
    {
      paramView = LayoutInflater.from(this.b).inflate(this.a, null);
      localb = new b(this, (byte)0);
      localb.a = ((TextView)paramView.findViewById(2131624240));
      paramView.setTag(localb);
    }
    for (;;)
    {
      IAlphabetSortable localIAlphabetSortable = (IAlphabetSortable)a(paramInt1, paramInt2);
      localb.a.setText(localIAlphabetSortable.showName());
      return paramView;
      localb = (b)paramView.getTag();
    }
  }
  
  public final View a(int paramInt, View paramView)
  {
    c localc;
    if (paramView == null)
    {
      localc = new c(this, (byte)0);
      paramView = LayoutInflater.from(this.b).inflate(2130903447, null);
      localc.a = ((TextView)paramView.findViewById(2131624240));
      paramView.setTag(localc);
    }
    for (;;)
    {
      String str2 = (String)((Pair)super.a().get(paramInt)).first;
      String str1 = str2;
      if (str2 == null) {
        str1 = "匹配结果";
      }
      localc.a.setText(str1);
      return paramView;
      localc = (c)paramView.getTag();
    }
  }
  
  public final int getPositionForSection(int paramInt)
  {
    if (this.c != null) {
      return ((Integer)this.c.get(this.d[paramInt])).intValue();
    }
    return 0;
  }
  
  public final int getSectionForPosition(int paramInt)
  {
    return 1;
  }
  
  public final Object[] getSections()
  {
    return this.d;
  }
  
  public final void notifyDataSetChanged()
  {
    super.notifyDataSetChanged();
    b();
  }
  
  public final void notifyDataSetInvalidated()
  {
    super.notifyDataSetInvalidated();
    b();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\a\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
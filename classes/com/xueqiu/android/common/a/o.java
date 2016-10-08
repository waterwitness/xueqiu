package com.xueqiu.android.common.a;

import android.text.TextUtils;
import android.util.Pair;
import android.widget.Filter;
import android.widget.Filter.FilterResults;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

final class o
  extends Filter
{
  private o(m paramm) {}
  
  protected final Filter.FilterResults performFiltering(CharSequence paramCharSequence)
  {
    if (TextUtils.isEmpty(paramCharSequence)) {
      return null;
    }
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = m.a(this.a).iterator();
    while (localIterator.hasNext())
    {
      Pair localPair = (Pair)localIterator.next();
      int i = 0;
      while (i < ((List)localPair.second).size())
      {
        Object localObject = ((List)localPair.second).get(i);
        if (localObject.toString().contains(paramCharSequence)) {
          localArrayList.add(localObject);
        }
        i += 1;
      }
    }
    paramCharSequence = new Filter.FilterResults();
    paramCharSequence.values = localArrayList;
    paramCharSequence.count = localArrayList.size();
    return paramCharSequence;
  }
  
  protected final void publishResults(CharSequence paramCharSequence, Filter.FilterResults paramFilterResults)
  {
    if (paramFilterResults != null)
    {
      paramCharSequence = Pair.create(null, (List)paramFilterResults.values);
      m.a(this.a, new ArrayList());
      m.b(this.a).add(paramCharSequence);
    }
    for (;;)
    {
      this.a.notifyDataSetChanged();
      return;
      m.a(this.a, null);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\a\o.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
package com.xueqiu.android.common.widget;

import android.widget.ArrayAdapter;
import java.util.HashMap;
import java.util.Map;

public final class i
{
  Map<Integer, Integer> a = new HashMap();
  private ArrayAdapter b;
  
  public i(ArrayAdapter paramArrayAdapter)
  {
    this.b = paramArrayAdapter;
  }
  
  public final i a(int paramInt, String paramString)
  {
    this.a.put(Integer.valueOf(this.b.getCount()), Integer.valueOf(paramInt));
    this.b.add(paramString);
    this.b.notifyDataSetChanged();
    return this;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\widget\i.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
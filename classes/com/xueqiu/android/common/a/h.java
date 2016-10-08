package com.xueqiu.android.common.a;

import android.widget.BaseAdapter;
import android.widget.SectionIndexer;
import com.emilsjolander.components.stickylistheaders.StickyListHeadersAdapter;
import java.util.ArrayList;
import java.util.List;

public abstract class h
  extends BaseAdapter
  implements SectionIndexer, StickyListHeadersAdapter
{
  public List<Object> a = new ArrayList();
  public List<String> b = new ArrayList();
  public List<Integer> c = new ArrayList();
  
  public int getCount()
  {
    if (this.a != null) {
      return this.a.size();
    }
    return 0;
  }
  
  public long getHeaderId(int paramInt)
  {
    return getSectionForPosition(paramInt);
  }
  
  public Object getItem(int paramInt)
  {
    if ((this.a != null) && (this.a.size() > paramInt) && (paramInt >= 0)) {
      return this.a.get(paramInt);
    }
    return null;
  }
  
  public long getItemId(int paramInt)
  {
    return paramInt;
  }
  
  public int getPositionForSection(int paramInt)
  {
    return ((Integer)this.c.get(paramInt)).intValue();
  }
  
  public int getSectionForPosition(int paramInt)
  {
    int i = 0;
    while (i < this.c.size())
    {
      if (paramInt < ((Integer)this.c.get(i)).intValue()) {
        return i - 1;
      }
      i += 1;
    }
    return this.c.size() - 1;
  }
  
  public Object[] getSections()
  {
    return this.b.toArray();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\a\h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
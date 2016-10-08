package com.xueqiu.android.message.database.comparator;

import java.nio.charset.Charset;
import java.util.Comparator;

public class StringComparator
  implements Comparator
{
  public int compare(Object paramObject1, Object paramObject2)
  {
    return new String((byte[])paramObject1, Charset.forName("UTF-8")).compareTo(new String((byte[])paramObject2, Charset.forName("UTF-8")));
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\message\database\comparator\StringComparator.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
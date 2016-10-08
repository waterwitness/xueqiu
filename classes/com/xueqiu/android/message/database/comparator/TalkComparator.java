package com.xueqiu.android.message.database.comparator;

import com.xueqiu.android.message.database.key.TalkKey;
import java.util.Comparator;

public class TalkComparator
  implements Comparator
{
  public int compare(Object paramObject1, Object paramObject2)
  {
    paramObject1 = new TalkKey((byte[])paramObject1);
    paramObject2 = new TalkKey((byte[])paramObject2);
    if ((((TalkKey)paramObject1).isGroup) && (!((TalkKey)paramObject2).isGroup)) {}
    do
    {
      return -1;
      if ((!((TalkKey)paramObject1).isGroup) && (((TalkKey)paramObject2).isGroup)) {
        return 1;
      }
    } while (((TalkKey)paramObject1).id < ((TalkKey)paramObject2).id);
    if (((TalkKey)paramObject1).id > ((TalkKey)paramObject2).id) {
      return 1;
    }
    return 0;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\message\database\comparator\TalkComparator.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
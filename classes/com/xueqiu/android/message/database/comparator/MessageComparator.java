package com.xueqiu.android.message.database.comparator;

import com.xueqiu.android.message.database.key.MessageKey;
import java.util.Comparator;

public class MessageComparator
  implements Comparator
{
  public int compare(Object paramObject1, Object paramObject2)
  {
    paramObject1 = new MessageKey((byte[])paramObject1);
    paramObject2 = new MessageKey((byte[])paramObject2);
    if ((((MessageKey)paramObject1).isGroup) && (!((MessageKey)paramObject2).isGroup)) {}
    do
    {
      do
      {
        do
        {
          do
          {
            return -1;
            if ((!((MessageKey)paramObject1).isGroup) && (((MessageKey)paramObject2).isGroup)) {
              return 1;
            }
            if (((MessageKey)paramObject1).talkId < ((MessageKey)paramObject2).talkId) {
              return 1;
            }
          } while ((((MessageKey)paramObject1).talkId > ((MessageKey)paramObject2).talkId) || ((((MessageKey)paramObject1).messageId == 0L) && (((MessageKey)paramObject2).messageId != 0L)));
          if ((((MessageKey)paramObject1).messageId != 0L) && (((MessageKey)paramObject2).messageId == 0L)) {
            return 1;
          }
          if ((((MessageKey)paramObject1).messageId != 0L) || (((MessageKey)paramObject2).messageId != 0L)) {
            break;
          }
          if (((MessageKey)paramObject1).sequenceId < ((MessageKey)paramObject2).sequenceId) {
            return 1;
          }
        } while (((MessageKey)paramObject1).sequenceId > ((MessageKey)paramObject2).sequenceId);
        if (((MessageKey)paramObject1).messageId < ((MessageKey)paramObject2).messageId) {
          return 1;
        }
      } while (((MessageKey)paramObject1).messageId > ((MessageKey)paramObject2).messageId);
      if (((MessageKey)paramObject1).sequenceId < ((MessageKey)paramObject2).sequenceId) {
        return 1;
      }
    } while (((MessageKey)paramObject1).sequenceId > ((MessageKey)paramObject2).sequenceId);
    return 0;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\message\database\comparator\MessageComparator.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
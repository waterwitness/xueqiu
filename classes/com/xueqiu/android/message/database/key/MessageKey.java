package com.xueqiu.android.message.database.key;

import com.xueqiu.android.message.model.Message;
import java.nio.ByteBuffer;

public class MessageKey
{
  public boolean isGroup;
  public long messageId;
  public long sequenceId;
  public long talkId;
  
  public MessageKey(long paramLong1, long paramLong2, long paramLong3, boolean paramBoolean)
  {
    this.messageId = paramLong1;
    this.sequenceId = paramLong2;
    this.talkId = paramLong3;
    this.isGroup = paramBoolean;
  }
  
  public MessageKey(Message paramMessage)
  {
    this.messageId = paramMessage.getId();
    this.sequenceId = paramMessage.getSequence();
    if (paramMessage.isFromGroup())
    {
      this.talkId = paramMessage.getFromId();
      this.isGroup = true;
      return;
    }
    if (paramMessage.isToGroup())
    {
      this.talkId = paramMessage.getToId();
      this.isGroup = true;
      return;
    }
    if (paramMessage.isByMyself())
    {
      this.talkId = paramMessage.getToId();
      this.isGroup = false;
      return;
    }
    this.talkId = paramMessage.getFromId();
    this.isGroup = false;
  }
  
  public MessageKey(byte[] paramArrayOfByte)
  {
    paramArrayOfByte = ByteBuffer.wrap(paramArrayOfByte);
    this.messageId = paramArrayOfByte.getLong();
    this.sequenceId = paramArrayOfByte.getLong();
    this.talkId = paramArrayOfByte.getLong();
    if ((paramArrayOfByte.get() & 0x1) != 0) {}
    for (boolean bool = true;; bool = false)
    {
      this.isGroup = bool;
      return;
    }
  }
  
  public boolean belongsSameTalk(MessageKey paramMessageKey)
  {
    return (this.talkId == paramMessageKey.talkId) && (this.isGroup == paramMessageKey.isGroup);
  }
  
  public MessageKey copy()
  {
    return new MessageKey(this.messageId, this.sequenceId, this.talkId, this.isGroup);
  }
  
  public boolean equals(Object paramObject)
  {
    if ((paramObject == null) || (!(paramObject instanceof MessageKey))) {}
    do
    {
      return false;
      paramObject = (MessageKey)paramObject;
    } while ((((MessageKey)paramObject).isGroup != this.isGroup) || (((MessageKey)paramObject).talkId != this.talkId) || (((MessageKey)paramObject).sequenceId != this.sequenceId) || (((MessageKey)paramObject).messageId != this.messageId));
    return true;
  }
  
  public byte[] getBytes()
  {
    ByteBuffer localByteBuffer = ByteBuffer.allocate(25);
    localByteBuffer.putLong(this.messageId);
    localByteBuffer.putLong(this.sequenceId);
    localByteBuffer.putLong(this.talkId);
    if (this.isGroup) {}
    for (int i = 1;; i = 0)
    {
      localByteBuffer.put((byte)i);
      return localByteBuffer.array();
    }
  }
  
  public int hashCode()
  {
    return Long.valueOf(this.sequenceId).hashCode() * 31 + Long.valueOf(this.sequenceId).hashCode() * 47 + Long.valueOf(this.messageId).hashCode() * 53 + Boolean.valueOf(this.isGroup).hashCode() * 79;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\message\database\key\MessageKey.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
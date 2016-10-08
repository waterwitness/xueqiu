package com.xueqiu.android.message.database.key;

import java.nio.ByteBuffer;

public class TalkKey
{
  public long id;
  public boolean isGroup;
  
  public TalkKey(long paramLong, boolean paramBoolean)
  {
    this.isGroup = paramBoolean;
    this.id = paramLong;
  }
  
  public TalkKey(byte[] paramArrayOfByte)
  {
    paramArrayOfByte = ByteBuffer.wrap(paramArrayOfByte);
    if (paramArrayOfByte.get() != 0) {}
    for (boolean bool = true;; bool = false)
    {
      this.isGroup = bool;
      this.id = paramArrayOfByte.getLong();
      return;
    }
  }
  
  public boolean equals(Object paramObject)
  {
    if ((paramObject == null) || (!(paramObject instanceof TalkKey))) {
      return false;
    }
    return (this.isGroup == ((TalkKey)paramObject).isGroup) && (this.id == ((TalkKey)paramObject).id);
  }
  
  public byte[] getBytes()
  {
    ByteBuffer localByteBuffer = ByteBuffer.allocate(9);
    if (this.isGroup) {}
    for (int i = 1;; i = 0)
    {
      localByteBuffer.put((byte)i);
      localByteBuffer.putLong(this.id);
      return localByteBuffer.array();
    }
  }
  
  public int hashCode()
  {
    return Boolean.valueOf(this.isGroup).hashCode() + Long.valueOf(this.id).hashCode() * 31;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\message\database\key\TalkKey.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
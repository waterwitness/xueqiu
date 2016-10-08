package com.snowballfinance.messageplatform.data;

import com.snowballfinance.messageplatform.a.a.d;
import com.snowballfinance.messageplatform.a.a.e;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.Serializable;

public class MessageSessionExt
  implements Serializable
{
  private static final int BINARY_LENGTH = 25;
  private static final long serialVersionUID = 5292186083601461095L;
  private Long ownerId;
  private Boolean targetGroup;
  private Long targetId;
  private Long targetLastReadTimestamp;
  
  static
  {
    if (!MessageSessionExt.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }
  
  public static MessageSessionExt decodeMessageSessionExt(d paramd)
  {
    boolean bool = true;
    MessageSessionExt localMessageSessionExt = new MessageSessionExt();
    int i = paramd.h();
    if (i >= 25)
    {
      localMessageSessionExt.setOwnerId(Long.valueOf(paramd.d()));
      localMessageSessionExt.setTargetId(Long.valueOf(paramd.d()));
      if (paramd.a() != 1) {
        break label88;
      }
    }
    for (;;)
    {
      localMessageSessionExt.setTargetGroup(Boolean.valueOf(bool));
      localMessageSessionExt.setTargetLastReadTimestamp(Long.valueOf(paramd.d()));
      i -= 25;
      if (i > 0) {
        paramd.a(new byte[i]);
      }
      return localMessageSessionExt;
      label88:
      bool = false;
    }
  }
  
  public MessageSessionExt clone()
  {
    try
    {
      Object localObject = new e();
      encodeMessageSessionExt((e)localObject);
      byte[] arrayOfByte = ((e)localObject).toByteArray();
      ((e)localObject).close();
      localObject = decodeMessageSessionExt(new d(new ByteArrayInputStream(arrayOfByte)));
      return (MessageSessionExt)localObject;
    }
    catch (IOException localIOException) {}
    return null;
  }
  
  public void encodeMessageSessionExt(e parame)
  {
    assert (this.ownerId != null);
    assert (this.targetId != null);
    parame.d(25);
    parame.a(this.ownerId.longValue());
    parame.a(this.targetId.longValue());
    int i;
    if ((this.targetGroup != null) && (this.targetGroup.booleanValue()))
    {
      i = 1;
      parame.a(i);
      if (this.targetLastReadTimestamp == null) {
        break label120;
      }
    }
    label120:
    for (long l = this.targetLastReadTimestamp.longValue();; l = 0L)
    {
      parame.a(l);
      return;
      i = 0;
      break;
    }
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if ((paramObject == null) || (getClass() != paramObject.getClass())) {
        return false;
      }
      paramObject = (MessageSessionExt)paramObject;
      if (this.ownerId != null)
      {
        if (this.ownerId.equals(((MessageSessionExt)paramObject).ownerId)) {}
      }
      else {
        while (((MessageSessionExt)paramObject).ownerId != null) {
          return false;
        }
      }
      if (this.targetGroup != null)
      {
        if (this.targetGroup.equals(((MessageSessionExt)paramObject).targetGroup)) {}
      }
      else {
        while (((MessageSessionExt)paramObject).targetGroup != null) {
          return false;
        }
      }
      if (this.targetId == null) {
        break;
      }
    } while (this.targetId.equals(((MessageSessionExt)paramObject).targetId));
    for (;;)
    {
      return false;
      if (((MessageSessionExt)paramObject).targetId == null) {
        break;
      }
    }
  }
  
  public Long getOwnerId()
  {
    return this.ownerId;
  }
  
  public Boolean getTargetGroup()
  {
    return this.targetGroup;
  }
  
  public Long getTargetId()
  {
    return this.targetId;
  }
  
  public Long getTargetLastReadTimestamp()
  {
    return this.targetLastReadTimestamp;
  }
  
  public int hashCode()
  {
    int k = 0;
    int i;
    if (this.targetId != null)
    {
      i = this.targetId.hashCode();
      if (this.targetGroup == null) {
        break label64;
      }
    }
    label64:
    for (int j = this.targetGroup.hashCode();; j = 0)
    {
      if (this.ownerId != null) {
        k = this.ownerId.hashCode();
      }
      return (j + i * 31) * 31 + k;
      i = 0;
      break;
    }
  }
  
  public void setOwnerId(Long paramLong)
  {
    this.ownerId = paramLong;
  }
  
  public void setTargetGroup(Boolean paramBoolean)
  {
    this.targetGroup = paramBoolean;
  }
  
  public void setTargetId(Long paramLong)
  {
    this.targetId = paramLong;
  }
  
  public void setTargetLastReadTimestamp(Long paramLong)
  {
    this.targetLastReadTimestamp = paramLong;
  }
  
  public String toString()
  {
    return "MessageSessionExt{targetId=" + this.targetId + ", targetGroup=" + this.targetGroup + ", ownerId=" + this.ownerId + ", targetLastReadTimestamp=" + this.targetLastReadTimestamp + '}';
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\snowballfinance\messageplatform\data\MessageSessionExt.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
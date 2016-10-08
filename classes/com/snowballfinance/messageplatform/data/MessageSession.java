package com.snowballfinance.messageplatform.data;

import com.snowballfinance.messageplatform.a.a.d;
import com.snowballfinance.messageplatform.a.a.e;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.Serializable;

public class MessageSession
  implements Serializable
{
  private static final long serialVersionUID = -6333735381315944757L;
  private Boolean activeFlag;
  private Boolean collapsed;
  private Boolean notificationFlag;
  private Long ownerId;
  private User ownerRef;
  private Boolean stickyFlag;
  private String summary;
  private Boolean targetGroup;
  private Group targetGroupRef;
  private Long targetId;
  private User targetUserRef;
  private Long timestamp;
  private Integer unreadCount;
  
  static
  {
    if (!MessageSession.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }
  
  public static MessageSession decodeMessageSession(d paramd)
  {
    boolean bool2 = true;
    MessageSession localMessageSession = new MessageSession();
    localMessageSession.setOwnerId(Long.valueOf(paramd.d()));
    localMessageSession.setTargetId(Long.valueOf(paramd.d()));
    if (paramd.a() == 1)
    {
      bool1 = true;
      localMessageSession.setTargetGroup(Boolean.valueOf(bool1));
      localMessageSession.setUnreadCount(Integer.valueOf(paramd.b()));
      localMessageSession.setSummary(paramd.g());
      localMessageSession.setTimestamp(Long.valueOf(paramd.d()));
      if (paramd.a() != 1) {
        break label159;
      }
      bool1 = true;
      label90:
      localMessageSession.setStickyFlag(Boolean.valueOf(bool1));
      if (paramd.a() != 1) {
        break label164;
      }
      bool1 = true;
      label108:
      localMessageSession.setNotificationFlag(Boolean.valueOf(bool1));
      if (paramd.a() != 1) {
        break label169;
      }
      bool1 = true;
      label126:
      localMessageSession.setActiveFlag(Boolean.valueOf(bool1));
      if (paramd.a() != 1) {
        break label174;
      }
    }
    label159:
    label164:
    label169:
    label174:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      localMessageSession.setCollapsed(Boolean.valueOf(bool1));
      return localMessageSession;
      bool1 = false;
      break;
      bool1 = false;
      break label90;
      bool1 = false;
      break label108;
      bool1 = false;
      break label126;
    }
  }
  
  public MessageSession clone()
  {
    try
    {
      Object localObject = new e();
      encodeMessageSession((e)localObject);
      byte[] arrayOfByte = ((e)localObject).toByteArray();
      ((e)localObject).close();
      localObject = decodeMessageSession(new d(new ByteArrayInputStream(arrayOfByte)));
      return (MessageSession)localObject;
    }
    catch (IOException localIOException) {}
    return null;
  }
  
  public Object description()
  {
    return "owner=" + this.ownerId + "|target=" + this.targetId + "|group=" + this.targetGroup + "|active=" + this.activeFlag + "|notification=" + this.notificationFlag + "|sticky=" + this.stickyFlag + "|ts=" + this.timestamp + "|collapsed=" + this.collapsed + "|summary=" + this.summary + "|unread=" + this.unreadCount;
  }
  
  public void encodeMessageSession(e parame)
  {
    int j = 1;
    assert (this.ownerId != null);
    assert (this.targetId != null);
    parame.a(this.ownerId.longValue());
    parame.a(this.targetId.longValue());
    label106:
    String str;
    label123:
    long l;
    if ((this.targetGroup != null) && (this.targetGroup.booleanValue()))
    {
      i = 1;
      parame.a(i);
      if (this.unreadCount == null) {
        break label253;
      }
      i = this.unreadCount.intValue();
      parame.b(i);
      if (this.summary == null) {
        break label258;
      }
      str = this.summary;
      parame.a(str);
      if (this.timestamp == null) {
        break label264;
      }
      l = this.timestamp.longValue();
      label144:
      parame.a(l);
      if ((this.stickyFlag == null) || (!this.stickyFlag.booleanValue())) {
        break label270;
      }
      i = 1;
      label169:
      parame.a(i);
      if ((this.notificationFlag == null) || (!this.notificationFlag.booleanValue())) {
        break label275;
      }
      i = 1;
      label193:
      parame.a(i);
      if ((this.activeFlag == null) || (!this.activeFlag.booleanValue())) {
        break label280;
      }
      i = 1;
      label217:
      parame.a(i);
      if ((this.collapsed == null) || (!this.collapsed.booleanValue())) {
        break label285;
      }
    }
    label253:
    label258:
    label264:
    label270:
    label275:
    label280:
    label285:
    for (int i = j;; i = 0)
    {
      parame.a(i);
      return;
      i = 0;
      break;
      i = 0;
      break label106;
      str = "";
      break label123;
      l = 0L;
      break label144;
      i = 0;
      break label169;
      i = 0;
      break label193;
      i = 0;
      break label217;
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
      paramObject = (MessageSession)paramObject;
      if (this.ownerId != null)
      {
        if (this.ownerId.equals(((MessageSession)paramObject).ownerId)) {}
      }
      else {
        while (((MessageSession)paramObject).ownerId != null) {
          return false;
        }
      }
      if (this.targetGroup != null)
      {
        if (this.targetGroup.equals(((MessageSession)paramObject).targetGroup)) {}
      }
      else {
        while (((MessageSession)paramObject).targetGroup != null) {
          return false;
        }
      }
      if (this.targetId == null) {
        break;
      }
    } while (this.targetId.equals(((MessageSession)paramObject).targetId));
    for (;;)
    {
      return false;
      if (((MessageSession)paramObject).targetId == null) {
        break;
      }
    }
  }
  
  public Boolean getActiveFlag()
  {
    return this.activeFlag;
  }
  
  public Boolean getCollapsed()
  {
    return this.collapsed;
  }
  
  public Boolean getNotificationFlag()
  {
    return this.notificationFlag;
  }
  
  public Long getOwnerId()
  {
    return this.ownerId;
  }
  
  public User getOwnerRef()
  {
    return this.ownerRef;
  }
  
  public Boolean getStickyFlag()
  {
    return this.stickyFlag;
  }
  
  public String getSummary()
  {
    return this.summary;
  }
  
  public Boolean getTargetGroup()
  {
    return this.targetGroup;
  }
  
  public Group getTargetGroupRef()
  {
    return this.targetGroupRef;
  }
  
  public Long getTargetId()
  {
    return this.targetId;
  }
  
  public User getTargetUserRef()
  {
    return this.targetUserRef;
  }
  
  public Long getTimestamp()
  {
    return this.timestamp;
  }
  
  public Integer getUnreadCount()
  {
    return this.unreadCount;
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
  
  public void setActiveFlag(Boolean paramBoolean)
  {
    this.activeFlag = paramBoolean;
  }
  
  public void setCollapsed(Boolean paramBoolean)
  {
    this.collapsed = paramBoolean;
  }
  
  public void setNotificationFlag(Boolean paramBoolean)
  {
    this.notificationFlag = paramBoolean;
  }
  
  public void setOwnerId(Long paramLong)
  {
    this.ownerId = paramLong;
  }
  
  public void setOwnerRef(User paramUser)
  {
    this.ownerRef = paramUser;
  }
  
  public void setStickyFlag(Boolean paramBoolean)
  {
    this.stickyFlag = paramBoolean;
  }
  
  public void setSummary(String paramString)
  {
    this.summary = paramString;
  }
  
  public void setTargetGroup(Boolean paramBoolean)
  {
    this.targetGroup = paramBoolean;
  }
  
  public void setTargetGroupRef(Group paramGroup)
  {
    this.targetGroupRef = paramGroup;
  }
  
  public void setTargetId(Long paramLong)
  {
    this.targetId = paramLong;
  }
  
  public void setTargetUserRef(User paramUser)
  {
    this.targetUserRef = paramUser;
  }
  
  public void setTimestamp(Long paramLong)
  {
    this.timestamp = paramLong;
  }
  
  public void setUnreadCount(Integer paramInteger)
  {
    this.unreadCount = paramInteger;
  }
  
  public String toString()
  {
    return "MessageSession{targetId=" + this.targetId + ", targetGroup=" + this.targetGroup + ", ownerId=" + this.ownerId + ", unreadCount=" + this.unreadCount + ", stickyFlag=" + this.stickyFlag + ", notificationFlag=" + this.notificationFlag + ", summary='" + this.summary + '\'' + ", timestamp=" + this.timestamp + ", activeFlag=" + this.activeFlag + ", collapsed=" + this.collapsed + '}';
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\snowballfinance\messageplatform\data\MessageSession.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
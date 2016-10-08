package com.snowballfinance.messageplatform.data;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.snowballfinance.messageplatform.a.a;
import com.snowballfinance.messageplatform.a.e;
import com.snowballfinance.messageplatform.b.d;
import java.io.Serializable;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class SystemEvent
  implements Serializable
{
  private static final long serialVersionUID = -1493500744420591221L;
  private Map<String, Object> attachment;
  private String badge;
  private User dismissGroupOperatorRef;
  private List<User> joinGroupInviteeRefs;
  private User joinGroupInviterRef;
  private List<User> leaveGroupInviteeRefs;
  private User leaveGroupOperatorRef;
  private Boolean push;
  private String sound;
  private String text;
  private SystemEventType type;
  private User updateGroupOperatorRef;
  private String url;
  
  public static SystemEvent blockedNotification(Long paramLong1, Long paramLong2)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put(SystemEvent.AttachmentAttribute.BLOCKED_TARGET.name(), paramLong2);
    localHashMap.put(SystemEvent.AttachmentAttribute.BLOCKED_OPERATOR.name(), paramLong1);
    paramLong1 = new SystemEvent();
    paramLong1.setType(SystemEventType.BLOCKED);
    paramLong1.setAttachment(localHashMap);
    paramLong1.setBadge("");
    paramLong1.setSound("");
    paramLong1.setText("");
    return paramLong1;
  }
  
  public static SystemEvent dismissGroupNotification(Long paramLong, Set<Long> paramSet)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put(SystemEvent.AttachmentAttribute.DISMISS_GROUP_OPERATOR.name(), paramLong);
    localHashMap.put(SystemEvent.AttachmentAttribute.DISMISS_GROUP_TARGETS.name(), paramSet);
    paramLong = new SystemEvent();
    paramLong.setType(SystemEventType.DISMISS_GROUP);
    paramLong.setAttachment(localHashMap);
    paramLong.setBadge("");
    paramLong.setSound("");
    paramLong.setText("");
    return paramLong;
  }
  
  public static SystemEvent followedNotification(Long paramLong1, Long paramLong2)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put(SystemEvent.AttachmentAttribute.FOLLOWED_TARGET.name(), paramLong2);
    localHashMap.put(SystemEvent.AttachmentAttribute.FOLLOWED_OPERATOR.name(), paramLong1);
    paramLong1 = new SystemEvent();
    paramLong1.setType(SystemEventType.FOLLOWED);
    paramLong1.setAttachment(localHashMap);
    paramLong1.setBadge("");
    paramLong1.setSound("");
    paramLong1.setText("");
    return paramLong1;
  }
  
  public static SystemEvent fromJson(String paramString)
  {
    return (SystemEvent)new GsonBuilder().create().fromJson(paramString, SystemEvent.class);
  }
  
  private String getUserNameDescription(Long paramLong1, Long paramLong2, Map<Long, String> paramMap)
  {
    if (paramLong1.equals(paramLong2)) {
      return "我";
    }
    if (paramMap.containsKey(paramLong1)) {
      return (String)paramMap.get(paramLong1);
    }
    return paramLong1.toString();
  }
  
  private String getUserNamesDescription(Set<Long> paramSet, Long paramLong, Map<Long, String> paramMap)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    paramSet = paramSet.iterator();
    while (paramSet.hasNext())
    {
      localStringBuilder.append(getUserNameDescription((Long)paramSet.next(), paramLong, paramMap));
      if (paramSet.hasNext()) {
        localStringBuilder.append("、");
      }
    }
    return localStringBuilder.toString();
  }
  
  public static SystemEvent joinGroupNotification(Long paramLong, Set<Long> paramSet)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put(SystemEvent.AttachmentAttribute.JOIN_GROUP_INVITER.name(), paramLong);
    localHashMap.put(SystemEvent.AttachmentAttribute.JOIN_GROUP_INVITEES.name(), paramSet);
    paramLong = new SystemEvent();
    paramLong.setType(SystemEventType.JOIN_GROUP);
    paramLong.setAttachment(localHashMap);
    paramLong.setBadge("");
    paramLong.setSound("");
    paramLong.setText("");
    return paramLong;
  }
  
  public static SystemEvent leaveGroupNotification(Long paramLong, Set<Long> paramSet)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put(SystemEvent.AttachmentAttribute.LEAVE_GROUP_OPERATOR.name(), paramLong);
    localHashMap.put(SystemEvent.AttachmentAttribute.LEAVE_GROUP_TARGETS.name(), paramSet);
    paramLong = new SystemEvent();
    paramLong.setType(SystemEventType.LEAVE_GROUP);
    paramLong.setAttachment(localHashMap);
    paramLong.setBadge("");
    paramLong.setSound("");
    paramLong.setText("");
    return paramLong;
  }
  
  public static SystemEvent refreshGroupImageNotification()
  {
    HashMap localHashMap = new HashMap();
    SystemEvent localSystemEvent = new SystemEvent();
    localSystemEvent.setType(SystemEventType.REFRESH_GROUP_IMAGE);
    localSystemEvent.setAttachment(localHashMap);
    localSystemEvent.setBadge("");
    localSystemEvent.setSound("");
    localSystemEvent.setText("");
    return localSystemEvent;
  }
  
  public static SystemEvent refreshGroupNotification()
  {
    HashMap localHashMap = new HashMap();
    SystemEvent localSystemEvent = new SystemEvent();
    localSystemEvent.setType(SystemEventType.REFRESH_GROUP);
    localSystemEvent.setAttachment(localHashMap);
    localSystemEvent.setBadge("");
    localSystemEvent.setSound("");
    localSystemEvent.setText("");
    return localSystemEvent;
  }
  
  public static SystemEvent refreshUserNotification()
  {
    HashMap localHashMap = new HashMap();
    SystemEvent localSystemEvent = new SystemEvent();
    localSystemEvent.setType(SystemEventType.REFRESH_USER);
    localSystemEvent.setAttachment(localHashMap);
    localSystemEvent.setBadge("");
    localSystemEvent.setSound("");
    localSystemEvent.setText("");
    return localSystemEvent;
  }
  
  public static SystemEvent requestJoinGroupNotification()
  {
    HashMap localHashMap = new HashMap();
    SystemEvent localSystemEvent = new SystemEvent();
    localSystemEvent.setType(SystemEventType.REQUEST_JOIN_GROUP);
    localSystemEvent.setAttachment(localHashMap);
    localSystemEvent.setBadge("");
    localSystemEvent.setSound("");
    localSystemEvent.setText("");
    return localSystemEvent;
  }
  
  public static SystemEvent systemMessage(String paramString)
  {
    HashMap localHashMap = new HashMap();
    SystemEvent localSystemEvent = new SystemEvent();
    localSystemEvent.setType(SystemEventType.SYSTEM_MESSAGE);
    localSystemEvent.setAttachment(localHashMap);
    localSystemEvent.setBadge("");
    localSystemEvent.setSound("");
    localSystemEvent.setText(paramString);
    return localSystemEvent;
  }
  
  public static SystemEvent unblockedNotification(Long paramLong1, Long paramLong2)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put(SystemEvent.AttachmentAttribute.UNBLOCKED_TARGET.name(), paramLong2);
    localHashMap.put(SystemEvent.AttachmentAttribute.UNBLOCKED_OPERATOR.name(), paramLong1);
    paramLong1 = new SystemEvent();
    paramLong1.setType(SystemEventType.UNBLOCKED);
    paramLong1.setAttachment(localHashMap);
    paramLong1.setBadge("");
    paramLong1.setSound("");
    paramLong1.setText("");
    return paramLong1;
  }
  
  public static SystemEvent unfollowedNotification(Long paramLong1, Long paramLong2)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put(SystemEvent.AttachmentAttribute.UNFOLLOWED_TARGET.name(), paramLong2);
    localHashMap.put(SystemEvent.AttachmentAttribute.UNFOLLOWED_OPERATOR.name(), paramLong1);
    paramLong1 = new SystemEvent();
    paramLong1.setType(SystemEventType.UNFOLLOWED);
    paramLong1.setAttachment(localHashMap);
    paramLong1.setBadge("");
    paramLong1.setSound("");
    paramLong1.setText("");
    return paramLong1;
  }
  
  public static SystemEvent updateGroupNameNotification(Long paramLong, String paramString)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put(SystemEvent.AttachmentAttribute.UPDATE_GROUP_NAME.name(), paramString);
    localHashMap.put(SystemEvent.AttachmentAttribute.UPDATE_GROUP_OPERATOR.name(), paramLong);
    paramLong = new SystemEvent();
    paramLong.setType(SystemEventType.UPDATE_GROUP);
    paramLong.setAttachment(localHashMap);
    paramLong.setBadge("");
    paramLong.setSound("");
    paramLong.setText("");
    return paramLong;
  }
  
  public Map<String, Object> getAttachment()
  {
    return this.attachment;
  }
  
  public String getBadge()
  {
    return this.badge;
  }
  
  public User getDismissGroupOperatorRef()
  {
    return this.dismissGroupOperatorRef;
  }
  
  public List<User> getJoinGroupInviteeRefs()
  {
    return this.joinGroupInviteeRefs;
  }
  
  public User getJoinGroupInviterRef()
  {
    return this.joinGroupInviterRef;
  }
  
  public List<User> getLeaveGroupInviteeRefs()
  {
    return this.leaveGroupInviteeRefs;
  }
  
  public User getLeaveGroupOperatorRef()
  {
    return this.leaveGroupOperatorRef;
  }
  
  public Set<Long> getParticipantsIds()
  {
    Long localLong;
    Object localObject;
    if (this.type.equals(SystemEventType.JOIN_GROUP))
    {
      localLong = d.b(this.attachment, SystemEvent.AttachmentAttribute.JOIN_GROUP_INVITER.name());
      localObject = d.a(this.attachment, SystemEvent.AttachmentAttribute.JOIN_GROUP_INVITEES.name());
      ((Set)localObject).add(localLong);
      return (Set<Long>)localObject;
    }
    if (this.type.equals(SystemEventType.LEAVE_GROUP))
    {
      localLong = d.b(this.attachment, SystemEvent.AttachmentAttribute.LEAVE_GROUP_OPERATOR.name());
      localObject = d.a(this.attachment, SystemEvent.AttachmentAttribute.LEAVE_GROUP_TARGETS.name());
      ((Set)localObject).add(localLong);
      return (Set<Long>)localObject;
    }
    if (this.type.equals(SystemEventType.DISMISS_GROUP))
    {
      localLong = d.b(this.attachment, SystemEvent.AttachmentAttribute.DISMISS_GROUP_OPERATOR.name());
      localObject = d.a(this.attachment, SystemEvent.AttachmentAttribute.DISMISS_GROUP_TARGETS.name());
      ((Set)localObject).add(localLong);
      return (Set<Long>)localObject;
    }
    if (this.type.equals(SystemEventType.UPDATE_GROUP))
    {
      localLong = d.b(this.attachment, SystemEvent.AttachmentAttribute.UPDATE_GROUP_OPERATOR.name());
      localObject = new HashSet();
      ((Set)localObject).add(localLong);
      return (Set<Long>)localObject;
    }
    return new HashSet();
  }
  
  public Boolean getPush()
  {
    return this.push;
  }
  
  public String getSound()
  {
    return this.sound;
  }
  
  public String getSummary(Long paramLong, Map<Long, String> paramMap)
  {
    Object localObject2;
    Object localObject1;
    if (this.type.equals(SystemEventType.JOIN_GROUP))
    {
      localObject2 = d.b(this.attachment, SystemEvent.AttachmentAttribute.JOIN_GROUP_INVITER.name());
      localObject1 = d.a(this.attachment, SystemEvent.AttachmentAttribute.JOIN_GROUP_INVITEES.name());
      localObject2 = getUserNameDescription((Long)localObject2, paramLong, paramMap);
      localObject2 = (String)localObject2 + "邀请";
      paramLong = (String)localObject2 + getUserNamesDescription((Set)localObject1, paramLong, paramMap);
      return paramLong + "加入本群";
    }
    if (this.type.equals(SystemEventType.LEAVE_GROUP))
    {
      localObject1 = d.b(this.attachment, SystemEvent.AttachmentAttribute.LEAVE_GROUP_OPERATOR.name());
      localObject2 = d.a(this.attachment, SystemEvent.AttachmentAttribute.LEAVE_GROUP_TARGETS.name());
      if ((((Set)localObject2).size() == 0) || ((((Set)localObject2).size() == 1) && (((Set)localObject2).contains(localObject1))))
      {
        paramLong = getUserNameDescription((Long)localObject1, paramLong, paramMap);
        return paramLong + "已退出群组";
      }
      localObject2 = getUserNamesDescription((Set)localObject2, paramLong, paramMap);
      localObject2 = (String)localObject2 + "被";
      paramLong = (String)localObject2 + getUserNameDescription((Long)localObject1, paramLong, paramMap);
      return paramLong + "请出本群";
    }
    if (this.type.equals(SystemEventType.DISMISS_GROUP))
    {
      localObject1 = d.b(this.attachment, SystemEvent.AttachmentAttribute.DISMISS_GROUP_OPERATOR.name());
      paramLong = "群组已经被" + getUserNameDescription((Long)localObject1, paramLong, paramMap);
      return paramLong + "解散";
    }
    if (this.type.equals(SystemEventType.UPDATE_GROUP))
    {
      localObject1 = (Long)this.attachment.get(SystemEvent.AttachmentAttribute.UPDATE_GROUP_OPERATOR.name());
      paramLong = "群组已经被" + getUserNameDescription((Long)localObject1, paramLong, paramMap);
      paramLong = paramLong + "命名为";
      return paramLong + (String)this.attachment.get(SystemEvent.AttachmentAttribute.UPDATE_GROUP_NAME.name());
    }
    if (this.type.equals(SystemEventType.SYSTEM_MESSAGE))
    {
      if (this.text.length() > 24) {
        return this.text.substring(0, 24) + "...";
      }
      return this.text;
    }
    return "[系统消息]";
  }
  
  public String getText()
  {
    return this.text;
  }
  
  public SystemEventType getType()
  {
    return this.type;
  }
  
  public User getUpdateGroupOperatorRef()
  {
    return this.updateGroupOperatorRef;
  }
  
  public String getUrl()
  {
    return this.url;
  }
  
  public Boolean imEvent()
  {
    if ((this.type.equals(SystemEventType.JOIN_GROUP)) || (this.type.equals(SystemEventType.LEAVE_GROUP)) || (this.type.equals(SystemEventType.DISMISS_GROUP)) || (this.type.equals(SystemEventType.UPDATE_GROUP)) || (this.type.equals(SystemEventType.SYSTEM_MESSAGE))) {}
    for (boolean bool = true;; bool = false) {
      return Boolean.valueOf(bool);
    }
  }
  
  public void setAttachment(Map<String, Object> paramMap)
  {
    this.attachment = paramMap;
  }
  
  public void setBadge(String paramString)
  {
    this.badge = paramString;
  }
  
  public void setDismissGroupOperatorRef(User paramUser)
  {
    this.dismissGroupOperatorRef = paramUser;
  }
  
  public void setJoinGroupInviteeRefs(List<User> paramList)
  {
    this.joinGroupInviteeRefs = paramList;
  }
  
  public void setJoinGroupInviterRef(User paramUser)
  {
    this.joinGroupInviterRef = paramUser;
  }
  
  public void setLeaveGroupInviteeRefs(List<User> paramList)
  {
    this.leaveGroupInviteeRefs = paramList;
  }
  
  public void setLeaveGroupOperatorRef(User paramUser)
  {
    this.leaveGroupOperatorRef = paramUser;
  }
  
  public void setPush(Boolean paramBoolean)
  {
    this.push = paramBoolean;
  }
  
  public void setSound(String paramString)
  {
    this.sound = paramString;
  }
  
  public void setText(String paramString)
  {
    this.text = paramString;
  }
  
  public void setType(SystemEventType paramSystemEventType)
  {
    this.type = paramSystemEventType;
  }
  
  public void setUpdateGroupOperatorRef(User paramUser)
  {
    this.updateGroupOperatorRef = paramUser;
  }
  
  public void setUrl(String paramString)
  {
    this.url = paramString;
  }
  
  public a systemEventCommand(Long paramLong, Boolean paramBoolean)
  {
    paramLong = Message.systemEventMessage(this, paramLong, paramBoolean);
    paramBoolean = new e();
    paramBoolean.a = Integer.valueOf(0);
    paramBoolean.d = Arrays.asList(new Message[] { paramLong });
    return paramBoolean;
  }
  
  public String toJson()
  {
    return new GsonBuilder().create().toJson(this);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\snowballfinance\messageplatform\data\SystemEvent.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
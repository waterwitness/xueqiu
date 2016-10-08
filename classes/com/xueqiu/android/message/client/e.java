package com.xueqiu.android.message.client;

import com.snowballfinance.messageplatform.data.SystemEvent;
import com.snowballfinance.messageplatform.data.SystemEvent.AttachmentAttribute;
import com.snowballfinance.messageplatform.data.SystemEventType;
import com.xueqiu.android.base.storage.DBManager;
import com.xueqiu.android.base.storage.ResultSet;
import com.xueqiu.android.base.util.v;
import com.xueqiu.android.community.model.User;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public final class e
{
  private static Long a(SystemEvent paramSystemEvent, String paramString)
  {
    paramSystemEvent = paramSystemEvent.getAttachment().get(paramString);
    if ((paramSystemEvent instanceof Double)) {
      return Long.valueOf(((Double)paramSystemEvent).longValue());
    }
    return Long.valueOf(paramSystemEvent.toString());
  }
  
  public static String a(DBManager paramDBManager, SystemEvent paramSystemEvent)
  {
    if (paramSystemEvent.getType().equals(SystemEventType.SYSTEM_MESSAGE)) {
      return paramSystemEvent.getText();
    }
    Object localObject2;
    Object localObject1;
    StringBuilder localStringBuilder;
    if (paramSystemEvent.getType().equals(SystemEventType.JOIN_GROUP))
    {
      localObject2 = paramDBManager.getCurrentUser();
      localObject1 = a(paramSystemEvent, SystemEvent.AttachmentAttribute.JOIN_GROUP_INVITER.name());
      ArrayList localArrayList = b(paramSystemEvent, SystemEvent.AttachmentAttribute.JOIN_GROUP_INVITEES.name());
      localStringBuilder = new StringBuilder();
      if (((User)localObject2).getUserId() == ((Long)localObject1).longValue())
      {
        localStringBuilder.append("你");
        localStringBuilder.append("邀请");
        paramDBManager = paramDBManager.getUsersByUserIds(new HashSet(localArrayList));
        paramSystemEvent = paramDBManager.founded().iterator();
        label120:
        if (!paramSystemEvent.hasNext()) {
          break label216;
        }
        localObject1 = (User)paramSystemEvent.next();
        if (((User)localObject1).getUserId() != ((User)localObject2).getUserId()) {
          break label203;
        }
        localStringBuilder.append("你");
      }
      for (;;)
      {
        localStringBuilder.append("、");
        break label120;
        User localUser = paramDBManager.queryUserByUserId(((Long)localObject1).longValue());
        paramSystemEvent = (SystemEvent)localObject1;
        if (localUser != null) {
          paramSystemEvent = localUser.getScreenName();
        }
        localStringBuilder.append(paramSystemEvent);
        break;
        label203:
        localStringBuilder.append(((User)localObject1).getScreenName());
      }
      label216:
      paramDBManager = paramDBManager.missed().iterator();
      while (paramDBManager.hasNext())
      {
        localStringBuilder.append((Long)paramDBManager.next());
        localStringBuilder.append("、");
      }
      localStringBuilder.deleteCharAt(localStringBuilder.length() - 1);
      localStringBuilder.append("加入本群");
      return localStringBuilder.toString();
    }
    if (paramSystemEvent.getType().equals(SystemEventType.LEAVE_GROUP)) {
      return b(paramDBManager, paramSystemEvent);
    }
    if (paramSystemEvent.getType().equals(SystemEventType.DISMISS_GROUP))
    {
      paramSystemEvent = a(paramSystemEvent, SystemEvent.AttachmentAttribute.DISMISS_GROUP_OPERATOR.name());
      localObject1 = paramDBManager.getCurrentUser();
      localObject2 = new StringBuilder("群组已经被");
      if (paramSystemEvent.equals(Long.valueOf(((User)localObject1).getUserId()))) {
        ((StringBuilder)localObject2).append("你");
      }
      for (;;)
      {
        ((StringBuilder)localObject2).append("解散");
        return ((StringBuilder)localObject2).toString();
        ((StringBuilder)localObject2).append(paramDBManager.queryUserByUserId(paramSystemEvent.longValue()).getScreenName());
      }
    }
    if (paramSystemEvent.getType().equals(SystemEventType.UPDATE_GROUP))
    {
      localObject1 = paramDBManager.getCurrentUser();
      localObject2 = a(paramSystemEvent, SystemEvent.AttachmentAttribute.UPDATE_GROUP_OPERATOR.name());
      localStringBuilder = new StringBuilder("群组已经被");
      if (((Long)localObject2).equals(Long.valueOf(((User)localObject1).getUserId()))) {
        localStringBuilder.append("你");
      }
      for (;;)
      {
        localStringBuilder.append("命名为");
        localStringBuilder.append(String.format("“%s”", new Object[] { paramSystemEvent.getAttachment().get(SystemEvent.AttachmentAttribute.UPDATE_GROUP_NAME.name()) }));
        return localStringBuilder.toString();
        localStringBuilder.append(paramDBManager.queryUserByUserId(((Long)localObject2).longValue()).getScreenName());
      }
    }
    return "";
  }
  
  private static String b(DBManager paramDBManager, SystemEvent paramSystemEvent)
  {
    User localUser1 = paramDBManager.getCurrentUser();
    Long localLong = a(paramSystemEvent, SystemEvent.AttachmentAttribute.LEAVE_GROUP_OPERATOR.name());
    ArrayList localArrayList = b(paramSystemEvent, SystemEvent.AttachmentAttribute.LEAVE_GROUP_TARGETS.name());
    paramSystemEvent = new StringBuilder();
    User localUser2 = paramDBManager.queryUserByUserId(localLong.longValue());
    paramDBManager = paramDBManager.getUsersByUserIds(new HashSet(localArrayList));
    Iterator localIterator = paramDBManager.founded().iterator();
    if (localIterator.hasNext())
    {
      User localUser3 = (User)localIterator.next();
      if (localUser3.getUserId() == localUser1.getUserId()) {
        paramSystemEvent.append("你");
      }
      for (;;)
      {
        paramSystemEvent.append("、");
        break;
        paramSystemEvent.append(localUser3.getScreenName());
      }
    }
    paramDBManager = paramDBManager.missed().iterator();
    while (paramDBManager.hasNext())
    {
      paramSystemEvent.append((Long)paramDBManager.next());
      paramSystemEvent.append("、");
    }
    paramSystemEvent.deleteCharAt(paramSystemEvent.length() - 1);
    if ((localArrayList.size() == 0) || ((localArrayList.size() == 1) && (localArrayList.contains(localLong))))
    {
      paramSystemEvent.append("已退出群组");
      return paramSystemEvent.toString();
    }
    if (localLong.longValue() == localUser1.getUserId()) {}
    for (paramDBManager = "你";; paramDBManager = localUser2.getScreenName())
    {
      paramSystemEvent.append(String.format("被%s请出群组", new Object[] { paramDBManager }));
      break;
    }
  }
  
  private static ArrayList<Long> b(SystemEvent paramSystemEvent, String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    for (;;)
    {
      try
      {
        paramSystemEvent = ((List)paramSystemEvent.getAttachment().get(paramString)).iterator();
        if (paramSystemEvent.hasNext())
        {
          paramString = paramSystemEvent.next();
          if ((paramString instanceof Double)) {
            localArrayList.add(Long.valueOf(((Double)paramString).longValue()));
          }
        }
        else
        {
          return localArrayList;
        }
      }
      catch (Exception paramSystemEvent)
      {
        v.c("SystemEventUtil", "", paramSystemEvent);
      }
      localArrayList.add(Long.valueOf(paramString.toString()));
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\message\client\e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
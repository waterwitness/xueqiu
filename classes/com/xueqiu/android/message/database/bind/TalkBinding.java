package com.xueqiu.android.message.database.bind;

import com.sleepycat.a.a.k;
import com.sleepycat.a.a.l;
import com.sleepycat.a.a.m;
import com.xueqiu.android.message.model.Talk;
import java.util.Date;

public class TalkBinding
  extends k
{
  public Object entryToObject(l paraml)
  {
    Talk localTalk = new Talk();
    localTalk.setId(paraml.e());
    localTalk.setGroup(paraml.b());
    localTalk.setTop(paraml.b());
    localTalk.setNotify(paraml.b());
    localTalk.setUnread(paraml.d());
    localTalk.setProfileImageUrl(paraml.a());
    localTalk.setName(paraml.a());
    localTalk.setSummary(paraml.a());
    localTalk.setLastTime(new Date(paraml.e()));
    localTalk.setTargetReadAt(new Date(paraml.e()));
    localTalk.setReadAt(new Date(paraml.e()));
    localTalk.setActive(paraml.b());
    localTalk.setCollapsed(paraml.b());
    localTalk.setStatus(paraml.d());
    return localTalk;
  }
  
  public void objectToEntry(Object paramObject, m paramm)
  {
    paramObject = (Talk)paramObject;
    paramm.a(((Talk)paramObject).getId());
    paramm.a(((Talk)paramObject).isGroup());
    paramm.a(((Talk)paramObject).isTop());
    paramm.a(((Talk)paramObject).isNotify());
    paramm.b(((Talk)paramObject).getUnread());
    paramm.a(((Talk)paramObject).getProfileImageUrl());
    paramm.a(((Talk)paramObject).getName());
    paramm.a(((Talk)paramObject).getSummary());
    paramm.a(((Talk)paramObject).getLastTime().getTime());
    paramm.a(((Talk)paramObject).getTargetReadAt().getTime());
    paramm.a(((Talk)paramObject).getReadAt().getTime());
    paramm.a(((Talk)paramObject).isActive());
    paramm.a(((Talk)paramObject).isCollapsed());
    paramm.b(((Talk)paramObject).getStatus());
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\message\database\bind\TalkBinding.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
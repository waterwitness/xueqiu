package com.xueqiu.android.message.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.snowballfinance.messageplatform.data.MessageSession;
import com.xueqiu.android.base.storage.prefs.UserLogonDataPrefs;
import com.xueqiu.android.base.u;
import com.xueqiu.android.base.util.v;
import com.xueqiu.android.community.model.User;
import java.util.Comparator;
import java.util.Date;

public class Talk
  implements Parcelable
{
  public static final Comparator<Talk> COMPARATOR = new Comparator()
  {
    public final int compare(Talk paramAnonymousTalk1, Talk paramAnonymousTalk2)
    {
      int j = -1;
      int i;
      if ((paramAnonymousTalk1 == null) || (paramAnonymousTalk2 == null)) {
        i = 0;
      }
      do
      {
        do
        {
          return i;
          if (!paramAnonymousTalk1.isTop()) {
            break;
          }
          i = j;
        } while (!paramAnonymousTalk2.isTop());
        if ((!paramAnonymousTalk1.isTop()) && (paramAnonymousTalk2.isTop())) {
          return 1;
        }
        if (paramAnonymousTalk1.getLastTime().getTime() < paramAnonymousTalk2.getLastTime().getTime()) {
          return 1;
        }
        i = j;
      } while (paramAnonymousTalk1.getLastTime().getTime() > paramAnonymousTalk2.getLastTime().getTime());
      return 0;
    }
  };
  public static final Parcelable.Creator<Talk> CREATOR = new Parcelable.Creator()
  {
    public final Talk createFromParcel(Parcel paramAnonymousParcel)
    {
      return new Talk(paramAnonymousParcel);
    }
    
    public final Talk[] newArray(int paramAnonymousInt)
    {
      return new Talk[paramAnonymousInt];
    }
  };
  private boolean active;
  private boolean collapsed;
  private IMGroup groupRef;
  private long id;
  private boolean isGroup;
  private boolean isNotify = true;
  private boolean isTop;
  private Date lastTime;
  private String name;
  private String pinyin;
  private String profileImageUrl;
  private Date readAt;
  private int status;
  private String summary;
  private Date targetReadAt;
  private int unread;
  private User userRef;
  
  public Talk()
  {
    this.name = "";
    this.summary = "";
    this.lastTime = new Date();
    this.targetReadAt = new Date(0L);
    this.readAt = new Date(0L);
    this.collapsed = false;
    this.status = 0;
  }
  
  public Talk(Parcel paramParcel)
  {
    try
    {
      this.id = paramParcel.readLong();
      if (1 == paramParcel.readInt())
      {
        bool1 = true;
        this.isTop = bool1;
        if (1 != paramParcel.readInt()) {
          break label217;
        }
        bool1 = true;
        label44:
        this.isNotify = bool1;
        if (1 != paramParcel.readInt()) {
          break label222;
        }
        bool1 = true;
        label59:
        this.isGroup = bool1;
        this.unread = paramParcel.readInt();
        this.profileImageUrl = paramParcel.readString();
        this.name = paramParcel.readString();
        this.summary = paramParcel.readString();
        this.lastTime = new Date(paramParcel.readLong());
        this.targetReadAt = new Date(paramParcel.readLong());
        this.readAt = new Date(paramParcel.readLong());
        if (paramParcel.readInt() != 1) {
          break label227;
        }
        bool1 = true;
        label151:
        this.active = bool1;
        if (paramParcel.readInt() != 1) {
          break label232;
        }
      }
      label217:
      label222:
      label227:
      label232:
      for (boolean bool1 = bool2;; bool1 = false)
      {
        this.collapsed = bool1;
        this.status = paramParcel.readInt();
        this.groupRef = ((IMGroup)paramParcel.readParcelable(IMGroup.class.getClassLoader()));
        this.userRef = ((User)paramParcel.readParcelable(User.class.getClassLoader()));
        return;
        bool1 = false;
        break;
        bool1 = false;
        break label44;
        bool1 = false;
        break label59;
        bool1 = false;
        break label151;
      }
      return;
    }
    catch (Exception paramParcel)
    {
      v.d("Talk", "Failed to construct from parcel");
    }
  }
  
  public static Talk from(User paramUser)
  {
    Talk localTalk = new Talk();
    localTalk.setGroup(false);
    localTalk.setId(paramUser.getUserId());
    localTalk.setName(paramUser.getScreenName());
    localTalk.setProfileImageUrl(paramUser.getProfileImageUrl());
    localTalk.setActive(true);
    localTalk.setCollapsed(false);
    localTalk.setUserRef(paramUser);
    return localTalk;
  }
  
  public static Talk from(IMGroup paramIMGroup)
  {
    Talk localTalk = new Talk();
    localTalk.setGroup(true);
    localTalk.setId(paramIMGroup.getId());
    localTalk.setName(paramIMGroup.getName());
    localTalk.setProfileImageUrl(paramIMGroup.getProfileImageUrl());
    localTalk.setActive(true);
    localTalk.setCollapsed(false);
    localTalk.setGroupRef(paramIMGroup);
    return localTalk;
  }
  
  public static Talk wrapMessageSession(MessageSession paramMessageSession)
  {
    return new Talk().fromMessageSession(paramMessageSession);
  }
  
  public Message allocateMessage(int paramInt, long paramLong)
  {
    Message localMessage = new Message();
    localMessage.setSequence(System.currentTimeMillis());
    localMessage.setToId(getId());
    localMessage.setToGroup(isGroup());
    localMessage.setFromId(paramLong);
    localMessage.setStatus(1);
    localMessage.setType(paramInt);
    return localMessage;
  }
  
  public int describeContents()
  {
    return 1;
  }
  
  public boolean equals(Object paramObject)
  {
    if ((paramObject == null) || (!(paramObject instanceof Talk))) {}
    do
    {
      return false;
      paramObject = (Talk)paramObject;
    } while ((this.id != ((Talk)paramObject).id) || (this.isGroup != ((Talk)paramObject).isGroup));
    return true;
  }
  
  public Talk fromMessageSession(MessageSession paramMessageSession)
  {
    setId(paramMessageSession.getTargetId().longValue());
    setTop(paramMessageSession.getStickyFlag().booleanValue());
    setNotify(paramMessageSession.getNotificationFlag().booleanValue());
    setGroup(paramMessageSession.getTargetGroup().booleanValue());
    setUnread(paramMessageSession.getUnreadCount().intValue());
    setLastTime(new Date(paramMessageSession.getTimestamp().longValue()));
    setReadAt(new Date(0L));
    setTargetReadAt(new Date(0L));
    if (paramMessageSession.getActiveFlag() == null) {}
    for (boolean bool = false;; bool = paramMessageSession.getActiveFlag().booleanValue())
    {
      setActive(bool);
      setCollapsed(paramMessageSession.getCollapsed().booleanValue());
      setSummary(paramMessageSession.getSummary());
      return this;
    }
  }
  
  public IMGroup getGroupRef()
  {
    return this.groupRef;
  }
  
  public long getId()
  {
    return this.id;
  }
  
  public Date getLastTime()
  {
    return this.lastTime;
  }
  
  public String getName()
  {
    return this.name;
  }
  
  public String getPinyin()
  {
    return this.pinyin;
  }
  
  public String getProfileImageUrl()
  {
    return this.profileImageUrl;
  }
  
  public Date getReadAt()
  {
    return this.readAt;
  }
  
  public int getStatus()
  {
    return this.status;
  }
  
  public String getSummary()
  {
    return this.summary;
  }
  
  public Date getTargetReadAt()
  {
    return this.targetReadAt;
  }
  
  public int getUnread()
  {
    return this.unread;
  }
  
  public User getUserRef()
  {
    return this.userRef;
  }
  
  public int hashCode()
  {
    return Long.valueOf(this.id).hashCode() ^ Boolean.valueOf(this.isGroup).hashCode();
  }
  
  public boolean isActive()
  {
    return this.active;
  }
  
  public boolean isCollapsed()
  {
    return this.collapsed;
  }
  
  public boolean isGroup()
  {
    return this.isGroup;
  }
  
  public boolean isNotify()
  {
    return this.isNotify;
  }
  
  public boolean isTop()
  {
    return this.isTop;
  }
  
  public void loadLastMessage(Message paramMessage)
  {
    if ((paramMessage != null) && (paramMessage.getCreatedAt().getTime() > getLastTime().getTime()))
    {
      setSummary(paramMessage.getSummary());
      if ((!paramMessage.isByMyself()) || ((paramMessage.getStatus() != 1) && (paramMessage.getStatus() != 5))) {
        break label59;
      }
      setStatus(1);
    }
    label59:
    do
    {
      return;
      setStatus(0);
      setLastTime(paramMessage.getCreatedAt());
    } while ((paramMessage.isByMyself()) || (paramMessage.getType() == 7));
    setUnread(getUnread() + 1);
  }
  
  public void setActive(boolean paramBoolean)
  {
    this.active = paramBoolean;
  }
  
  public void setCollapsed(boolean paramBoolean)
  {
    this.collapsed = paramBoolean;
  }
  
  public void setGroup(boolean paramBoolean)
  {
    this.isGroup = paramBoolean;
  }
  
  public void setGroupRef(IMGroup paramIMGroup)
  {
    this.groupRef = paramIMGroup;
  }
  
  public void setId(long paramLong)
  {
    this.id = paramLong;
  }
  
  public void setLastTime(Date paramDate)
  {
    this.lastTime = paramDate;
  }
  
  public void setName(String paramString)
  {
    this.name = paramString;
  }
  
  public void setNotify(boolean paramBoolean)
  {
    this.isNotify = paramBoolean;
  }
  
  public void setPinyin(String paramString)
  {
    this.pinyin = paramString;
  }
  
  public void setProfileImageUrl(String paramString)
  {
    this.profileImageUrl = paramString;
  }
  
  public void setReadAt(Date paramDate)
  {
    this.readAt = paramDate;
  }
  
  public void setStatus(int paramInt)
  {
    this.status = paramInt;
  }
  
  public void setSummary(String paramString)
  {
    this.summary = paramString;
  }
  
  public void setTargetReadAt(Date paramDate)
  {
    this.targetReadAt = paramDate;
  }
  
  public void setTop(boolean paramBoolean)
  {
    this.isTop = paramBoolean;
  }
  
  public Talk setUnread(int paramInt)
  {
    this.unread = paramInt;
    return this;
  }
  
  public void setUserRef(User paramUser)
  {
    this.userRef = paramUser;
  }
  
  public MessageSession toMessageSession()
  {
    u.a();
    return toMessageSession(UserLogonDataPrefs.getLogonUserId());
  }
  
  public MessageSession toMessageSession(long paramLong)
  {
    MessageSession localMessageSession = new MessageSession();
    localMessageSession.setTargetGroup(Boolean.valueOf(isGroup()));
    localMessageSession.setOwnerId(Long.valueOf(paramLong));
    localMessageSession.setTargetId(Long.valueOf(getId()));
    localMessageSession.setNotificationFlag(Boolean.valueOf(isNotify()));
    localMessageSession.setTimestamp(Long.valueOf(getLastTime().getTime()));
    localMessageSession.setActiveFlag(Boolean.valueOf(isActive()));
    localMessageSession.setCollapsed(Boolean.valueOf(this.collapsed));
    localMessageSession.setStickyFlag(Boolean.valueOf(isTop()));
    localMessageSession.setSummary(getSummary());
    return localMessageSession;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    int i = 1;
    paramParcel.writeLong(this.id);
    label33:
    label47:
    long l;
    if (this.isTop)
    {
      paramInt = 1;
      paramParcel.writeInt(paramInt);
      if (!this.isNotify) {
        break label199;
      }
      paramInt = 1;
      paramParcel.writeInt(paramInt);
      if (!this.isGroup) {
        break label204;
      }
      paramInt = 1;
      paramParcel.writeInt(paramInt);
      paramParcel.writeInt(this.unread);
      paramParcel.writeString(this.profileImageUrl);
      paramParcel.writeString(this.name);
      paramParcel.writeString(this.summary);
      paramParcel.writeLong(this.lastTime.getTime());
      if (this.targetReadAt == null) {
        break label209;
      }
      l = this.targetReadAt.getTime();
      label111:
      paramParcel.writeLong(l);
      if (this.readAt == null) {
        break label221;
      }
      l = this.readAt.getTime();
      label133:
      paramParcel.writeLong(l);
      if (!this.active) {
        break label233;
      }
      paramInt = 1;
      label148:
      paramParcel.writeInt(paramInt);
      if (!this.collapsed) {
        break label238;
      }
    }
    label199:
    label204:
    label209:
    label221:
    label233:
    label238:
    for (paramInt = i;; paramInt = 0)
    {
      paramParcel.writeInt(paramInt);
      paramParcel.writeInt(this.status);
      paramParcel.writeParcelable(this.groupRef, 0);
      paramParcel.writeParcelable(this.userRef, 0);
      return;
      paramInt = 0;
      break;
      paramInt = 0;
      break label33;
      paramInt = 0;
      break label47;
      l = this.lastTime.getTime();
      break label111;
      l = this.lastTime.getTime();
      break label133;
      paramInt = 0;
      break label148;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\message\model\Talk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
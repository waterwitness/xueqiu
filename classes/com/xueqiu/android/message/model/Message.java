package com.xueqiu.android.message.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.snowballfinance.messageplatform.data.MessageType;
import com.snowballfinance.messageplatform.data.SystemEvent;
import com.snowballfinance.messageplatform.data.View.ViewType;
import com.xueqiu.android.base.storage.DBManager;
import com.xueqiu.android.base.storage.prefs.UserLogonDataPrefs;
import com.xueqiu.android.base.u;
import com.xueqiu.android.base.util.v;
import com.xueqiu.android.common.model.parser.JSONUtils;
import com.xueqiu.android.message.client.e;
import java.nio.charset.Charset;
import java.util.Comparator;
import java.util.Date;
import org.json.JSONException;
import org.json.JSONObject;

public class Message
  implements Parcelable
{
  public static final Comparator<Message> COMPARATOR = new Comparator()
  {
    public final int compare(Message paramAnonymousMessage1, Message paramAnonymousMessage2)
    {
      long l1 = paramAnonymousMessage2.getCreatedAt().getTime();
      long l2 = paramAnonymousMessage1.getCreatedAt().getTime();
      if (l1 > l2) {}
      do
      {
        return -1;
        if (l1 < l2) {
          return 1;
        }
        if (paramAnonymousMessage1.getId() < paramAnonymousMessage2.getId()) {
          return 1;
        }
      } while (paramAnonymousMessage1.getId() > paramAnonymousMessage2.getId());
      return 0;
    }
  };
  public static final Parcelable.Creator<Message> CREATOR = new Parcelable.Creator()
  {
    public final Message createFromParcel(Parcel paramAnonymousParcel)
    {
      return new Message(paramAnonymousParcel);
    }
    
    public final Message[] newArray(int paramAnonymousInt)
    {
      return new Message[paramAnonymousInt];
    }
  };
  private Date createdAt = new Date();
  private String eventText;
  private long fromId;
  private long id;
  private boolean isFromGroup;
  private boolean isNotify;
  private boolean isToGroup;
  private long sequence;
  private int status;
  private String summary;
  private SystemEvent systemEvent;
  private String text;
  private long toId;
  private int type;
  
  public Message()
  {
    this.status = 1;
  }
  
  public Message(Parcel paramParcel)
  {
    try
    {
      this.id = paramParcel.readLong();
      this.sequence = paramParcel.readLong();
      this.type = paramParcel.readInt();
      this.status = paramParcel.readInt();
      this.text = paramParcel.readString();
      this.summary = paramParcel.readString();
      this.fromId = paramParcel.readLong();
      this.toId = paramParcel.readLong();
      if (paramParcel.readInt() == 1)
      {
        bool1 = true;
        this.isFromGroup = bool1;
        if (paramParcel.readInt() != 1) {
          break label132;
        }
      }
      label132:
      for (boolean bool1 = bool2;; bool1 = false)
      {
        this.isToGroup = bool1;
        this.createdAt = new Date(paramParcel.readLong());
        return;
        bool1 = false;
        break;
      }
      return;
    }
    catch (Exception paramParcel)
    {
      v.d(getClass().getSimpleName(), "Failed to construct from parcel!");
    }
  }
  
  public static Message wrapPlatformMessage(com.snowballfinance.messageplatform.data.Message paramMessage)
  {
    return new Message().fromPlatformMessage(paramMessage);
  }
  
  public boolean belongTo(Talk paramTalk)
  {
    if (paramTalk == null) {}
    long l;
    do
    {
      do
      {
        do
        {
          do
          {
            return false;
            if (!paramTalk.isGroup()) {
              break;
            }
          } while ((getFromId() != paramTalk.getId()) && (getToId() != paramTalk.getId()));
          return true;
        } while ((isFromGroup()) || (isToGroup()));
        if (getFromId() == paramTalk.getId())
        {
          l = getToId();
          u.a();
          if (l == UserLogonDataPrefs.getLogonUserId()) {
            break;
          }
        }
      } while (getToId() != paramTalk.getId());
      l = getFromId();
      u.a();
    } while (l != UserLogonDataPrefs.getLogonUserId());
    return true;
  }
  
  public Talk createTalk()
  {
    Talk localTalk = new Talk();
    u.a();
    long l = UserLogonDataPrefs.getLogonUserId();
    if ((!isFromGroup()) && (getFromId() == l))
    {
      localTalk.setId(getToId());
      localTalk.setGroup(isToGroup());
      localTalk.setSummary(getSummary());
      localTalk.setActive(true);
      localTalk.setUnread(0);
    }
    for (;;)
    {
      localTalk.setLastTime(getCreatedAt());
      localTalk.setReadAt(new Date(0L));
      localTalk.setTargetReadAt(new Date(0L));
      return localTalk;
      if (!isToGroup())
      {
        localTalk.setId(getFromId());
        localTalk.setGroup(isFromGroup());
        localTalk.setSummary(getSummary());
        localTalk.setActive(true);
        localTalk.setUnread(0);
      }
      else
      {
        localTalk.setId(getToId());
        localTalk.setGroup(true);
        localTalk.setSummary(getSummary());
        localTalk.setActive(true);
        localTalk.setUnread(0);
      }
    }
  }
  
  public int describeContents()
  {
    return 2;
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool = true;
    try
    {
      paramObject = (Message)paramObject;
      if (((Message)paramObject).getSequence() == 0L)
      {
        if ((((Message)paramObject).getId() != this.id) || (((Message)paramObject).getFromId() != this.fromId) || (((Message)paramObject).getToId() != this.toId)) {
          break label110;
        }
        return true;
      }
      if ((((Message)paramObject).getFromId() == this.fromId) && (((Message)paramObject).getSequence() == this.sequence))
      {
        long l1 = ((Message)paramObject).getToId();
        long l2 = this.toId;
        if (l1 == l2) {}
      }
      else
      {
        return false;
      }
    }
    catch (Exception paramObject)
    {
      ((Exception)paramObject).printStackTrace();
      bool = false;
    }
    return bool;
    label110:
    return false;
  }
  
  public Message fromPlatformMessage(com.snowballfinance.messageplatform.data.Message paramMessage)
  {
    setId(paramMessage.getMessageId().longValue());
    setSequence(paramMessage.getSequenceId().longValue());
    setToId(paramMessage.getToId().longValue());
    setFromId(paramMessage.getFromId().longValue());
    setFromGroup(paramMessage.getFromGroup().booleanValue());
    setToGroup(paramMessage.getToGroup().booleanValue());
    setCreatedAt(new Date(paramMessage.getTimestamp().longValue()));
    setStatus(0);
    String str = paramMessage.getView();
    if (paramMessage.isSystemMessage().booleanValue())
    {
      setText(paramMessage.getPlain());
      setType(7);
      setSystemEvent(paramMessage.getSystemEvent());
      return this;
    }
    if ((str != null) && (str.startsWith("{"))) {
      try
      {
        localViewType = View.ViewType.valueOf(new JSONObject(str).getString("type"));
        if (localViewType == View.ViewType.SIMPLE_TEXT) {
          setType(8);
        }
        for (;;)
        {
          setText(str);
          setSummary(paramMessage.generateSummary());
          return this;
          if (localViewType != View.ViewType.TEXT_IMAGE) {
            break;
          }
          setType(9);
        }
      }
      catch (JSONException localJSONException)
      {
        for (;;)
        {
          View.ViewType localViewType;
          localJSONException.printStackTrace();
          continue;
          if (localViewType == View.ViewType.MULTI_TEXT_IMAGE) {
            setType(10);
          } else if (localViewType == View.ViewType.STOCK) {
            setType(11);
          } else if (localViewType == View.ViewType.USER_INFO) {
            setType(12);
          } else if (localViewType == View.ViewType.POST) {
            setType(13);
          }
        }
      }
    }
    switch (3.$SwitchMap$com$snowballfinance$messageplatform$data$MessageType[paramMessage.getMessageType().ordinal()])
    {
    }
    for (;;)
    {
      setSummary(paramMessage.generateSummary());
      return this;
      setType(0);
      setText(paramMessage.getPlain());
      continue;
      setType(4);
      setText(new String(paramMessage.getImage(), Charset.forName("UTF-8")));
      continue;
      setType(1);
      setText(paramMessage.getView());
      continue;
      setType(3);
      setText(new String(paramMessage.getCard(), Charset.forName("UTF-8")));
    }
  }
  
  public String getClipboardData()
  {
    if (((this.type == 11) || (this.type == 12) || (this.type == 13) || (this.type == 8) || (this.type == 9) || (this.type == 10)) && (this.text != null) && ((this.text.startsWith("{")) || (this.text.startsWith("[")))) {
      return JSONUtils.getString(this.text, "url");
    }
    return this.text;
  }
  
  public Date getCreatedAt()
  {
    return this.createdAt;
  }
  
  public String getEventText(DBManager paramDBManager)
  {
    if (this.type != 7) {
      return "";
    }
    if (this.eventText == null) {
      this.eventText = e.a(paramDBManager, getSystemEvent());
    }
    return this.eventText;
  }
  
  public long getFromId()
  {
    return this.fromId;
  }
  
  public long getId()
  {
    return this.id;
  }
  
  public long getSequence()
  {
    return this.sequence;
  }
  
  public int getStatus()
  {
    return this.status;
  }
  
  public String getSummary()
  {
    if (this.summary == null) {
      return this.text;
    }
    return this.summary;
  }
  
  public SystemEvent getSystemEvent()
  {
    if ((this.systemEvent == null) && (this.type == 7)) {
      this.systemEvent = SystemEvent.fromJson(this.text);
    }
    return this.systemEvent;
  }
  
  public String getText()
  {
    return this.text;
  }
  
  public long getToId()
  {
    return this.toId;
  }
  
  public int getType()
  {
    return this.type;
  }
  
  public int hashCode()
  {
    int i = Long.valueOf(this.id).hashCode();
    int j = Long.valueOf(this.sequence).hashCode();
    int k = Math.min(i, j);
    return Math.max(i, j) + (k + 527) * 31;
  }
  
  public boolean isByMyself()
  {
    long l = this.fromId;
    u.a();
    return l == UserLogonDataPrefs.getLogonUserId();
  }
  
  public boolean isFailed()
  {
    return (isByMyself()) && (((this.status == 1) && (System.currentTimeMillis() - this.createdAt.getTime() > 30000L) && (this.type != 4)) || (this.status == -1));
  }
  
  public boolean isFromGroup()
  {
    return this.isFromGroup;
  }
  
  public boolean isNotify()
  {
    return this.isNotify;
  }
  
  public boolean isToGroup()
  {
    return this.isToGroup;
  }
  
  public void setCreatedAt(Date paramDate)
  {
    this.createdAt = paramDate;
  }
  
  public void setFromGroup(boolean paramBoolean)
  {
    this.isFromGroup = paramBoolean;
  }
  
  public void setFromId(long paramLong)
  {
    this.fromId = paramLong;
  }
  
  public void setId(long paramLong)
  {
    this.id = paramLong;
  }
  
  public void setNotify(boolean paramBoolean)
  {
    this.isNotify = paramBoolean;
  }
  
  public void setSequence(long paramLong)
  {
    this.sequence = paramLong;
  }
  
  public void setStatus(int paramInt)
  {
    this.status = paramInt;
  }
  
  public void setSummary(String paramString)
  {
    this.summary = paramString;
  }
  
  public void setSystemEvent(SystemEvent paramSystemEvent)
  {
    this.systemEvent = paramSystemEvent;
  }
  
  public void setText(String paramString)
  {
    this.text = paramString;
  }
  
  public void setToGroup(boolean paramBoolean)
  {
    this.isToGroup = paramBoolean;
  }
  
  public void setToId(long paramLong)
  {
    this.toId = paramLong;
  }
  
  public void setType(int paramInt)
  {
    this.type = paramInt;
  }
  
  public com.snowballfinance.messageplatform.data.Message toPlatformMessage()
  {
    com.snowballfinance.messageplatform.data.Message localMessage = new com.snowballfinance.messageplatform.data.Message();
    localMessage.setMessageId(Long.valueOf(getId()));
    localMessage.setToId(Long.valueOf(getToId()));
    localMessage.setToGroup(Boolean.valueOf(isToGroup()));
    localMessage.setFromId(Long.valueOf(getFromId()));
    localMessage.setFromGroup(Boolean.valueOf(isFromGroup()));
    switch (this.type)
    {
    }
    for (;;)
    {
      localMessage.setSequenceId(Long.valueOf(getSequence()));
      localMessage.setTimestamp(Long.valueOf(this.createdAt.getTime()));
      return localMessage;
      localMessage.setMessageType(MessageType.PLAIN);
      localMessage.setPlain(getText());
      continue;
      localMessage.setMessageType(MessageType.IMAGE);
      localMessage.setImage(getText().getBytes(Charset.forName("UTF-8")));
      continue;
      localMessage.setMessageType(MessageType.VIEW);
      localMessage.setView(getText());
      continue;
      localMessage.setMessageType(MessageType.CARD);
      localMessage.setCard(getText().getBytes(Charset.forName("UTF-8")));
    }
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    int i = 1;
    paramParcel.writeLong(this.id);
    paramParcel.writeLong(this.sequence);
    paramParcel.writeInt(this.type);
    paramParcel.writeInt(this.status);
    paramParcel.writeString(this.text);
    paramParcel.writeString(this.summary);
    paramParcel.writeLong(this.fromId);
    paramParcel.writeLong(this.toId);
    if (this.isFromGroup)
    {
      paramInt = 1;
      paramParcel.writeInt(paramInt);
      if (!this.isToGroup) {
        break label111;
      }
    }
    label111:
    for (paramInt = i;; paramInt = 0)
    {
      paramParcel.writeInt(paramInt);
      paramParcel.writeLong(this.createdAt.getTime());
      return;
      paramInt = 0;
      break;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\message\model\Message.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
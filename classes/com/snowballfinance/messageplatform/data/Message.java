package com.snowballfinance.messageplatform.data;

import com.snowballfinance.messageplatform.b.a;
import com.snowballfinance.messageplatform.b.b;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.Serializable;
import java.util.Map;
import java.util.concurrent.atomic.AtomicLong;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class Message
  implements Serializable
{
  public static final int PUSH_SUMMARY_LENGTH = 24;
  public static final int SUMMARY_LENGTH = 24;
  private static final Long lastImportId;
  private static final AtomicLong lastSequenceId;
  private static final long serialVersionUID = 2313394969699134241L;
  private static final String wrongPrefix = "Basic ";
  private byte[] card;
  private Boolean fromGroup;
  private Group fromGroupRef;
  private Long fromId;
  private User fromUserRef;
  private byte[] image;
  private Boolean lightweight;
  private Double[] location;
  private Long messageId;
  private MessageType messageType;
  private String plain;
  private Long sequenceId;
  private Integer sticker;
  private String summary;
  private Long timestamp;
  private Boolean toGroup;
  private Group toGroupRef;
  private Long toId;
  private User toUserRef;
  private String view;
  private byte[] voice;
  
  static
  {
    if (!Message.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      $assertionsDisabled = bool;
      lastSequenceId = new AtomicLong(0L);
      lastImportId = Long.valueOf(1208391L);
      return;
    }
  }
  
  public static Message decodeMessage(com.snowballfinance.messageplatform.a.a.d paramd)
  {
    Message localMessage = new Message();
    int i = paramd.a();
    if ((i < 0) || (i >= MessageType.values().length)) {
      throw new com.snowballfinance.messageplatform.a.a.c("unknown message type");
    }
    localMessage.setMessageType(MessageType.values()[i]);
    localMessage.setMessageId(Long.valueOf(paramd.d()));
    localMessage.setSequenceId(Long.valueOf(paramd.d()));
    localMessage.setFromId(Long.valueOf(paramd.d()));
    localMessage.setToId(Long.valueOf(paramd.d()));
    if (paramd.a() == 1)
    {
      bool1 = true;
      localMessage.setFromGroup(Boolean.valueOf(bool1));
      if (paramd.a() != 1) {
        break label301;
      }
    }
    label301:
    for (boolean bool1 = true;; bool1 = false)
    {
      localMessage.setToGroup(Boolean.valueOf(bool1));
      localMessage.setTimestamp(Long.valueOf(paramd.d()));
      bool1 = paramd.e();
      boolean bool2 = paramd.e();
      boolean bool3 = paramd.e();
      boolean bool4 = paramd.e();
      boolean bool5 = paramd.e();
      boolean bool6 = paramd.e();
      boolean bool7 = paramd.e();
      paramd.b = 0;
      if (bool1) {
        localMessage.setPlain(paramd.g());
      }
      if (bool2) {
        localMessage.setView(paramd.g());
      }
      if (bool3) {
        localMessage.setSticker(Integer.valueOf(paramd.b()));
      }
      if (bool4) {
        localMessage.setCard(paramd.i());
      }
      if (bool5) {
        localMessage.setImage(paramd.i());
      }
      if (bool6) {
        decodeMessageExt(localMessage, paramd.i());
      }
      if (bool7) {
        localMessage.setLocation(new Double[] { Double.valueOf(paramd.f()), Double.valueOf(paramd.f()) });
      }
      return localMessage;
      bool1 = false;
      break;
    }
  }
  
  private static void decodeMessageExt(Message paramMessage, byte[] paramArrayOfByte)
  {
    boolean bool1 = true;
    paramArrayOfByte = new com.snowballfinance.messageplatform.a.a.d(new ByteArrayInputStream(paramArrayOfByte));
    boolean bool2 = paramArrayOfByte.e();
    boolean bool3 = paramArrayOfByte.e();
    boolean bool4 = paramArrayOfByte.e();
    paramArrayOfByte.b = 0;
    if (bool2) {
      paramMessage.setVoice(paramArrayOfByte.i());
    }
    if (bool3) {
      paramMessage.setSummary(paramArrayOfByte.g());
    }
    if (bool4) {
      if (paramArrayOfByte.a() != 1) {
        break label87;
      }
    }
    for (;;)
    {
      paramMessage.setLightweight(Boolean.valueOf(bool1));
      return;
      label87:
      bool1 = false;
    }
  }
  
  private byte[] encodeMessageExt()
  {
    int i = 1;
    com.snowballfinance.messageplatform.a.a.e locale = new com.snowballfinance.messageplatform.a.a.e();
    boolean bool1;
    boolean bool2;
    label29:
    boolean bool3;
    if (this.voice != null)
    {
      bool1 = true;
      if (this.summary == null) {
        break label115;
      }
      bool2 = true;
      if (this.lightweight == null) {
        break label121;
      }
      bool3 = true;
      label39:
      locale.a(bool1);
      locale.a(bool2);
      locale.a(bool3);
      locale.a();
      if (bool1) {
        locale.a(this.voice);
      }
      if (bool2) {
        locale.a(this.summary);
      }
      if (bool3) {
        if (!this.lightweight.booleanValue()) {
          break label127;
        }
      }
    }
    for (;;)
    {
      locale.a(i);
      return locale.toByteArray();
      bool1 = false;
      break;
      label115:
      bool2 = false;
      break label29;
      label121:
      bool3 = false;
      break label39;
      label127:
      i = 0;
    }
  }
  
  public static long getNextSequenceId()
  {
    return lastSequenceId.incrementAndGet();
  }
  
  private String getViewUrl()
  {
    String str2 = "";
    String str1 = this.view;
    int i;
    if ((!str1.startsWith("[")) && (!str1.startsWith("{")))
    {
      i = 1;
      if (i == 0) {
        break label51;
      }
      str1 = this.view;
    }
    for (;;)
    {
      return com.snowballfinance.messageplatform.b.e.a(str1);
      i = 0;
      break;
      label51:
      Map localMap = com.snowballfinance.messageplatform.b.d.b(this.view);
      str1 = str2;
      if (localMap != null)
      {
        str1 = str2;
        if (localMap.containsKey("url")) {
          str1 = localMap.get("url");
        }
      }
    }
  }
  
  public static String removeWrongPrefix(String paramString)
  {
    String str = paramString;
    if (paramString != null)
    {
      str = paramString;
      if (paramString.startsWith("Basic ")) {
        str = paramString.replaceFirst("Basic ", "");
      }
    }
    return str;
  }
  
  public static Message systemEventMessage(SystemEvent paramSystemEvent, Long paramLong, Boolean paramBoolean)
  {
    Message localMessage = new Message();
    localMessage.setFromGroup(Boolean.valueOf(false));
    localMessage.setFromId(Predef.SYSTEM_USER_ID);
    localMessage.setToId(paramLong);
    localMessage.setToGroup(paramBoolean);
    localMessage.setPlain(paramSystemEvent.toJson());
    localMessage.setMessageType(MessageType.SYSTEM_EVENT);
    return localMessage;
  }
  
  public Message clone()
  {
    try
    {
      Object localObject = new com.snowballfinance.messageplatform.a.a.e();
      encodeMessage((com.snowballfinance.messageplatform.a.a.e)localObject);
      byte[] arrayOfByte = ((com.snowballfinance.messageplatform.a.a.e)localObject).toByteArray();
      ((com.snowballfinance.messageplatform.a.a.e)localObject).close();
      localObject = decodeMessage(new com.snowballfinance.messageplatform.a.a.d(new ByteArrayInputStream(arrayOfByte)));
      return (Message)localObject;
    }
    catch (IOException localIOException) {}
    return null;
  }
  
  public String description()
  {
    return "id=" + this.messageId + "|seq=" + this.sequenceId + "|from=" + this.fromId + "|to=" + this.toId + "|group=" + this.toGroup;
  }
  
  public void encodeMessage(com.snowballfinance.messageplatform.a.a.e parame)
  {
    long l2 = 0L;
    assert (this.messageType != null);
    assert (this.fromId != null);
    assert (this.toId != null);
    boolean bool1;
    long l1;
    label116:
    label136:
    int i;
    if ((this.voice != null) || (this.summary != null) || (this.lightweight != null))
    {
      bool1 = true;
      parame.a(this.messageType.ordinal());
      if (this.messageId == null) {
        break label489;
      }
      l1 = this.messageId.longValue();
      parame.a(l1);
      if (this.sequenceId == null) {
        break label494;
      }
      l1 = this.sequenceId.longValue();
      parame.a(l1);
      parame.a(this.fromId.longValue());
      parame.a(this.toId.longValue());
      if ((this.fromGroup == null) || (!this.fromGroup.booleanValue())) {
        break label499;
      }
      i = 1;
      label182:
      parame.a(i);
      if ((this.toGroup == null) || (!this.toGroup.booleanValue())) {
        break label504;
      }
      i = 1;
      label206:
      parame.a(i);
      l1 = l2;
      if (this.timestamp != null) {
        l1 = this.timestamp.longValue();
      }
      parame.a(l1);
      if (this.plain == null) {
        break label509;
      }
      bool2 = true;
      label244:
      parame.a(bool2);
      if (this.view == null) {
        break label515;
      }
      bool2 = true;
      label260:
      parame.a(bool2);
      if (this.sticker == null) {
        break label521;
      }
      bool2 = true;
      label276:
      parame.a(bool2);
      if (this.card == null) {
        break label527;
      }
      bool2 = true;
      label292:
      parame.a(bool2);
      if (this.image == null) {
        break label533;
      }
      bool2 = true;
      label308:
      parame.a(bool2);
      parame.a(bool1);
      if ((this.location == null) || (this.location.length != 2)) {
        break label539;
      }
    }
    label489:
    label494:
    label499:
    label504:
    label509:
    label515:
    label521:
    label527:
    label533:
    label539:
    for (boolean bool2 = true;; bool2 = false)
    {
      parame.a(bool2);
      parame.a();
      if (this.plain != null) {
        parame.a(this.plain);
      }
      if (this.view != null) {
        parame.a(this.view);
      }
      if (this.sticker != null) {
        parame.b(this.sticker.intValue());
      }
      if (this.card != null) {
        parame.a(this.card);
      }
      if (this.image != null) {
        parame.a(this.image);
      }
      if (bool1) {
        parame.a(encodeMessageExt());
      }
      if ((this.location != null) && (this.location.length == 2))
      {
        parame.a(this.location[0].doubleValue());
        parame.a(this.location[1].doubleValue());
      }
      return;
      bool1 = false;
      break;
      l1 = 0L;
      break label116;
      l1 = 0L;
      break label136;
      i = 0;
      break label182;
      i = 0;
      break label206;
      bool2 = false;
      break label244;
      bool2 = false;
      break label260;
      bool2 = false;
      break label276;
      bool2 = false;
      break label292;
      bool2 = false;
      break label308;
    }
  }
  
  public void fixImportPrefixIssue()
  {
    if ((this.plain != null) && ((this.messageId == null) || (this.messageId.longValue() <= lastImportId.longValue()))) {
      this.plain = removeWrongPrefix(this.plain);
    }
  }
  
  public String generateSummary()
  {
    Object localObject;
    if (this.summary != null) {
      localObject = this.summary;
    }
    String str2;
    do
    {
      String str1;
      do
      {
        return (String)localObject;
        if (MessageType.SYSTEM_EVENT.equals(this.messageType)) {
          return "[系统消息]";
        }
        if (MessageType.IMAGE.equals(this.messageType)) {
          return "[图片]";
        }
        if (!MessageType.VIEW.equals(this.messageType)) {
          break;
        }
        str2 = getViewUrl();
        str1 = "[卡片]";
        localObject = str1;
      } while (str2 == null);
      if (com.snowballfinance.messageplatform.b.e.b.matcher(str2).matches()) {
        return "[群组页]";
      }
      if (com.snowballfinance.messageplatform.b.e.a.matcher(str2).matches())
      {
        localObject = com.snowballfinance.messageplatform.b.e.a(com.snowballfinance.messageplatform.b.e.c(com.snowballfinance.messageplatform.b.e.b(str2)));
        return "[" + (String)localObject + "]";
      }
      if ((com.snowballfinance.messageplatform.b.e.c.matcher(str2).matches()) || (com.snowballfinance.messageplatform.b.e.d.matcher(str2).matches())) {
        return "[讨论]";
      }
      localObject = str1;
    } while (!com.snowballfinance.messageplatform.b.e.e.matcher(str2).matches());
    return "[个人页]";
    if (MessageType.CARD.equals(this.messageType)) {
      return "[名片]";
    }
    if (MessageType.LOCATION.equals(this.messageType)) {
      return "[位置]";
    }
    if (MessageType.VOICE.equals(this.messageType)) {
      return "[声音]";
    }
    if (MessageType.STICKER.equals(this.messageType)) {
      return "[贴纸]";
    }
    if (this.plain != null)
    {
      if (this.plain.length() > 24) {
        return this.plain.substring(0, 24) + "...";
      }
      return this.plain;
    }
    return "[" + this.messageId + "]";
  }
  
  public byte[] getCard()
  {
    return this.card;
  }
  
  public Boolean getFromGroup()
  {
    return this.fromGroup;
  }
  
  public Group getFromGroupRef()
  {
    return this.fromGroupRef;
  }
  
  public Long getFromId()
  {
    return this.fromId;
  }
  
  public User getFromUserRef()
  {
    return this.fromUserRef;
  }
  
  public byte[] getImage()
  {
    return this.image;
  }
  
  public Boolean getLightweight()
  {
    return this.lightweight;
  }
  
  public Double[] getLocation()
  {
    return this.location;
  }
  
  public Long getMessageId()
  {
    return this.messageId;
  }
  
  public MessageType getMessageType()
  {
    return this.messageType;
  }
  
  public String getPlain()
  {
    return this.plain;
  }
  
  public Long getSequenceId()
  {
    return this.sequenceId;
  }
  
  public Integer getSticker()
  {
    return this.sticker;
  }
  
  public String getSummary()
  {
    return this.summary;
  }
  
  public SystemEvent getSystemEvent()
  {
    if (isSystemMessage().booleanValue()) {
      return SystemEvent.fromJson(getPlain());
    }
    return null;
  }
  
  public Long getTimestamp()
  {
    return this.timestamp;
  }
  
  public Boolean getToGroup()
  {
    return this.toGroup;
  }
  
  public Group getToGroupRef()
  {
    return this.toGroupRef;
  }
  
  public Long getToId()
  {
    return this.toId;
  }
  
  public User getToUserRef()
  {
    return this.toUserRef;
  }
  
  public String getView()
  {
    return this.view;
  }
  
  public byte[] getVoice()
  {
    return this.voice;
  }
  
  public Boolean isSystemMessage()
  {
    if (((this.fromId != null) && (this.fromId.longValue() == 0L)) || (MessageType.SYSTEM_EVENT.equals(this.messageType))) {}
    for (boolean bool = true;; bool = false) {
      return Boolean.valueOf(bool);
    }
  }
  
  public void setCard(byte[] paramArrayOfByte)
  {
    this.card = paramArrayOfByte;
  }
  
  public void setFromGroup(Boolean paramBoolean)
  {
    this.fromGroup = paramBoolean;
  }
  
  public void setFromGroupRef(Group paramGroup)
  {
    this.fromGroupRef = paramGroup;
  }
  
  public void setFromId(Long paramLong)
  {
    this.fromId = paramLong;
  }
  
  public void setFromUserRef(User paramUser)
  {
    this.fromUserRef = paramUser;
  }
  
  public void setImage(byte[] paramArrayOfByte)
  {
    this.image = paramArrayOfByte;
  }
  
  public void setLightweight(Boolean paramBoolean)
  {
    this.lightweight = paramBoolean;
  }
  
  public void setLocation(Double[] paramArrayOfDouble)
  {
    this.location = paramArrayOfDouble;
  }
  
  public void setMessageId(Long paramLong)
  {
    this.messageId = paramLong;
  }
  
  public void setMessageType(MessageType paramMessageType)
  {
    this.messageType = paramMessageType;
  }
  
  public void setPlain(String paramString)
  {
    this.plain = paramString;
  }
  
  public void setSequenceId(Long paramLong)
  {
    this.sequenceId = paramLong;
  }
  
  public void setSticker(Integer paramInteger)
  {
    this.sticker = paramInteger;
  }
  
  public void setSummary(String paramString)
  {
    this.summary = paramString;
  }
  
  public void setTimestamp(Long paramLong)
  {
    this.timestamp = paramLong;
  }
  
  public void setToGroup(Boolean paramBoolean)
  {
    this.toGroup = paramBoolean;
  }
  
  public void setToGroupRef(Group paramGroup)
  {
    this.toGroupRef = paramGroup;
  }
  
  public void setToId(Long paramLong)
  {
    this.toId = paramLong;
  }
  
  public void setToUserRef(User paramUser)
  {
    this.toUserRef = paramUser;
  }
  
  public void setView(String paramString)
  {
    this.view = paramString;
  }
  
  public void setVoice(byte[] paramArrayOfByte)
  {
    this.voice = paramArrayOfByte;
  }
  
  public String toString()
  {
    return "Message{messageId=" + this.messageId + ", sequenceId=" + this.sequenceId + ", fromId=" + this.fromId + ", toId=" + this.toId + ", timestamp=" + this.timestamp + ", fromGroup=" + this.fromGroup + ", toGroup=" + this.toGroup + ", messageType=" + this.messageType + ", lightweight=" + this.lightweight + ", summary=" + generateSummary() + '}';
  }
  
  public void useAbsUrl()
  {
    if ((getMessageType().equals(MessageType.IMAGE)) && (getImage() != null)) {
      setImage(a.a(a.a(getImage()).replace(com.snowballfinance.messageplatform.b.c.d.a(), com.snowballfinance.messageplatform.b.c.d.b())));
    }
    while ((!getMessageType().equals(MessageType.VIEW)) || (getView() == null)) {
      return;
    }
    setView(getView().replace(com.snowballfinance.messageplatform.b.c.b.a(), com.snowballfinance.messageplatform.b.c.b.b()).replace(com.snowballfinance.messageplatform.b.c.a.a(), com.snowballfinance.messageplatform.b.c.a.b()));
  }
  
  public void useDynamicUrl()
  {
    if ((getMessageType().equals(MessageType.IMAGE)) && (getImage() != null)) {
      setImage(a.a(b.a(a.a(getImage()), com.snowballfinance.messageplatform.b.c.d.a())));
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\snowballfinance\messageplatform\data\Message.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
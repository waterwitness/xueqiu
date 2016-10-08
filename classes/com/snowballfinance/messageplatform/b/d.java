package com.snowballfinance.messageplatform.b;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonPrimitive;
import com.google.gson.reflect.TypeToken;
import com.snowballfinance.messageplatform.data.Device;
import com.snowballfinance.messageplatform.data.Group;
import com.snowballfinance.messageplatform.data.Menu;
import com.snowballfinance.messageplatform.data.MenuItem;
import com.snowballfinance.messageplatform.data.MenuItemType;
import com.snowballfinance.messageplatform.data.MenuType;
import com.snowballfinance.messageplatform.data.Message;
import com.snowballfinance.messageplatform.data.MessageSession;
import com.snowballfinance.messageplatform.data.MessageSessionExt;
import com.snowballfinance.messageplatform.data.MessageStatus;
import com.snowballfinance.messageplatform.data.MessageType;
import com.snowballfinance.messageplatform.data.User;
import com.snowballfinance.messageplatform.data.UserType;
import com.snowballfinance.messageplatform.data.VerifiedType;
import java.io.UnsupportedEncodingException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public final class d
{
  private static Gson a = new Gson();
  private static DateFormat b = new SimpleDateFormat("EEE MMM dd HH:mm:ss Z yyyy");
  
  public static JsonArray a(Collection<?> paramCollection)
  {
    if (paramCollection == null) {
      return null;
    }
    JsonArray localJsonArray = new JsonArray();
    paramCollection = paramCollection.iterator();
    while (paramCollection.hasNext())
    {
      Object localObject = paramCollection.next();
      JsonObject localJsonObject;
      if ((localObject instanceof Device))
      {
        localObject = (Device)localObject;
        localJsonObject = new JsonObject();
        if (((Device)localObject).getDeviceId() != null) {
          localJsonObject.addProperty("deviceId", ((Device)localObject).getDeviceId());
        }
        if (((Device)localObject).getLastConnectedTime() != null) {
          localJsonObject.addProperty("lastConnectedTime", ((Device)localObject).getLastConnectedTime());
        }
        if (((Device)localObject).getPlatformId() != null) {
          localJsonObject.addProperty("platformId", ((Device)localObject).getPlatformId());
        }
        if (((Device)localObject).getPrimary() != null) {
          localJsonObject.addProperty("primary", ((Device)localObject).getPrimary());
        }
        if (((Device)localObject).getProxyId() != null) {
          localJsonObject.addProperty("proxyId", ((Device)localObject).getProxyId());
        }
        if (((Device)localObject).getUserId() != null) {
          localJsonObject.addProperty("userId", ((Device)localObject).getUserId());
        }
        if (((Device)localObject).getVersion() != null) {
          localJsonObject.addProperty("version", ((Device)localObject).getVersion());
        }
        if (((Device)localObject).getChannel() != null) {
          localJsonObject.addProperty("channel", ((Device)localObject).getChannel());
        }
        localJsonArray.add(localJsonObject);
      }
      else if ((localObject instanceof MessageSession))
      {
        localJsonArray.add(a((MessageSession)localObject));
      }
      else if ((localObject instanceof MessageSessionExt))
      {
        localObject = (MessageSessionExt)localObject;
        localJsonObject = new JsonObject();
        localJsonObject.addProperty("ownerId", ((MessageSessionExt)localObject).getOwnerId());
        localJsonObject.addProperty("targetGroup", ((MessageSessionExt)localObject).getTargetGroup());
        localJsonObject.addProperty("targetId", ((MessageSessionExt)localObject).getTargetId());
        localJsonObject.addProperty("targetLastReadTimestamp", ((MessageSessionExt)localObject).getTargetLastReadTimestamp());
        localJsonArray.add(localJsonObject);
      }
      else if ((localObject instanceof Message))
      {
        localJsonArray.add(a((Message)localObject));
      }
      else if ((localObject instanceof MenuItem))
      {
        localObject = (MenuItem)localObject;
        localJsonObject = new JsonObject();
        if (((MenuItem)localObject).getId() != null) {
          localJsonObject.addProperty("id", ((MenuItem)localObject).getId());
        }
        if (((MenuItem)localObject).getName() != null) {
          localJsonObject.addProperty("name", ((MenuItem)localObject).getName());
        }
        if (((MenuItem)localObject).getSubItems() != null) {
          localJsonObject.add("items", a(((MenuItem)localObject).getSubItems()));
        }
        if (((MenuItem)localObject).getType() != null) {
          localJsonObject.addProperty("type", ((MenuItem)localObject).getType().name());
        }
        if (((MenuItem)localObject).getUrl() != null) {
          localJsonObject.addProperty("url", ((MenuItem)localObject).getUrl());
        }
        localJsonArray.add(localJsonObject);
      }
      else if ((localObject instanceof MessageStatus))
      {
        localObject = (MessageStatus)localObject;
        localJsonObject = new JsonObject();
        if (((MessageStatus)localObject).getError() != null) {
          localJsonObject.addProperty("error", ((MessageStatus)localObject).getError());
        }
        if (((MessageStatus)localObject).getMessage() != null) {
          localJsonObject.add("message", a(((MessageStatus)localObject).getMessage()));
        }
        if (((MessageStatus)localObject).getNotifySender() != null) {
          localJsonObject.addProperty("notifySender", ((MessageStatus)localObject).getNotifySender());
        }
        localJsonArray.add(localJsonObject);
      }
      else if ((localObject instanceof Long))
      {
        localJsonArray.add(new JsonPrimitive((Long)localObject));
      }
    }
    return localJsonArray;
  }
  
  public static JsonElement a(String paramString)
  {
    if (paramString.isEmpty()) {
      return null;
    }
    try
    {
      paramString = (JsonElement)a.fromJson(paramString, JsonElement.class);
      return paramString;
    }
    catch (Throwable paramString)
    {
      throw new RuntimeException(paramString);
    }
  }
  
  private static JsonObject a(Group paramGroup)
  {
    JsonObject localJsonObject = new JsonObject();
    localJsonObject.addProperty("name", paramGroup.getName());
    localJsonObject.addProperty("isPublic", paramGroup.getIsPublic());
    localJsonObject.addProperty("id", paramGroup.getId());
    localJsonObject.addProperty("ownerId", paramGroup.getOwnerId());
    localJsonObject.addProperty("truncated", paramGroup.getTruncated());
    localJsonObject.addProperty("joined", paramGroup.getJoined());
    localJsonObject.addProperty("profileImageUrl", paramGroup.getProfileImageUrl());
    localJsonObject.addProperty("emptyName", paramGroup.getEmptyName());
    localJsonObject.addProperty("count", paramGroup.getCount());
    localJsonObject.addProperty("limitCount", paramGroup.getLimitCount());
    localJsonObject.addProperty("allowInviteUser", paramGroup.getAllowInviteUser());
    return localJsonObject;
  }
  
  private static JsonObject a(Message paramMessage)
  {
    JsonObject localJsonObject = new JsonObject();
    localJsonObject.addProperty("messageType", paramMessage.getMessageType().name());
    localJsonObject.addProperty("messageId", paramMessage.getMessageId());
    localJsonObject.addProperty("sequenceId", paramMessage.getSequenceId());
    localJsonObject.addProperty("fromId", paramMessage.getFromId());
    localJsonObject.addProperty("toId", paramMessage.getToId());
    localJsonObject.addProperty("fromGroup", paramMessage.getFromGroup());
    localJsonObject.addProperty("toGroup", paramMessage.getToGroup());
    localJsonObject.addProperty("timestamp", paramMessage.getTimestamp());
    if (paramMessage.getSummary() != null) {
      localJsonObject.addProperty("summary", paramMessage.getSummary());
    }
    if (paramMessage.getLightweight() != null) {
      localJsonObject.addProperty("lightweight", paramMessage.getLightweight());
    }
    if (paramMessage.getPlain() != null) {
      localJsonObject.addProperty("plain", paramMessage.getPlain());
    }
    if (paramMessage.getImage() != null) {}
    try
    {
      String str = new String(paramMessage.getImage(), "UTF-8");
      localJsonObject.addProperty("image", str);
      if (paramMessage.getView() != null) {
        localJsonObject.addProperty("view", paramMessage.getView());
      }
      if (paramMessage.getCard() != null) {
        localJsonObject.addProperty("card", a.a(paramMessage.getCard()));
      }
      if (paramMessage.getFromUserRef() != null) {
        localJsonObject.add("fromUserRef", a(paramMessage.getFromUserRef()));
      }
      if (paramMessage.getFromGroupRef() != null) {
        localJsonObject.add("fromGroupRef", a(paramMessage.getFromGroupRef()));
      }
      if (paramMessage.getToGroupRef() != null) {
        localJsonObject.add("toGroupRef", a(paramMessage.getToGroupRef()));
      }
      if (paramMessage.getToUserRef() != null) {
        localJsonObject.add("toUserRef", a(paramMessage.getToUserRef()));
      }
      return localJsonObject;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      for (;;)
      {
        localUnsupportedEncodingException.printStackTrace();
        Object localObject = null;
      }
    }
  }
  
  public static JsonObject a(MessageSession paramMessageSession)
  {
    JsonObject localJsonObject = new JsonObject();
    localJsonObject.addProperty("activeFlag", paramMessageSession.getActiveFlag());
    localJsonObject.addProperty("notificationFlag", paramMessageSession.getNotificationFlag());
    localJsonObject.addProperty("ownerId", paramMessageSession.getOwnerId());
    localJsonObject.addProperty("summary", paramMessageSession.getSummary());
    localJsonObject.addProperty("stickyFlag", paramMessageSession.getStickyFlag());
    localJsonObject.addProperty("targetGroup", paramMessageSession.getTargetGroup());
    localJsonObject.addProperty("targetId", paramMessageSession.getTargetId());
    localJsonObject.addProperty("timestamp", paramMessageSession.getTimestamp());
    localJsonObject.addProperty("unreadCount", paramMessageSession.getUnreadCount());
    localJsonObject.addProperty("collapsed", paramMessageSession.getCollapsed());
    if (paramMessageSession.getOwnerRef() != null) {
      localJsonObject.add("ownerRef", a(paramMessageSession.getOwnerRef()));
    }
    if (paramMessageSession.getTargetGroupRef() != null) {
      localJsonObject.add("targetGroupRef", a(paramMessageSession.getTargetGroupRef()));
    }
    if (paramMessageSession.getTargetUserRef() != null) {
      localJsonObject.add("targetUserRef", a(paramMessageSession.getTargetUserRef()));
    }
    return localJsonObject;
  }
  
  private static JsonObject a(User paramUser)
  {
    JsonObject localJsonObject = new JsonObject();
    localJsonObject.addProperty("screenName", paramUser.getScreenName());
    localJsonObject.addProperty("province", paramUser.getProvince());
    localJsonObject.addProperty("city", paramUser.getCity());
    localJsonObject.addProperty("description", paramUser.getDescription());
    localJsonObject.addProperty("profileImageUrl", paramUser.getProfileImageUrl());
    localJsonObject.addProperty("domain", paramUser.getDomain());
    localJsonObject.addProperty("gender", paramUser.getGender());
    localJsonObject.addProperty("verified", paramUser.getVerified());
    localJsonObject.addProperty("email", paramUser.getEmail());
    localJsonObject.addProperty("areaCode", paramUser.getAreaCode());
    localJsonObject.addProperty("followersCount", paramUser.getFollowersCount());
    localJsonObject.addProperty("friendsCount", paramUser.getFriendsCount());
    localJsonObject.addProperty("statusCount", paramUser.getStatusCount());
    localJsonObject.addProperty("id", paramUser.getId());
    if (paramUser.getType() != null) {
      localJsonObject.addProperty("type", paramUser.getType().name());
    }
    if (paramUser.getVerifiedType() != null) {
      localJsonObject.addProperty("verifiedType", paramUser.getVerifiedType().name());
    }
    return localJsonObject;
  }
  
  public static Message a(JsonObject paramJsonObject)
  {
    long l2 = 0L;
    boolean bool2 = true;
    String str = null;
    Message localMessage = new Message();
    long l1;
    Long localLong1;
    label103:
    Long localLong2;
    label133:
    boolean bool1;
    label165:
    long l3;
    if (!b(paramJsonObject.get("messageId")).booleanValue())
    {
      l1 = paramJsonObject.get("messageId").getAsLong();
      if (!b(paramJsonObject.get("sequenceId")).booleanValue()) {
        l2 = paramJsonObject.get("sequenceId").getAsLong();
      }
      if (b(paramJsonObject.get("fromId")).booleanValue()) {
        break label473;
      }
      localLong1 = Long.valueOf(paramJsonObject.get("fromId").getAsLong());
      if (b(paramJsonObject.get("toId")).booleanValue()) {
        break label478;
      }
      localLong2 = Long.valueOf(paramJsonObject.get("toId").getAsLong());
      if ((b(paramJsonObject.get("toGroup")).booleanValue()) || (!paramJsonObject.get("toGroup").getAsBoolean())) {
        break label483;
      }
      bool1 = true;
      if (b(paramJsonObject.get("timestamp")).booleanValue()) {
        break label489;
      }
      l3 = paramJsonObject.get("timestamp").getAsLong();
      label193:
      if ((b(paramJsonObject.get("lightweight")).booleanValue()) || (!paramJsonObject.get("lightweight").getAsBoolean())) {
        break label497;
      }
    }
    for (;;)
    {
      if (!b(paramJsonObject.get("summary")).booleanValue()) {
        str = paramJsonObject.get("summary").getAsString();
      }
      localMessage.setMessageId(Long.valueOf(l1));
      localMessage.setSequenceId(Long.valueOf(l2));
      localMessage.setFromId(localLong1);
      localMessage.setToId(localLong2);
      localMessage.setFromGroup(Boolean.valueOf(false));
      localMessage.setToGroup(Boolean.valueOf(bool1));
      localMessage.setTimestamp(Long.valueOf(l3));
      localMessage.setLightweight(Boolean.valueOf(bool2));
      localMessage.setSummary(str);
      if (paramJsonObject.get("plain") != null)
      {
        localMessage.setMessageType(MessageType.PLAIN);
        localMessage.setPlain(paramJsonObject.get("plain").getAsString());
      }
      if (paramJsonObject.get("image") != null)
      {
        localMessage.setMessageType(MessageType.IMAGE);
        localMessage.setImage(a.a(paramJsonObject.get("image").getAsString()));
      }
      if (paramJsonObject.get("card") != null)
      {
        localMessage.setMessageType(MessageType.CARD);
        localMessage.setCard(a.a(paramJsonObject.get("card").getAsString()));
      }
      if (paramJsonObject.get("view") != null)
      {
        localMessage.setMessageType(MessageType.VIEW);
        localMessage.setView(paramJsonObject.get("view").getAsString());
      }
      return localMessage;
      l1 = 0L;
      break;
      label473:
      localLong1 = null;
      break label103;
      label478:
      localLong2 = null;
      break label133;
      label483:
      bool1 = false;
      break label165;
      label489:
      l3 = System.currentTimeMillis();
      break label193;
      label497:
      bool2 = false;
    }
  }
  
  public static String a(Map<String, Object> paramMap)
  {
    try
    {
      paramMap = a.toJson(paramMap);
      return paramMap;
    }
    catch (Throwable paramMap)
    {
      throw new RuntimeException(paramMap);
    }
  }
  
  public static List<Message> a(JsonElement paramJsonElement)
  {
    ArrayList localArrayList = new ArrayList();
    if (paramJsonElement != null)
    {
      paramJsonElement = paramJsonElement.getAsJsonArray().iterator();
      while (paramJsonElement.hasNext()) {
        localArrayList.add(a(((JsonElement)paramJsonElement.next()).getAsJsonObject()));
      }
    }
    return localArrayList;
  }
  
  public static Set<Long> a(Map<String, Object> paramMap, String paramString)
  {
    HashSet localHashSet = new HashSet();
    paramMap = paramMap.get(paramString);
    if ((paramMap != null) && ((paramMap instanceof Collection)))
    {
      paramMap = ((Collection)paramMap).iterator();
      while (paramMap.hasNext())
      {
        paramString = paramMap.next();
        if ((paramString instanceof Double)) {
          localHashSet.add(Long.valueOf(((Double)paramString).longValue()));
        } else if ((paramString instanceof Long)) {
          localHashSet.add((Long)paramString);
        }
      }
    }
    return localHashSet;
  }
  
  public static Menu b(JsonObject paramJsonObject)
  {
    if (!b(paramJsonObject).booleanValue())
    {
      Menu localMenu = new Menu();
      if (paramJsonObject.has("id")) {
        localMenu.setId(Long.valueOf(paramJsonObject.get("id").getAsLong()));
      }
      if (paramJsonObject.has("ts")) {
        localMenu.setTs(Long.valueOf(paramJsonObject.get("ts").getAsLong()));
      }
      if (paramJsonObject.has("type")) {
        localMenu.setType(MenuType.valueOf(paramJsonObject.get("type").getAsString()));
      }
      if (paramJsonObject.has("userId")) {
        localMenu.setUserId(Long.valueOf(paramJsonObject.get("userId").getAsLong()));
      }
      if (paramJsonObject.has("items"))
      {
        Object localObject = paramJsonObject.get("items").getAsJsonArray();
        paramJsonObject = new ArrayList();
        if (localObject != null)
        {
          localObject = ((JsonArray)localObject).iterator();
          while (((Iterator)localObject).hasNext()) {
            paramJsonObject.add(c(((JsonElement)((Iterator)localObject).next()).getAsJsonObject()));
          }
        }
        localMenu.setMenuItems(paramJsonObject);
      }
      return localMenu;
    }
    return null;
  }
  
  private static Boolean b(JsonElement paramJsonElement)
  {
    if ((paramJsonElement == null) || (paramJsonElement.isJsonNull())) {}
    for (boolean bool = true;; bool = false) {
      return Boolean.valueOf(bool);
    }
  }
  
  public static Long b(Map<String, Object> paramMap, String paramString)
  {
    paramMap = paramMap.get(paramString);
    if ((paramMap instanceof Double)) {
      return Long.valueOf(((Double)paramMap).longValue());
    }
    if ((paramMap instanceof Long)) {
      return (Long)paramMap;
    }
    return null;
  }
  
  public static Map<String, Object> b(String paramString)
  {
    try
    {
      paramString = (Map)a.fromJson(paramString, new TypeToken() {}.getType());
      return paramString;
    }
    catch (Throwable paramString)
    {
      throw new RuntimeException(paramString);
    }
  }
  
  private static MenuItem c(JsonObject paramJsonObject)
  {
    if (b(paramJsonObject).booleanValue()) {
      return null;
    }
    MenuItem localMenuItem = new MenuItem();
    if (paramJsonObject.has("id")) {
      localMenuItem.setId(paramJsonObject.get("id").getAsString());
    }
    if (paramJsonObject.has("name")) {
      localMenuItem.setName(paramJsonObject.get("name").getAsString());
    }
    if (paramJsonObject.has("items"))
    {
      Object localObject = paramJsonObject.get("items").getAsJsonArray();
      ArrayList localArrayList = new ArrayList();
      localObject = ((JsonArray)localObject).iterator();
      while (((Iterator)localObject).hasNext()) {
        localArrayList.add(c(((JsonElement)((Iterator)localObject).next()).getAsJsonObject()));
      }
      localMenuItem.setSubItems(localArrayList);
    }
    if (paramJsonObject.has("type")) {
      localMenuItem.setType(MenuItemType.valueOf(paramJsonObject.get("type").getAsString()));
    }
    if (paramJsonObject.has("url")) {
      localMenuItem.setUrl(paramJsonObject.get("url").getAsString());
    }
    return localMenuItem;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\snowballfinance\messageplatform\b\d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
package com.xueqiu.android.community.model;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;

public class PublicTimelineStatus
{
  @Expose
  private String column;
  @Expose
  private String description;
  @Expose
  private JsonElement picSize;
  @Expose
  private int picType;
  @Expose
  private boolean promotion;
  @Expose
  private int replyCount;
  @Expose
  private int retweetCount;
  @Expose
  @SerializedName("id")
  private long statusId;
  @Expose
  private String target;
  @Expose
  private String title;
  @Expose
  private String topicDesc;
  @Expose
  private String topicPic;
  @Expose
  private String topicPicHd;
  @Expose
  private String topicSymbol;
  @Expose
  private String topicTitle;
  @Expose
  private User user;
  
  public String getColumn()
  {
    return this.column;
  }
  
  public String getDescription()
  {
    return this.description;
  }
  
  public int getPicType()
  {
    return this.picType;
  }
  
  public int getReplyCount()
  {
    return this.replyCount;
  }
  
  public int getRetweetCount()
  {
    return this.retweetCount;
  }
  
  public long getStatusId()
  {
    return this.statusId;
  }
  
  public String getTarget()
  {
    return this.target;
  }
  
  public String getTitle()
  {
    return this.title;
  }
  
  public String getTopicDesc()
  {
    return this.topicDesc;
  }
  
  public String getTopicPic()
  {
    return this.topicPic;
  }
  
  public String getTopicPicHd()
  {
    return this.topicPicHd;
  }
  
  public String getTopicSymbol()
  {
    return this.topicSymbol;
  }
  
  public String getTopicTitle()
  {
    return this.topicTitle;
  }
  
  public User getUser()
  {
    return this.user;
  }
  
  public boolean isPromotion()
  {
    return this.promotion;
  }
  
  public double proportion()
  {
    if (this.picSize != null)
    {
      JsonObject localJsonObject = (JsonObject)this.picSize;
      if ((localJsonObject.has("height")) && (localJsonObject.has("width")))
      {
        int i = localJsonObject.get("height").getAsInt();
        int j = localJsonObject.get("width").getAsInt();
        return i / j;
      }
      return 0.525D;
    }
    return 0.525D;
  }
  
  public void setColumn(String paramString)
  {
    this.column = paramString;
  }
  
  public void setDescription(String paramString)
  {
    this.description = paramString;
  }
  
  public void setPicType(int paramInt)
  {
    this.picType = paramInt;
  }
  
  public void setPromotion(boolean paramBoolean)
  {
    this.promotion = paramBoolean;
  }
  
  public void setReplyCount(int paramInt)
  {
    this.replyCount = paramInt;
  }
  
  public void setRetweetCount(int paramInt)
  {
    this.retweetCount = paramInt;
  }
  
  public void setStatusId(long paramLong)
  {
    this.statusId = paramLong;
  }
  
  public void setTarget(String paramString)
  {
    this.target = paramString;
  }
  
  public void setTitle(String paramString)
  {
    this.title = paramString;
  }
  
  public void setTopicDesc(String paramString)
  {
    this.topicDesc = paramString;
  }
  
  public void setTopicPic(String paramString)
  {
    this.topicPic = paramString;
  }
  
  public void setTopicPicHd(String paramString)
  {
    this.topicPicHd = paramString;
  }
  
  public void setTopicSymbol(String paramString)
  {
    this.topicSymbol = paramString;
  }
  
  public void setTopicTitle(String paramString)
  {
    this.topicTitle = paramString;
  }
  
  public void setUser(User paramUser)
  {
    this.user = paramUser;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\community\model\PublicTimelineStatus.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
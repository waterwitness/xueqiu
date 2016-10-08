package com.xueqiu.android.community.model;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;

public class TopicInfo
{
  public static final String TAG_CN = "cn";
  public static final String TAG_HK = "hk";
  public static final String TAG_US = "us";
  @Expose
  @SerializedName("description")
  private String topicDescription = null;
  @Expose
  @SerializedName("id")
  private long topicId;
  @Expose
  @SerializedName("pic")
  private String topicPic = null;
  @Expose
  @SerializedName("pic_header")
  private String topicPicHeader = null;
  @Expose
  @SerializedName("ratio")
  private double topicPicRatio;
  @Expose
  @SerializedName("title")
  private String topicTitle = null;
  @Expose
  @SerializedName("type")
  private int topicType;
  
  public String getTopicDescription()
  {
    return this.topicDescription;
  }
  
  public long getTopicId()
  {
    return this.topicId;
  }
  
  public String getTopicPic()
  {
    return this.topicPic;
  }
  
  public String getTopicPicHeader()
  {
    return this.topicPicHeader;
  }
  
  public double getTopicPicRatio()
  {
    return this.topicPicRatio;
  }
  
  public String getTopicTitle()
  {
    return this.topicTitle;
  }
  
  public int getTopicType()
  {
    return this.topicType;
  }
  
  public void setTopicDescription(String paramString)
  {
    this.topicDescription = paramString;
  }
  
  public void setTopicId(long paramLong)
  {
    this.topicId = paramLong;
  }
  
  public void setTopicPic(String paramString)
  {
    this.topicPic = paramString;
  }
  
  public void setTopicPicHeader(String paramString)
  {
    this.topicPicHeader = paramString;
  }
  
  public void setTopicPicRatio(double paramDouble)
  {
    this.topicPicRatio = paramDouble;
  }
  
  public void setTopicTitle(String paramString)
  {
    this.topicTitle = paramString;
  }
  
  public void setTopicType(int paramInt)
  {
    this.topicType = paramInt;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\community\model\TopicInfo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
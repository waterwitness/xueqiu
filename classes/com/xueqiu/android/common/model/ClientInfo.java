package com.xueqiu.android.common.model;

import com.google.gson.annotations.Expose;

public class ClientInfo
{
  private static final String VERSION_TAG_MONKEY = "monkey";
  @Expose
  private String buglyAppId;
  @Expose
  private String buildNumber;
  @Expose
  private String channelEvent;
  @Expose
  private String channelId;
  @Expose
  private String flurryApiKey;
  @Expose
  private String gaApiKey;
  @Expose
  private String miId;
  @Expose
  private String miKey;
  @Expose
  private String umengKey;
  @Expose
  private String versionTag;
  
  public String getBuglyAppId()
  {
    return this.buglyAppId;
  }
  
  public String getBuildNumber()
  {
    return this.buildNumber;
  }
  
  public String getChannelEvent()
  {
    return this.channelEvent;
  }
  
  public String getChannelId()
  {
    return this.channelId;
  }
  
  public String getFlurryApiKey()
  {
    return this.flurryApiKey;
  }
  
  public String getGaApiKey()
  {
    return this.gaApiKey;
  }
  
  public String getMiId()
  {
    return this.miId;
  }
  
  public String getMiKey()
  {
    return this.miKey;
  }
  
  public String getUmengKey()
  {
    return this.umengKey;
  }
  
  public String getVersionTag()
  {
    return this.versionTag;
  }
  
  public boolean isMonkeyTestVersion()
  {
    return "monkey".equals(this.versionTag);
  }
  
  public void setBuglyAppId(String paramString)
  {
    this.buglyAppId = paramString;
  }
  
  public void setBuildNumber(String paramString)
  {
    this.buildNumber = paramString;
  }
  
  public void setChannelEvent(String paramString)
  {
    this.channelEvent = paramString;
  }
  
  public void setChannelId(String paramString)
  {
    this.channelId = paramString;
  }
  
  public void setFlurryApiKey(String paramString)
  {
    this.flurryApiKey = paramString;
  }
  
  public void setGaApiKey(String paramString)
  {
    this.gaApiKey = paramString;
  }
  
  public void setMiId(String paramString)
  {
    this.miId = paramString;
  }
  
  public void setMiKey(String paramString)
  {
    this.miKey = paramString;
  }
  
  public void setUmengKey(String paramString)
  {
    this.umengKey = paramString;
  }
  
  public void setVersionTag(String paramString)
  {
    this.versionTag = paramString;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\model\ClientInfo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
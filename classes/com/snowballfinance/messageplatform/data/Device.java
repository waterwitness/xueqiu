package com.snowballfinance.messageplatform.data;

import com.snowballfinance.messageplatform.a.a.d;
import com.snowballfinance.messageplatform.a.a.e;
import com.snowballfinance.messageplatform.b.f;
import java.io.Serializable;

public class Device
  implements Serializable
{
  public static final Integer ANDROID = Integer.valueOf(1);
  public static final Integer INTERNAL = Integer.valueOf(10);
  public static final Integer IOS = Integer.valueOf(2);
  public static final Integer PLATFORM_CLIENT;
  public static final Integer REQUEST;
  public static final Integer WEBSITE = Integer.valueOf(4);
  public static final Integer WEBSITE_VOLATILE = Integer.valueOf(5);
  private static final long serialVersionUID = -6511520457277815696L;
  private String channel;
  private String deviceId;
  private Long lastConnectedTime;
  private String platformId;
  private Boolean primary;
  private String proxyId;
  private Long userId;
  private String version;
  
  static
  {
    REQUEST = Integer.valueOf(6);
    PLATFORM_CLIENT = Integer.valueOf(8);
  }
  
  public static Device decodeDevice(d paramd)
  {
    boolean bool1 = paramd.e();
    boolean bool2 = paramd.e();
    boolean bool3 = paramd.e();
    boolean bool4 = paramd.e();
    boolean bool5 = paramd.e();
    paramd.b = 0;
    Device localDevice = new Device();
    if (bool1) {
      localDevice.setDeviceId(paramd.g());
    }
    if (bool2) {
      localDevice.setPlatformId(paramd.g());
    }
    if (bool3) {
      localDevice.setProxyId(paramd.g());
    }
    if (bool4) {
      localDevice.setUserId(Long.valueOf(paramd.d()));
    }
    if (bool5) {
      localDevice.setLastConnectedTime(Long.valueOf(paramd.d()));
    }
    return localDevice;
  }
  
  public static Device internalDevice(String paramString)
  {
    Device localDevice = new Device();
    localDevice.setDeviceId(INTERNAL + "INTERNAL_DEVICE");
    localDevice.setUserId(Predef.SYSTEM_USER_ID);
    localDevice.setLastConnectedTime(Long.valueOf(System.currentTimeMillis()));
    localDevice.setPlatformId(paramString);
    return localDevice;
  }
  
  public Boolean androidDevice()
  {
    return Boolean.valueOf(this.deviceId.startsWith(ANDROID.toString()));
  }
  
  public Device copy()
  {
    Device localDevice = new Device();
    localDevice.setChannel(this.channel);
    localDevice.setDeviceId(this.deviceId);
    localDevice.setLastConnectedTime(this.lastConnectedTime);
    localDevice.setPlatformId(this.platformId);
    localDevice.setPrimary(this.primary);
    localDevice.setProxyId(this.proxyId);
    localDevice.setUserId(this.userId);
    localDevice.setVersion(this.version);
    return localDevice;
  }
  
  public Boolean debugDevice()
  {
    return Boolean.valueOf(this.deviceId.startsWith("DEBUG"));
  }
  
  public void encodeDevice(e parame)
  {
    boolean bool5 = true;
    boolean bool1;
    boolean bool2;
    label21:
    boolean bool3;
    label31:
    boolean bool4;
    if (this.deviceId != null)
    {
      bool1 = true;
      if (this.platformId == null) {
        break label155;
      }
      bool2 = true;
      if (this.proxyId == null) {
        break label160;
      }
      bool3 = true;
      if (this.userId == null) {
        break label166;
      }
      bool4 = true;
      label41:
      if (this.lastConnectedTime == null) {
        break label172;
      }
    }
    for (;;)
    {
      parame.a(bool1);
      parame.a(bool2);
      parame.a(bool3);
      parame.a(bool4);
      parame.a(bool5);
      parame.a();
      if (bool1) {
        parame.a(this.deviceId);
      }
      if (bool2) {
        parame.a(this.platformId);
      }
      if (bool3) {
        parame.a(this.proxyId);
      }
      if (bool4) {
        parame.a(this.userId.longValue());
      }
      if (bool5) {
        parame.a(this.lastConnectedTime.longValue());
      }
      return;
      bool1 = false;
      break;
      label155:
      bool2 = false;
      break label21;
      label160:
      bool3 = false;
      break label31;
      label166:
      bool4 = false;
      break label41;
      label172:
      bool5 = false;
    }
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if ((paramObject == null) || (getClass() != paramObject.getClass())) {
        return false;
      }
      paramObject = (Device)paramObject;
      if (this.deviceId == null) {
        break;
      }
    } while (this.deviceId.equals(((Device)paramObject).deviceId));
    for (;;)
    {
      return false;
      if (((Device)paramObject).deviceId == null) {
        break;
      }
    }
  }
  
  public Boolean expired()
  {
    if ((!internalDevice().booleanValue()) && (this.lastConnectedTime != null) && (System.currentTimeMillis() - this.lastConnectedTime.longValue() > 2592000000L)) {}
    for (boolean bool = true;; bool = false) {
      return Boolean.valueOf(bool);
    }
  }
  
  public String getChannel()
  {
    return this.channel;
  }
  
  public String getDeviceId()
  {
    return this.deviceId;
  }
  
  public Long getLastConnectedTime()
  {
    return this.lastConnectedTime;
  }
  
  public String getPlatformId()
  {
    return this.platformId;
  }
  
  public Boolean getPrimary()
  {
    return this.primary;
  }
  
  public String getProxyId()
  {
    return this.proxyId;
  }
  
  public Long getUserId()
  {
    return this.userId;
  }
  
  public String getVersion()
  {
    return this.version;
  }
  
  public int hashCode()
  {
    if (this.deviceId != null) {
      return this.deviceId.hashCode();
    }
    return 0;
  }
  
  public Boolean iOSDevice()
  {
    return Boolean.valueOf(this.deviceId.startsWith(IOS.toString()));
  }
  
  public Boolean internalDevice()
  {
    if ((this.deviceId.startsWith(INTERNAL.toString())) && (Predef.SYSTEM_USER_ID.equals(this.userId))) {}
    for (boolean bool = true;; bool = false) {
      return Boolean.valueOf(bool);
    }
  }
  
  public Boolean platformClientDevice()
  {
    return Boolean.valueOf(this.deviceId.startsWith(PLATFORM_CLIENT.toString()));
  }
  
  public boolean requestDevice()
  {
    return this.deviceId.startsWith(REQUEST.toString());
  }
  
  public void setChannel(String paramString)
  {
    this.channel = paramString;
  }
  
  public void setDeviceId(String paramString)
  {
    this.deviceId = paramString;
  }
  
  public void setLastConnectedTime(Long paramLong)
  {
    this.lastConnectedTime = paramLong;
  }
  
  public void setPlatformId(String paramString)
  {
    this.platformId = paramString;
  }
  
  public void setPrimary(Boolean paramBoolean)
  {
    this.primary = paramBoolean;
  }
  
  public void setProxyId(String paramString)
  {
    this.proxyId = paramString;
  }
  
  public void setUserId(Long paramLong)
  {
    this.userId = paramLong;
  }
  
  public void setVersion(String paramString)
  {
    this.version = paramString;
  }
  
  public Boolean supportJsonView()
  {
    boolean bool2 = true;
    boolean bool3 = true;
    boolean bool1 = true;
    if (platformClientDevice().booleanValue()) {
      return Boolean.valueOf(true);
    }
    if (requestDevice()) {
      return Boolean.valueOf(true);
    }
    if ((getVersion() == null) || (!Character.isDigit(getVersion().charAt(0)))) {
      return Boolean.valueOf(false);
    }
    if (androidDevice().booleanValue())
    {
      if (f.a("4.4.3").a(f.a(getVersion())) <= 0) {}
      for (;;)
      {
        return Boolean.valueOf(bool1);
        bool1 = false;
      }
    }
    if (iOSDevice().booleanValue())
    {
      if (f.a("4.4.2").a(f.a(getVersion())) <= 0) {}
      for (bool1 = bool2;; bool1 = false) {
        return Boolean.valueOf(bool1);
      }
    }
    if ((webDevice().booleanValue()) || (volatileDevice().booleanValue()))
    {
      if (f.a("1.1.0").a(f.a(getVersion())) <= 0) {}
      for (bool1 = bool3;; bool1 = false) {
        return Boolean.valueOf(bool1);
      }
    }
    return Boolean.valueOf(false);
  }
  
  public String toString()
  {
    return "Device{deviceId='" + this.deviceId + '\'' + ", platformId='" + this.platformId + '\'' + ", proxyId='" + this.proxyId + '\'' + ", userId=" + this.userId + ", lastConnectedTime=" + this.lastConnectedTime + ", version='" + this.version + '\'' + ", channel='" + this.channel + '\'' + ", primary=" + this.primary + '}';
  }
  
  public Boolean volatileDevice()
  {
    return Boolean.valueOf(this.deviceId.startsWith(WEBSITE_VOLATILE.toString()));
  }
  
  public Boolean webDevice()
  {
    if ((this.deviceId.startsWith(WEBSITE.toString())) || (this.deviceId.startsWith(WEBSITE_VOLATILE.toString()))) {}
    for (boolean bool = true;; bool = false) {
      return Boolean.valueOf(bool);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\snowballfinance\messageplatform\data\Device.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
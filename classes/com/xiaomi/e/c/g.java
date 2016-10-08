package com.xiaomi.e.c;

import android.os.Bundle;

public final class g
  extends e
{
  public String a = null;
  public h b = null;
  private i c = i.a;
  private int d = Integer.MIN_VALUE;
  
  public g(Bundle paramBundle)
  {
    super(paramBundle);
    if (paramBundle.containsKey("ext_pres_type")) {
      this.c = i.valueOf(paramBundle.getString("ext_pres_type"));
    }
    if (paramBundle.containsKey("ext_pres_status")) {
      this.a = paramBundle.getString("ext_pres_status");
    }
    if (paramBundle.containsKey("ext_pres_prio")) {
      this.d = paramBundle.getInt("ext_pres_prio");
    }
    if (paramBundle.containsKey("ext_pres_mode")) {
      this.b = h.valueOf(paramBundle.getString("ext_pres_mode"));
    }
  }
  
  public g(i parami)
  {
    if (parami == null) {
      throw new NullPointerException("Type cannot be null");
    }
    this.c = parami;
  }
  
  public final String a()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("<presence");
    if (this.p != null) {
      localStringBuilder.append(" xmlns=\"").append(this.p).append("\"");
    }
    if (d() != null) {
      localStringBuilder.append(" id=\"").append(d()).append("\"");
    }
    if (this.r != null) {
      localStringBuilder.append(" to=\"").append(com.xiaomi.e.e.g.a(this.r)).append("\"");
    }
    if (this.s != null) {
      localStringBuilder.append(" from=\"").append(com.xiaomi.e.e.g.a(this.s)).append("\"");
    }
    if (this.t != null) {
      localStringBuilder.append(" chid=\"").append(com.xiaomi.e.e.g.a(this.t)).append("\"");
    }
    if (this.c != null) {
      localStringBuilder.append(" type=\"").append(this.c).append("\"");
    }
    localStringBuilder.append(">");
    if (this.a != null) {
      localStringBuilder.append("<status>").append(com.xiaomi.e.e.g.a(this.a)).append("</status>");
    }
    if (this.d != Integer.MIN_VALUE) {
      localStringBuilder.append("<priority>").append(this.d).append("</priority>");
    }
    if ((this.b != null) && (this.b != h.b)) {
      localStringBuilder.append("<show>").append(this.b).append("</show>");
    }
    localStringBuilder.append(f());
    k localk = this.v;
    if (localk != null) {
      localStringBuilder.append(localk.b());
    }
    localStringBuilder.append("</presence>");
    return localStringBuilder.toString();
  }
  
  public final void a(int paramInt)
  {
    if ((paramInt < -128) || (paramInt > 128)) {
      throw new IllegalArgumentException("Priority value " + paramInt + " is not valid. Valid range is -128 through 128.");
    }
    this.d = paramInt;
  }
  
  public final Bundle b()
  {
    Bundle localBundle = super.b();
    if (this.c != null) {
      localBundle.putString("ext_pres_type", this.c.toString());
    }
    if (this.a != null) {
      localBundle.putString("ext_pres_status", this.a);
    }
    if (this.d != Integer.MIN_VALUE) {
      localBundle.putInt("ext_pres_prio", this.d);
    }
    if ((this.b != null) && (this.b != h.b)) {
      localBundle.putString("ext_pres_mode", this.b.toString());
    }
    return localBundle;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\e\c\g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
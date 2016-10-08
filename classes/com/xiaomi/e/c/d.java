package com.xiaomi.e.c;

import android.os.Bundle;
import android.text.TextUtils;
import com.xiaomi.e.e.g;

public final class d
  extends e
{
  public String a = null;
  public String b = null;
  public String c;
  public String d;
  public String e;
  public String f;
  public boolean g = false;
  public String h;
  public String i = "";
  public String j = "";
  public String k = "";
  public String l = "";
  public boolean m = false;
  
  public d() {}
  
  public d(Bundle paramBundle)
  {
    super(paramBundle);
    this.a = paramBundle.getString("ext_msg_type");
    this.c = paramBundle.getString("ext_msg_lang");
    this.b = paramBundle.getString("ext_msg_thread");
    this.d = paramBundle.getString("ext_msg_sub");
    this.e = paramBundle.getString("ext_msg_body");
    this.f = paramBundle.getString("ext_body_encode");
    this.h = paramBundle.getString("ext_msg_appid");
    this.g = paramBundle.getBoolean("ext_msg_trans", false);
    this.m = paramBundle.getBoolean("ext_msg_encrypt", false);
    this.i = paramBundle.getString("ext_msg_seq");
    this.j = paramBundle.getString("ext_msg_mseq");
    this.k = paramBundle.getString("ext_msg_fseq");
    this.l = paramBundle.getString("ext_msg_status");
  }
  
  public final String a()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("<message");
    if (this.p != null) {
      localStringBuilder.append(" xmlns=\"").append(this.p).append("\"");
    }
    if (this.c != null) {
      localStringBuilder.append(" xml:lang=\"").append(this.c).append("\"");
    }
    if (d() != null) {
      localStringBuilder.append(" id=\"").append(d()).append("\"");
    }
    if (this.r != null) {
      localStringBuilder.append(" to=\"").append(g.a(this.r)).append("\"");
    }
    if (!TextUtils.isEmpty(this.i)) {
      localStringBuilder.append(" seq=\"").append(this.i).append("\"");
    }
    if (!TextUtils.isEmpty(this.j)) {
      localStringBuilder.append(" mseq=\"").append(this.j).append("\"");
    }
    if (!TextUtils.isEmpty(this.k)) {
      localStringBuilder.append(" fseq=\"").append(this.k).append("\"");
    }
    if (!TextUtils.isEmpty(this.l)) {
      localStringBuilder.append(" status=\"").append(this.l).append("\"");
    }
    if (this.s != null) {
      localStringBuilder.append(" from=\"").append(g.a(this.s)).append("\"");
    }
    if (this.t != null) {
      localStringBuilder.append(" chid=\"").append(g.a(this.t)).append("\"");
    }
    if (this.g) {
      localStringBuilder.append(" transient=\"true\"");
    }
    if (!TextUtils.isEmpty(this.h)) {
      localStringBuilder.append(" appid=\"").append(this.h).append("\"");
    }
    if (!TextUtils.isEmpty(this.a)) {
      localStringBuilder.append(" type=\"").append(this.a).append("\"");
    }
    if (this.m) {
      localStringBuilder.append(" s=\"1\"");
    }
    localStringBuilder.append(">");
    if (this.d != null)
    {
      localStringBuilder.append("<subject>").append(g.a(this.d));
      localStringBuilder.append("</subject>");
    }
    if (this.e != null)
    {
      localStringBuilder.append("<body");
      if (!TextUtils.isEmpty(this.f)) {
        localStringBuilder.append(" encode=\"").append(this.f).append("\"");
      }
      localStringBuilder.append(">").append(g.a(this.e)).append("</body>");
    }
    if (this.b != null) {
      localStringBuilder.append("<thread>").append(this.b).append("</thread>");
    }
    if ("error".equalsIgnoreCase(this.a))
    {
      k localk = this.v;
      if (localk != null) {
        localStringBuilder.append(localk.b());
      }
    }
    localStringBuilder.append(f());
    localStringBuilder.append("</message>");
    return localStringBuilder.toString();
  }
  
  public final Bundle b()
  {
    Bundle localBundle = super.b();
    if (!TextUtils.isEmpty(this.a)) {
      localBundle.putString("ext_msg_type", this.a);
    }
    if (this.c != null) {
      localBundle.putString("ext_msg_lang", this.c);
    }
    if (this.d != null) {
      localBundle.putString("ext_msg_sub", this.d);
    }
    if (this.e != null) {
      localBundle.putString("ext_msg_body", this.e);
    }
    if (!TextUtils.isEmpty(this.f)) {
      localBundle.putString("ext_body_encode", this.f);
    }
    if (this.b != null) {
      localBundle.putString("ext_msg_thread", this.b);
    }
    if (this.h != null) {
      localBundle.putString("ext_msg_appid", this.h);
    }
    if (this.g) {
      localBundle.putBoolean("ext_msg_trans", true);
    }
    if (!TextUtils.isEmpty(this.i)) {
      localBundle.putString("ext_msg_seq", this.i);
    }
    if (!TextUtils.isEmpty(this.j)) {
      localBundle.putString("ext_msg_mseq", this.j);
    }
    if (!TextUtils.isEmpty(this.k)) {
      localBundle.putString("ext_msg_fseq", this.k);
    }
    if (this.m) {
      localBundle.putBoolean("ext_msg_encrypt", true);
    }
    if (!TextUtils.isEmpty(this.l)) {
      localBundle.putString("ext_msg_status", this.l);
    }
    return localBundle;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if ((paramObject == null) || (getClass() != paramObject.getClass())) {
        return false;
      }
      paramObject = (d)paramObject;
      if (!super.equals(paramObject)) {
        return false;
      }
      if (this.e != null)
      {
        if (this.e.equals(((d)paramObject).e)) {}
      }
      else {
        while (((d)paramObject).e != null) {
          return false;
        }
      }
      if (this.c != null)
      {
        if (this.c.equals(((d)paramObject).c)) {}
      }
      else {
        while (((d)paramObject).c != null) {
          return false;
        }
      }
      if (this.d != null)
      {
        if (this.d.equals(((d)paramObject).d)) {}
      }
      else {
        while (((d)paramObject).d != null) {
          return false;
        }
      }
      if (this.b != null)
      {
        if (this.b.equals(((d)paramObject).b)) {}
      }
      else {
        while (((d)paramObject).b != null) {
          return false;
        }
      }
    } while (this.a == ((d)paramObject).a);
    return false;
  }
  
  public final int hashCode()
  {
    int i4 = 0;
    int n;
    int i1;
    label33:
    int i2;
    if (this.a != null)
    {
      n = this.a.hashCode();
      if (this.e == null) {
        break label109;
      }
      i1 = this.e.hashCode();
      if (this.b == null) {
        break label114;
      }
      i2 = this.b.hashCode();
      label48:
      if (this.c == null) {
        break label119;
      }
    }
    label109:
    label114:
    label119:
    for (int i3 = this.c.hashCode();; i3 = 0)
    {
      if (this.d != null) {
        i4 = this.d.hashCode();
      }
      return (i3 + (i2 + (i1 + n * 31) * 31) * 31) * 31 + i4;
      n = 0;
      break;
      i1 = 0;
      break label33;
      i2 = 0;
      break label48;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\e\c\d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
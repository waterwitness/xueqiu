package com.tencent.bugly.crashreport.common.strategy;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.tencent.bugly.proguard.a;
import java.util.Map;

public class StrategyBean
  implements Parcelable
{
  public static final Parcelable.Creator<StrategyBean> CREATOR = new Parcelable.Creator() {};
  public static String a;
  private static String u = "http://android.bugly.qq.com/rqd/async";
  private static String v = "http://android.bugly.qq.com/rqd/async";
  private static String w = "http://rqd.uu.qq.com/rqd/sync";
  public long b = -1L;
  public long c = -1L;
  public boolean d = true;
  public boolean e = true;
  public boolean f = true;
  public boolean g = true;
  public boolean h = true;
  public boolean i = true;
  public boolean j = true;
  public boolean k = true;
  public long l;
  public long m = 30000L;
  public String n = u;
  public String o = v;
  public String p = w;
  public String q;
  public Map<String, String> r;
  public int s = 10;
  public long t = 300000L;
  
  public StrategyBean()
  {
    this.c = System.currentTimeMillis();
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("S(@L@L@)");
    a = localStringBuilder.toString();
    localStringBuilder.setLength(0);
    localStringBuilder.append("*^@K#K@!");
    this.q = localStringBuilder.toString();
  }
  
  public StrategyBean(Parcel paramParcel)
  {
    try
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("S(@L@L@)");
      a = localStringBuilder.toString();
      this.c = paramParcel.readLong();
      if (paramParcel.readByte() == 1)
      {
        bool1 = true;
        this.d = bool1;
        if (paramParcel.readByte() != 1) {
          break label323;
        }
        bool1 = true;
        label157:
        this.e = bool1;
        if (paramParcel.readByte() != 1) {
          break label328;
        }
        bool1 = true;
        label172:
        this.f = bool1;
        this.n = paramParcel.readString();
        this.o = paramParcel.readString();
        this.q = paramParcel.readString();
        this.r = a.b(paramParcel);
        if (paramParcel.readByte() != 1) {
          break label333;
        }
        bool1 = true;
        label219:
        this.g = bool1;
        if (paramParcel.readByte() != 1) {
          break label338;
        }
        bool1 = true;
        label234:
        this.j = bool1;
        if (paramParcel.readByte() != 1) {
          break label343;
        }
        bool1 = true;
        label249:
        this.k = bool1;
        this.m = paramParcel.readLong();
        if (paramParcel.readByte() != 1) {
          break label348;
        }
        bool1 = true;
        label272:
        this.h = bool1;
        if (paramParcel.readByte() != 1) {
          break label353;
        }
      }
      label323:
      label328:
      label333:
      label338:
      label343:
      label348:
      label353:
      for (boolean bool1 = bool2;; bool1 = false)
      {
        this.i = bool1;
        this.l = paramParcel.readLong();
        this.s = paramParcel.readInt();
        this.t = paramParcel.readLong();
        return;
        bool1 = false;
        break;
        bool1 = false;
        break label157;
        bool1 = false;
        break label172;
        bool1 = false;
        break label219;
        bool1 = false;
        break label234;
        bool1 = false;
        break label249;
        bool1 = false;
        break label272;
      }
      return;
    }
    catch (Exception paramParcel)
    {
      paramParcel.printStackTrace();
    }
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    int i1 = 1;
    paramParcel.writeLong(this.c);
    if (this.d)
    {
      paramInt = 1;
      paramParcel.writeByte((byte)paramInt);
      if (!this.e) {
        break label200;
      }
      paramInt = 1;
      label34:
      paramParcel.writeByte((byte)paramInt);
      if (!this.f) {
        break label205;
      }
      paramInt = 1;
      label49:
      paramParcel.writeByte((byte)paramInt);
      paramParcel.writeString(this.n);
      paramParcel.writeString(this.o);
      paramParcel.writeString(this.q);
      a.b(paramParcel, this.r);
      if (!this.g) {
        break label210;
      }
      paramInt = 1;
      label96:
      paramParcel.writeByte((byte)paramInt);
      if (!this.j) {
        break label215;
      }
      paramInt = 1;
      label111:
      paramParcel.writeByte((byte)paramInt);
      if (!this.k) {
        break label220;
      }
      paramInt = 1;
      label126:
      paramParcel.writeByte((byte)paramInt);
      paramParcel.writeLong(this.m);
      if (!this.h) {
        break label225;
      }
      paramInt = 1;
      label149:
      paramParcel.writeByte((byte)paramInt);
      if (!this.i) {
        break label230;
      }
    }
    label200:
    label205:
    label210:
    label215:
    label220:
    label225:
    label230:
    for (paramInt = i1;; paramInt = 0)
    {
      paramParcel.writeByte((byte)paramInt);
      paramParcel.writeLong(this.l);
      paramParcel.writeInt(this.s);
      paramParcel.writeLong(this.t);
      return;
      paramInt = 0;
      break;
      paramInt = 0;
      break label34;
      paramInt = 0;
      break label49;
      paramInt = 0;
      break label96;
      paramInt = 0;
      break label111;
      paramInt = 0;
      break label126;
      paramInt = 0;
      break label149;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\bugly\crashreport\common\strategy\StrategyBean.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
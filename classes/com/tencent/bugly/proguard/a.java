package com.tencent.bugly.proguard;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Environment;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.os.Process;
import android.os.StatFs;
import android.telephony.TelephonyManager;
import android.util.Log;
import com.tencent.bugly.crashreport.biz.UserInfoBean;
import com.tencent.bugly.crashreport.common.info.AppInfo;
import com.tencent.bugly.crashreport.common.info.PlugInBean;
import com.tencent.bugly.crashreport.common.strategy.StrategyBean;
import java.io.File;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Array;
import java.lang.reflect.Method;
import java.security.KeyFactory;
import java.security.MessageDigest;
import java.security.spec.X509EncodedKeySpec;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

public class a
{
  protected HashMap<String, HashMap<String, byte[]>> a = new HashMap();
  protected String b;
  h c;
  private HashMap<String, Object> d;
  
  a()
  {
    new HashMap();
    this.d = new HashMap();
    this.b = "GBK";
    this.c = new h();
  }
  
  /* Error */
  public static am a(Context paramContext, int paramInt, byte[] paramArrayOfByte)
  {
    // Byte code:
    //   0: invokestatic 42	com/tencent/bugly/crashreport/common/info/a:a	()Lcom/tencent/bugly/crashreport/common/info/a;
    //   3: astore 4
    //   5: invokestatic 47	com/tencent/bugly/crashreport/common/strategy/a:a	()Lcom/tencent/bugly/crashreport/common/strategy/a;
    //   8: invokevirtual 50	com/tencent/bugly/crashreport/common/strategy/a:c	()Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;
    //   11: astore 5
    //   13: aload 4
    //   15: ifnull +8 -> 23
    //   18: aload 5
    //   20: ifnonnull +15 -> 35
    //   23: ldc 52
    //   25: iconst_0
    //   26: anewarray 4	java/lang/Object
    //   29: invokestatic 58	com/tencent/bugly/proguard/w:e	(Ljava/lang/String;[Ljava/lang/Object;)Z
    //   32: pop
    //   33: aconst_null
    //   34: areturn
    //   35: new 60	com/tencent/bugly/proguard/am
    //   38: dup
    //   39: invokespecial 61	com/tencent/bugly/proguard/am:<init>	()V
    //   42: astore 6
    //   44: aload 4
    //   46: monitorenter
    //   47: aload 6
    //   49: iconst_1
    //   50: putfield 64	com/tencent/bugly/proguard/am:a	I
    //   53: aload 6
    //   55: aload 4
    //   57: invokevirtual 67	com/tencent/bugly/crashreport/common/info/a:e	()Ljava/lang/String;
    //   60: putfield 68	com/tencent/bugly/proguard/am:b	Ljava/lang/String;
    //   63: aload 6
    //   65: aload 4
    //   67: getfield 70	com/tencent/bugly/crashreport/common/info/a:c	Ljava/lang/String;
    //   70: putfield 71	com/tencent/bugly/proguard/am:c	Ljava/lang/String;
    //   73: aload 6
    //   75: aload 4
    //   77: getfield 74	com/tencent/bugly/crashreport/common/info/a:i	Ljava/lang/String;
    //   80: putfield 76	com/tencent/bugly/proguard/am:d	Ljava/lang/String;
    //   83: aload 6
    //   85: aload 4
    //   87: getfield 79	com/tencent/bugly/crashreport/common/info/a:j	Ljava/lang/String;
    //   90: putfield 81	com/tencent/bugly/proguard/am:e	Ljava/lang/String;
    //   93: aload 4
    //   95: invokevirtual 85	java/lang/Object:getClass	()Ljava/lang/Class;
    //   98: pop
    //   99: aload 6
    //   101: ldc 87
    //   103: putfield 90	com/tencent/bugly/proguard/am:f	Ljava/lang/String;
    //   106: aload 6
    //   108: iload_1
    //   109: putfield 93	com/tencent/bugly/proguard/am:g	I
    //   112: aload_2
    //   113: astore_3
    //   114: aload_2
    //   115: ifnonnull +9 -> 124
    //   118: ldc 95
    //   120: invokevirtual 101	java/lang/String:getBytes	()[B
    //   123: astore_3
    //   124: aload 6
    //   126: aload_3
    //   127: putfield 105	com/tencent/bugly/proguard/am:h	[B
    //   130: aload 6
    //   132: aload 4
    //   134: getfield 106	com/tencent/bugly/crashreport/common/info/a:f	Ljava/lang/String;
    //   137: putfield 107	com/tencent/bugly/proguard/am:i	Ljava/lang/String;
    //   140: aload 6
    //   142: aload 4
    //   144: getfield 109	com/tencent/bugly/crashreport/common/info/a:g	Ljava/lang/String;
    //   147: putfield 110	com/tencent/bugly/proguard/am:j	Ljava/lang/String;
    //   150: aload 6
    //   152: new 19	java/util/HashMap
    //   155: dup
    //   156: invokespecial 20	java/util/HashMap:<init>	()V
    //   159: putfield 114	com/tencent/bugly/proguard/am:k	Ljava/util/Map;
    //   162: aload 6
    //   164: aload 4
    //   166: invokevirtual 116	com/tencent/bugly/crashreport/common/info/a:d	()Ljava/lang/String;
    //   169: putfield 119	com/tencent/bugly/proguard/am:l	Ljava/lang/String;
    //   172: aload 6
    //   174: aload 5
    //   176: getfield 124	com/tencent/bugly/crashreport/common/strategy/StrategyBean:l	J
    //   179: putfield 127	com/tencent/bugly/proguard/am:m	J
    //   182: aload 6
    //   184: aload 4
    //   186: invokevirtual 129	com/tencent/bugly/crashreport/common/info/a:g	()Ljava/lang/String;
    //   189: putfield 132	com/tencent/bugly/proguard/am:o	Ljava/lang/String;
    //   192: aload 6
    //   194: aload_0
    //   195: invokestatic 135	com/tencent/bugly/proguard/a:e	(Landroid/content/Context;)Ljava/lang/String;
    //   198: putfield 138	com/tencent/bugly/proguard/am:p	Ljava/lang/String;
    //   201: aload 6
    //   203: invokestatic 144	java/lang/System:currentTimeMillis	()J
    //   206: putfield 147	com/tencent/bugly/proguard/am:q	J
    //   209: aload 6
    //   211: new 149	java/lang/StringBuilder
    //   214: dup
    //   215: invokespecial 150	java/lang/StringBuilder:<init>	()V
    //   218: aload 4
    //   220: invokevirtual 152	com/tencent/bugly/crashreport/common/info/a:j	()Ljava/lang/String;
    //   223: invokevirtual 156	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   226: invokevirtual 159	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   229: putfield 162	com/tencent/bugly/proguard/am:r	Ljava/lang/String;
    //   232: aload 6
    //   234: aload 4
    //   236: invokevirtual 164	com/tencent/bugly/crashreport/common/info/a:i	()Ljava/lang/String;
    //   239: putfield 167	com/tencent/bugly/proguard/am:s	Ljava/lang/String;
    //   242: aload 6
    //   244: new 149	java/lang/StringBuilder
    //   247: dup
    //   248: invokespecial 150	java/lang/StringBuilder:<init>	()V
    //   251: aload 4
    //   253: invokevirtual 169	com/tencent/bugly/crashreport/common/info/a:l	()Ljava/lang/String;
    //   256: invokevirtual 156	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   259: invokevirtual 159	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   262: putfield 172	com/tencent/bugly/proguard/am:t	Ljava/lang/String;
    //   265: aload 6
    //   267: aload 4
    //   269: invokevirtual 174	com/tencent/bugly/crashreport/common/info/a:k	()Ljava/lang/String;
    //   272: putfield 177	com/tencent/bugly/proguard/am:u	Ljava/lang/String;
    //   275: aload 6
    //   277: new 149	java/lang/StringBuilder
    //   280: dup
    //   281: invokespecial 150	java/lang/StringBuilder:<init>	()V
    //   284: aload 4
    //   286: invokevirtual 179	com/tencent/bugly/crashreport/common/info/a:m	()Ljava/lang/String;
    //   289: invokevirtual 156	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   292: invokevirtual 159	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   295: putfield 182	com/tencent/bugly/proguard/am:v	Ljava/lang/String;
    //   298: aload 6
    //   300: aload 6
    //   302: getfield 138	com/tencent/bugly/proguard/am:p	Ljava/lang/String;
    //   305: putfield 185	com/tencent/bugly/proguard/am:w	Ljava/lang/String;
    //   308: aload 4
    //   310: invokevirtual 85	java/lang/Object:getClass	()Ljava/lang/Class;
    //   313: pop
    //   314: aload 6
    //   316: ldc -69
    //   318: putfield 190	com/tencent/bugly/proguard/am:n	Ljava/lang/String;
    //   321: aload 4
    //   323: monitorexit
    //   324: aload 6
    //   326: getfield 114	com/tencent/bugly/proguard/am:k	Ljava/util/Map;
    //   329: ldc -64
    //   331: new 149	java/lang/StringBuilder
    //   334: dup
    //   335: invokespecial 150	java/lang/StringBuilder:<init>	()V
    //   338: aload 4
    //   340: getfield 196	com/tencent/bugly/crashreport/common/info/a:y	Z
    //   343: invokevirtual 199	java/lang/StringBuilder:append	(Z)Ljava/lang/StringBuilder;
    //   346: invokevirtual 159	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   349: invokeinterface 205 3 0
    //   354: pop
    //   355: aload 6
    //   357: getfield 114	com/tencent/bugly/proguard/am:k	Ljava/util/Map;
    //   360: ldc -49
    //   362: new 149	java/lang/StringBuilder
    //   365: dup
    //   366: invokespecial 150	java/lang/StringBuilder:<init>	()V
    //   369: aload 4
    //   371: getfield 210	com/tencent/bugly/crashreport/common/info/a:x	Z
    //   374: invokevirtual 199	java/lang/StringBuilder:append	(Z)Ljava/lang/StringBuilder;
    //   377: invokevirtual 159	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   380: invokeinterface 205 3 0
    //   385: pop
    //   386: aload 6
    //   388: areturn
    //   389: astore_0
    //   390: aload_0
    //   391: invokestatic 213	com/tencent/bugly/proguard/w:b	(Ljava/lang/Throwable;)Z
    //   394: ifne +7 -> 401
    //   397: aload_0
    //   398: invokevirtual 216	java/lang/Throwable:printStackTrace	()V
    //   401: aconst_null
    //   402: areturn
    //   403: astore_0
    //   404: aload 4
    //   406: monitorexit
    //   407: aload_0
    //   408: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	409	0	paramContext	Context
    //   0	409	1	paramInt	int
    //   0	409	2	paramArrayOfByte	byte[]
    //   113	14	3	arrayOfByte	byte[]
    //   3	402	4	locala	com.tencent.bugly.crashreport.common.info.a
    //   11	164	5	localStrategyBean	StrategyBean
    //   42	345	6	localam	am
    // Exception table:
    //   from	to	target	type
    //   35	47	389	java/lang/Throwable
    //   324	386	389	java/lang/Throwable
    //   404	409	389	java/lang/Throwable
    //   47	112	403	finally
    //   118	124	403	finally
    //   124	324	403	finally
  }
  
  public static an a(byte[] paramArrayOfByte, boolean paramBoolean)
  {
    if (paramArrayOfByte != null) {}
    for (;;)
    {
      try
      {
        Object localObject = new d();
        ((d)localObject).p();
        ((d)localObject).a("utf-8");
        ((d)localObject).a(paramArrayOfByte);
        paramArrayOfByte = ((d)localObject).b("detail", new an());
        if (!an.class.isInstance(paramArrayOfByte)) {
          break label166;
        }
        paramArrayOfByte = (an)an.class.cast(paramArrayOfByte);
        localObject = paramArrayOfByte;
        if (!paramBoolean)
        {
          localObject = paramArrayOfByte;
          if (paramArrayOfByte != null)
          {
            localObject = paramArrayOfByte;
            if (paramArrayOfByte.c != null)
            {
              localObject = paramArrayOfByte;
              if (paramArrayOfByte.c.length > 0)
              {
                w.c("resp buf %d", new Object[] { Integer.valueOf(paramArrayOfByte.c.length) });
                paramArrayOfByte.c = a(paramArrayOfByte.c, 2, 1, StrategyBean.a);
                localObject = paramArrayOfByte;
                if (paramArrayOfByte.c == null)
                {
                  w.e("resp sbuffer error!", new Object[0]);
                  localObject = null;
                }
              }
            }
          }
        }
        return (an)localObject;
      }
      catch (Throwable paramArrayOfByte)
      {
        if (!w.b(paramArrayOfByte)) {
          paramArrayOfByte.printStackTrace();
        }
      }
      return null;
      label166:
      paramArrayOfByte = null;
    }
  }
  
  public static aq a(UserInfoBean paramUserInfoBean)
  {
    if (paramUserInfoBean == null) {
      return null;
    }
    aq localaq = new aq();
    localaq.a = paramUserInfoBean.e;
    localaq.e = paramUserInfoBean.j;
    localaq.d = paramUserInfoBean.c;
    localaq.c = paramUserInfoBean.d;
    localaq.g = com.tencent.bugly.crashreport.common.info.a.a().h();
    if (paramUserInfoBean.o == 1)
    {
      bool = true;
      localaq.h = bool;
      switch (paramUserInfoBean.b)
      {
      default: 
        if ((paramUserInfoBean.b < 10) || (paramUserInfoBean.b >= 20)) {
          break;
        }
        localaq.b = ((byte)paramUserInfoBean.b);
      }
    }
    else
    {
      for (;;)
      {
        localaq.f = new HashMap();
        if (paramUserInfoBean.p >= 0) {
          localaq.f.put("C01", paramUserInfoBean.p);
        }
        if (paramUserInfoBean.q >= 0) {
          localaq.f.put("C02", paramUserInfoBean.q);
        }
        if ((paramUserInfoBean.r == null) || (paramUserInfoBean.r.size() <= 0)) {
          break label378;
        }
        localObject1 = paramUserInfoBean.r.entrySet().iterator();
        while (((Iterator)localObject1).hasNext())
        {
          localObject2 = (Map.Entry)((Iterator)localObject1).next();
          localaq.f.put("C03_" + (String)((Map.Entry)localObject2).getKey(), ((Map.Entry)localObject2).getValue());
        }
        bool = false;
        break;
        localaq.b = 1;
        continue;
        localaq.b = 2;
        continue;
        localaq.b = 4;
        continue;
        localaq.b = 3;
      }
    }
    w.e("unknown uinfo type %d ", new Object[] { Integer.valueOf(paramUserInfoBean.b) });
    return null;
    label378:
    if ((paramUserInfoBean.s != null) && (paramUserInfoBean.s.size() > 0))
    {
      localObject1 = paramUserInfoBean.s.entrySet().iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localObject2 = (Map.Entry)((Iterator)localObject1).next();
        localaq.f.put("C04_" + (String)((Map.Entry)localObject2).getKey(), ((Map.Entry)localObject2).getValue());
      }
    }
    Object localObject1 = localaq.f;
    Object localObject2 = new StringBuilder();
    if (!paramUserInfoBean.l) {}
    for (boolean bool = true;; bool = false)
    {
      ((Map)localObject1).put("A36", bool);
      localaq.f.put("F02", paramUserInfoBean.g);
      localaq.f.put("F03", paramUserInfoBean.h);
      localaq.f.put("F04", paramUserInfoBean.j);
      localaq.f.put("F05", paramUserInfoBean.i);
      localaq.f.put("F06", paramUserInfoBean.m);
      localaq.f.put("F10", paramUserInfoBean.k);
      w.c("summary type %d vm:%d", new Object[] { Byte.valueOf(localaq.b), Integer.valueOf(localaq.f.size()) });
      return localaq;
    }
  }
  
  public static ar a(List<UserInfoBean> paramList, int paramInt)
  {
    if ((paramList == null) || (paramList.size() == 0)) {
      return null;
    }
    Object localObject = com.tencent.bugly.crashreport.common.info.a.a();
    ar localar = new ar();
    localar.b = ((com.tencent.bugly.crashreport.common.info.a)localObject).d;
    localar.c = ((com.tencent.bugly.crashreport.common.info.a)localObject).g();
    ArrayList localArrayList = new ArrayList();
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      aq localaq = a((UserInfoBean)paramList.next());
      if (localaq != null) {
        localArrayList.add(localaq);
      }
    }
    localar.d = localArrayList;
    localar.e = new HashMap();
    localar.e.put("A7", ((com.tencent.bugly.crashreport.common.info.a)localObject).e);
    localar.e.put("A6", ((com.tencent.bugly.crashreport.common.info.a)localObject).r());
    localar.e.put("A5", ((com.tencent.bugly.crashreport.common.info.a)localObject).q());
    localar.e.put("A2", ((com.tencent.bugly.crashreport.common.info.a)localObject).o());
    localar.e.put("A1", ((com.tencent.bugly.crashreport.common.info.a)localObject).o());
    localar.e.put("A24", ((com.tencent.bugly.crashreport.common.info.a)localObject).g);
    localar.e.put("A17", ((com.tencent.bugly.crashreport.common.info.a)localObject).p());
    localar.e.put("A15", ((com.tencent.bugly.crashreport.common.info.a)localObject).t());
    localar.e.put("A13", ((com.tencent.bugly.crashreport.common.info.a)localObject).u());
    localar.e.put("F08", ((com.tencent.bugly.crashreport.common.info.a)localObject).u);
    localar.e.put("F09", ((com.tencent.bugly.crashreport.common.info.a)localObject).v);
    paramList = ((com.tencent.bugly.crashreport.common.info.a)localObject).A();
    if ((paramList != null) && (paramList.size() > 0))
    {
      paramList = paramList.entrySet().iterator();
      while (paramList.hasNext())
      {
        localObject = (Map.Entry)paramList.next();
        localar.e.put("C04_" + (String)((Map.Entry)localObject).getKey(), ((Map.Entry)localObject).getValue());
      }
    }
    switch (paramInt)
    {
    default: 
      w.e("unknown up type %d ", new Object[] { Integer.valueOf(paramInt) });
      return null;
    }
    for (localar.a = 1;; localar.a = 2) {
      return localar;
    }
  }
  
  public static <T extends j> T a(byte[] paramArrayOfByte, Class<T> paramClass)
  {
    if ((paramArrayOfByte == null) || (paramArrayOfByte.length <= 0)) {
      return null;
    }
    try
    {
      paramClass = (j)paramClass.newInstance();
      paramArrayOfByte = new h(paramArrayOfByte);
      paramArrayOfByte.a("utf-8");
      paramClass.a(paramArrayOfByte);
      return paramClass;
    }
    catch (Throwable paramArrayOfByte)
    {
      if (!w.b(paramArrayOfByte)) {
        paramArrayOfByte.printStackTrace();
      }
    }
    return null;
  }
  
  public static Object a(String paramString1, String paramString2, Object paramObject, Class<?>[] paramArrayOfClass, Object[] paramArrayOfObject)
  {
    try
    {
      paramString1 = Class.forName(paramString1).getDeclaredMethod(paramString2, paramArrayOfClass);
      paramString1.setAccessible(true);
      paramString1 = paramString1.invoke(null, paramArrayOfObject);
      return paramString1;
    }
    catch (Exception paramString1) {}
    return null;
  }
  
  public static <T> T a(byte[] paramArrayOfByte, Parcelable.Creator<T> paramCreator)
  {
    Parcel localParcel = Parcel.obtain();
    localParcel.unmarshall(paramArrayOfByte, 0, paramArrayOfByte.length);
    localParcel.setDataPosition(0);
    try
    {
      paramArrayOfByte = paramCreator.createFromParcel(localParcel);
      return paramArrayOfByte;
    }
    catch (Throwable paramArrayOfByte)
    {
      paramArrayOfByte.printStackTrace();
      return null;
    }
    finally
    {
      if (localParcel != null) {
        localParcel.recycle();
      }
    }
  }
  
  public static String a(Context paramContext)
  {
    Object localObject;
    if (!AppInfo.a(paramContext, "android.permission.READ_PHONE_STATE"))
    {
      w.d("no READ_PHONE_STATE permission to get IMEI", new Object[0]);
      localObject = "null";
    }
    for (;;)
    {
      return (String)localObject;
      if (paramContext == null) {
        return null;
      }
      try
      {
        paramContext = ((TelephonyManager)paramContext.getSystemService("phone")).getDeviceId();
        localObject = paramContext;
        if (paramContext != null) {
          Log.i(w.a, "failed to get IMEI");
        }
      }
      catch (Throwable paramContext)
      {
        try
        {
          localObject = paramContext.toLowerCase();
          return (String)localObject;
        }
        catch (Throwable localThrowable)
        {
          for (;;) {}
        }
        paramContext = paramContext;
        paramContext = null;
      }
    }
    return paramContext;
  }
  
  /* Error */
  public static String a(Context paramContext, int paramInt, String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: ldc_w 567
    //   4: invokestatic 532	com/tencent/bugly/crashreport/common/info/AppInfo:a	(Landroid/content/Context;Ljava/lang/String;)Z
    //   7: ifne +18 -> 25
    //   10: ldc_w 569
    //   13: iconst_0
    //   14: anewarray 4	java/lang/Object
    //   17: invokestatic 536	com/tencent/bugly/proguard/w:d	(Ljava/lang/String;[Ljava/lang/Object;)Z
    //   20: pop
    //   21: aconst_null
    //   22: astore_2
    //   23: aload_2
    //   24: areturn
    //   25: aload_2
    //   26: ifnonnull +214 -> 240
    //   29: iconst_4
    //   30: anewarray 97	java/lang/String
    //   33: astore_0
    //   34: aload_0
    //   35: iconst_0
    //   36: ldc_w 571
    //   39: aastore
    //   40: aload_0
    //   41: iconst_1
    //   42: ldc_w 573
    //   45: aastore
    //   46: aload_0
    //   47: iconst_2
    //   48: ldc_w 575
    //   51: aastore
    //   52: aload_0
    //   53: iconst_3
    //   54: ldc_w 577
    //   57: aastore
    //   58: aconst_null
    //   59: astore_2
    //   60: aconst_null
    //   61: astore 4
    //   63: new 149	java/lang/StringBuilder
    //   66: dup
    //   67: invokespecial 150	java/lang/StringBuilder:<init>	()V
    //   70: astore 5
    //   72: invokestatic 583	java/lang/Runtime:getRuntime	()Ljava/lang/Runtime;
    //   75: aload_0
    //   76: invokevirtual 587	java/lang/Runtime:exec	([Ljava/lang/String;)Ljava/lang/Process;
    //   79: astore_0
    //   80: new 589	java/io/BufferedReader
    //   83: dup
    //   84: new 591	java/io/InputStreamReader
    //   87: dup
    //   88: aload_0
    //   89: invokevirtual 597	java/lang/Process:getInputStream	()Ljava/io/InputStream;
    //   92: invokespecial 600	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   95: invokespecial 603	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   98: astore_2
    //   99: aload_2
    //   100: invokevirtual 606	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   103: astore_3
    //   104: aload_3
    //   105: ifnull +178 -> 283
    //   108: aload 5
    //   110: aload_3
    //   111: invokevirtual 156	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   114: ldc_w 608
    //   117: invokevirtual 156	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   120: pop
    //   121: iload_1
    //   122: ifle -23 -> 99
    //   125: aload 5
    //   127: invokevirtual 611	java/lang/StringBuilder:length	()I
    //   130: iload_1
    //   131: if_icmple -32 -> 99
    //   134: aload 5
    //   136: iconst_0
    //   137: aload 5
    //   139: invokevirtual 611	java/lang/StringBuilder:length	()I
    //   142: iload_1
    //   143: isub
    //   144: invokevirtual 615	java/lang/StringBuilder:delete	(II)Ljava/lang/StringBuilder;
    //   147: pop
    //   148: goto -49 -> 99
    //   151: astore_3
    //   152: aload_0
    //   153: astore_2
    //   154: aload_3
    //   155: invokestatic 617	com/tencent/bugly/proguard/w:a	(Ljava/lang/Throwable;)Z
    //   158: ifne +9 -> 167
    //   161: aload_0
    //   162: astore_2
    //   163: aload_3
    //   164: invokevirtual 216	java/lang/Throwable:printStackTrace	()V
    //   167: aload_0
    //   168: astore_2
    //   169: aload 5
    //   171: new 149	java/lang/StringBuilder
    //   174: dup
    //   175: ldc_w 619
    //   178: invokespecial 340	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   181: aload_3
    //   182: invokevirtual 620	java/lang/Throwable:toString	()Ljava/lang/String;
    //   185: invokevirtual 156	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   188: ldc_w 622
    //   191: invokevirtual 156	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   194: invokevirtual 159	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   197: invokevirtual 156	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   200: invokevirtual 159	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   203: astore_3
    //   204: aload_3
    //   205: astore_2
    //   206: aload_0
    //   207: ifnull -184 -> 23
    //   210: aload_0
    //   211: invokevirtual 626	java/lang/Process:getOutputStream	()Ljava/io/OutputStream;
    //   214: invokevirtual 631	java/io/OutputStream:close	()V
    //   217: aload_0
    //   218: invokevirtual 597	java/lang/Process:getInputStream	()Ljava/io/InputStream;
    //   221: invokevirtual 634	java/io/InputStream:close	()V
    //   224: aload_0
    //   225: invokevirtual 637	java/lang/Process:getErrorStream	()Ljava/io/InputStream;
    //   228: invokevirtual 634	java/io/InputStream:close	()V
    //   231: aload_3
    //   232: areturn
    //   233: astore_0
    //   234: aload_0
    //   235: invokevirtual 638	java/io/IOException:printStackTrace	()V
    //   238: aload_3
    //   239: areturn
    //   240: bipush 6
    //   242: anewarray 97	java/lang/String
    //   245: astore_0
    //   246: aload_0
    //   247: iconst_0
    //   248: ldc_w 571
    //   251: aastore
    //   252: aload_0
    //   253: iconst_1
    //   254: ldc_w 573
    //   257: aastore
    //   258: aload_0
    //   259: iconst_2
    //   260: ldc_w 575
    //   263: aastore
    //   264: aload_0
    //   265: iconst_3
    //   266: ldc_w 577
    //   269: aastore
    //   270: aload_0
    //   271: iconst_4
    //   272: ldc_w 640
    //   275: aastore
    //   276: aload_0
    //   277: iconst_5
    //   278: aload_2
    //   279: aastore
    //   280: goto -222 -> 58
    //   283: aload 5
    //   285: invokevirtual 159	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   288: astore_3
    //   289: aload_3
    //   290: astore_2
    //   291: aload_0
    //   292: ifnull -269 -> 23
    //   295: aload_0
    //   296: invokevirtual 626	java/lang/Process:getOutputStream	()Ljava/io/OutputStream;
    //   299: invokevirtual 631	java/io/OutputStream:close	()V
    //   302: aload_0
    //   303: invokevirtual 597	java/lang/Process:getInputStream	()Ljava/io/InputStream;
    //   306: invokevirtual 634	java/io/InputStream:close	()V
    //   309: aload_0
    //   310: invokevirtual 637	java/lang/Process:getErrorStream	()Ljava/io/InputStream;
    //   313: invokevirtual 634	java/io/InputStream:close	()V
    //   316: aload_3
    //   317: areturn
    //   318: astore_0
    //   319: aload_0
    //   320: invokevirtual 638	java/io/IOException:printStackTrace	()V
    //   323: aload_3
    //   324: areturn
    //   325: astore_2
    //   326: aload_2
    //   327: invokevirtual 638	java/io/IOException:printStackTrace	()V
    //   330: goto -28 -> 302
    //   333: astore_2
    //   334: aload_2
    //   335: invokevirtual 638	java/io/IOException:printStackTrace	()V
    //   338: goto -29 -> 309
    //   341: astore_2
    //   342: aload_2
    //   343: invokevirtual 638	java/io/IOException:printStackTrace	()V
    //   346: goto -129 -> 217
    //   349: astore_2
    //   350: aload_2
    //   351: invokevirtual 638	java/io/IOException:printStackTrace	()V
    //   354: goto -130 -> 224
    //   357: astore_0
    //   358: aload_2
    //   359: ifnull +24 -> 383
    //   362: aload_2
    //   363: invokevirtual 626	java/lang/Process:getOutputStream	()Ljava/io/OutputStream;
    //   366: invokevirtual 631	java/io/OutputStream:close	()V
    //   369: aload_2
    //   370: invokevirtual 597	java/lang/Process:getInputStream	()Ljava/io/InputStream;
    //   373: invokevirtual 634	java/io/InputStream:close	()V
    //   376: aload_2
    //   377: invokevirtual 637	java/lang/Process:getErrorStream	()Ljava/io/InputStream;
    //   380: invokevirtual 634	java/io/InputStream:close	()V
    //   383: aload_0
    //   384: athrow
    //   385: astore_3
    //   386: aload_3
    //   387: invokevirtual 638	java/io/IOException:printStackTrace	()V
    //   390: goto -21 -> 369
    //   393: astore_3
    //   394: aload_3
    //   395: invokevirtual 638	java/io/IOException:printStackTrace	()V
    //   398: goto -22 -> 376
    //   401: astore_2
    //   402: aload_2
    //   403: invokevirtual 638	java/io/IOException:printStackTrace	()V
    //   406: goto -23 -> 383
    //   409: astore_3
    //   410: aload_0
    //   411: astore_2
    //   412: aload_3
    //   413: astore_0
    //   414: goto -56 -> 358
    //   417: astore_3
    //   418: aload 4
    //   420: astore_0
    //   421: goto -269 -> 152
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	424	0	paramContext	Context
    //   0	424	1	paramInt	int
    //   0	424	2	paramString	String
    //   103	8	3	str1	String
    //   151	31	3	localThrowable1	Throwable
    //   203	121	3	str2	String
    //   385	2	3	localIOException1	java.io.IOException
    //   393	2	3	localIOException2	java.io.IOException
    //   409	4	3	localObject1	Object
    //   417	1	3	localThrowable2	Throwable
    //   61	358	4	localObject2	Object
    //   70	214	5	localStringBuilder	StringBuilder
    // Exception table:
    //   from	to	target	type
    //   80	99	151	java/lang/Throwable
    //   99	104	151	java/lang/Throwable
    //   108	121	151	java/lang/Throwable
    //   125	148	151	java/lang/Throwable
    //   283	289	151	java/lang/Throwable
    //   224	231	233	java/io/IOException
    //   309	316	318	java/io/IOException
    //   295	302	325	java/io/IOException
    //   302	309	333	java/io/IOException
    //   210	217	341	java/io/IOException
    //   217	224	349	java/io/IOException
    //   72	80	357	finally
    //   154	161	357	finally
    //   163	167	357	finally
    //   169	204	357	finally
    //   362	369	385	java/io/IOException
    //   369	376	393	java/io/IOException
    //   376	383	401	java/io/IOException
    //   80	99	409	finally
    //   99	104	409	finally
    //   108	121	409	finally
    //   125	148	409	finally
    //   283	289	409	finally
    //   72	80	417	java/lang/Throwable
  }
  
  public static String a(Context paramContext, String paramString)
  {
    if ((paramString == null) || (paramString.trim().equals(""))) {
      return "";
    }
    paramContext = a(paramContext, new String[] { "/system/bin/sh", "-c", "getprop " + paramString });
    if ((paramContext != null) && (paramContext.size() > 0)) {
      return (String)paramContext.get(0);
    }
    return "fail";
  }
  
  public static String a(Throwable paramThrowable)
  {
    if (paramThrowable == null) {
      return "";
    }
    try
    {
      StringWriter localStringWriter = new StringWriter();
      paramThrowable.printStackTrace(new PrintWriter(localStringWriter));
      paramThrowable = localStringWriter.getBuffer().toString();
      return paramThrowable;
    }
    catch (Throwable paramThrowable)
    {
      if (!w.a(paramThrowable)) {
        paramThrowable.printStackTrace();
      }
    }
    return "fail";
  }
  
  public static String a(ArrayList<String> paramArrayList)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    int i = 0;
    String str1;
    if (i < paramArrayList.size())
    {
      String str2 = (String)paramArrayList.get(i);
      if ((str2.equals("java.lang.Integer")) || (str2.equals("int"))) {
        str1 = "int32";
      }
      for (;;)
      {
        paramArrayList.set(i, str1);
        i += 1;
        break;
        if ((str2.equals("java.lang.Boolean")) || (str2.equals("boolean")))
        {
          str1 = "bool";
        }
        else if ((str2.equals("java.lang.Byte")) || (str2.equals("byte")))
        {
          str1 = "char";
        }
        else if ((str2.equals("java.lang.Double")) || (str2.equals("double")))
        {
          str1 = "double";
        }
        else if ((str2.equals("java.lang.Float")) || (str2.equals("float")))
        {
          str1 = "float";
        }
        else if ((str2.equals("java.lang.Long")) || (str2.equals("long")))
        {
          str1 = "int64";
        }
        else if ((str2.equals("java.lang.Short")) || (str2.equals("short")))
        {
          str1 = "short";
        }
        else
        {
          if (str2.equals("java.lang.Character")) {
            throw new IllegalArgumentException("can not support java.lang.Character");
          }
          if (str2.equals("java.lang.String"))
          {
            str1 = "string";
          }
          else if (str2.equals("java.util.List"))
          {
            str1 = "list";
          }
          else
          {
            str1 = str2;
            if (str2.equals("java.util.Map")) {
              str1 = "map";
            }
          }
        }
      }
    }
    Collections.reverse(paramArrayList);
    i = 0;
    if (i < paramArrayList.size())
    {
      str1 = (String)paramArrayList.get(i);
      if (str1.equals("list"))
      {
        paramArrayList.set(i - 1, "<" + (String)paramArrayList.get(i - 1));
        paramArrayList.set(0, (String)paramArrayList.get(0) + ">");
      }
      for (;;)
      {
        i += 1;
        break;
        if (str1.equals("map"))
        {
          paramArrayList.set(i - 1, "<" + (String)paramArrayList.get(i - 1) + ",");
          paramArrayList.set(0, (String)paramArrayList.get(0) + ">");
        }
        else if (str1.equals("Array"))
        {
          paramArrayList.set(i - 1, "<" + (String)paramArrayList.get(i - 1));
          paramArrayList.set(0, (String)paramArrayList.get(0) + ">");
        }
      }
    }
    Collections.reverse(paramArrayList);
    paramArrayList = paramArrayList.iterator();
    while (paramArrayList.hasNext()) {
      localStringBuffer.append((String)paramArrayList.next());
    }
    return localStringBuffer.toString();
  }
  
  public static String a(Date paramDate)
  {
    if (paramDate == null) {
      return null;
    }
    try
    {
      paramDate = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.US).format(paramDate);
      return paramDate;
    }
    catch (Exception paramDate) {}
    return new Date().toString();
  }
  
  /* Error */
  public static ArrayList<String> a(Context paramContext, String[] paramArrayOfString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: new 400	java/util/ArrayList
    //   5: dup
    //   6: invokespecial 401	java/util/ArrayList:<init>	()V
    //   9: astore 4
    //   11: aload_0
    //   12: invokestatic 787	com/tencent/bugly/crashreport/common/info/a:a	(Landroid/content/Context;)Lcom/tencent/bugly/crashreport/common/info/a;
    //   15: invokevirtual 790	com/tencent/bugly/crashreport/common/info/a:D	()Z
    //   18: ifeq +28 -> 46
    //   21: new 400	java/util/ArrayList
    //   24: dup
    //   25: invokespecial 401	java/util/ArrayList:<init>	()V
    //   28: astore_0
    //   29: aload_0
    //   30: new 97	java/lang/String
    //   33: dup
    //   34: ldc_w 792
    //   37: invokespecial 793	java/lang/String:<init>	(Ljava/lang/String;)V
    //   40: invokevirtual 407	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   43: pop
    //   44: aload_0
    //   45: areturn
    //   46: invokestatic 583	java/lang/Runtime:getRuntime	()Ljava/lang/Runtime;
    //   49: aload_1
    //   50: invokevirtual 587	java/lang/Runtime:exec	([Ljava/lang/String;)Ljava/lang/Process;
    //   53: astore_0
    //   54: new 589	java/io/BufferedReader
    //   57: dup
    //   58: new 591	java/io/InputStreamReader
    //   61: dup
    //   62: aload_0
    //   63: invokevirtual 597	java/lang/Process:getInputStream	()Ljava/io/InputStream;
    //   66: invokespecial 600	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   69: invokespecial 603	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   72: astore_1
    //   73: aload_1
    //   74: invokevirtual 606	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   77: astore_2
    //   78: aload_2
    //   79: ifnull +56 -> 135
    //   82: aload 4
    //   84: aload_2
    //   85: invokevirtual 407	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   88: pop
    //   89: goto -16 -> 73
    //   92: astore 4
    //   94: aconst_null
    //   95: astore_0
    //   96: aload_0
    //   97: astore_3
    //   98: aload_1
    //   99: astore_2
    //   100: aload 4
    //   102: invokestatic 617	com/tencent/bugly/proguard/w:a	(Ljava/lang/Throwable;)Z
    //   105: ifne +12 -> 117
    //   108: aload_0
    //   109: astore_3
    //   110: aload_1
    //   111: astore_2
    //   112: aload 4
    //   114: invokevirtual 216	java/lang/Throwable:printStackTrace	()V
    //   117: aload_1
    //   118: ifnull +7 -> 125
    //   121: aload_1
    //   122: invokevirtual 794	java/io/BufferedReader:close	()V
    //   125: aload_0
    //   126: ifnull +7 -> 133
    //   129: aload_0
    //   130: invokevirtual 794	java/io/BufferedReader:close	()V
    //   133: aconst_null
    //   134: areturn
    //   135: new 589	java/io/BufferedReader
    //   138: dup
    //   139: new 591	java/io/InputStreamReader
    //   142: dup
    //   143: aload_0
    //   144: invokevirtual 637	java/lang/Process:getErrorStream	()Ljava/io/InputStream;
    //   147: invokespecial 600	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   150: invokespecial 603	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   153: astore_0
    //   154: aload_0
    //   155: astore_3
    //   156: aload_1
    //   157: astore_2
    //   158: aload_0
    //   159: invokevirtual 606	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   162: astore 5
    //   164: aload 5
    //   166: ifnull +23 -> 189
    //   169: aload_0
    //   170: astore_3
    //   171: aload_1
    //   172: astore_2
    //   173: aload 4
    //   175: aload 5
    //   177: invokevirtual 407	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   180: pop
    //   181: goto -27 -> 154
    //   184: astore 4
    //   186: goto -90 -> 96
    //   189: aload_1
    //   190: invokevirtual 794	java/io/BufferedReader:close	()V
    //   193: aload_0
    //   194: invokevirtual 794	java/io/BufferedReader:close	()V
    //   197: aload 4
    //   199: areturn
    //   200: astore_0
    //   201: aload_0
    //   202: invokevirtual 638	java/io/IOException:printStackTrace	()V
    //   205: aload 4
    //   207: areturn
    //   208: astore_1
    //   209: aload_1
    //   210: invokevirtual 638	java/io/IOException:printStackTrace	()V
    //   213: goto -20 -> 193
    //   216: astore_1
    //   217: aload_1
    //   218: invokevirtual 638	java/io/IOException:printStackTrace	()V
    //   221: goto -96 -> 125
    //   224: astore_0
    //   225: aload_0
    //   226: invokevirtual 638	java/io/IOException:printStackTrace	()V
    //   229: goto -96 -> 133
    //   232: astore_0
    //   233: aconst_null
    //   234: astore_1
    //   235: aload_1
    //   236: ifnull +7 -> 243
    //   239: aload_1
    //   240: invokevirtual 794	java/io/BufferedReader:close	()V
    //   243: aload_3
    //   244: ifnull +7 -> 251
    //   247: aload_3
    //   248: invokevirtual 794	java/io/BufferedReader:close	()V
    //   251: aload_0
    //   252: athrow
    //   253: astore_1
    //   254: aload_1
    //   255: invokevirtual 638	java/io/IOException:printStackTrace	()V
    //   258: goto -15 -> 243
    //   261: astore_1
    //   262: aload_1
    //   263: invokevirtual 638	java/io/IOException:printStackTrace	()V
    //   266: goto -15 -> 251
    //   269: astore_0
    //   270: goto -35 -> 235
    //   273: astore_0
    //   274: aload_2
    //   275: astore_1
    //   276: goto -41 -> 235
    //   279: astore 4
    //   281: aconst_null
    //   282: astore_0
    //   283: aconst_null
    //   284: astore_1
    //   285: goto -189 -> 96
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	288	0	paramContext	Context
    //   0	288	1	paramArrayOfString	String[]
    //   77	198	2	localObject	Object
    //   1	247	3	localContext	Context
    //   9	74	4	localArrayList	ArrayList
    //   92	82	4	localThrowable1	Throwable
    //   184	22	4	localThrowable2	Throwable
    //   279	1	4	localThrowable3	Throwable
    //   162	14	5	str	String
    // Exception table:
    //   from	to	target	type
    //   73	78	92	java/lang/Throwable
    //   82	89	92	java/lang/Throwable
    //   135	154	92	java/lang/Throwable
    //   158	164	184	java/lang/Throwable
    //   173	181	184	java/lang/Throwable
    //   193	197	200	java/io/IOException
    //   189	193	208	java/io/IOException
    //   121	125	216	java/io/IOException
    //   129	133	224	java/io/IOException
    //   46	73	232	finally
    //   239	243	253	java/io/IOException
    //   247	251	261	java/io/IOException
    //   73	78	269	finally
    //   82	89	269	finally
    //   135	154	269	finally
    //   100	108	273	finally
    //   112	117	273	finally
    //   158	164	273	finally
    //   173	181	273	finally
    //   46	73	279	java/lang/Throwable
  }
  
  public static Map<String, String> a(int paramInt, boolean paramBoolean)
  {
    HashMap localHashMap = new HashMap(12);
    Object localObject = Thread.getAllStackTraces();
    if (localObject == null) {
      return null;
    }
    Thread.currentThread().getId();
    StringBuilder localStringBuilder = new StringBuilder();
    localObject = ((Map)localObject).entrySet().iterator();
    while (((Iterator)localObject).hasNext())
    {
      Map.Entry localEntry = (Map.Entry)((Iterator)localObject).next();
      localStringBuilder.setLength(0);
      if ((localEntry.getValue() != null) && (((StackTraceElement[])localEntry.getValue()).length != 0))
      {
        StackTraceElement[] arrayOfStackTraceElement = (StackTraceElement[])localEntry.getValue();
        int j = arrayOfStackTraceElement.length;
        int i = 0;
        for (;;)
        {
          StackTraceElement localStackTraceElement;
          if (i < j)
          {
            localStackTraceElement = arrayOfStackTraceElement[i];
            if ((paramInt > 0) && (localStringBuilder.length() >= paramInt)) {
              localStringBuilder.append("\n[Stack over limit size :" + paramInt + " , has been cutted !]");
            }
          }
          else
          {
            localHashMap.put(((Thread)localEntry.getKey()).getName() + "(" + ((Thread)localEntry.getKey()).getId() + ")", localStringBuilder.toString());
            break;
          }
          localStringBuilder.append(localStackTraceElement.toString()).append("\n");
          i += 1;
        }
      }
    }
    return localHashMap;
  }
  
  public static Map<String, PlugInBean> a(Parcel paramParcel)
  {
    paramParcel = paramParcel.readBundle();
    if (paramParcel == null) {
      return null;
    }
    ArrayList localArrayList1 = new ArrayList();
    ArrayList localArrayList2 = new ArrayList();
    int j = ((Integer)paramParcel.get("pluginNum")).intValue();
    int i = 0;
    while (i < j)
    {
      localArrayList1.add(paramParcel.getString("pluginKey" + i));
      i += 1;
    }
    i = 0;
    while (i < j)
    {
      String str1 = paramParcel.getString("pluginVal" + i + "plugInId");
      String str2 = paramParcel.getString("pluginVal" + i + "plugInUUID");
      localArrayList2.add(new PlugInBean(str1, paramParcel.getString("pluginVal" + i + "plugInVersion"), str2));
      i += 1;
    }
    if (localArrayList1.size() == localArrayList2.size())
    {
      paramParcel = new HashMap(localArrayList1.size());
      i = 0;
      while (i < localArrayList1.size())
      {
        paramParcel.put(localArrayList1.get(i), PlugInBean.class.cast(localArrayList2.get(i)));
        i += 1;
      }
    }
    for (;;)
    {
      return paramParcel;
      w.e("map plugin parcel error!", new Object[0]);
      paramParcel = null;
    }
  }
  
  public static void a(Parcel paramParcel, Map<String, PlugInBean> paramMap)
  {
    int k = 0;
    if ((paramMap == null) || (paramMap == null) || (paramMap.size() <= 0))
    {
      paramParcel.writeBundle(null);
      return;
    }
    int i = paramMap.size();
    ArrayList localArrayList1 = new ArrayList(i);
    ArrayList localArrayList2 = new ArrayList(i);
    paramMap = paramMap.entrySet().iterator();
    while (paramMap.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)paramMap.next();
      localArrayList1.add(localEntry.getKey());
      localArrayList2.add(localEntry.getValue());
    }
    paramMap = new Bundle();
    paramMap.putInt("pluginNum", localArrayList1.size());
    i = 0;
    int j;
    for (;;)
    {
      j = k;
      if (i >= localArrayList1.size()) {
        break;
      }
      paramMap.putString("pluginKey" + i, (String)localArrayList1.get(i));
      i += 1;
    }
    while (j < localArrayList1.size())
    {
      paramMap.putString("pluginVal" + j + "plugInId", ((PlugInBean)localArrayList2.get(j)).a);
      paramMap.putString("pluginVal" + j + "plugInUUID", ((PlugInBean)localArrayList2.get(j)).c);
      paramMap.putString("pluginVal" + j + "plugInVersion", ((PlugInBean)localArrayList2.get(j)).b);
      j += 1;
    }
    paramParcel.writeBundle(paramMap);
  }
  
  private void a(ArrayList<String> paramArrayList, Object paramObject)
  {
    for (;;)
    {
      if (paramObject.getClass().isArray())
      {
        if (!paramObject.getClass().getComponentType().toString().equals("byte")) {
          throw new IllegalArgumentException("only byte[] is supported");
        }
        if (Array.getLength(paramObject) > 0)
        {
          paramArrayList.add("java.util.List");
          paramObject = Array.get(paramObject, 0);
        }
        else
        {
          paramArrayList.add("Array");
          paramArrayList.add("?");
        }
      }
      else
      {
        if ((paramObject instanceof Array)) {
          throw new IllegalArgumentException("can not support Array, please use List");
        }
        if ((paramObject instanceof List))
        {
          paramArrayList.add("java.util.List");
          paramObject = (List)paramObject;
          if (((List)paramObject).size() > 0) {
            paramObject = ((List)paramObject).get(0);
          } else {
            paramArrayList.add("?");
          }
        }
        else
        {
          if (!(paramObject instanceof Map)) {
            break label234;
          }
          paramArrayList.add("java.util.Map");
          paramObject = (Map)paramObject;
          if (((Map)paramObject).size() <= 0) {
            break;
          }
          Object localObject = ((Map)paramObject).keySet().iterator().next();
          paramObject = ((Map)paramObject).get(localObject);
          paramArrayList.add(localObject.getClass().getName());
        }
      }
    }
    paramArrayList.add("?");
    paramArrayList.add("?");
    return;
    label234:
    paramArrayList.add(paramObject.getClass().getName());
  }
  
  public static boolean a(Context paramContext, String paramString, long paramLong)
  {
    w.c("[Util] try to lock file:%s (pid=%d | tid=%d)", new Object[] { paramString, Integer.valueOf(Process.myPid()), Integer.valueOf(Process.myTid()) });
    try
    {
      File localFile = new File(paramContext.getFilesDir() + File.separator + paramString);
      if (localFile.exists())
      {
        if (System.currentTimeMillis() - localFile.lastModified() < paramLong) {
          return false;
        }
        w.c("[Util] lock file(%s) is expired, unlock it", new Object[] { paramString });
        b(paramContext, paramString);
      }
      if (localFile.createNewFile())
      {
        w.c("[Util] successfully locked file:%s (pid=%d | tid=%d)", new Object[] { paramString, Integer.valueOf(Process.myPid()), Integer.valueOf(Process.myTid()) });
        return true;
      }
    }
    catch (Throwable paramContext)
    {
      w.a(paramContext);
    }
    return false;
  }
  
  /* Error */
  public static boolean a(File paramFile1, File paramFile2, int paramInt)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: ldc_w 956
    //   6: iconst_0
    //   7: anewarray 4	java/lang/Object
    //   10: invokestatic 260	com/tencent/bugly/proguard/w:c	(Ljava/lang/String;[Ljava/lang/Object;)Z
    //   13: pop
    //   14: aload_0
    //   15: ifnull +15 -> 30
    //   18: aload_1
    //   19: ifnull +11 -> 30
    //   22: aload_0
    //   23: aload_1
    //   24: invokevirtual 957	java/io/File:equals	(Ljava/lang/Object;)Z
    //   27: ifeq +16 -> 43
    //   30: ldc_w 959
    //   33: iconst_0
    //   34: anewarray 4	java/lang/Object
    //   37: invokestatic 536	com/tencent/bugly/proguard/w:d	(Ljava/lang/String;[Ljava/lang/Object;)Z
    //   40: pop
    //   41: iconst_0
    //   42: ireturn
    //   43: aload_0
    //   44: invokevirtual 941	java/io/File:exists	()Z
    //   47: ifeq +10 -> 57
    //   50: aload_0
    //   51: invokevirtual 962	java/io/File:canRead	()Z
    //   54: ifne +16 -> 70
    //   57: ldc_w 964
    //   60: iconst_0
    //   61: anewarray 4	java/lang/Object
    //   64: invokestatic 536	com/tencent/bugly/proguard/w:d	(Ljava/lang/String;[Ljava/lang/Object;)Z
    //   67: pop
    //   68: iconst_0
    //   69: ireturn
    //   70: aload_1
    //   71: invokevirtual 967	java/io/File:getParentFile	()Ljava/io/File;
    //   74: ifnull +21 -> 95
    //   77: aload_1
    //   78: invokevirtual 967	java/io/File:getParentFile	()Ljava/io/File;
    //   81: invokevirtual 941	java/io/File:exists	()Z
    //   84: ifne +11 -> 95
    //   87: aload_1
    //   88: invokevirtual 967	java/io/File:getParentFile	()Ljava/io/File;
    //   91: invokevirtual 970	java/io/File:mkdirs	()Z
    //   94: pop
    //   95: aload_1
    //   96: invokevirtual 941	java/io/File:exists	()Z
    //   99: ifne +8 -> 107
    //   102: aload_1
    //   103: invokevirtual 951	java/io/File:createNewFile	()Z
    //   106: pop
    //   107: aload_1
    //   108: invokevirtual 941	java/io/File:exists	()Z
    //   111: ifeq -70 -> 41
    //   114: aload_1
    //   115: invokevirtual 962	java/io/File:canRead	()Z
    //   118: ifeq -77 -> 41
    //   121: new 972	java/io/FileInputStream
    //   124: dup
    //   125: aload_0
    //   126: invokespecial 975	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   129: astore_3
    //   130: new 977	java/util/zip/ZipOutputStream
    //   133: dup
    //   134: new 979	java/io/FileOutputStream
    //   137: dup
    //   138: aload_1
    //   139: invokespecial 980	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   142: invokespecial 983	java/util/zip/ZipOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   145: astore 4
    //   147: aload 4
    //   149: bipush 8
    //   151: invokevirtual 986	java/util/zip/ZipOutputStream:setMethod	(I)V
    //   154: aload 4
    //   156: new 988	java/util/zip/ZipEntry
    //   159: dup
    //   160: aload_0
    //   161: invokevirtual 989	java/io/File:getName	()Ljava/lang/String;
    //   164: invokespecial 990	java/util/zip/ZipEntry:<init>	(Ljava/lang/String;)V
    //   167: invokevirtual 994	java/util/zip/ZipOutputStream:putNextEntry	(Ljava/util/zip/ZipEntry;)V
    //   170: sipush 5000
    //   173: newarray <illegal type>
    //   175: astore_0
    //   176: aload_3
    //   177: aload_0
    //   178: invokevirtual 998	java/io/FileInputStream:read	([B)I
    //   181: istore_2
    //   182: iload_2
    //   183: ifle +79 -> 262
    //   186: aload 4
    //   188: aload_0
    //   189: iconst_0
    //   190: iload_2
    //   191: invokevirtual 1001	java/util/zip/ZipOutputStream:write	([BII)V
    //   194: goto -18 -> 176
    //   197: astore 5
    //   199: aload_3
    //   200: astore_1
    //   201: aload 4
    //   203: astore_0
    //   204: aload 5
    //   206: astore_3
    //   207: aload_3
    //   208: invokestatic 617	com/tencent/bugly/proguard/w:a	(Ljava/lang/Throwable;)Z
    //   211: ifne +7 -> 218
    //   214: aload_3
    //   215: invokevirtual 216	java/lang/Throwable:printStackTrace	()V
    //   218: aload_1
    //   219: ifnull +7 -> 226
    //   222: aload_1
    //   223: invokevirtual 1002	java/io/FileInputStream:close	()V
    //   226: aload_0
    //   227: ifnull +7 -> 234
    //   230: aload_0
    //   231: invokevirtual 1003	java/util/zip/ZipOutputStream:close	()V
    //   234: ldc_w 1005
    //   237: iconst_0
    //   238: anewarray 4	java/lang/Object
    //   241: invokestatic 260	com/tencent/bugly/proguard/w:c	(Ljava/lang/String;[Ljava/lang/Object;)Z
    //   244: pop
    //   245: iconst_0
    //   246: ireturn
    //   247: astore_3
    //   248: aload_3
    //   249: invokestatic 617	com/tencent/bugly/proguard/w:a	(Ljava/lang/Throwable;)Z
    //   252: ifne -145 -> 107
    //   255: aload_3
    //   256: invokevirtual 216	java/lang/Throwable:printStackTrace	()V
    //   259: goto -152 -> 107
    //   262: aload 4
    //   264: invokevirtual 1008	java/util/zip/ZipOutputStream:flush	()V
    //   267: aload 4
    //   269: invokevirtual 1011	java/util/zip/ZipOutputStream:closeEntry	()V
    //   272: aload_3
    //   273: invokevirtual 1002	java/io/FileInputStream:close	()V
    //   276: aload 4
    //   278: invokevirtual 1003	java/util/zip/ZipOutputStream:close	()V
    //   281: ldc_w 1005
    //   284: iconst_0
    //   285: anewarray 4	java/lang/Object
    //   288: invokestatic 260	com/tencent/bugly/proguard/w:c	(Ljava/lang/String;[Ljava/lang/Object;)Z
    //   291: pop
    //   292: iconst_1
    //   293: ireturn
    //   294: astore_0
    //   295: aload_0
    //   296: invokevirtual 638	java/io/IOException:printStackTrace	()V
    //   299: goto -23 -> 276
    //   302: astore_0
    //   303: aload_0
    //   304: invokevirtual 638	java/io/IOException:printStackTrace	()V
    //   307: goto -26 -> 281
    //   310: astore_1
    //   311: aload_1
    //   312: invokevirtual 638	java/io/IOException:printStackTrace	()V
    //   315: goto -89 -> 226
    //   318: astore_0
    //   319: aload_0
    //   320: invokevirtual 638	java/io/IOException:printStackTrace	()V
    //   323: goto -89 -> 234
    //   326: astore_1
    //   327: aconst_null
    //   328: astore_0
    //   329: aconst_null
    //   330: astore_3
    //   331: aload_3
    //   332: ifnull +7 -> 339
    //   335: aload_3
    //   336: invokevirtual 1002	java/io/FileInputStream:close	()V
    //   339: aload_0
    //   340: ifnull +7 -> 347
    //   343: aload_0
    //   344: invokevirtual 1003	java/util/zip/ZipOutputStream:close	()V
    //   347: ldc_w 1005
    //   350: iconst_0
    //   351: anewarray 4	java/lang/Object
    //   354: invokestatic 260	com/tencent/bugly/proguard/w:c	(Ljava/lang/String;[Ljava/lang/Object;)Z
    //   357: pop
    //   358: aload_1
    //   359: athrow
    //   360: astore_3
    //   361: aload_3
    //   362: invokevirtual 638	java/io/IOException:printStackTrace	()V
    //   365: goto -26 -> 339
    //   368: astore_0
    //   369: aload_0
    //   370: invokevirtual 638	java/io/IOException:printStackTrace	()V
    //   373: goto -26 -> 347
    //   376: astore_1
    //   377: aconst_null
    //   378: astore_0
    //   379: goto -48 -> 331
    //   382: astore_1
    //   383: aload 4
    //   385: astore_0
    //   386: goto -55 -> 331
    //   389: astore 4
    //   391: aload_1
    //   392: astore_3
    //   393: aload 4
    //   395: astore_1
    //   396: goto -65 -> 331
    //   399: astore_3
    //   400: aconst_null
    //   401: astore_0
    //   402: aload 4
    //   404: astore_1
    //   405: goto -198 -> 207
    //   408: astore 4
    //   410: aconst_null
    //   411: astore_0
    //   412: aload_3
    //   413: astore_1
    //   414: aload 4
    //   416: astore_3
    //   417: goto -210 -> 207
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	420	0	paramFile1	File
    //   0	420	1	paramFile2	File
    //   0	420	2	paramInt	int
    //   129	86	3	localObject1	Object
    //   247	26	3	localThrowable1	Throwable
    //   330	6	3	localObject2	Object
    //   360	2	3	localIOException	java.io.IOException
    //   392	1	3	localFile	File
    //   399	14	3	localThrowable2	Throwable
    //   416	1	3	localThrowable3	Throwable
    //   1	383	4	localZipOutputStream	java.util.zip.ZipOutputStream
    //   389	14	4	localObject3	Object
    //   408	7	4	localThrowable4	Throwable
    //   197	8	5	localThrowable5	Throwable
    // Exception table:
    //   from	to	target	type
    //   147	176	197	java/lang/Throwable
    //   176	182	197	java/lang/Throwable
    //   186	194	197	java/lang/Throwable
    //   262	272	197	java/lang/Throwable
    //   70	95	247	java/lang/Throwable
    //   95	107	247	java/lang/Throwable
    //   272	276	294	java/io/IOException
    //   276	281	302	java/io/IOException
    //   222	226	310	java/io/IOException
    //   230	234	318	java/io/IOException
    //   121	130	326	finally
    //   335	339	360	java/io/IOException
    //   343	347	368	java/io/IOException
    //   130	147	376	finally
    //   147	176	382	finally
    //   176	182	382	finally
    //   186	194	382	finally
    //   262	272	382	finally
    //   207	218	389	finally
    //   121	130	399	java/lang/Throwable
    //   130	147	408	java/lang/Throwable
  }
  
  /* Error */
  public static byte[] a(int paramInt)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: bipush 16
    //   5: newarray <illegal type>
    //   7: astore_3
    //   8: new 1014	java/io/DataInputStream
    //   11: dup
    //   12: new 972	java/io/FileInputStream
    //   15: dup
    //   16: new 930	java/io/File
    //   19: dup
    //   20: ldc_w 1016
    //   23: invokespecial 938	java/io/File:<init>	(Ljava/lang/String;)V
    //   26: invokespecial 975	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   29: invokespecial 1017	java/io/DataInputStream:<init>	(Ljava/io/InputStream;)V
    //   32: astore_2
    //   33: aload_2
    //   34: astore_1
    //   35: aload_2
    //   36: aload_3
    //   37: invokevirtual 1020	java/io/DataInputStream:readFully	([B)V
    //   40: aload_2
    //   41: invokevirtual 1021	java/io/DataInputStream:close	()V
    //   44: aload_3
    //   45: astore_1
    //   46: ldc 2
    //   48: monitorexit
    //   49: aload_1
    //   50: areturn
    //   51: astore_3
    //   52: aconst_null
    //   53: astore_2
    //   54: aload_2
    //   55: astore_1
    //   56: ldc_w 1023
    //   59: iconst_1
    //   60: anewarray 4	java/lang/Object
    //   63: dup
    //   64: iconst_0
    //   65: aload_3
    //   66: aastore
    //   67: invokestatic 58	com/tencent/bugly/proguard/w:e	(Ljava/lang/String;[Ljava/lang/Object;)Z
    //   70: pop
    //   71: aload_2
    //   72: ifnull +7 -> 79
    //   75: aload_2
    //   76: invokevirtual 1021	java/io/DataInputStream:close	()V
    //   79: ldc_w 1025
    //   82: invokestatic 1031	javax/crypto/KeyGenerator:getInstance	(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;
    //   85: astore_1
    //   86: aload_1
    //   87: sipush 128
    //   90: new 1033	java/security/SecureRandom
    //   93: dup
    //   94: invokespecial 1034	java/security/SecureRandom:<init>	()V
    //   97: invokevirtual 1038	javax/crypto/KeyGenerator:init	(ILjava/security/SecureRandom;)V
    //   100: aload_1
    //   101: invokevirtual 1042	javax/crypto/KeyGenerator:generateKey	()Ljavax/crypto/SecretKey;
    //   104: invokeinterface 1047 1 0
    //   109: astore_1
    //   110: goto -64 -> 46
    //   113: aload_1
    //   114: ifnull +7 -> 121
    //   117: aload_1
    //   118: invokevirtual 1021	java/io/DataInputStream:close	()V
    //   121: aload_2
    //   122: athrow
    //   123: astore_1
    //   124: aload_1
    //   125: invokestatic 213	com/tencent/bugly/proguard/w:b	(Ljava/lang/Throwable;)Z
    //   128: ifne +7 -> 135
    //   131: aload_1
    //   132: invokevirtual 1048	java/lang/Exception:printStackTrace	()V
    //   135: aconst_null
    //   136: astore_1
    //   137: goto -91 -> 46
    //   140: astore_1
    //   141: ldc 2
    //   143: monitorexit
    //   144: aload_1
    //   145: athrow
    //   146: astore_2
    //   147: goto -34 -> 113
    //   150: astore_3
    //   151: goto -97 -> 54
    //   154: astore_2
    //   155: aconst_null
    //   156: astore_1
    //   157: goto -44 -> 113
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	160	0	paramInt	int
    //   34	84	1	localObject1	Object
    //   123	9	1	localException1	Exception
    //   136	1	1	localObject2	Object
    //   140	5	1	localObject3	Object
    //   156	1	1	localObject4	Object
    //   32	90	2	localDataInputStream	java.io.DataInputStream
    //   146	1	2	localObject5	Object
    //   154	1	2	localObject6	Object
    //   7	38	3	arrayOfByte	byte[]
    //   51	15	3	localException2	Exception
    //   150	1	3	localException3	Exception
    // Exception table:
    //   from	to	target	type
    //   3	33	51	java/lang/Exception
    //   40	44	123	java/lang/Exception
    //   75	79	123	java/lang/Exception
    //   79	110	123	java/lang/Exception
    //   117	121	123	java/lang/Exception
    //   121	123	123	java/lang/Exception
    //   40	44	140	finally
    //   75	79	140	finally
    //   79	110	140	finally
    //   117	121	140	finally
    //   121	123	140	finally
    //   124	135	140	finally
    //   35	40	146	finally
    //   56	71	146	finally
    //   35	40	150	java/lang/Exception
    //   3	33	154	finally
  }
  
  public static byte[] a(int paramInt, byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    try
    {
      SecretKeySpec localSecretKeySpec = new SecretKeySpec(paramArrayOfByte2, "AES");
      Cipher localCipher = Cipher.getInstance("AES/GCM/NoPadding");
      localCipher.init(paramInt, localSecretKeySpec, new IvParameterSpec(paramArrayOfByte2));
      paramArrayOfByte1 = localCipher.doFinal(paramArrayOfByte1);
      return paramArrayOfByte1;
    }
    catch (Exception paramArrayOfByte1)
    {
      if (!w.b(paramArrayOfByte1)) {
        paramArrayOfByte1.printStackTrace();
      }
    }
    return null;
  }
  
  public static byte[] a(long paramLong)
  {
    try
    {
      byte[] arrayOfByte = String.valueOf(paramLong).getBytes("utf-8");
      return arrayOfByte;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      localUnsupportedEncodingException.printStackTrace();
    }
    return null;
  }
  
  public static byte[] a(am paramam)
  {
    try
    {
      d locald = new d();
      locald.p();
      locald.a("utf-8");
      locald.b(1);
      locald.b("RqdServer");
      locald.c("sync");
      locald.a("detail", paramam);
      paramam = locald.a();
      return paramam;
    }
    catch (Throwable paramam)
    {
      if (!w.b(paramam)) {
        paramam.printStackTrace();
      }
    }
    return null;
  }
  
  public static byte[] a(j paramj)
  {
    try
    {
      i locali = new i();
      locali.a("utf-8");
      paramj.a(locali);
      paramj = locali.b();
      return paramj;
    }
    catch (Throwable paramj)
    {
      if (!w.b(paramj)) {
        paramj.printStackTrace();
      }
    }
    return null;
  }
  
  /* Error */
  public static byte[] a(File paramFile, String paramString)
  {
    // Byte code:
    //   0: ldc_w 956
    //   3: iconst_0
    //   4: anewarray 4	java/lang/Object
    //   7: invokestatic 260	com/tencent/bugly/proguard/w:c	(Ljava/lang/String;[Ljava/lang/Object;)Z
    //   10: pop
    //   11: ldc_w 1110
    //   14: astore_2
    //   15: aload_0
    //   16: ifnull +425 -> 441
    //   19: aload_0
    //   20: invokevirtual 941	java/io/File:exists	()Z
    //   23: ifeq +418 -> 441
    //   26: aload_0
    //   27: invokevirtual 962	java/io/File:canRead	()Z
    //   30: ifeq +411 -> 441
    //   33: new 972	java/io/FileInputStream
    //   36: dup
    //   37: aload_0
    //   38: invokespecial 975	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   41: astore_2
    //   42: aload_0
    //   43: invokevirtual 989	java/io/File:getName	()Ljava/lang/String;
    //   46: astore_3
    //   47: aload_2
    //   48: astore_0
    //   49: aload_3
    //   50: astore_2
    //   51: new 1112	java/io/ByteArrayInputStream
    //   54: dup
    //   55: aload_1
    //   56: ldc_w 1114
    //   59: invokevirtual 1080	java/lang/String:getBytes	(Ljava/lang/String;)[B
    //   62: invokespecial 1115	java/io/ByteArrayInputStream:<init>	([B)V
    //   65: astore 5
    //   67: new 1117	java/io/ByteArrayOutputStream
    //   70: dup
    //   71: invokespecial 1118	java/io/ByteArrayOutputStream:<init>	()V
    //   74: astore 6
    //   76: new 977	java/util/zip/ZipOutputStream
    //   79: dup
    //   80: aload 6
    //   82: invokespecial 983	java/util/zip/ZipOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   85: astore_1
    //   86: aload_1
    //   87: astore_3
    //   88: aload_0
    //   89: astore 4
    //   91: aload_1
    //   92: bipush 8
    //   94: invokevirtual 986	java/util/zip/ZipOutputStream:setMethod	(I)V
    //   97: aload_1
    //   98: astore_3
    //   99: aload_0
    //   100: astore 4
    //   102: aload_1
    //   103: new 988	java/util/zip/ZipEntry
    //   106: dup
    //   107: aload_2
    //   108: invokespecial 990	java/util/zip/ZipEntry:<init>	(Ljava/lang/String;)V
    //   111: invokevirtual 994	java/util/zip/ZipOutputStream:putNextEntry	(Ljava/util/zip/ZipEntry;)V
    //   114: aload_1
    //   115: astore_3
    //   116: aload_0
    //   117: astore 4
    //   119: sipush 1024
    //   122: newarray <illegal type>
    //   124: astore_2
    //   125: aload_0
    //   126: ifnull +87 -> 213
    //   129: aload_1
    //   130: astore_3
    //   131: aload_0
    //   132: astore 4
    //   134: aload_0
    //   135: aload_2
    //   136: invokevirtual 998	java/io/FileInputStream:read	([B)I
    //   139: istore 7
    //   141: iload 7
    //   143: ifle +70 -> 213
    //   146: aload_1
    //   147: astore_3
    //   148: aload_0
    //   149: astore 4
    //   151: aload_1
    //   152: aload_2
    //   153: iconst_0
    //   154: iload 7
    //   156: invokevirtual 1001	java/util/zip/ZipOutputStream:write	([BII)V
    //   159: goto -30 -> 129
    //   162: astore_2
    //   163: aload_1
    //   164: astore_3
    //   165: aload_0
    //   166: astore 4
    //   168: aload_2
    //   169: invokestatic 617	com/tencent/bugly/proguard/w:a	(Ljava/lang/Throwable;)Z
    //   172: ifne +12 -> 184
    //   175: aload_1
    //   176: astore_3
    //   177: aload_0
    //   178: astore 4
    //   180: aload_2
    //   181: invokevirtual 216	java/lang/Throwable:printStackTrace	()V
    //   184: aload_0
    //   185: ifnull +7 -> 192
    //   188: aload_0
    //   189: invokevirtual 1002	java/io/FileInputStream:close	()V
    //   192: aload_1
    //   193: ifnull +7 -> 200
    //   196: aload_1
    //   197: invokevirtual 1003	java/util/zip/ZipOutputStream:close	()V
    //   200: ldc_w 1005
    //   203: iconst_0
    //   204: anewarray 4	java/lang/Object
    //   207: invokestatic 260	com/tencent/bugly/proguard/w:c	(Ljava/lang/String;[Ljava/lang/Object;)Z
    //   210: pop
    //   211: aconst_null
    //   212: areturn
    //   213: aload_1
    //   214: astore_3
    //   215: aload_0
    //   216: astore 4
    //   218: aload 5
    //   220: aload_2
    //   221: invokevirtual 1119	java/io/ByteArrayInputStream:read	([B)I
    //   224: istore 7
    //   226: iload 7
    //   228: ifle +54 -> 282
    //   231: aload_1
    //   232: astore_3
    //   233: aload_0
    //   234: astore 4
    //   236: aload_1
    //   237: aload_2
    //   238: iconst_0
    //   239: iload 7
    //   241: invokevirtual 1001	java/util/zip/ZipOutputStream:write	([BII)V
    //   244: goto -31 -> 213
    //   247: astore_1
    //   248: aload 4
    //   250: astore_0
    //   251: aload_3
    //   252: astore_2
    //   253: aload_0
    //   254: ifnull +7 -> 261
    //   257: aload_0
    //   258: invokevirtual 1002	java/io/FileInputStream:close	()V
    //   261: aload_2
    //   262: ifnull +7 -> 269
    //   265: aload_2
    //   266: invokevirtual 1003	java/util/zip/ZipOutputStream:close	()V
    //   269: ldc_w 1005
    //   272: iconst_0
    //   273: anewarray 4	java/lang/Object
    //   276: invokestatic 260	com/tencent/bugly/proguard/w:c	(Ljava/lang/String;[Ljava/lang/Object;)Z
    //   279: pop
    //   280: aload_1
    //   281: athrow
    //   282: aload_1
    //   283: astore_3
    //   284: aload_0
    //   285: astore 4
    //   287: aload_1
    //   288: invokevirtual 1011	java/util/zip/ZipOutputStream:closeEntry	()V
    //   291: aload_1
    //   292: astore_3
    //   293: aload_0
    //   294: astore 4
    //   296: aload_1
    //   297: invokevirtual 1008	java/util/zip/ZipOutputStream:flush	()V
    //   300: aload_1
    //   301: astore_3
    //   302: aload_0
    //   303: astore 4
    //   305: aload_1
    //   306: invokevirtual 1122	java/util/zip/ZipOutputStream:finish	()V
    //   309: aload_1
    //   310: astore_3
    //   311: aload_0
    //   312: astore 4
    //   314: aload 6
    //   316: invokevirtual 1125	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   319: astore_2
    //   320: aload_0
    //   321: ifnull +7 -> 328
    //   324: aload_0
    //   325: invokevirtual 1002	java/io/FileInputStream:close	()V
    //   328: aload_1
    //   329: invokevirtual 1003	java/util/zip/ZipOutputStream:close	()V
    //   332: ldc_w 1005
    //   335: iconst_0
    //   336: anewarray 4	java/lang/Object
    //   339: invokestatic 260	com/tencent/bugly/proguard/w:c	(Ljava/lang/String;[Ljava/lang/Object;)Z
    //   342: pop
    //   343: aload_2
    //   344: areturn
    //   345: astore_0
    //   346: aload_0
    //   347: invokevirtual 638	java/io/IOException:printStackTrace	()V
    //   350: goto -22 -> 328
    //   353: astore_0
    //   354: aload_0
    //   355: invokevirtual 638	java/io/IOException:printStackTrace	()V
    //   358: goto -26 -> 332
    //   361: astore_0
    //   362: aload_0
    //   363: invokevirtual 638	java/io/IOException:printStackTrace	()V
    //   366: goto -174 -> 192
    //   369: astore_0
    //   370: aload_0
    //   371: invokevirtual 638	java/io/IOException:printStackTrace	()V
    //   374: goto -174 -> 200
    //   377: astore_0
    //   378: aload_0
    //   379: invokevirtual 638	java/io/IOException:printStackTrace	()V
    //   382: goto -121 -> 261
    //   385: astore_0
    //   386: aload_0
    //   387: invokevirtual 638	java/io/IOException:printStackTrace	()V
    //   390: goto -121 -> 269
    //   393: astore_1
    //   394: aconst_null
    //   395: astore_2
    //   396: aconst_null
    //   397: astore_0
    //   398: goto -145 -> 253
    //   401: astore_1
    //   402: aload_2
    //   403: astore_0
    //   404: aconst_null
    //   405: astore_2
    //   406: goto -153 -> 253
    //   409: astore_1
    //   410: aconst_null
    //   411: astore_2
    //   412: goto -159 -> 253
    //   415: astore_2
    //   416: aconst_null
    //   417: astore_1
    //   418: aconst_null
    //   419: astore_0
    //   420: goto -257 -> 163
    //   423: astore_1
    //   424: aload_2
    //   425: astore_0
    //   426: aconst_null
    //   427: astore_3
    //   428: aload_1
    //   429: astore_2
    //   430: aload_3
    //   431: astore_1
    //   432: goto -269 -> 163
    //   435: astore_2
    //   436: aconst_null
    //   437: astore_1
    //   438: goto -275 -> 163
    //   441: aconst_null
    //   442: astore_0
    //   443: goto -392 -> 51
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	446	0	paramFile	File
    //   0	446	1	paramString	String
    //   14	139	2	localObject1	Object
    //   162	76	2	localThrowable1	Throwable
    //   252	160	2	localObject2	Object
    //   415	10	2	localThrowable2	Throwable
    //   429	1	2	str1	String
    //   435	1	2	localThrowable3	Throwable
    //   46	385	3	str2	String
    //   89	224	4	localFile	File
    //   65	154	5	localByteArrayInputStream	java.io.ByteArrayInputStream
    //   74	241	6	localByteArrayOutputStream	java.io.ByteArrayOutputStream
    //   139	101	7	i	int
    // Exception table:
    //   from	to	target	type
    //   91	97	162	java/lang/Throwable
    //   102	114	162	java/lang/Throwable
    //   119	125	162	java/lang/Throwable
    //   134	141	162	java/lang/Throwable
    //   151	159	162	java/lang/Throwable
    //   218	226	162	java/lang/Throwable
    //   236	244	162	java/lang/Throwable
    //   287	291	162	java/lang/Throwable
    //   296	300	162	java/lang/Throwable
    //   305	309	162	java/lang/Throwable
    //   314	320	162	java/lang/Throwable
    //   91	97	247	finally
    //   102	114	247	finally
    //   119	125	247	finally
    //   134	141	247	finally
    //   151	159	247	finally
    //   168	175	247	finally
    //   180	184	247	finally
    //   218	226	247	finally
    //   236	244	247	finally
    //   287	291	247	finally
    //   296	300	247	finally
    //   305	309	247	finally
    //   314	320	247	finally
    //   324	328	345	java/io/IOException
    //   328	332	353	java/io/IOException
    //   188	192	361	java/io/IOException
    //   196	200	369	java/io/IOException
    //   257	261	377	java/io/IOException
    //   265	269	385	java/io/IOException
    //   19	42	393	finally
    //   42	47	401	finally
    //   51	86	409	finally
    //   19	42	415	java/lang/Throwable
    //   42	47	423	java/lang/Throwable
    //   51	86	435	java/lang/Throwable
  }
  
  public static byte[] a(byte[] paramArrayOfByte, int paramInt)
  {
    if (paramArrayOfByte == null) {
      return paramArrayOfByte;
    }
    w.c("rqdp{  zp:} %s rqdp{  len:} %s", new Object[] { Integer.valueOf(2), Integer.valueOf(paramArrayOfByte.length) });
    try
    {
      ab localab = aa.a(2);
      if (localab == null) {
        return null;
      }
      paramArrayOfByte = localab.a(paramArrayOfByte);
      return paramArrayOfByte;
    }
    catch (Throwable paramArrayOfByte)
    {
      if (!w.a(paramArrayOfByte)) {
        paramArrayOfByte.printStackTrace();
      }
    }
    return null;
  }
  
  public static byte[] a(byte[] paramArrayOfByte, int paramInt1, int paramInt2, String paramString)
  {
    try
    {
      paramArrayOfByte = b(a(paramArrayOfByte, 1, paramString), 2);
      return paramArrayOfByte;
    }
    catch (Exception paramArrayOfByte)
    {
      if (!w.a(paramArrayOfByte)) {
        paramArrayOfByte.printStackTrace();
      }
    }
    return null;
  }
  
  public static byte[] a(byte[] paramArrayOfByte, int paramInt, String paramString)
  {
    if ((paramArrayOfByte == null) || (paramInt == -1)) {
      return paramArrayOfByte;
    }
    if (paramInt == 1) {}
    Object localObject;
    try
    {
      localObject = new af();
    }
    catch (Throwable paramArrayOfByte)
    {
      if (w.a(paramArrayOfByte)) {
        break label55;
      }
      paramArrayOfByte.printStackTrace();
      label55:
      w.d("encrytype %d %s", new Object[] { Integer.valueOf(paramInt), paramString });
      return null;
    }
    if (paramInt == 3) {
      localObject = new ae();
    } else {
      localObject = null;
    }
    while (localObject != null)
    {
      ((ag)localObject).a(paramString);
      paramArrayOfByte = ((ag)localObject).a(paramArrayOfByte);
      return paramArrayOfByte;
    }
    return null;
  }
  
  public static String b()
  {
    try
    {
      String str = Build.MODEL;
      return str;
    }
    catch (Throwable localThrowable)
    {
      if (!w.a(localThrowable)) {
        localThrowable.printStackTrace();
      }
    }
    return "fail";
  }
  
  public static String b(Context paramContext)
  {
    Object localObject;
    if (!AppInfo.a(paramContext, "android.permission.READ_PHONE_STATE"))
    {
      w.d("no READ_PHONE_STATE permission to get IMSI", new Object[0]);
      localObject = "null";
    }
    for (;;)
    {
      return (String)localObject;
      if (paramContext == null) {
        return null;
      }
      try
      {
        paramContext = ((TelephonyManager)paramContext.getSystemService("phone")).getSubscriberId();
        localObject = paramContext;
        if (paramContext != null) {
          Log.i(w.a, "failed to get IMSI");
        }
      }
      catch (Throwable paramContext)
      {
        try
        {
          localObject = paramContext.toLowerCase();
          return (String)localObject;
        }
        catch (Throwable localThrowable)
        {
          for (;;) {}
        }
        paramContext = paramContext;
        paramContext = null;
      }
    }
    return paramContext;
  }
  
  public static String b(byte[] paramArrayOfByte)
  {
    if ((paramArrayOfByte == null) || (paramArrayOfByte.length == 0)) {
      return "NULL";
    }
    try
    {
      Object localObject = MessageDigest.getInstance("SHA-1");
      ((MessageDigest)localObject).update(paramArrayOfByte);
      paramArrayOfByte = ((MessageDigest)localObject).digest();
      if (paramArrayOfByte == null) {
        return "";
      }
      localObject = new StringBuffer();
      int i = 0;
      while (i < paramArrayOfByte.length)
      {
        String str = Integer.toHexString(paramArrayOfByte[i] & 0xFF);
        if (str.length() == 1) {
          ((StringBuffer)localObject).append("0");
        }
        ((StringBuffer)localObject).append(str);
        i += 1;
      }
      paramArrayOfByte = ((StringBuffer)localObject).toString().toUpperCase();
      return paramArrayOfByte;
    }
    catch (Throwable paramArrayOfByte)
    {
      if (!w.a(paramArrayOfByte)) {
        paramArrayOfByte.printStackTrace();
      }
    }
    return null;
  }
  
  public static Map<String, String> b(Parcel paramParcel)
  {
    int i = 0;
    paramParcel = paramParcel.readBundle();
    if (paramParcel == null) {
      return null;
    }
    ArrayList localArrayList1 = paramParcel.getStringArrayList("keys");
    ArrayList localArrayList2 = paramParcel.getStringArrayList("values");
    if ((localArrayList1 != null) && (localArrayList2 != null) && (localArrayList1.size() == localArrayList2.size()))
    {
      paramParcel = new HashMap(localArrayList1.size());
      while (i < localArrayList1.size())
      {
        paramParcel.put(localArrayList1.get(i), localArrayList2.get(i));
        i += 1;
      }
    }
    for (;;)
    {
      return paramParcel;
      w.e("map parcel error!", new Object[0]);
      paramParcel = null;
    }
  }
  
  public static void b(Parcel paramParcel, Map<String, String> paramMap)
  {
    if ((paramMap == null) || (paramMap == null) || (paramMap.size() <= 0))
    {
      paramParcel.writeBundle(null);
      return;
    }
    int i = paramMap.size();
    ArrayList localArrayList1 = new ArrayList(i);
    ArrayList localArrayList2 = new ArrayList(i);
    paramMap = paramMap.entrySet().iterator();
    while (paramMap.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)paramMap.next();
      localArrayList1.add(localEntry.getKey());
      localArrayList2.add(localEntry.getValue());
    }
    paramMap = new Bundle();
    paramMap.putStringArrayList("keys", localArrayList1);
    paramMap.putStringArrayList("values", localArrayList2);
    paramParcel.writeBundle(paramMap);
  }
  
  public static boolean b(Context paramContext, String paramString)
  {
    w.c("[Util] try to unlock file:%s (pid=%d | tid=%d)", new Object[] { paramString, Integer.valueOf(Process.myPid()), Integer.valueOf(Process.myTid()) });
    try
    {
      paramContext = new File(paramContext.getFilesDir() + File.separator + paramString);
      if (paramContext.exists())
      {
        if (paramContext.delete()) {
          w.c("[Util] successfully unlocked file:%s (pid=%d | tid=%d)", new Object[] { paramString, Integer.valueOf(Process.myPid()), Integer.valueOf(Process.myTid()) });
        }
      }
      else {
        return true;
      }
      return false;
    }
    catch (Throwable paramContext)
    {
      w.a(paramContext);
    }
    return false;
  }
  
  public static byte[] b(int paramInt, byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    try
    {
      paramArrayOfByte2 = KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(paramArrayOfByte2));
      Cipher localCipher = Cipher.getInstance("RSA/ECB/PKCS1Padding");
      localCipher.init(1, paramArrayOfByte2);
      paramArrayOfByte1 = localCipher.doFinal(paramArrayOfByte1);
      return paramArrayOfByte1;
    }
    catch (Exception paramArrayOfByte1)
    {
      if (!w.b(paramArrayOfByte1)) {
        paramArrayOfByte1.printStackTrace();
      }
    }
    return null;
  }
  
  public static byte[] b(byte[] paramArrayOfByte, int paramInt)
  {
    if ((paramArrayOfByte == null) || (paramInt == -1)) {
      return paramArrayOfByte;
    }
    w.c("rqdp{  unzp:} %s rqdp{  len:} %s", new Object[] { Integer.valueOf(paramInt), Integer.valueOf(paramArrayOfByte.length) });
    try
    {
      ab localab = aa.a(paramInt);
      if (localab == null) {
        return null;
      }
      paramArrayOfByte = localab.b(paramArrayOfByte);
      return paramArrayOfByte;
    }
    catch (Throwable paramArrayOfByte)
    {
      if (!w.a(paramArrayOfByte)) {
        paramArrayOfByte.printStackTrace();
      }
    }
    return null;
  }
  
  public static long c(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null) {
      return -1L;
    }
    try
    {
      long l = Long.parseLong(new String(paramArrayOfByte, "utf-8"));
      return l;
    }
    catch (UnsupportedEncodingException paramArrayOfByte)
    {
      paramArrayOfByte.printStackTrace();
    }
    return -1L;
  }
  
  public static String c()
  {
    try
    {
      String str = Build.VERSION.RELEASE;
      return str;
    }
    catch (Throwable localThrowable)
    {
      if (!w.a(localThrowable)) {
        localThrowable.printStackTrace();
      }
    }
    return "fail";
  }
  
  /* Error */
  public static String c(Context paramContext)
  {
    // Byte code:
    //   0: ldc_w 662
    //   3: astore_1
    //   4: aload_0
    //   5: ifnonnull +5 -> 10
    //   8: aload_1
    //   9: areturn
    //   10: aload_0
    //   11: invokevirtual 1256	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   14: ldc_w 1258
    //   17: invokestatic 1263	android/provider/Settings$Secure:getString	(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    //   20: astore_0
    //   21: aload_0
    //   22: ifnonnull +7 -> 29
    //   25: ldc_w 538
    //   28: areturn
    //   29: aload_0
    //   30: invokevirtual 554	java/lang/String:toLowerCase	()Ljava/lang/String;
    //   33: astore_1
    //   34: aload_1
    //   35: areturn
    //   36: astore_2
    //   37: aload_1
    //   38: astore_0
    //   39: aload_0
    //   40: astore_1
    //   41: aload_2
    //   42: invokestatic 617	com/tencent/bugly/proguard/w:a	(Ljava/lang/Throwable;)Z
    //   45: ifne -37 -> 8
    //   48: getstatic 555	com/tencent/bugly/proguard/w:a	Ljava/lang/String;
    //   51: ldc_w 1265
    //   54: invokestatic 562	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;)I
    //   57: pop
    //   58: aload_0
    //   59: areturn
    //   60: astore_2
    //   61: goto -22 -> 39
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	64	0	paramContext	Context
    //   3	38	1	localObject	Object
    //   36	6	2	localThrowable1	Throwable
    //   60	1	2	localThrowable2	Throwable
    // Exception table:
    //   from	to	target	type
    //   10	21	36	java/lang/Throwable
    //   29	34	60	java/lang/Throwable
  }
  
  public static int d()
  {
    try
    {
      int i = Build.VERSION.SDK_INT;
      return i;
    }
    catch (Throwable localThrowable)
    {
      if (!w.a(localThrowable)) {
        localThrowable.printStackTrace();
      }
    }
    return -1;
  }
  
  public static String d(Context paramContext)
  {
    Object localObject = "fail";
    if (paramContext == null) {
      paramContext = "fail";
    }
    do
    {
      return paramContext;
      try
      {
        paramContext = ((WifiManager)paramContext.getSystemService("wifi")).getConnectionInfo().getMacAddress();
        if (paramContext == null) {
          return "null";
        }
        localObject = paramContext;
        paramContext = paramContext.toLowerCase();
        return paramContext;
      }
      catch (Throwable localThrowable)
      {
        paramContext = (Context)localObject;
      }
    } while (w.a(localThrowable));
    localThrowable.printStackTrace();
    return (String)localObject;
  }
  
  public static String e()
  {
    try
    {
      String str2 = p();
      String str1 = str2;
      if (str2 == null) {
        str1 = System.getProperty("os.arch");
      }
      return str1;
    }
    catch (Throwable localThrowable)
    {
      if (!w.a(localThrowable)) {
        localThrowable.printStackTrace();
      }
    }
    return "fail";
  }
  
  public static String e(Context paramContext)
  {
    for (;;)
    {
      try
      {
        NetworkInfo localNetworkInfo = ((ConnectivityManager)paramContext.getSystemService("connectivity")).getActiveNetworkInfo();
        if (localNetworkInfo == null) {
          return null;
        }
        if (localNetworkInfo.getType() == 1) {
          return "WIFI";
        }
        if (localNetworkInfo.getType() != 0) {
          continue;
        }
        paramContext = (TelephonyManager)paramContext.getSystemService("phone");
        if (paramContext == null) {
          continue;
        }
        int i = paramContext.getNetworkType();
        switch (i)
        {
        case 15: 
          paramContext = "MOBILE(" + i + ")";
        }
      }
      catch (Exception paramContext)
      {
        if (w.a(paramContext)) {
          continue;
        }
        paramContext.printStackTrace();
        return "unknown";
        paramContext = "unknown";
        break;
        return "unknown";
      }
      return "HSPA+";
    }
    return paramContext;
    return "GPRS";
    return "EDGE";
    return "UMTS";
    return "HSDPA";
    return "HSUPA";
    return "HSPA";
    return "CDMA";
    return "EVDO_0";
    return "EVDO_A";
    return "1xRTT";
    return "iDen";
    return "EVDO_B";
    return "LTE";
    return "eHRPD";
  }
  
  public static long f()
  {
    long l1 = -1L;
    try
    {
      StatFs localStatFs = new StatFs(Environment.getDataDirectory().getPath());
      long l2 = localStatFs.getBlockSize();
      int i = localStatFs.getBlockCount();
      l1 = i * l2;
    }
    catch (Throwable localThrowable)
    {
      while (w.a(localThrowable)) {}
      localThrowable.printStackTrace();
    }
    return l1;
    return -1L;
  }
  
  public static boolean f(Context paramContext)
  {
    boolean bool3 = false;
    int i;
    if ((Build.TAGS != null) && (Build.TAGS.contains("test-keys"))) {
      i = 1;
    }
    try
    {
      for (;;)
      {
        bool1 = new File("/system/app/Superuser.apk").exists();
        Object localObject3 = null;
        String str = null;
        paramContext = a(paramContext, new String[] { "/system/bin/sh", "-c", "type su" });
        Object localObject1 = localObject3;
        if (paramContext == null) {
          break label162;
        }
        localObject1 = localObject3;
        if (paramContext.size() <= 0) {
          break label162;
        }
        localObject1 = paramContext.iterator();
        for (paramContext = str; ((Iterator)localObject1).hasNext(); paramContext = Boolean.valueOf(false))
        {
          str = (String)((Iterator)localObject1).next();
          w.c(str, new Object[0]);
          if (!str.contains("not found")) {
            break label209;
          }
        }
        i = 0;
      }
    }
    catch (Throwable localThrowable)
    {
      label162:
      label209:
      for (;;)
      {
        boolean bool1 = false;
        continue;
        Object localObject2 = paramContext;
        if (paramContext == null) {
          localObject2 = Boolean.valueOf(true);
        }
        if (localObject2 == null) {}
        for (boolean bool2 = false;; bool2 = ((Boolean)localObject2).booleanValue())
        {
          if ((i == 0) && (!bool1))
          {
            bool1 = bool3;
            if (!Boolean.valueOf(bool2).booleanValue()) {}
          }
          else
          {
            bool1 = true;
          }
          return bool1;
        }
      }
    }
  }
  
  public static long g()
  {
    long l1 = -1L;
    try
    {
      StatFs localStatFs = new StatFs(Environment.getDataDirectory().getPath());
      long l2 = localStatFs.getBlockSize();
      int i = localStatFs.getAvailableBlocks();
      l1 = i * l2;
    }
    catch (Throwable localThrowable)
    {
      while (w.a(localThrowable)) {}
      localThrowable.printStackTrace();
    }
    return l1;
    return -1L;
  }
  
  /* Error */
  public static long h()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: new 1386	java/io/FileReader
    //   5: dup
    //   6: ldc_w 1388
    //   9: invokespecial 1389	java/io/FileReader:<init>	(Ljava/lang/String;)V
    //   12: astore_2
    //   13: new 589	java/io/BufferedReader
    //   16: dup
    //   17: aload_2
    //   18: sipush 2048
    //   21: invokespecial 1392	java/io/BufferedReader:<init>	(Ljava/io/Reader;I)V
    //   24: astore_1
    //   25: aload_1
    //   26: invokevirtual 606	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   29: ldc_w 1394
    //   32: iconst_2
    //   33: invokevirtual 1398	java/lang/String:split	(Ljava/lang/String;I)[Ljava/lang/String;
    //   36: iconst_1
    //   37: aaload
    //   38: invokevirtual 554	java/lang/String:toLowerCase	()Ljava/lang/String;
    //   41: ldc_w 1400
    //   44: ldc 95
    //   46: invokevirtual 1404	java/lang/String:replace	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   49: invokevirtual 644	java/lang/String:trim	()Ljava/lang/String;
    //   52: invokestatic 1247	java/lang/Long:parseLong	(Ljava/lang/String;)J
    //   55: lstore 4
    //   57: lload 4
    //   59: bipush 10
    //   61: lshl
    //   62: lstore 4
    //   64: aload_1
    //   65: invokevirtual 794	java/io/BufferedReader:close	()V
    //   68: aload_2
    //   69: invokevirtual 1405	java/io/FileReader:close	()V
    //   72: lload 4
    //   74: lreturn
    //   75: astore_0
    //   76: aload_0
    //   77: invokestatic 617	com/tencent/bugly/proguard/w:a	(Ljava/lang/Throwable;)Z
    //   80: ifne -12 -> 68
    //   83: aload_0
    //   84: invokevirtual 638	java/io/IOException:printStackTrace	()V
    //   87: goto -19 -> 68
    //   90: astore_0
    //   91: aload_0
    //   92: invokestatic 617	com/tencent/bugly/proguard/w:a	(Ljava/lang/Throwable;)Z
    //   95: ifne -23 -> 72
    //   98: aload_0
    //   99: invokevirtual 638	java/io/IOException:printStackTrace	()V
    //   102: lload 4
    //   104: lreturn
    //   105: astore_2
    //   106: aconst_null
    //   107: astore_0
    //   108: aload_3
    //   109: astore_1
    //   110: aload_2
    //   111: invokestatic 617	com/tencent/bugly/proguard/w:a	(Ljava/lang/Throwable;)Z
    //   114: ifne +7 -> 121
    //   117: aload_2
    //   118: invokevirtual 216	java/lang/Throwable:printStackTrace	()V
    //   121: aload_1
    //   122: ifnull +7 -> 129
    //   125: aload_1
    //   126: invokevirtual 794	java/io/BufferedReader:close	()V
    //   129: aload_0
    //   130: ifnull +7 -> 137
    //   133: aload_0
    //   134: invokevirtual 1405	java/io/FileReader:close	()V
    //   137: ldc2_w 1406
    //   140: lreturn
    //   141: astore_1
    //   142: aload_1
    //   143: invokestatic 617	com/tencent/bugly/proguard/w:a	(Ljava/lang/Throwable;)Z
    //   146: ifne -17 -> 129
    //   149: aload_1
    //   150: invokevirtual 638	java/io/IOException:printStackTrace	()V
    //   153: goto -24 -> 129
    //   156: astore_0
    //   157: aload_0
    //   158: invokestatic 617	com/tencent/bugly/proguard/w:a	(Ljava/lang/Throwable;)Z
    //   161: ifne -24 -> 137
    //   164: aload_0
    //   165: invokevirtual 638	java/io/IOException:printStackTrace	()V
    //   168: goto -31 -> 137
    //   171: astore_0
    //   172: aconst_null
    //   173: astore_1
    //   174: aconst_null
    //   175: astore_2
    //   176: aload_1
    //   177: ifnull +7 -> 184
    //   180: aload_1
    //   181: invokevirtual 794	java/io/BufferedReader:close	()V
    //   184: aload_2
    //   185: ifnull +7 -> 192
    //   188: aload_2
    //   189: invokevirtual 1405	java/io/FileReader:close	()V
    //   192: aload_0
    //   193: athrow
    //   194: astore_1
    //   195: aload_1
    //   196: invokestatic 617	com/tencent/bugly/proguard/w:a	(Ljava/lang/Throwable;)Z
    //   199: ifne -15 -> 184
    //   202: aload_1
    //   203: invokevirtual 638	java/io/IOException:printStackTrace	()V
    //   206: goto -22 -> 184
    //   209: astore_1
    //   210: aload_1
    //   211: invokestatic 617	com/tencent/bugly/proguard/w:a	(Ljava/lang/Throwable;)Z
    //   214: ifne -22 -> 192
    //   217: aload_1
    //   218: invokevirtual 638	java/io/IOException:printStackTrace	()V
    //   221: goto -29 -> 192
    //   224: astore_0
    //   225: aconst_null
    //   226: astore_1
    //   227: goto -51 -> 176
    //   230: astore_0
    //   231: goto -55 -> 176
    //   234: astore_3
    //   235: aload_0
    //   236: astore_2
    //   237: aload_3
    //   238: astore_0
    //   239: goto -63 -> 176
    //   242: astore_1
    //   243: aload_2
    //   244: astore_0
    //   245: aload_1
    //   246: astore_2
    //   247: aload_3
    //   248: astore_1
    //   249: goto -139 -> 110
    //   252: astore_3
    //   253: aload_2
    //   254: astore_0
    //   255: aload_3
    //   256: astore_2
    //   257: goto -147 -> 110
    // Local variable table:
    //   start	length	slot	name	signature
    //   75	9	0	localIOException1	java.io.IOException
    //   90	9	0	localIOException2	java.io.IOException
    //   107	27	0	localObject1	Object
    //   156	9	0	localIOException3	java.io.IOException
    //   171	22	0	localObject2	Object
    //   224	1	0	localObject3	Object
    //   230	6	0	localObject4	Object
    //   238	17	0	localObject5	Object
    //   24	102	1	localObject6	Object
    //   141	9	1	localIOException4	java.io.IOException
    //   173	8	1	localObject7	Object
    //   194	9	1	localIOException5	java.io.IOException
    //   209	9	1	localIOException6	java.io.IOException
    //   226	1	1	localObject8	Object
    //   242	4	1	localThrowable1	Throwable
    //   248	1	1	localObject9	Object
    //   12	57	2	localFileReader	java.io.FileReader
    //   105	13	2	localThrowable2	Throwable
    //   175	82	2	localObject10	Object
    //   1	108	3	localObject11	Object
    //   234	14	3	localObject12	Object
    //   252	4	3	localThrowable3	Throwable
    //   55	48	4	l	long
    // Exception table:
    //   from	to	target	type
    //   64	68	75	java/io/IOException
    //   68	72	90	java/io/IOException
    //   2	13	105	java/lang/Throwable
    //   125	129	141	java/io/IOException
    //   133	137	156	java/io/IOException
    //   2	13	171	finally
    //   180	184	194	java/io/IOException
    //   188	192	209	java/io/IOException
    //   13	25	224	finally
    //   25	57	230	finally
    //   110	121	234	finally
    //   13	25	242	java/lang/Throwable
    //   25	57	252	java/lang/Throwable
  }
  
  /* Error */
  public static long i()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: new 1386	java/io/FileReader
    //   5: dup
    //   6: ldc_w 1388
    //   9: invokespecial 1389	java/io/FileReader:<init>	(Ljava/lang/String;)V
    //   12: astore_2
    //   13: new 589	java/io/BufferedReader
    //   16: dup
    //   17: aload_2
    //   18: sipush 2048
    //   21: invokespecial 1392	java/io/BufferedReader:<init>	(Ljava/io/Reader;I)V
    //   24: astore_1
    //   25: aload_1
    //   26: invokevirtual 606	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   29: pop
    //   30: aload_1
    //   31: invokevirtual 606	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   34: ldc_w 1394
    //   37: iconst_2
    //   38: invokevirtual 1398	java/lang/String:split	(Ljava/lang/String;I)[Ljava/lang/String;
    //   41: iconst_1
    //   42: aaload
    //   43: invokevirtual 554	java/lang/String:toLowerCase	()Ljava/lang/String;
    //   46: ldc_w 1400
    //   49: ldc 95
    //   51: invokevirtual 1404	java/lang/String:replace	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   54: invokevirtual 644	java/lang/String:trim	()Ljava/lang/String;
    //   57: invokestatic 1247	java/lang/Long:parseLong	(Ljava/lang/String;)J
    //   60: lstore 4
    //   62: aload_1
    //   63: invokevirtual 606	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   66: ldc_w 1394
    //   69: iconst_2
    //   70: invokevirtual 1398	java/lang/String:split	(Ljava/lang/String;I)[Ljava/lang/String;
    //   73: iconst_1
    //   74: aaload
    //   75: invokevirtual 554	java/lang/String:toLowerCase	()Ljava/lang/String;
    //   78: ldc_w 1400
    //   81: ldc 95
    //   83: invokevirtual 1404	java/lang/String:replace	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   86: invokevirtual 644	java/lang/String:trim	()Ljava/lang/String;
    //   89: invokestatic 1247	java/lang/Long:parseLong	(Ljava/lang/String;)J
    //   92: lstore 6
    //   94: aload_1
    //   95: invokevirtual 606	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   98: ldc_w 1394
    //   101: iconst_2
    //   102: invokevirtual 1398	java/lang/String:split	(Ljava/lang/String;I)[Ljava/lang/String;
    //   105: iconst_1
    //   106: aaload
    //   107: invokevirtual 554	java/lang/String:toLowerCase	()Ljava/lang/String;
    //   110: ldc_w 1400
    //   113: ldc 95
    //   115: invokevirtual 1404	java/lang/String:replace	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   118: invokevirtual 644	java/lang/String:trim	()Ljava/lang/String;
    //   121: invokestatic 1247	java/lang/Long:parseLong	(Ljava/lang/String;)J
    //   124: lstore 8
    //   126: lload 4
    //   128: bipush 10
    //   130: lshl
    //   131: lload 6
    //   133: bipush 10
    //   135: lshl
    //   136: ladd
    //   137: lload 8
    //   139: bipush 10
    //   141: lshl
    //   142: ladd
    //   143: lstore 4
    //   145: aload_1
    //   146: invokevirtual 794	java/io/BufferedReader:close	()V
    //   149: aload_2
    //   150: invokevirtual 1405	java/io/FileReader:close	()V
    //   153: lload 4
    //   155: lreturn
    //   156: astore_0
    //   157: aload_0
    //   158: invokestatic 617	com/tencent/bugly/proguard/w:a	(Ljava/lang/Throwable;)Z
    //   161: ifne -12 -> 149
    //   164: aload_0
    //   165: invokevirtual 638	java/io/IOException:printStackTrace	()V
    //   168: goto -19 -> 149
    //   171: astore_0
    //   172: aload_0
    //   173: invokestatic 617	com/tencent/bugly/proguard/w:a	(Ljava/lang/Throwable;)Z
    //   176: ifne -23 -> 153
    //   179: aload_0
    //   180: invokevirtual 638	java/io/IOException:printStackTrace	()V
    //   183: lload 4
    //   185: lreturn
    //   186: astore_2
    //   187: aconst_null
    //   188: astore_0
    //   189: aload_3
    //   190: astore_1
    //   191: aload_2
    //   192: invokestatic 617	com/tencent/bugly/proguard/w:a	(Ljava/lang/Throwable;)Z
    //   195: ifne +7 -> 202
    //   198: aload_2
    //   199: invokevirtual 216	java/lang/Throwable:printStackTrace	()V
    //   202: aload_1
    //   203: ifnull +7 -> 210
    //   206: aload_1
    //   207: invokevirtual 794	java/io/BufferedReader:close	()V
    //   210: aload_0
    //   211: ifnull +7 -> 218
    //   214: aload_0
    //   215: invokevirtual 1405	java/io/FileReader:close	()V
    //   218: ldc2_w 1406
    //   221: lreturn
    //   222: astore_1
    //   223: aload_1
    //   224: invokestatic 617	com/tencent/bugly/proguard/w:a	(Ljava/lang/Throwable;)Z
    //   227: ifne -17 -> 210
    //   230: aload_1
    //   231: invokevirtual 638	java/io/IOException:printStackTrace	()V
    //   234: goto -24 -> 210
    //   237: astore_0
    //   238: aload_0
    //   239: invokestatic 617	com/tencent/bugly/proguard/w:a	(Ljava/lang/Throwable;)Z
    //   242: ifne -24 -> 218
    //   245: aload_0
    //   246: invokevirtual 638	java/io/IOException:printStackTrace	()V
    //   249: goto -31 -> 218
    //   252: astore_0
    //   253: aconst_null
    //   254: astore_1
    //   255: aconst_null
    //   256: astore_2
    //   257: aload_1
    //   258: ifnull +7 -> 265
    //   261: aload_1
    //   262: invokevirtual 794	java/io/BufferedReader:close	()V
    //   265: aload_2
    //   266: ifnull +7 -> 273
    //   269: aload_2
    //   270: invokevirtual 1405	java/io/FileReader:close	()V
    //   273: aload_0
    //   274: athrow
    //   275: astore_1
    //   276: aload_1
    //   277: invokestatic 617	com/tencent/bugly/proguard/w:a	(Ljava/lang/Throwable;)Z
    //   280: ifne -15 -> 265
    //   283: aload_1
    //   284: invokevirtual 638	java/io/IOException:printStackTrace	()V
    //   287: goto -22 -> 265
    //   290: astore_1
    //   291: aload_1
    //   292: invokestatic 617	com/tencent/bugly/proguard/w:a	(Ljava/lang/Throwable;)Z
    //   295: ifne -22 -> 273
    //   298: aload_1
    //   299: invokevirtual 638	java/io/IOException:printStackTrace	()V
    //   302: goto -29 -> 273
    //   305: astore_0
    //   306: aconst_null
    //   307: astore_1
    //   308: goto -51 -> 257
    //   311: astore_0
    //   312: goto -55 -> 257
    //   315: astore_3
    //   316: aload_0
    //   317: astore_2
    //   318: aload_3
    //   319: astore_0
    //   320: goto -63 -> 257
    //   323: astore_1
    //   324: aload_2
    //   325: astore_0
    //   326: aload_1
    //   327: astore_2
    //   328: aload_3
    //   329: astore_1
    //   330: goto -139 -> 191
    //   333: astore_3
    //   334: aload_2
    //   335: astore_0
    //   336: aload_3
    //   337: astore_2
    //   338: goto -147 -> 191
    // Local variable table:
    //   start	length	slot	name	signature
    //   156	9	0	localIOException1	java.io.IOException
    //   171	9	0	localIOException2	java.io.IOException
    //   188	27	0	localObject1	Object
    //   237	9	0	localIOException3	java.io.IOException
    //   252	22	0	localObject2	Object
    //   305	1	0	localObject3	Object
    //   311	6	0	localObject4	Object
    //   319	17	0	localObject5	Object
    //   24	183	1	localObject6	Object
    //   222	9	1	localIOException4	java.io.IOException
    //   254	8	1	localObject7	Object
    //   275	9	1	localIOException5	java.io.IOException
    //   290	9	1	localIOException6	java.io.IOException
    //   307	1	1	localObject8	Object
    //   323	4	1	localThrowable1	Throwable
    //   329	1	1	localObject9	Object
    //   12	138	2	localFileReader	java.io.FileReader
    //   186	13	2	localThrowable2	Throwable
    //   256	82	2	localObject10	Object
    //   1	189	3	localObject11	Object
    //   315	14	3	localObject12	Object
    //   333	4	3	localThrowable3	Throwable
    //   60	124	4	l1	long
    //   92	40	6	l2	long
    //   124	14	8	l3	long
    // Exception table:
    //   from	to	target	type
    //   145	149	156	java/io/IOException
    //   149	153	171	java/io/IOException
    //   2	13	186	java/lang/Throwable
    //   206	210	222	java/io/IOException
    //   214	218	237	java/io/IOException
    //   2	13	252	finally
    //   261	265	275	java/io/IOException
    //   269	273	290	java/io/IOException
    //   13	25	305	finally
    //   25	126	311	finally
    //   191	202	315	finally
    //   13	25	323	java/lang/Throwable
    //   25	126	333	java/lang/Throwable
  }
  
  public static long j()
  {
    if (Environment.getExternalStorageState().equals("mounted")) {}
    for (int i = 1; i == 0; i = 0) {
      return 0L;
    }
    try
    {
      StatFs localStatFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
      i = localStatFs.getBlockSize();
      int j = localStatFs.getBlockCount();
      long l = j;
      return i * l;
    }
    catch (Throwable localThrowable)
    {
      if (!w.a(localThrowable)) {
        localThrowable.printStackTrace();
      }
    }
    return -2L;
  }
  
  public static long k()
  {
    if (Environment.getExternalStorageState().equals("mounted")) {}
    for (int i = 1; i == 0; i = 0) {
      return 0L;
    }
    try
    {
      StatFs localStatFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
      i = localStatFs.getBlockSize();
      int j = localStatFs.getAvailableBlocks();
      long l = j;
      return i * l;
    }
    catch (Throwable localThrowable)
    {
      if (!w.a(localThrowable)) {
        localThrowable.printStackTrace();
      }
    }
    return -2L;
  }
  
  public static String l()
  {
    Object localObject = "fail";
    try
    {
      String str = Locale.getDefault().getCountry();
      localObject = str;
    }
    catch (Throwable localThrowable)
    {
      while (w.a(localThrowable)) {}
      localThrowable.printStackTrace();
    }
    return (String)localObject;
    return "fail";
  }
  
  public static String m()
  {
    Object localObject = "fail";
    try
    {
      String str = Build.BRAND;
      localObject = str;
    }
    catch (Throwable localThrowable)
    {
      while (w.a(localThrowable)) {}
      localThrowable.printStackTrace();
    }
    return (String)localObject;
    return "fail";
  }
  
  public static String n()
  {
    try
    {
      String str = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.US).format(new Date());
      return str;
    }
    catch (Exception localException) {}
    return new Date().toString();
  }
  
  public static long o()
  {
    try
    {
      SimpleDateFormat localSimpleDateFormat = new SimpleDateFormat("yyyy-MM-dd", Locale.US);
      long l = localSimpleDateFormat.parse(localSimpleDateFormat.format(new Date())).getTime();
      return l;
    }
    catch (Throwable localThrowable)
    {
      if (!w.a(localThrowable)) {
        localThrowable.printStackTrace();
      }
    }
    return -1L;
  }
  
  /* Error */
  private static String p()
  {
    // Byte code:
    //   0: new 1386	java/io/FileReader
    //   3: dup
    //   4: ldc_w 1436
    //   7: invokespecial 1389	java/io/FileReader:<init>	(Ljava/lang/String;)V
    //   10: astore_1
    //   11: new 589	java/io/BufferedReader
    //   14: dup
    //   15: aload_1
    //   16: sipush 2048
    //   19: invokespecial 1392	java/io/BufferedReader:<init>	(Ljava/io/Reader;I)V
    //   22: astore 5
    //   24: aload 5
    //   26: astore_3
    //   27: aload_1
    //   28: astore_2
    //   29: aload 5
    //   31: invokevirtual 606	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   34: astore_0
    //   35: aload_0
    //   36: ifnull +291 -> 327
    //   39: aload 5
    //   41: astore_3
    //   42: aload_1
    //   43: astore_2
    //   44: aload_0
    //   45: ldc_w 1438
    //   48: iconst_2
    //   49: invokevirtual 1398	java/lang/String:split	(Ljava/lang/String;I)[Ljava/lang/String;
    //   52: astore_0
    //   53: aload 5
    //   55: astore_3
    //   56: aload_1
    //   57: astore_2
    //   58: aload_0
    //   59: arraylength
    //   60: iconst_2
    //   61: if_icmpne -37 -> 24
    //   64: aload 5
    //   66: astore_3
    //   67: aload_1
    //   68: astore_2
    //   69: aload_0
    //   70: iconst_0
    //   71: aaload
    //   72: ldc_w 1440
    //   75: invokevirtual 647	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   78: ifeq +41 -> 119
    //   81: aload_0
    //   82: iconst_1
    //   83: aaload
    //   84: astore_0
    //   85: aload_0
    //   86: astore_2
    //   87: aload_0
    //   88: ifnull +20 -> 108
    //   91: aload 5
    //   93: astore_3
    //   94: aload_1
    //   95: astore_2
    //   96: aload_0
    //   97: ldc_w 756
    //   100: invokevirtual 1443	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   103: iconst_0
    //   104: aaload
    //   105: astore_0
    //   106: aload_0
    //   107: astore_2
    //   108: aload 5
    //   110: invokevirtual 794	java/io/BufferedReader:close	()V
    //   113: aload_1
    //   114: invokevirtual 1405	java/io/FileReader:close	()V
    //   117: aload_2
    //   118: areturn
    //   119: aload 5
    //   121: astore_3
    //   122: aload_1
    //   123: astore_2
    //   124: aload_0
    //   125: iconst_0
    //   126: aaload
    //   127: ldc_w 1445
    //   130: invokevirtual 647	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   133: ifeq -109 -> 24
    //   136: aload_0
    //   137: iconst_1
    //   138: aaload
    //   139: astore_0
    //   140: goto -55 -> 85
    //   143: astore_0
    //   144: aload_0
    //   145: invokestatic 617	com/tencent/bugly/proguard/w:a	(Ljava/lang/Throwable;)Z
    //   148: ifne -35 -> 113
    //   151: aload_0
    //   152: invokevirtual 638	java/io/IOException:printStackTrace	()V
    //   155: goto -42 -> 113
    //   158: astore_0
    //   159: aload_0
    //   160: invokestatic 617	com/tencent/bugly/proguard/w:a	(Ljava/lang/Throwable;)Z
    //   163: ifne -46 -> 117
    //   166: aload_0
    //   167: invokevirtual 638	java/io/IOException:printStackTrace	()V
    //   170: aload_2
    //   171: areturn
    //   172: astore 4
    //   174: aconst_null
    //   175: astore_0
    //   176: aconst_null
    //   177: astore_1
    //   178: aload_0
    //   179: astore_3
    //   180: aload_1
    //   181: astore_2
    //   182: aload 4
    //   184: invokestatic 617	com/tencent/bugly/proguard/w:a	(Ljava/lang/Throwable;)Z
    //   187: ifne +12 -> 199
    //   190: aload_0
    //   191: astore_3
    //   192: aload_1
    //   193: astore_2
    //   194: aload 4
    //   196: invokevirtual 216	java/lang/Throwable:printStackTrace	()V
    //   199: aload_0
    //   200: ifnull +7 -> 207
    //   203: aload_0
    //   204: invokevirtual 794	java/io/BufferedReader:close	()V
    //   207: aload_1
    //   208: ifnull +7 -> 215
    //   211: aload_1
    //   212: invokevirtual 1405	java/io/FileReader:close	()V
    //   215: aconst_null
    //   216: areturn
    //   217: astore_0
    //   218: aload_0
    //   219: invokestatic 617	com/tencent/bugly/proguard/w:a	(Ljava/lang/Throwable;)Z
    //   222: ifne -15 -> 207
    //   225: aload_0
    //   226: invokevirtual 638	java/io/IOException:printStackTrace	()V
    //   229: goto -22 -> 207
    //   232: astore_0
    //   233: aload_0
    //   234: invokestatic 617	com/tencent/bugly/proguard/w:a	(Ljava/lang/Throwable;)Z
    //   237: ifne -22 -> 215
    //   240: aload_0
    //   241: invokevirtual 638	java/io/IOException:printStackTrace	()V
    //   244: goto -29 -> 215
    //   247: astore_0
    //   248: aconst_null
    //   249: astore_3
    //   250: aconst_null
    //   251: astore_1
    //   252: aload_3
    //   253: ifnull +7 -> 260
    //   256: aload_3
    //   257: invokevirtual 794	java/io/BufferedReader:close	()V
    //   260: aload_1
    //   261: ifnull +7 -> 268
    //   264: aload_1
    //   265: invokevirtual 1405	java/io/FileReader:close	()V
    //   268: aload_0
    //   269: athrow
    //   270: astore_2
    //   271: aload_2
    //   272: invokestatic 617	com/tencent/bugly/proguard/w:a	(Ljava/lang/Throwable;)Z
    //   275: ifne -15 -> 260
    //   278: aload_2
    //   279: invokevirtual 638	java/io/IOException:printStackTrace	()V
    //   282: goto -22 -> 260
    //   285: astore_1
    //   286: aload_1
    //   287: invokestatic 617	com/tencent/bugly/proguard/w:a	(Ljava/lang/Throwable;)Z
    //   290: ifne -22 -> 268
    //   293: aload_1
    //   294: invokevirtual 638	java/io/IOException:printStackTrace	()V
    //   297: goto -29 -> 268
    //   300: astore_0
    //   301: aconst_null
    //   302: astore_3
    //   303: goto -51 -> 252
    //   306: astore_0
    //   307: aload_2
    //   308: astore_1
    //   309: goto -57 -> 252
    //   312: astore 4
    //   314: aconst_null
    //   315: astore_0
    //   316: goto -138 -> 178
    //   319: astore 4
    //   321: aload 5
    //   323: astore_0
    //   324: goto -146 -> 178
    //   327: aconst_null
    //   328: astore_0
    //   329: goto -244 -> 85
    // Local variable table:
    //   start	length	slot	name	signature
    //   34	106	0	localObject1	Object
    //   143	9	0	localIOException1	java.io.IOException
    //   158	9	0	localIOException2	java.io.IOException
    //   175	29	0	localObject2	Object
    //   217	9	0	localIOException3	java.io.IOException
    //   232	9	0	localIOException4	java.io.IOException
    //   247	22	0	localObject3	Object
    //   300	1	0	localObject4	Object
    //   306	1	0	localObject5	Object
    //   315	14	0	localBufferedReader1	java.io.BufferedReader
    //   10	255	1	localFileReader	java.io.FileReader
    //   285	9	1	localIOException5	java.io.IOException
    //   308	1	1	localObject6	Object
    //   28	166	2	localObject7	Object
    //   270	38	2	localIOException6	java.io.IOException
    //   26	277	3	localObject8	Object
    //   172	23	4	localThrowable1	Throwable
    //   312	1	4	localThrowable2	Throwable
    //   319	1	4	localThrowable3	Throwable
    //   22	300	5	localBufferedReader2	java.io.BufferedReader
    // Exception table:
    //   from	to	target	type
    //   108	113	143	java/io/IOException
    //   113	117	158	java/io/IOException
    //   0	11	172	java/lang/Throwable
    //   203	207	217	java/io/IOException
    //   211	215	232	java/io/IOException
    //   0	11	247	finally
    //   256	260	270	java/io/IOException
    //   264	268	285	java/io/IOException
    //   11	24	300	finally
    //   29	35	306	finally
    //   44	53	306	finally
    //   58	64	306	finally
    //   69	81	306	finally
    //   96	106	306	finally
    //   124	136	306	finally
    //   182	190	306	finally
    //   194	199	306	finally
    //   11	24	312	java/lang/Throwable
    //   29	35	319	java/lang/Throwable
    //   44	53	319	java/lang/Throwable
    //   58	64	319	java/lang/Throwable
    //   69	81	319	java/lang/Throwable
    //   96	106	319	java/lang/Throwable
    //   124	136	319	java/lang/Throwable
  }
  
  public void a(String paramString)
  {
    this.b = paramString;
  }
  
  public <T> void a(String paramString, T paramT)
  {
    if (paramString == null) {
      throw new IllegalArgumentException("put key can not is null");
    }
    if (paramT == null) {
      throw new IllegalArgumentException("put value can not is null");
    }
    if ((paramT instanceof Set)) {
      throw new IllegalArgumentException("can not support Set");
    }
    Object localObject = new i();
    ((i)localObject).a(this.b);
    ((i)localObject).a(paramT, 0);
    localObject = k.a(((i)localObject).a());
    HashMap localHashMap = new HashMap(1);
    ArrayList localArrayList = new ArrayList(1);
    a(localArrayList, paramT);
    localHashMap.put(a(localArrayList), localObject);
    this.d.remove(paramString);
    this.a.put(paramString, localHashMap);
  }
  
  public void a(byte[] paramArrayOfByte)
  {
    this.c.a(paramArrayOfByte);
    this.c.a(this.b);
    paramArrayOfByte = new HashMap(1);
    HashMap localHashMap = new HashMap(1);
    localHashMap.put("", new byte[0]);
    paramArrayOfByte.put("", localHashMap);
    this.a = this.c.a(paramArrayOfByte, 0, false);
  }
  
  public byte[] a()
  {
    i locali = new i(0);
    locali.a(this.b);
    locali.a(this.a, 0);
    return k.a(locali.a());
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\bugly\proguard\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
package com.tencent.bugly.crashreport.crash;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.os.Parcel;
import android.os.Parcelable;
import com.tencent.bugly.BuglyStrategy.a;
import com.tencent.bugly.crashreport.common.info.PlugInBean;
import com.tencent.bugly.crashreport.common.strategy.StrategyBean;
import com.tencent.bugly.proguard.ah;
import com.tencent.bugly.proguard.aj;
import com.tencent.bugly.proguard.ak;
import com.tencent.bugly.proguard.al;
import com.tencent.bugly.proguard.am;
import com.tencent.bugly.proguard.j;
import com.tencent.bugly.proguard.n;
import com.tencent.bugly.proguard.o;
import com.tencent.bugly.proguard.q;
import com.tencent.bugly.proguard.s;
import com.tencent.bugly.proguard.t;
import com.tencent.bugly.proguard.w;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public final class b
{
  private static int a = 0;
  private Context b;
  private o c;
  private com.tencent.bugly.crashreport.common.strategy.a d;
  private n e;
  private BuglyStrategy.a f;
  
  public b(int paramInt, Context paramContext, t paramt, o paramo, com.tencent.bugly.crashreport.common.strategy.a parama, BuglyStrategy.a parama1, n paramn)
  {
    a = paramInt;
    this.b = paramContext;
    this.c = paramo;
    this.d = parama;
    this.f = parama1;
    this.e = paramn;
  }
  
  private static CrashDetailBean a(Cursor paramCursor)
  {
    if (paramCursor == null) {
      paramCursor = null;
    }
    for (;;)
    {
      return paramCursor;
      try
      {
        Object localObject = paramCursor.getBlob(paramCursor.getColumnIndex("_dt"));
        if (localObject == null) {
          return null;
        }
        long l = paramCursor.getLong(paramCursor.getColumnIndex("_id"));
        localObject = (CrashDetailBean)com.tencent.bugly.proguard.a.a((byte[])localObject, CrashDetailBean.CREATOR);
        paramCursor = (Cursor)localObject;
        if (localObject != null)
        {
          ((CrashDetailBean)localObject).a = l;
          return (CrashDetailBean)localObject;
        }
      }
      catch (Throwable paramCursor)
      {
        if (!w.a(paramCursor)) {
          paramCursor.printStackTrace();
        }
      }
    }
    return null;
  }
  
  private CrashDetailBean a(List<a> paramList, CrashDetailBean paramCrashDetailBean)
  {
    if ((paramList == null) || (paramList.size() == 0))
    {
      paramList = paramCrashDetailBean;
      return paramList;
    }
    Object localObject1 = null;
    Object localObject2 = new ArrayList(10);
    Object localObject3 = paramList.iterator();
    a locala;
    while (((Iterator)localObject3).hasNext())
    {
      locala = (a)((Iterator)localObject3).next();
      if (locala.e) {
        ((List)localObject2).add(locala);
      }
    }
    if (((List)localObject2).size() > 0)
    {
      localObject3 = b((List)localObject2);
      if ((localObject3 != null) && (((List)localObject3).size() > 0))
      {
        Collections.sort((List)localObject3);
        int i = 0;
        while (i < ((List)localObject3).size())
        {
          localObject2 = (CrashDetailBean)((List)localObject3).get(i);
          if (i == 0)
          {
            localObject1 = localObject2;
            label156:
            i += 1;
          }
          else
          {
            if (((CrashDetailBean)localObject2).s == null) {
              break label505;
            }
            localObject2 = ((CrashDetailBean)localObject2).s.split("\n");
            if (localObject2 == null) {
              break label505;
            }
            int k = localObject2.length;
            int j = 0;
            while (j < k)
            {
              locala = localObject2[j];
              if (!((CrashDetailBean)localObject1).s.contains(locala))
              {
                ((CrashDetailBean)localObject1).t += 1;
                ((CrashDetailBean)localObject1).s = (((CrashDetailBean)localObject1).s + locala + "\n");
              }
              j += 1;
            }
          }
        }
      }
    }
    for (;;)
    {
      if (localObject1 == null)
      {
        paramCrashDetailBean.j = true;
        paramCrashDetailBean.t = 0;
        paramCrashDetailBean.s = "";
        localObject1 = paramCrashDetailBean;
      }
      for (;;)
      {
        paramList = paramList.iterator();
        while (paramList.hasNext())
        {
          localObject2 = (a)paramList.next();
          if ((!((a)localObject2).e) && (!((a)localObject2).d) && (!((CrashDetailBean)localObject1).s.contains(((a)localObject2).b)))
          {
            ((CrashDetailBean)localObject1).t += 1;
            ((CrashDetailBean)localObject1).s = (((CrashDetailBean)localObject1).s + ((a)localObject2).b + "\n");
          }
        }
        paramList = (List<a>)localObject1;
        if (((CrashDetailBean)localObject1).r == paramCrashDetailBean.r) {
          break;
        }
        paramList = (List<a>)localObject1;
        if (((CrashDetailBean)localObject1).s.contains(paramCrashDetailBean.r)) {
          break;
        }
        ((CrashDetailBean)localObject1).t += 1;
        ((CrashDetailBean)localObject1).s = (((CrashDetailBean)localObject1).s + paramCrashDetailBean.r + "\n");
        return (CrashDetailBean)localObject1;
      }
      label505:
      break label156;
      localObject1 = null;
    }
  }
  
  /* Error */
  private static aj a(String paramString1, Context paramContext, String paramString2)
  {
    // Byte code:
    //   0: aload_2
    //   1: ifnull +7 -> 8
    //   4: aload_1
    //   5: ifnonnull +15 -> 20
    //   8: ldc -76
    //   10: iconst_0
    //   11: anewarray 4	java/lang/Object
    //   14: invokestatic 183	com/tencent/bugly/proguard/w:d	(Ljava/lang/String;[Ljava/lang/Object;)Z
    //   17: pop
    //   18: aconst_null
    //   19: areturn
    //   20: ldc -71
    //   22: iconst_1
    //   23: anewarray 4	java/lang/Object
    //   26: dup
    //   27: iconst_0
    //   28: aload_2
    //   29: aastore
    //   30: invokestatic 187	com/tencent/bugly/proguard/w:c	(Ljava/lang/String;[Ljava/lang/Object;)Z
    //   33: pop
    //   34: new 189	java/io/File
    //   37: dup
    //   38: aload_2
    //   39: invokespecial 192	java/io/File:<init>	(Ljava/lang/String;)V
    //   42: astore_2
    //   43: new 189	java/io/File
    //   46: dup
    //   47: aload_1
    //   48: invokevirtual 198	android/content/Context:getCacheDir	()Ljava/io/File;
    //   51: aload_0
    //   52: invokespecial 201	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   55: astore_3
    //   56: aload_2
    //   57: aload_3
    //   58: sipush 5000
    //   61: invokestatic 204	com/tencent/bugly/proguard/a:a	(Ljava/io/File;Ljava/io/File;I)Z
    //   64: ifne +15 -> 79
    //   67: ldc -50
    //   69: iconst_0
    //   70: anewarray 4	java/lang/Object
    //   73: invokestatic 183	com/tencent/bugly/proguard/w:d	(Ljava/lang/String;[Ljava/lang/Object;)Z
    //   76: pop
    //   77: aconst_null
    //   78: areturn
    //   79: new 208	java/io/ByteArrayOutputStream
    //   82: dup
    //   83: invokespecial 209	java/io/ByteArrayOutputStream:<init>	()V
    //   86: astore_2
    //   87: new 211	java/io/FileInputStream
    //   90: dup
    //   91: aload_3
    //   92: invokespecial 214	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   95: astore_1
    //   96: aload_1
    //   97: astore_0
    //   98: sipush 1000
    //   101: newarray <illegal type>
    //   103: astore 4
    //   105: aload_1
    //   106: astore_0
    //   107: aload_1
    //   108: aload 4
    //   110: invokevirtual 218	java/io/FileInputStream:read	([B)I
    //   113: istore 5
    //   115: iload 5
    //   117: ifle +71 -> 188
    //   120: aload_1
    //   121: astore_0
    //   122: aload_2
    //   123: aload 4
    //   125: iconst_0
    //   126: iload 5
    //   128: invokevirtual 222	java/io/ByteArrayOutputStream:write	([BII)V
    //   131: aload_1
    //   132: astore_0
    //   133: aload_2
    //   134: invokevirtual 225	java/io/ByteArrayOutputStream:flush	()V
    //   137: goto -32 -> 105
    //   140: astore_2
    //   141: aload_1
    //   142: astore_0
    //   143: aload_2
    //   144: invokestatic 77	com/tencent/bugly/proguard/w:a	(Ljava/lang/Throwable;)Z
    //   147: ifne +9 -> 156
    //   150: aload_1
    //   151: astore_0
    //   152: aload_2
    //   153: invokevirtual 80	java/lang/Throwable:printStackTrace	()V
    //   156: aload_1
    //   157: ifnull +7 -> 164
    //   160: aload_1
    //   161: invokevirtual 228	java/io/FileInputStream:close	()V
    //   164: aload_3
    //   165: invokevirtual 231	java/io/File:exists	()Z
    //   168: ifeq -150 -> 18
    //   171: ldc -23
    //   173: iconst_0
    //   174: anewarray 4	java/lang/Object
    //   177: invokestatic 187	com/tencent/bugly/proguard/w:c	(Ljava/lang/String;[Ljava/lang/Object;)Z
    //   180: pop
    //   181: aload_3
    //   182: invokevirtual 236	java/io/File:delete	()Z
    //   185: pop
    //   186: aconst_null
    //   187: areturn
    //   188: aload_1
    //   189: astore_0
    //   190: aload_2
    //   191: invokevirtual 240	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   194: astore_2
    //   195: aload_1
    //   196: astore_0
    //   197: ldc -14
    //   199: iconst_1
    //   200: anewarray 4	java/lang/Object
    //   203: dup
    //   204: iconst_0
    //   205: aload_2
    //   206: arraylength
    //   207: invokestatic 248	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   210: aastore
    //   211: invokestatic 187	com/tencent/bugly/proguard/w:c	(Ljava/lang/String;[Ljava/lang/Object;)Z
    //   214: pop
    //   215: aload_1
    //   216: astore_0
    //   217: new 250	com/tencent/bugly/proguard/aj
    //   220: dup
    //   221: iconst_2
    //   222: aload_3
    //   223: invokevirtual 253	java/io/File:getName	()Ljava/lang/String;
    //   226: aload_2
    //   227: invokespecial 256	com/tencent/bugly/proguard/aj:<init>	(BLjava/lang/String;[B)V
    //   230: astore_2
    //   231: aload_1
    //   232: invokevirtual 228	java/io/FileInputStream:close	()V
    //   235: aload_3
    //   236: invokevirtual 231	java/io/File:exists	()Z
    //   239: ifeq +18 -> 257
    //   242: ldc -23
    //   244: iconst_0
    //   245: anewarray 4	java/lang/Object
    //   248: invokestatic 187	com/tencent/bugly/proguard/w:c	(Ljava/lang/String;[Ljava/lang/Object;)Z
    //   251: pop
    //   252: aload_3
    //   253: invokevirtual 236	java/io/File:delete	()Z
    //   256: pop
    //   257: aload_2
    //   258: areturn
    //   259: astore_0
    //   260: aload_0
    //   261: invokestatic 77	com/tencent/bugly/proguard/w:a	(Ljava/lang/Throwable;)Z
    //   264: ifne -29 -> 235
    //   267: aload_0
    //   268: invokevirtual 257	java/io/IOException:printStackTrace	()V
    //   271: goto -36 -> 235
    //   274: astore_0
    //   275: aload_0
    //   276: invokestatic 77	com/tencent/bugly/proguard/w:a	(Ljava/lang/Throwable;)Z
    //   279: ifne -115 -> 164
    //   282: aload_0
    //   283: invokevirtual 257	java/io/IOException:printStackTrace	()V
    //   286: goto -122 -> 164
    //   289: astore_1
    //   290: aconst_null
    //   291: astore_0
    //   292: aload_0
    //   293: ifnull +7 -> 300
    //   296: aload_0
    //   297: invokevirtual 228	java/io/FileInputStream:close	()V
    //   300: aload_3
    //   301: invokevirtual 231	java/io/File:exists	()Z
    //   304: ifeq +18 -> 322
    //   307: ldc -23
    //   309: iconst_0
    //   310: anewarray 4	java/lang/Object
    //   313: invokestatic 187	com/tencent/bugly/proguard/w:c	(Ljava/lang/String;[Ljava/lang/Object;)Z
    //   316: pop
    //   317: aload_3
    //   318: invokevirtual 236	java/io/File:delete	()Z
    //   321: pop
    //   322: aload_1
    //   323: athrow
    //   324: astore_0
    //   325: aload_0
    //   326: invokestatic 77	com/tencent/bugly/proguard/w:a	(Ljava/lang/Throwable;)Z
    //   329: ifne -29 -> 300
    //   332: aload_0
    //   333: invokevirtual 257	java/io/IOException:printStackTrace	()V
    //   336: goto -36 -> 300
    //   339: astore_1
    //   340: goto -48 -> 292
    //   343: astore_2
    //   344: aconst_null
    //   345: astore_1
    //   346: goto -205 -> 141
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	349	0	paramString1	String
    //   0	349	1	paramContext	Context
    //   0	349	2	paramString2	String
    //   55	263	3	localFile	java.io.File
    //   103	21	4	arrayOfByte	byte[]
    //   113	14	5	i	int
    // Exception table:
    //   from	to	target	type
    //   98	105	140	java/lang/Throwable
    //   107	115	140	java/lang/Throwable
    //   122	131	140	java/lang/Throwable
    //   133	137	140	java/lang/Throwable
    //   190	195	140	java/lang/Throwable
    //   197	215	140	java/lang/Throwable
    //   217	231	140	java/lang/Throwable
    //   231	235	259	java/io/IOException
    //   160	164	274	java/io/IOException
    //   87	96	289	finally
    //   296	300	324	java/io/IOException
    //   98	105	339	finally
    //   107	115	339	finally
    //   122	131	339	finally
    //   133	137	339	finally
    //   143	150	339	finally
    //   152	156	339	finally
    //   190	195	339	finally
    //   197	215	339	finally
    //   217	231	339	finally
    //   87	96	343	java/lang/Throwable
  }
  
  private static ak a(Context paramContext, CrashDetailBean paramCrashDetailBean, com.tencent.bugly.crashreport.common.info.a parama)
  {
    boolean bool2 = true;
    if ((paramContext == null) || (paramCrashDetailBean == null) || (parama == null))
    {
      w.d("enExp args == null", new Object[0]);
      return null;
    }
    ak localak = new ak();
    Object localObject1;
    Map.Entry localEntry;
    ah localah;
    switch (paramCrashDetailBean.b)
    {
    default: 
      w.e("crash type error! %d", new Object[] { Integer.valueOf(paramCrashDetailBean.b) });
      localak.b = paramCrashDetailBean.r;
      localak.c = paramCrashDetailBean.n;
      localak.d = paramCrashDetailBean.o;
      localak.e = paramCrashDetailBean.p;
      localak.g = paramCrashDetailBean.q;
      localak.h = paramCrashDetailBean.y;
      localak.i = paramCrashDetailBean.c;
      localak.j = null;
      localak.l = paramCrashDetailBean.m;
      localak.m = paramCrashDetailBean.e;
      localak.f = paramCrashDetailBean.A;
      localak.t = com.tencent.bugly.crashreport.common.info.a.a().h();
      localak.n = null;
      if ((paramCrashDetailBean.i != null) && (paramCrashDetailBean.i.size() > 0))
      {
        localak.o = new ArrayList();
        localObject1 = paramCrashDetailBean.i.entrySet().iterator();
      }
      break;
    case 3: 
    case 0: 
    case 1: 
    case 2: 
    case 4: 
    case 6: 
    case 5: 
      while (((Iterator)localObject1).hasNext())
      {
        localEntry = (Map.Entry)((Iterator)localObject1).next();
        localah = new ah();
        localah.a = ((PlugInBean)localEntry.getValue()).a;
        localah.c = ((PlugInBean)localEntry.getValue()).c;
        localah.d = ((PlugInBean)localEntry.getValue()).b;
        localah.b = parama.q();
        localak.o.add(localah);
        continue;
        if (paramCrashDetailBean.j) {}
        for (localObject1 = "203";; localObject1 = "103")
        {
          localak.a = ((String)localObject1);
          break;
        }
        if (paramCrashDetailBean.j) {}
        for (localObject1 = "200";; localObject1 = "100")
        {
          localak.a = ((String)localObject1);
          break;
        }
        if (paramCrashDetailBean.j) {}
        for (localObject1 = "201";; localObject1 = "101")
        {
          localak.a = ((String)localObject1);
          break;
        }
        if (paramCrashDetailBean.j) {}
        for (localObject1 = "202";; localObject1 = "102")
        {
          localak.a = ((String)localObject1);
          break;
        }
        if (paramCrashDetailBean.j) {}
        for (localObject1 = "204";; localObject1 = "104")
        {
          localak.a = ((String)localObject1);
          break;
        }
        if (paramCrashDetailBean.j) {}
        for (localObject1 = "206";; localObject1 = "106")
        {
          localak.a = ((String)localObject1);
          break;
        }
        if (paramCrashDetailBean.j) {}
        for (localObject1 = "207";; localObject1 = "107")
        {
          localak.a = ((String)localObject1);
          break;
        }
      }
    }
    if ((paramCrashDetailBean.h != null) && (paramCrashDetailBean.h.size() > 0))
    {
      localak.p = new ArrayList();
      localObject1 = paramCrashDetailBean.h.entrySet().iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localEntry = (Map.Entry)((Iterator)localObject1).next();
        localah = new ah();
        localah.a = ((PlugInBean)localEntry.getValue()).a;
        localah.c = ((PlugInBean)localEntry.getValue()).c;
        localah.d = ((PlugInBean)localEntry.getValue()).b;
        localak.p.add(localah);
      }
    }
    if (paramCrashDetailBean.j)
    {
      localak.k = paramCrashDetailBean.t;
      if ((paramCrashDetailBean.s != null) && (paramCrashDetailBean.s.length() > 0)) {
        if (localak.q == null) {
          localak.q = new ArrayList();
        }
      }
    }
    label2633:
    Object localObject2;
    long l;
    boolean bool3;
    boolean bool4;
    boolean bool5;
    try
    {
      localak.q.add(new aj((byte)1, "alltimes.txt", paramCrashDetailBean.s.getBytes("utf-8")));
      int j = localak.k;
      if (localak.q != null)
      {
        i = localak.q.size();
        w.c("crashcount:%d sz:%d", new Object[] { Integer.valueOf(j), Integer.valueOf(i) });
        if (paramCrashDetailBean.w != null) {
          if (localak.q == null) {
            localak.q = new ArrayList();
          }
        }
      }
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException3)
    {
      try
      {
        localak.q.add(new aj((byte)1, "log.txt", paramCrashDetailBean.w.getBytes("utf-8")));
        if ((paramCrashDetailBean.x != null) && (paramCrashDetailBean.x.length > 0))
        {
          localObject1 = new aj((byte)2, "buglylog.zip", paramCrashDetailBean.x);
          w.c("attach user log", new Object[0]);
          if (localak.q == null) {
            localak.q = new ArrayList();
          }
          localak.q.add(localObject1);
        }
        if (paramCrashDetailBean.b == 3)
        {
          if (localak.q == null) {
            localak.q = new ArrayList();
          }
          if ((paramCrashDetailBean.N == null) || (!paramCrashDetailBean.N.containsKey("BUGLY_CR_01"))) {}
        }
      }
      catch (UnsupportedEncodingException localUnsupportedEncodingException3)
      {
        try
        {
          localak.q.add(new aj((byte)1, "anrMessage.txt", ((String)paramCrashDetailBean.N.get("BUGLY_CR_01")).getBytes("utf-8")));
          w.c("attach anr message", new Object[0]);
          paramCrashDetailBean.N.remove("BUGLY_CR_01");
          if (paramCrashDetailBean.v != null)
          {
            localObject1 = a("trace.zip", paramContext, paramCrashDetailBean.v);
            if (localObject1 != null)
            {
              w.c("attach traces", new Object[0]);
              localak.q.add(localObject1);
            }
          }
          if (paramCrashDetailBean.b == 1)
          {
            if (localak.q == null) {
              localak.q = new ArrayList();
            }
            if (paramCrashDetailBean.v != null)
            {
              paramContext = a("tomb.zip", paramContext, paramCrashDetailBean.v);
              if (paramContext != null)
              {
                w.c("attach tombs", new Object[0]);
                localak.q.add(paramContext);
              }
            }
          }
          if ((paramCrashDetailBean.S != null) && (paramCrashDetailBean.S.length > 0))
          {
            if (localak.q == null) {
              localak.q = new ArrayList();
            }
            localak.q.add(new aj((byte)1, "userExtraByteData", paramCrashDetailBean.S));
            w.c("attach extraData", new Object[0]);
          }
          localak.r = new HashMap();
          localak.r.put("A9", paramCrashDetailBean.B);
          localak.r.put("A11", paramCrashDetailBean.C);
          localak.r.put("A10", paramCrashDetailBean.D);
          localak.r.put("A23", paramCrashDetailBean.f);
          localak.r.put("A7", parama.e);
          localak.r.put("A6", parama.r());
          localak.r.put("A5", parama.q());
          localak.r.put("A22", parama.g());
          localak.r.put("A2", paramCrashDetailBean.F);
          localak.r.put("A1", paramCrashDetailBean.E);
          localak.r.put("A24", parama.g);
          localak.r.put("A17", paramCrashDetailBean.G);
          localak.r.put("A3", parama.j());
          localak.r.put("A16", parama.l());
          localak.r.put("A25", parama.m());
          localak.r.put("A14", parama.k());
          localak.r.put("A15", parama.t());
          localak.r.put("A13", parama.u());
          localak.r.put("A34", paramCrashDetailBean.z);
          if (parama.w != null) {
            localak.r.put("productIdentify", parama.w);
          }
        }
        catch (UnsupportedEncodingException localUnsupportedEncodingException3)
        {
          try
          {
            for (;;)
            {
              localak.r.put("A26", URLEncoder.encode(paramCrashDetailBean.H, "utf-8"));
              if (paramCrashDetailBean.b == 1)
              {
                localak.r.put("A27", paramCrashDetailBean.J);
                localak.r.put("A28", paramCrashDetailBean.I);
                localak.r.put("A29", paramCrashDetailBean.k);
              }
              localak.r.put("A30", paramCrashDetailBean.K);
              localak.r.put("A18", paramCrashDetailBean.L);
              paramContext = localak.r;
              localObject1 = new StringBuilder();
              if (paramCrashDetailBean.M) {
                break;
              }
              bool1 = true;
              paramContext.put("A36", bool1);
              localak.r.put("F02", parama.p);
              localak.r.put("F03", parama.q);
              localak.r.put("F04", parama.d());
              localak.r.put("F05", parama.r);
              localak.r.put("F06", parama.o);
              localak.r.put("F08", parama.u);
              localak.r.put("F09", parama.v);
              localak.r.put("F10", parama.s);
              if (paramCrashDetailBean.O >= 0) {
                localak.r.put("C01", paramCrashDetailBean.O);
              }
              if (paramCrashDetailBean.P >= 0) {
                localak.r.put("C02", paramCrashDetailBean.P);
              }
              if ((paramCrashDetailBean.Q == null) || (paramCrashDetailBean.Q.size() <= 0)) {
                break label2633;
              }
              paramContext = paramCrashDetailBean.Q.entrySet().iterator();
              while (paramContext.hasNext())
              {
                localObject1 = (Map.Entry)paramContext.next();
                localak.r.put("C03_" + (String)((Map.Entry)localObject1).getKey(), ((Map.Entry)localObject1).getValue());
              }
              localUnsupportedEncodingException1 = localUnsupportedEncodingException1;
              localUnsupportedEncodingException1.printStackTrace();
              localak.q = null;
              continue;
              int i = 0;
              continue;
              localUnsupportedEncodingException2 = localUnsupportedEncodingException2;
              localUnsupportedEncodingException2.printStackTrace();
              localak.q = null;
            }
            localUnsupportedEncodingException3 = localUnsupportedEncodingException3;
            localUnsupportedEncodingException3.printStackTrace();
            localak.q = null;
          }
          catch (UnsupportedEncodingException paramContext)
          {
            for (;;)
            {
              paramContext.printStackTrace();
              continue;
              bool1 = false;
            }
            if ((paramCrashDetailBean.R != null) && (paramCrashDetailBean.R.size() > 0))
            {
              paramContext = paramCrashDetailBean.R.entrySet().iterator();
              while (paramContext.hasNext())
              {
                localObject2 = (Map.Entry)paramContext.next();
                localak.r.put("C04_" + (String)((Map.Entry)localObject2).getKey(), ((Map.Entry)localObject2).getValue());
              }
            }
            localak.s = null;
            if ((paramCrashDetailBean.N != null) && (paramCrashDetailBean.N.size() > 0))
            {
              localak.s = paramCrashDetailBean.N;
              w.a("setted message size %d", new Object[] { Integer.valueOf(localak.s.size()) });
            }
            paramContext = paramCrashDetailBean.n;
            localObject2 = paramCrashDetailBean.c;
            parama = parama.d();
            l = (paramCrashDetailBean.r - paramCrashDetailBean.L) / 1000L;
            bool3 = paramCrashDetailBean.k;
            bool4 = paramCrashDetailBean.M;
            bool5 = paramCrashDetailBean.j;
            if (paramCrashDetailBean.b != 1) {}
          }
        }
      }
    }
    for (boolean bool1 = bool2;; bool1 = false)
    {
      w.c("%s rid:%s sess:%s ls:%ds isR:%b isF:%b isM:%b isN:%b mc:%d ,%s ,isUp:%b ,vm:%d", new Object[] { paramContext, localObject2, parama, Long.valueOf(l), Boolean.valueOf(bool3), Boolean.valueOf(bool4), Boolean.valueOf(bool5), Boolean.valueOf(bool1), Integer.valueOf(paramCrashDetailBean.t), paramCrashDetailBean.s, Boolean.valueOf(paramCrashDetailBean.d), Integer.valueOf(localak.r.size()) });
      return localak;
    }
  }
  
  private static List<a> a(List<a> paramList)
  {
    if ((paramList == null) || (paramList.size() == 0)) {
      return null;
    }
    long l = com.tencent.bugly.proguard.a.o();
    ArrayList localArrayList = new ArrayList();
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      a locala = (a)paramList.next();
      if ((locala.d) && (locala.b < l - 86400000L)) {
        localArrayList.add(locala);
      }
    }
    return localArrayList;
  }
  
  public static void a(String paramString1, String paramString2, String paramString3, Thread paramThread, String paramString4, CrashDetailBean paramCrashDetailBean)
  {
    com.tencent.bugly.crashreport.common.info.a locala = com.tencent.bugly.crashreport.common.info.a.a();
    if (locala == null) {
      return;
    }
    w.e("#++++++++++Record By Bugly++++++++++#", new Object[0]);
    w.e("# You can use Bugly(http:\\\\bugly.qq.com) to get more Crash Detail!", new Object[0]);
    w.e("# PKG NAME: %s", new Object[] { locala.c });
    w.e("# APP VER: %s", new Object[] { locala.i });
    w.e("# LAUNCH TIME: %s", new Object[] { com.tencent.bugly.proguard.a.a(new Date(com.tencent.bugly.crashreport.common.info.a.a().a)) });
    w.e("# CRASH TYPE: %s", new Object[] { paramString1 });
    w.e("# CRASH TIME: %s", new Object[] { paramString2 });
    w.e("# CRASH PROCESS: %s", new Object[] { paramString3 });
    if (paramThread != null) {
      w.e("# CRASH THREAD: %s", new Object[] { paramThread.getName() });
    }
    if (paramCrashDetailBean != null)
    {
      w.e("# REPORT ID: %s", new Object[] { paramCrashDetailBean.c });
      paramString2 = locala.f;
      if (locala.u().booleanValue())
      {
        paramString1 = "ROOTED";
        w.e("# CRASH DEVICE: %s %s", new Object[] { paramString2, paramString1 });
        w.e("# RUNTIME AVAIL RAM:%d ROM:%d SD:%d", new Object[] { Long.valueOf(paramCrashDetailBean.B), Long.valueOf(paramCrashDetailBean.C), Long.valueOf(paramCrashDetailBean.D) });
        w.e("# RUNTIME TOTAL RAM:%d ROM:%d SD:%d", new Object[] { Long.valueOf(paramCrashDetailBean.E), Long.valueOf(paramCrashDetailBean.F), Long.valueOf(paramCrashDetailBean.G) });
        paramString1 = paramCrashDetailBean.J;
        if ((paramString1 == null) || (paramString1.trim().length() <= 0)) {
          break label439;
        }
        i = 0;
        label343:
        if (i != 0) {
          break label445;
        }
        w.e("# EXCEPTION FIRED BY %s %s", new Object[] { paramCrashDetailBean.J, paramCrashDetailBean.I });
      }
    }
    else
    {
      label375:
      if ((paramString4 == null) || (paramString4.trim().length() <= 0)) {
        break label517;
      }
    }
    label439:
    label445:
    label517:
    for (int i = 0;; i = 1)
    {
      if (i == 0)
      {
        w.e("# CRASH STACK: ", new Object[0]);
        w.e(paramString4, new Object[0]);
      }
      w.e("#++++++++++++++++++++++++++++++++++++++++++#", new Object[0]);
      return;
      paramString1 = "UNROOT";
      break;
      i = 1;
      break label343;
      if (paramCrashDetailBean.b != 3) {
        break label375;
      }
      if (paramCrashDetailBean.N == null) {}
      for (paramString1 = "null";; paramString1 = (String)paramCrashDetailBean.N.get("BUGLY_CR_01"))
      {
        w.e("# EXCEPTION ANR MESSAGE:\n %s", new Object[] { paramString1 });
        break;
      }
    }
  }
  
  public static void a(boolean paramBoolean, List<CrashDetailBean> paramList)
  {
    if ((paramList != null) && (paramList.size() > 0))
    {
      w.c("up finish update state %b", new Object[] { Boolean.valueOf(paramBoolean) });
      Iterator localIterator = paramList.iterator();
      CrashDetailBean localCrashDetailBean;
      while (localIterator.hasNext())
      {
        localCrashDetailBean = (CrashDetailBean)localIterator.next();
        w.c("pre uid:%s uc:%d re:%b me:%b", new Object[] { localCrashDetailBean.c, Integer.valueOf(localCrashDetailBean.l), Boolean.valueOf(localCrashDetailBean.d), Boolean.valueOf(localCrashDetailBean.j) });
        localCrashDetailBean.l += 1;
        localCrashDetailBean.d = paramBoolean;
        w.c("set uid:%s uc:%d re:%b me:%b", new Object[] { localCrashDetailBean.c, Integer.valueOf(localCrashDetailBean.l), Boolean.valueOf(localCrashDetailBean.d), Boolean.valueOf(localCrashDetailBean.j) });
      }
      localIterator = paramList.iterator();
      while (localIterator.hasNext())
      {
        localCrashDetailBean = (CrashDetailBean)localIterator.next();
        c.a().a(localCrashDetailBean);
      }
      w.c("update state size %d", new Object[] { Integer.valueOf(paramList.size()) });
    }
    if (!paramBoolean) {
      w.b("[crash] upload fail.", new Object[0]);
    }
  }
  
  private static a b(Cursor paramCursor)
  {
    boolean bool2 = true;
    if (paramCursor == null) {}
    for (;;)
    {
      return null;
      try
      {
        a locala = new a();
        locala.a = paramCursor.getLong(paramCursor.getColumnIndex("_id"));
        locala.b = paramCursor.getLong(paramCursor.getColumnIndex("_tm"));
        locala.c = paramCursor.getString(paramCursor.getColumnIndex("_s1"));
        if (paramCursor.getInt(paramCursor.getColumnIndex("_up")) == 1)
        {
          bool1 = true;
          locala.d = bool1;
          if (paramCursor.getInt(paramCursor.getColumnIndex("_me")) != 1) {
            break label150;
          }
        }
        label150:
        for (boolean bool1 = bool2;; bool1 = false)
        {
          locala.e = bool1;
          locala.f = paramCursor.getInt(paramCursor.getColumnIndex("_uc"));
          return locala;
          bool1 = false;
          break;
        }
        if (w.a(paramCursor)) {}
      }
      catch (Throwable paramCursor) {}
    }
    paramCursor.printStackTrace();
    return null;
  }
  
  /* Error */
  private List<a> b()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_1
    //   2: new 89	java/util/ArrayList
    //   5: dup
    //   6: invokespecial 338	java/util/ArrayList:<init>	()V
    //   9: astore_3
    //   10: invokestatic 808	com/tencent/bugly/proguard/o:a	()Lcom/tencent/bugly/proguard/o;
    //   13: ldc_w 810
    //   16: bipush 6
    //   18: anewarray 136	java/lang/String
    //   21: dup
    //   22: iconst_0
    //   23: ldc 54
    //   25: aastore
    //   26: dup
    //   27: iconst_1
    //   28: ldc_w 783
    //   31: aastore
    //   32: dup
    //   33: iconst_2
    //   34: ldc_w 785
    //   37: aastore
    //   38: dup
    //   39: iconst_3
    //   40: ldc_w 792
    //   43: aastore
    //   44: dup
    //   45: iconst_4
    //   46: ldc_w 798
    //   49: aastore
    //   50: dup
    //   51: iconst_5
    //   52: ldc_w 800
    //   55: aastore
    //   56: aconst_null
    //   57: aconst_null
    //   58: aconst_null
    //   59: iconst_1
    //   60: invokevirtual 813	com/tencent/bugly/proguard/o:a	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/tencent/bugly/proguard/n;Z)Landroid/database/Cursor;
    //   63: astore_2
    //   64: aload_2
    //   65: astore_1
    //   66: aload_1
    //   67: ifnonnull +24 -> 91
    //   70: aload_1
    //   71: ifnull +18 -> 89
    //   74: aload_1
    //   75: invokeinterface 816 1 0
    //   80: ifne +9 -> 89
    //   83: aload_1
    //   84: invokeinterface 817 1 0
    //   89: aconst_null
    //   90: areturn
    //   91: new 149	java/lang/StringBuilder
    //   94: dup
    //   95: invokespecial 150	java/lang/StringBuilder:<init>	()V
    //   98: astore_2
    //   99: aload_1
    //   100: invokeinterface 820 1 0
    //   105: ifeq +133 -> 238
    //   108: aload_1
    //   109: invokestatic 822	com/tencent/bugly/crashreport/crash/b:b	(Landroid/database/Cursor;)Lcom/tencent/bugly/crashreport/crash/a;
    //   112: astore 4
    //   114: aload 4
    //   116: ifnull +48 -> 164
    //   119: aload_3
    //   120: aload 4
    //   122: invokeinterface 115 2 0
    //   127: pop
    //   128: goto -29 -> 99
    //   131: astore_2
    //   132: aload_2
    //   133: invokestatic 77	com/tencent/bugly/proguard/w:a	(Ljava/lang/Throwable;)Z
    //   136: ifne +7 -> 143
    //   139: aload_2
    //   140: invokevirtual 80	java/lang/Throwable:printStackTrace	()V
    //   143: aload_1
    //   144: ifnull +18 -> 162
    //   147: aload_1
    //   148: invokeinterface 816 1 0
    //   153: ifne +9 -> 162
    //   156: aload_1
    //   157: invokeinterface 817 1 0
    //   162: aload_3
    //   163: areturn
    //   164: aload_1
    //   165: aload_1
    //   166: ldc 54
    //   168: invokeinterface 48 2 0
    //   173: invokeinterface 58 2 0
    //   178: lstore 5
    //   180: aload_2
    //   181: ldc_w 824
    //   184: invokevirtual 154	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   187: lload 5
    //   189: invokevirtual 170	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   192: pop
    //   193: goto -94 -> 99
    //   196: astore 4
    //   198: ldc_w 826
    //   201: iconst_0
    //   202: anewarray 4	java/lang/Object
    //   205: invokestatic 183	com/tencent/bugly/proguard/w:d	(Ljava/lang/String;[Ljava/lang/Object;)Z
    //   208: pop
    //   209: goto -110 -> 99
    //   212: astore_3
    //   213: aload_1
    //   214: astore_2
    //   215: aload_3
    //   216: astore_1
    //   217: aload_2
    //   218: ifnull +18 -> 236
    //   221: aload_2
    //   222: invokeinterface 816 1 0
    //   227: ifne +9 -> 236
    //   230: aload_2
    //   231: invokeinterface 817 1 0
    //   236: aload_1
    //   237: athrow
    //   238: aload_2
    //   239: invokevirtual 158	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   242: astore_2
    //   243: aload_2
    //   244: invokevirtual 408	java/lang/String:length	()I
    //   247: ifle +45 -> 292
    //   250: aload_2
    //   251: iconst_4
    //   252: invokevirtual 829	java/lang/String:substring	(I)Ljava/lang/String;
    //   255: astore_2
    //   256: ldc_w 831
    //   259: iconst_2
    //   260: anewarray 4	java/lang/Object
    //   263: dup
    //   264: iconst_0
    //   265: ldc_w 810
    //   268: aastore
    //   269: dup
    //   270: iconst_1
    //   271: invokestatic 808	com/tencent/bugly/proguard/o:a	()Lcom/tencent/bugly/proguard/o;
    //   274: ldc_w 810
    //   277: aload_2
    //   278: aconst_null
    //   279: aconst_null
    //   280: iconst_1
    //   281: invokevirtual 834	com/tencent/bugly/proguard/o:a	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/tencent/bugly/proguard/n;Z)I
    //   284: invokestatic 248	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   287: aastore
    //   288: invokestatic 183	com/tencent/bugly/proguard/w:d	(Ljava/lang/String;[Ljava/lang/Object;)Z
    //   291: pop
    //   292: aload_1
    //   293: ifnull +18 -> 311
    //   296: aload_1
    //   297: invokeinterface 816 1 0
    //   302: ifne +9 -> 311
    //   305: aload_1
    //   306: invokeinterface 817 1 0
    //   311: aload_3
    //   312: areturn
    //   313: astore_1
    //   314: aconst_null
    //   315: astore_2
    //   316: goto -99 -> 217
    //   319: astore_3
    //   320: aload_1
    //   321: astore_2
    //   322: aload_3
    //   323: astore_1
    //   324: goto -107 -> 217
    //   327: astore_2
    //   328: goto -196 -> 132
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	331	0	this	b
    //   1	305	1	localObject1	Object
    //   313	8	1	localObject2	Object
    //   323	1	1	localObject3	Object
    //   63	36	2	localObject4	Object
    //   131	50	2	localThrowable1	Throwable
    //   214	108	2	localObject5	Object
    //   327	1	2	localThrowable2	Throwable
    //   9	154	3	localArrayList	ArrayList
    //   212	100	3	localList	List<a>
    //   319	4	3	localObject6	Object
    //   112	9	4	locala	a
    //   196	1	4	localThrowable3	Throwable
    //   178	10	5	l	long
    // Exception table:
    //   from	to	target	type
    //   91	99	131	java/lang/Throwable
    //   99	114	131	java/lang/Throwable
    //   119	128	131	java/lang/Throwable
    //   198	209	131	java/lang/Throwable
    //   238	292	131	java/lang/Throwable
    //   164	193	196	java/lang/Throwable
    //   91	99	212	finally
    //   99	114	212	finally
    //   119	128	212	finally
    //   164	193	212	finally
    //   198	209	212	finally
    //   238	292	212	finally
    //   10	64	313	finally
    //   132	143	319	finally
    //   10	64	327	java/lang/Throwable
  }
  
  /* Error */
  private List<CrashDetailBean> b(List<a> paramList)
  {
    // Byte code:
    //   0: aload_1
    //   1: ifnull +12 -> 13
    //   4: aload_1
    //   5: invokeinterface 87 1 0
    //   10: ifne +5 -> 15
    //   13: aconst_null
    //   14: areturn
    //   15: new 149	java/lang/StringBuilder
    //   18: dup
    //   19: invokespecial 150	java/lang/StringBuilder:<init>	()V
    //   22: astore_3
    //   23: aload_1
    //   24: invokeinterface 96 1 0
    //   29: astore_1
    //   30: aload_1
    //   31: invokeinterface 102 1 0
    //   36: ifeq +31 -> 67
    //   39: aload_1
    //   40: invokeinterface 106 1 0
    //   45: checkcast 108	com/tencent/bugly/crashreport/crash/a
    //   48: astore_2
    //   49: aload_3
    //   50: ldc_w 824
    //   53: invokevirtual 154	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   56: aload_2
    //   57: getfield 781	com/tencent/bugly/crashreport/crash/a:a	J
    //   60: invokevirtual 170	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   63: pop
    //   64: goto -34 -> 30
    //   67: aload_3
    //   68: invokevirtual 158	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   71: astore_2
    //   72: aload_2
    //   73: astore_1
    //   74: aload_2
    //   75: invokevirtual 408	java/lang/String:length	()I
    //   78: ifle +9 -> 87
    //   81: aload_2
    //   82: iconst_4
    //   83: invokevirtual 829	java/lang/String:substring	(I)Ljava/lang/String;
    //   86: astore_1
    //   87: aload_3
    //   88: iconst_0
    //   89: invokevirtual 838	java/lang/StringBuilder:setLength	(I)V
    //   92: invokestatic 808	com/tencent/bugly/proguard/o:a	()Lcom/tencent/bugly/proguard/o;
    //   95: ldc_w 810
    //   98: aconst_null
    //   99: aload_1
    //   100: aconst_null
    //   101: aconst_null
    //   102: iconst_1
    //   103: invokevirtual 813	com/tencent/bugly/proguard/o:a	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/tencent/bugly/proguard/n;Z)Landroid/database/Cursor;
    //   106: astore_1
    //   107: aload_1
    //   108: ifnonnull +24 -> 132
    //   111: aload_1
    //   112: ifnull +18 -> 130
    //   115: aload_1
    //   116: invokeinterface 816 1 0
    //   121: ifne +9 -> 130
    //   124: aload_1
    //   125: invokeinterface 817 1 0
    //   130: aconst_null
    //   131: areturn
    //   132: new 89	java/util/ArrayList
    //   135: dup
    //   136: invokespecial 338	java/util/ArrayList:<init>	()V
    //   139: astore_2
    //   140: aload_1
    //   141: invokeinterface 820 1 0
    //   146: ifeq +133 -> 279
    //   149: aload_1
    //   150: invokestatic 840	com/tencent/bugly/crashreport/crash/b:a	(Landroid/database/Cursor;)Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;
    //   153: astore 4
    //   155: aload 4
    //   157: ifnull +48 -> 205
    //   160: aload_2
    //   161: aload 4
    //   163: invokeinterface 115 2 0
    //   168: pop
    //   169: goto -29 -> 140
    //   172: astore_2
    //   173: aload_2
    //   174: invokestatic 77	com/tencent/bugly/proguard/w:a	(Ljava/lang/Throwable;)Z
    //   177: ifne +7 -> 184
    //   180: aload_2
    //   181: invokevirtual 80	java/lang/Throwable:printStackTrace	()V
    //   184: aload_1
    //   185: ifnull +18 -> 203
    //   188: aload_1
    //   189: invokeinterface 816 1 0
    //   194: ifne +9 -> 203
    //   197: aload_1
    //   198: invokeinterface 817 1 0
    //   203: aconst_null
    //   204: areturn
    //   205: aload_1
    //   206: aload_1
    //   207: ldc 54
    //   209: invokeinterface 48 2 0
    //   214: invokeinterface 58 2 0
    //   219: lstore 5
    //   221: aload_3
    //   222: ldc_w 824
    //   225: invokevirtual 154	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   228: lload 5
    //   230: invokevirtual 170	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   233: pop
    //   234: goto -94 -> 140
    //   237: astore 4
    //   239: ldc_w 826
    //   242: iconst_0
    //   243: anewarray 4	java/lang/Object
    //   246: invokestatic 183	com/tencent/bugly/proguard/w:d	(Ljava/lang/String;[Ljava/lang/Object;)Z
    //   249: pop
    //   250: goto -110 -> 140
    //   253: astore_3
    //   254: aload_1
    //   255: astore_2
    //   256: aload_3
    //   257: astore_1
    //   258: aload_2
    //   259: ifnull +18 -> 277
    //   262: aload_2
    //   263: invokeinterface 816 1 0
    //   268: ifne +9 -> 277
    //   271: aload_2
    //   272: invokeinterface 817 1 0
    //   277: aload_1
    //   278: athrow
    //   279: aload_3
    //   280: invokevirtual 158	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   283: astore_3
    //   284: aload_3
    //   285: invokevirtual 408	java/lang/String:length	()I
    //   288: ifle +45 -> 333
    //   291: aload_3
    //   292: iconst_4
    //   293: invokevirtual 829	java/lang/String:substring	(I)Ljava/lang/String;
    //   296: astore_3
    //   297: ldc_w 831
    //   300: iconst_2
    //   301: anewarray 4	java/lang/Object
    //   304: dup
    //   305: iconst_0
    //   306: ldc_w 810
    //   309: aastore
    //   310: dup
    //   311: iconst_1
    //   312: invokestatic 808	com/tencent/bugly/proguard/o:a	()Lcom/tencent/bugly/proguard/o;
    //   315: ldc_w 810
    //   318: aload_3
    //   319: aconst_null
    //   320: aconst_null
    //   321: iconst_1
    //   322: invokevirtual 834	com/tencent/bugly/proguard/o:a	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/tencent/bugly/proguard/n;Z)I
    //   325: invokestatic 248	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   328: aastore
    //   329: invokestatic 183	com/tencent/bugly/proguard/w:d	(Ljava/lang/String;[Ljava/lang/Object;)Z
    //   332: pop
    //   333: aload_1
    //   334: ifnull +18 -> 352
    //   337: aload_1
    //   338: invokeinterface 816 1 0
    //   343: ifne +9 -> 352
    //   346: aload_1
    //   347: invokeinterface 817 1 0
    //   352: aload_2
    //   353: areturn
    //   354: astore_1
    //   355: aconst_null
    //   356: astore_2
    //   357: goto -99 -> 258
    //   360: astore_3
    //   361: aload_1
    //   362: astore_2
    //   363: aload_3
    //   364: astore_1
    //   365: goto -107 -> 258
    //   368: astore_2
    //   369: aconst_null
    //   370: astore_1
    //   371: goto -198 -> 173
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	374	0	this	b
    //   0	374	1	paramList	List<a>
    //   48	113	2	localObject1	Object
    //   172	9	2	localThrowable1	Throwable
    //   255	108	2	localList	List<a>
    //   368	1	2	localThrowable2	Throwable
    //   22	200	3	localStringBuilder	StringBuilder
    //   253	27	3	localObject2	Object
    //   283	36	3	str	String
    //   360	4	3	localObject3	Object
    //   153	9	4	localCrashDetailBean	CrashDetailBean
    //   237	1	4	localThrowable3	Throwable
    //   219	10	5	l	long
    // Exception table:
    //   from	to	target	type
    //   132	140	172	java/lang/Throwable
    //   140	155	172	java/lang/Throwable
    //   160	169	172	java/lang/Throwable
    //   239	250	172	java/lang/Throwable
    //   279	333	172	java/lang/Throwable
    //   205	234	237	java/lang/Throwable
    //   132	140	253	finally
    //   140	155	253	finally
    //   160	169	253	finally
    //   205	234	253	finally
    //   239	250	253	finally
    //   279	333	253	finally
    //   92	107	354	finally
    //   173	184	360	finally
    //   92	107	368	java/lang/Throwable
  }
  
  private static void c(List<a> paramList)
  {
    if ((paramList == null) || (paramList.size() == 0)) {}
    do
    {
      return;
      StringBuilder localStringBuilder = new StringBuilder();
      paramList = paramList.iterator();
      while (paramList.hasNext())
      {
        localObject = (a)paramList.next();
        localStringBuilder.append(" or _id = ").append(((a)localObject).a);
      }
      Object localObject = localStringBuilder.toString();
      paramList = (List<a>)localObject;
      if (((String)localObject).length() > 0) {
        paramList = ((String)localObject).substring(4);
      }
      localStringBuilder.setLength(0);
      try
      {
        w.c("deleted %s data %d", new Object[] { "t_cr", Integer.valueOf(o.a().a("t_cr", paramList, null, null, true)) });
        return;
      }
      catch (Throwable paramList) {}
    } while (w.a(paramList));
    paramList.printStackTrace();
  }
  
  private static ContentValues d(CrashDetailBean paramCrashDetailBean)
  {
    int j = 1;
    if (paramCrashDetailBean == null) {}
    for (;;)
    {
      return null;
      try
      {
        ContentValues localContentValues = new ContentValues();
        if (paramCrashDetailBean.a > 0L) {
          localContentValues.put("_id", Long.valueOf(paramCrashDetailBean.a));
        }
        localContentValues.put("_tm", Long.valueOf(paramCrashDetailBean.r));
        localContentValues.put("_s1", paramCrashDetailBean.u);
        if (paramCrashDetailBean.d)
        {
          i = 1;
          localContentValues.put("_up", Integer.valueOf(i));
          if (!paramCrashDetailBean.j) {
            break label154;
          }
        }
        label154:
        for (int i = j;; i = 0)
        {
          localContentValues.put("_me", Integer.valueOf(i));
          localContentValues.put("_uc", Integer.valueOf(paramCrashDetailBean.l));
          Parcel localParcel = Parcel.obtain();
          paramCrashDetailBean.writeToParcel(localParcel, 0);
          paramCrashDetailBean = localParcel.marshall();
          localParcel.recycle();
          localContentValues.put("_dt", paramCrashDetailBean);
          return localContentValues;
          i = 0;
          break;
        }
        if (w.a(paramCrashDetailBean)) {}
      }
      catch (Throwable paramCrashDetailBean) {}
    }
    paramCrashDetailBean.printStackTrace();
    return null;
  }
  
  private static void d(List<CrashDetailBean> paramList)
  {
    if (paramList != null) {
      try
      {
        if (paramList.size() == 0) {
          return;
        }
        StringBuilder localStringBuilder = new StringBuilder();
        paramList = paramList.iterator();
        Object localObject;
        while (paramList.hasNext())
        {
          localObject = (CrashDetailBean)paramList.next();
          localStringBuilder.append(" or _id = ").append(((CrashDetailBean)localObject).a);
        }
        return;
      }
      catch (Throwable paramList)
      {
        if (!w.a(paramList))
        {
          paramList.printStackTrace();
          return;
          localObject = localStringBuilder.toString();
          paramList = (List<CrashDetailBean>)localObject;
          if (((String)localObject).length() > 0) {
            paramList = ((String)localObject).substring(4);
          }
          localStringBuilder.setLength(0);
          w.c("deleted %s data %d", new Object[] { "t_cr", Integer.valueOf(o.a().a("t_cr", paramList, null, null, true)) });
        }
      }
    }
  }
  
  public final List<CrashDetailBean> a()
  {
    Object localObject1 = com.tencent.bugly.crashreport.common.strategy.a.a().c();
    if (localObject1 == null) {
      w.d("have not synced remote!", new Object[0]);
    }
    long l1;
    long l2;
    do
    {
      return null;
      if (!((StrategyBean)localObject1).d)
      {
        w.d("Crashreport remote closed, please check your APPID correct and Version available, then uninstall and reinstall your app.", new Object[0]);
        w.b("[init] WARNING! Crashreport closed by server, please check your APPID correct and Version available, then uninstall and reinstall your app.", new Object[0]);
        return null;
      }
      l1 = System.currentTimeMillis();
      l2 = com.tencent.bugly.proguard.a.o();
      localList = b();
    } while ((localList == null) || (localList.size() <= 0));
    localObject1 = new ArrayList();
    Object localObject2 = localList.iterator();
    Object localObject3;
    while (((Iterator)localObject2).hasNext())
    {
      localObject3 = (a)((Iterator)localObject2).next();
      if (((a)localObject3).b < l2 - c.f)
      {
        ((Iterator)localObject2).remove();
        ((List)localObject1).add(localObject3);
      }
      else if (((a)localObject3).d)
      {
        if (((a)localObject3).b >= l1 - 86400000L)
        {
          ((Iterator)localObject2).remove();
        }
        else if (!((a)localObject3).e)
        {
          ((Iterator)localObject2).remove();
          ((List)localObject1).add(localObject3);
        }
      }
      else if ((((a)localObject3).f >= 3L) && (((a)localObject3).b < l1 - 86400000L))
      {
        ((Iterator)localObject2).remove();
        ((List)localObject1).add(localObject3);
      }
    }
    if (((List)localObject1).size() > 0) {
      c((List)localObject1);
    }
    localObject1 = new ArrayList();
    List localList = b(localList);
    if ((localList != null) && (localList.size() > 0))
    {
      localObject2 = com.tencent.bugly.crashreport.common.info.a.a().i;
      localObject3 = localList.iterator();
      while (((Iterator)localObject3).hasNext())
      {
        CrashDetailBean localCrashDetailBean = (CrashDetailBean)((Iterator)localObject3).next();
        if (!((String)localObject2).equals(localCrashDetailBean.f))
        {
          ((Iterator)localObject3).remove();
          ((List)localObject1).add(localCrashDetailBean);
        }
      }
    }
    if (((List)localObject1).size() > 0) {
      d((List)localObject1);
    }
    return localList;
  }
  
  public final void a(CrashDetailBean paramCrashDetailBean, long paramLong, boolean paramBoolean)
  {
    w.a("try to upload right now", new Object[0]);
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(paramCrashDetailBean);
    a(localArrayList, 5000L, paramBoolean);
    int i = paramCrashDetailBean.b;
  }
  
  public final void a(final List<CrashDetailBean> paramList, long paramLong, boolean paramBoolean)
  {
    Object localObject = null;
    if (!this.d.c().d)
    {
      w.d("remote report is disable!", new Object[0]);
      w.b("[crash] server closed bugly in this app. please check your appid if is correct, and re-install it", new Object[0]);
    }
    while ((paramList == null) || (paramList.size() == 0)) {
      return;
    }
    for (;;)
    {
      Context localContext;
      com.tencent.bugly.crashreport.common.info.a locala;
      try
      {
        localContext = this.b;
        locala = com.tencent.bugly.crashreport.common.info.a.a();
        if ((localContext != null) && (paramList != null) && (paramList.size() != 0) && (locala != null)) {
          break label145;
        }
        w.d("enEXPPkg args == null!", new Object[0]);
        if (localObject != null) {
          break label217;
        }
        w.d("create eupPkg fail!", new Object[0]);
        return;
      }
      catch (Throwable paramList)
      {
        w.e("req cr error %s", new Object[] { paramList.toString() });
      }
      if (w.b(paramList)) {
        break;
      }
      paramList.printStackTrace();
      return;
      label145:
      localObject = new al();
      ((al)localObject).a = new ArrayList();
      Iterator localIterator = paramList.iterator();
      while (localIterator.hasNext())
      {
        CrashDetailBean localCrashDetailBean = (CrashDetailBean)localIterator.next();
        ((al)localObject).a.add(a(localContext, localCrashDetailBean, locala));
        continue;
        label217:
        localObject = com.tencent.bugly.proguard.a.a((j)localObject);
        if (localObject == null)
        {
          w.d("send encode fail!", new Object[0]);
          return;
        }
        localObject = com.tencent.bugly.proguard.a.a(this.b, 630, (byte[])localObject);
        if (localObject == null)
        {
          w.d("request package is null.", new Object[0]);
          return;
        }
        paramList = new s()
        {
          public final void a(boolean paramAnonymousBoolean)
          {
            b.a(paramAnonymousBoolean, paramList);
          }
        };
        if (!paramBoolean)
        {
          t.a().a(a, (am)localObject, null, paramList);
          return;
        }
        t.a().a(a, (am)localObject, null, paramList, true, paramLong);
        w.a("wake up!", new Object[0]);
        return;
      }
    }
  }
  
  public final boolean a(CrashDetailBean paramCrashDetailBean)
  {
    return a(paramCrashDetailBean, -123456789);
  }
  
  public final boolean a(CrashDetailBean paramCrashDetailBean, int paramInt)
  {
    paramInt = paramCrashDetailBean.b;
    Object localObject1 = paramCrashDetailBean.n;
    localObject1 = paramCrashDetailBean.p;
    localObject1 = paramCrashDetailBean.q;
    long l = paramCrashDetailBean.r;
    localObject1 = paramCrashDetailBean.m;
    localObject1 = paramCrashDetailBean.e;
    localObject1 = paramCrashDetailBean.c;
    if ((this.e != null) && (!this.e.c())) {
      return true;
    }
    if (paramCrashDetailBean.b != 2)
    {
      localObject1 = new q();
      ((q)localObject1).b = 1;
      ((q)localObject1).c = paramCrashDetailBean.z;
      ((q)localObject1).d = paramCrashDetailBean.A;
      ((q)localObject1).e = paramCrashDetailBean.r;
      o.b(1);
      this.c.a((q)localObject1);
      w.b("[crash] a crash occur, handling...", new Object[0]);
    }
    ArrayList localArrayList;
    for (;;)
    {
      Object localObject2 = b();
      localArrayList = null;
      localObject1 = localArrayList;
      if (localObject2 == null) {
        break label383;
      }
      localObject1 = localArrayList;
      if (((List)localObject2).size() <= 0) {
        break label383;
      }
      localObject1 = new ArrayList(10);
      localArrayList = new ArrayList(10);
      ((List)localObject1).addAll(a((List)localObject2));
      ((List)localObject2).removeAll((Collection)localObject1);
      if ((com.tencent.bugly.b.b) || (!c.c)) {
        break label383;
      }
      localObject2 = ((List)localObject2).iterator();
      int i;
      for (paramInt = 0; ((Iterator)localObject2).hasNext(); paramInt = i)
      {
        a locala = (a)((Iterator)localObject2).next();
        i = paramInt;
        if (paramCrashDetailBean.u.equals(locala.c))
        {
          if (locala.e) {
            paramInt = 1;
          }
          localArrayList.add(locala);
          i = paramInt;
        }
      }
      w.b("[crash] a caught exception occur, handling...", new Object[0]);
    }
    if ((paramInt != 0) || (localArrayList.size() + 1 >= 5))
    {
      w.a("same crash occur too much do merged!", new Object[0]);
      paramCrashDetailBean = a(localArrayList, paramCrashDetailBean);
      paramCrashDetailBean.a = -1L;
      c(paramCrashDetailBean);
      ((List)localObject1).addAll(localArrayList);
      c((List)localObject1);
      w.b("[crash] save crash success. this device crash many times, won't upload crashes immediately", new Object[0]);
      return true;
    }
    label383:
    c(paramCrashDetailBean);
    c((List)localObject1);
    w.b("[crash] save crash success", new Object[0]);
    return false;
  }
  
  public final void b(CrashDetailBean paramCrashDetailBean)
  {
    if (paramCrashDetailBean == null) {
      break label4;
    }
    label4:
    while ((this.f == null) && (this.e == null)) {
      return;
    }
    for (;;)
    {
      int j;
      Object localObject;
      String str;
      Map.Entry localEntry;
      try
      {
        w.a("[crash callback] start user's callback:onCrashHandleStart()", new Object[0]);
        switch (paramCrashDetailBean.b)
        {
        case 3: 
          j = paramCrashDetailBean.b;
          localObject = paramCrashDetailBean.n;
          localObject = paramCrashDetailBean.p;
          localObject = paramCrashDetailBean.q;
          long l = paramCrashDetailBean.r;
          localObject = null;
          if (this.e == null) {
            break label515;
          }
          str = this.e.b();
          if (str != null)
          {
            localObject = new HashMap(1);
            ((Map)localObject).put("userData", str);
          }
          if ((localObject == null) || (((Map)localObject).size() <= 0)) {
            break label574;
          }
          paramCrashDetailBean.N = new LinkedHashMap(((Map)localObject).size());
          Iterator localIterator = ((Map)localObject).entrySet().iterator();
          if (!localIterator.hasNext()) {
            break label574;
          }
          localEntry = (Map.Entry)localIterator.next();
          localObject = (String)localEntry.getKey();
          if ((localObject == null) || (((String)localObject).trim().length() <= 0)) {
            break label720;
          }
          j = 0;
          if (j != 0) {
            continue;
          }
          str = (String)localEntry.getKey();
          localObject = str;
          if (str.length() > 100)
          {
            localObject = str.substring(0, 100);
            w.d("setted key length is over limit %d substring to %s", new Object[] { Integer.valueOf(100), localObject });
          }
          str = (String)localEntry.getValue();
          if ((str == null) || (str.trim().length() <= 0)) {
            break label726;
          }
          j = 0;
          if ((j != 0) || (((String)localEntry.getValue()).length() <= 30000)) {
            break label547;
          }
          str = ((String)localEntry.getValue()).substring(((String)localEntry.getValue()).length() - 30000);
          w.d("setted %s value length is over limit %d substring", new Object[] { localObject, Integer.valueOf(30000) });
          paramCrashDetailBean.N.put(localObject, str);
          w.a("add setted key %s value size:%d", new Object[] { localObject, Integer.valueOf(str.length()) });
          continue;
          if (w.a(paramCrashDetailBean)) {
            break label4;
          }
        }
      }
      catch (Throwable paramCrashDetailBean)
      {
        w.d("crash handle callback somthing wrong! %s", new Object[] { paramCrashDetailBean.getClass().getName() });
      }
      paramCrashDetailBean.printStackTrace();
      return;
      int i = 4;
      continue;
      i = 1;
      continue;
      i = 2;
      continue;
      i = 3;
      continue;
      i = 5;
      continue;
      i = 6;
      continue;
      label515:
      if (this.f != null)
      {
        localObject = this.f.onCrashHandleStart(i, paramCrashDetailBean.n, paramCrashDetailBean.o, paramCrashDetailBean.q);
        continue;
        label547:
        str = (String)localEntry.getValue();
        continue;
        label574:
        w.a("[crash callback] start user's callback:onCrashHandleStart2GetExtraDatas()", new Object[0]);
        localObject = null;
        if (this.e != null) {
          localObject = this.e.a();
        }
        for (;;)
        {
          paramCrashDetailBean.S = ((byte[])localObject);
          if (paramCrashDetailBean.S == null) {
            break;
          }
          if (paramCrashDetailBean.S.length > 30000) {
            w.d("extra bytes size %d is over limit %d will drop over part", new Object[] { Integer.valueOf(paramCrashDetailBean.S.length), Integer.valueOf(30000) });
          }
          w.a("add extra bytes %d ", new Object[] { Integer.valueOf(paramCrashDetailBean.S.length) });
          return;
          if (this.f != null) {
            localObject = this.f.onCrashHandleStart2GetExtraDatas(i, paramCrashDetailBean.n, paramCrashDetailBean.o, paramCrashDetailBean.q);
          }
        }
        return;
        i = 0;
        continue;
        label720:
        j = 1;
        continue;
        label726:
        j = 1;
      }
    }
  }
  
  public final void c(CrashDetailBean paramCrashDetailBean)
  {
    if (paramCrashDetailBean == null) {}
    long l;
    do
    {
      ContentValues localContentValues;
      do
      {
        return;
        localContentValues = d(paramCrashDetailBean);
      } while (localContentValues == null);
      l = o.a().a("t_cr", localContentValues, null, true);
    } while (l < 0L);
    w.c("insert %s success!", new Object[] { "t_cr" });
    paramCrashDetailBean.a = l;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\bugly\crashreport\crash\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
package com.tencent.bugly.crashreport.biz;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.os.Parcel;
import android.os.Parcelable;
import com.tencent.bugly.crashreport.common.strategy.StrategyBean;
import com.tencent.bugly.proguard.am;
import com.tencent.bugly.proguard.j;
import com.tencent.bugly.proguard.o;
import com.tencent.bugly.proguard.s;
import com.tencent.bugly.proguard.t;
import com.tencent.bugly.proguard.v;
import com.tencent.bugly.proguard.w;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class a
{
  private Context a;
  private long b;
  private int c;
  
  public a(Context paramContext)
  {
    this.a = paramContext;
  }
  
  private static ContentValues a(UserInfoBean paramUserInfoBean)
  {
    if (paramUserInfoBean == null) {}
    do
    {
      return null;
      try
      {
        ContentValues localContentValues = new ContentValues();
        if (paramUserInfoBean.a > 0L) {
          localContentValues.put("_id", Long.valueOf(paramUserInfoBean.a));
        }
        localContentValues.put("_tm", Long.valueOf(paramUserInfoBean.e));
        localContentValues.put("_ut", Long.valueOf(paramUserInfoBean.f));
        localContentValues.put("_tp", Integer.valueOf(paramUserInfoBean.b));
        localContentValues.put("_pc", paramUserInfoBean.c);
        Parcel localParcel = Parcel.obtain();
        paramUserInfoBean.writeToParcel(localParcel, 0);
        paramUserInfoBean = localParcel.marshall();
        localParcel.recycle();
        localContentValues.put("_dt", paramUserInfoBean);
        return localContentValues;
      }
      catch (Throwable paramUserInfoBean) {}
    } while (w.a(paramUserInfoBean));
    paramUserInfoBean.printStackTrace();
    return null;
  }
  
  private static UserInfoBean a(Cursor paramCursor)
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
        localObject = (UserInfoBean)com.tencent.bugly.proguard.a.a((byte[])localObject, UserInfoBean.CREATOR);
        paramCursor = (Cursor)localObject;
        if (localObject != null)
        {
          ((UserInfoBean)localObject).a = l;
          return (UserInfoBean)localObject;
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
  
  private static void a(List<UserInfoBean> paramList)
  {
    if ((paramList == null) || (paramList.size() == 0)) {}
    do
    {
      return;
      StringBuilder localStringBuilder = new StringBuilder();
      paramList = paramList.iterator();
      while (paramList.hasNext())
      {
        localObject = (UserInfoBean)paramList.next();
        localStringBuilder.append(" or _id = ").append(((UserInfoBean)localObject).a);
      }
      Object localObject = localStringBuilder.toString();
      paramList = (List<UserInfoBean>)localObject;
      if (((String)localObject).length() > 0) {
        paramList = ((String)localObject).substring(4);
      }
      localStringBuilder.setLength(0);
      try
      {
        w.c("deleted %s data %d", new Object[] { "t_ui", Integer.valueOf(o.a().a("t_ui", paramList, null, null, true)) });
        return;
      }
      catch (Throwable paramList) {}
    } while (w.a(paramList));
    paramList.printStackTrace();
  }
  
  /* Error */
  public final List<UserInfoBean> a(String paramString)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore 5
    //   3: aload_1
    //   4: ifnull +55 -> 59
    //   7: aload_1
    //   8: invokevirtual 213	java/lang/String:trim	()Ljava/lang/String;
    //   11: invokevirtual 191	java/lang/String:length	()I
    //   14: ifle +45 -> 59
    //   17: goto +318 -> 335
    //   20: invokestatic 139	com/tencent/bugly/proguard/o:a	()Lcom/tencent/bugly/proguard/o;
    //   23: ldc -115
    //   25: aconst_null
    //   26: aload_1
    //   27: aconst_null
    //   28: aconst_null
    //   29: iconst_1
    //   30: invokevirtual 216	com/tencent/bugly/proguard/o:a	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/tencent/bugly/proguard/n;Z)Landroid/database/Cursor;
    //   33: astore_1
    //   34: aload_1
    //   35: ifnonnull +55 -> 90
    //   38: aload_1
    //   39: ifnull +18 -> 57
    //   42: aload_1
    //   43: invokeinterface 219 1 0
    //   48: ifne +9 -> 57
    //   51: aload_1
    //   52: invokeinterface 222 1 0
    //   57: aconst_null
    //   58: areturn
    //   59: iconst_1
    //   60: istore 5
    //   62: goto +273 -> 335
    //   65: new 158	java/lang/StringBuilder
    //   68: dup
    //   69: ldc -32
    //   71: invokespecial 227	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   74: aload_1
    //   75: invokevirtual 179	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   78: ldc -27
    //   80: invokevirtual 179	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   83: invokevirtual 186	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   86: astore_1
    //   87: goto -67 -> 20
    //   90: new 158	java/lang/StringBuilder
    //   93: dup
    //   94: invokespecial 159	java/lang/StringBuilder:<init>	()V
    //   97: astore_3
    //   98: new 231	java/util/ArrayList
    //   101: dup
    //   102: invokespecial 232	java/util/ArrayList:<init>	()V
    //   105: astore_2
    //   106: aload_1
    //   107: invokeinterface 235 1 0
    //   112: ifeq +131 -> 243
    //   115: aload_1
    //   116: invokestatic 237	com/tencent/bugly/crashreport/biz/a:a	(Landroid/database/Cursor;)Lcom/tencent/bugly/crashreport/biz/UserInfoBean;
    //   119: astore 4
    //   121: aload 4
    //   123: ifnull +48 -> 171
    //   126: aload_2
    //   127: aload 4
    //   129: invokeinterface 241 2 0
    //   134: pop
    //   135: goto -29 -> 106
    //   138: astore_2
    //   139: aload_2
    //   140: invokestatic 104	com/tencent/bugly/proguard/w:a	(Ljava/lang/Throwable;)Z
    //   143: ifne +7 -> 150
    //   146: aload_2
    //   147: invokevirtual 107	java/lang/Throwable:printStackTrace	()V
    //   150: aload_1
    //   151: ifnull +18 -> 169
    //   154: aload_1
    //   155: invokeinterface 219 1 0
    //   160: ifne +9 -> 169
    //   163: aload_1
    //   164: invokeinterface 222 1 0
    //   169: aconst_null
    //   170: areturn
    //   171: aload_1
    //   172: aload_1
    //   173: ldc 35
    //   175: invokeinterface 114 2 0
    //   180: invokeinterface 122 2 0
    //   185: lstore 6
    //   187: aload_3
    //   188: ldc -81
    //   190: invokevirtual 179	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   193: lload 6
    //   195: invokevirtual 182	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   198: pop
    //   199: goto -93 -> 106
    //   202: astore 4
    //   204: ldc -13
    //   206: iconst_0
    //   207: anewarray 4	java/lang/Object
    //   210: invokestatic 246	com/tencent/bugly/proguard/w:d	(Ljava/lang/String;[Ljava/lang/Object;)Z
    //   213: pop
    //   214: goto -108 -> 106
    //   217: astore_3
    //   218: aload_1
    //   219: astore_2
    //   220: aload_3
    //   221: astore_1
    //   222: aload_2
    //   223: ifnull +18 -> 241
    //   226: aload_2
    //   227: invokeinterface 219 1 0
    //   232: ifne +9 -> 241
    //   235: aload_2
    //   236: invokeinterface 222 1 0
    //   241: aload_1
    //   242: athrow
    //   243: aload_3
    //   244: invokevirtual 186	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   247: astore_3
    //   248: aload_3
    //   249: invokevirtual 191	java/lang/String:length	()I
    //   252: ifle +42 -> 294
    //   255: aload_3
    //   256: iconst_4
    //   257: invokevirtual 195	java/lang/String:substring	(I)Ljava/lang/String;
    //   260: astore_3
    //   261: ldc -8
    //   263: iconst_2
    //   264: anewarray 4	java/lang/Object
    //   267: dup
    //   268: iconst_0
    //   269: ldc -115
    //   271: aastore
    //   272: dup
    //   273: iconst_1
    //   274: invokestatic 139	com/tencent/bugly/proguard/o:a	()Lcom/tencent/bugly/proguard/o;
    //   277: ldc -115
    //   279: aload_3
    //   280: aconst_null
    //   281: aconst_null
    //   282: iconst_1
    //   283: invokevirtual 204	com/tencent/bugly/proguard/o:a	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/tencent/bugly/proguard/n;Z)I
    //   286: invokestatic 64	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   289: aastore
    //   290: invokestatic 246	com/tencent/bugly/proguard/w:d	(Ljava/lang/String;[Ljava/lang/Object;)Z
    //   293: pop
    //   294: aload_1
    //   295: ifnull +18 -> 313
    //   298: aload_1
    //   299: invokeinterface 219 1 0
    //   304: ifne +9 -> 313
    //   307: aload_1
    //   308: invokeinterface 222 1 0
    //   313: aload_2
    //   314: areturn
    //   315: astore_1
    //   316: aconst_null
    //   317: astore_2
    //   318: goto -96 -> 222
    //   321: astore_3
    //   322: aload_1
    //   323: astore_2
    //   324: aload_3
    //   325: astore_1
    //   326: goto -104 -> 222
    //   329: astore_2
    //   330: aconst_null
    //   331: astore_1
    //   332: goto -193 -> 139
    //   335: iload 5
    //   337: ifeq -272 -> 65
    //   340: aconst_null
    //   341: astore_1
    //   342: goto -322 -> 20
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	345	0	this	a
    //   0	345	1	paramString	String
    //   105	22	2	localArrayList	ArrayList
    //   138	9	2	localThrowable1	Throwable
    //   219	105	2	str1	String
    //   329	1	2	localThrowable2	Throwable
    //   97	91	3	localStringBuilder	StringBuilder
    //   217	27	3	localObject1	Object
    //   247	33	3	str2	String
    //   321	4	3	localObject2	Object
    //   119	9	4	localUserInfoBean	UserInfoBean
    //   202	1	4	localThrowable3	Throwable
    //   1	335	5	i	int
    //   185	9	6	l	long
    // Exception table:
    //   from	to	target	type
    //   90	106	138	java/lang/Throwable
    //   106	121	138	java/lang/Throwable
    //   126	135	138	java/lang/Throwable
    //   204	214	138	java/lang/Throwable
    //   243	294	138	java/lang/Throwable
    //   171	199	202	java/lang/Throwable
    //   90	106	217	finally
    //   106	121	217	finally
    //   126	135	217	finally
    //   171	199	217	finally
    //   204	214	217	finally
    //   243	294	217	finally
    //   7	17	315	finally
    //   20	34	315	finally
    //   65	87	315	finally
    //   139	150	321	finally
    //   7	17	329	java/lang/Throwable
    //   20	34	329	java/lang/Throwable
    //   65	87	329	java/lang/Throwable
  }
  
  public final void a()
  {
    this.b = (com.tencent.bugly.proguard.a.o() + 86400000L);
    v.a().a(new d(this), this.b - System.currentTimeMillis() + 5000L);
  }
  
  public final void a(int paramInt, boolean paramBoolean, long paramLong)
  {
    int i = 1;
    Object localObject = com.tencent.bugly.crashreport.common.strategy.a.a().c();
    if ((localObject != null) && (!((StrategyBean)localObject).e) && (paramInt != 1) && (paramInt != 3))
    {
      w.e("UserInfo is disable", new Object[0]);
      return;
    }
    if (paramInt == 1) {
      this.c += 1;
    }
    localObject = this.a;
    if (paramInt == 1) {}
    for (;;)
    {
      localObject = com.tencent.bugly.crashreport.common.info.a.a((Context)localObject);
      UserInfoBean localUserInfoBean = new UserInfoBean();
      localUserInfoBean.b = paramInt;
      localUserInfoBean.c = ((com.tencent.bugly.crashreport.common.info.a)localObject).d;
      localUserInfoBean.d = ((com.tencent.bugly.crashreport.common.info.a)localObject).f();
      localUserInfoBean.e = System.currentTimeMillis();
      localUserInfoBean.f = -1L;
      localUserInfoBean.n = ((com.tencent.bugly.crashreport.common.info.a)localObject).i;
      localUserInfoBean.o = i;
      localUserInfoBean.l = ((com.tencent.bugly.crashreport.common.info.a)localObject).n;
      localUserInfoBean.m = ((com.tencent.bugly.crashreport.common.info.a)localObject).o;
      localUserInfoBean.g = ((com.tencent.bugly.crashreport.common.info.a)localObject).p;
      localUserInfoBean.h = ((com.tencent.bugly.crashreport.common.info.a)localObject).q;
      localUserInfoBean.i = ((com.tencent.bugly.crashreport.common.info.a)localObject).r;
      localUserInfoBean.k = ((com.tencent.bugly.crashreport.common.info.a)localObject).s;
      localUserInfoBean.r = ((com.tencent.bugly.crashreport.common.info.a)localObject).w();
      localUserInfoBean.s = ((com.tencent.bugly.crashreport.common.info.a)localObject).A();
      localUserInfoBean.p = ((com.tencent.bugly.crashreport.common.info.a)localObject).B();
      localUserInfoBean.q = ((com.tencent.bugly.crashreport.common.info.a)localObject).C();
      v.a().a(new c(this, localUserInfoBean, paramBoolean), 0L);
      return;
      i = 0;
    }
  }
  
  public final void b()
  {
    int k = 1;
    label449:
    label527:
    label533:
    label536:
    label545:
    label554:
    label560:
    label566:
    label569:
    for (;;)
    {
      int i;
      int j;
      try
      {
        Object localObject1 = com.tencent.bugly.crashreport.common.info.a.a(this.a).d;
        localObject2 = new ArrayList();
        localObject1 = a((String)localObject1);
        if (localObject1 != null)
        {
          int m = ((List)localObject1).size() - 10;
          if (m > 0)
          {
            i = 0;
            if (i >= ((List)localObject1).size() - 1) {
              break label554;
            }
            j = i + 1;
            if (j >= ((List)localObject1).size()) {
              break label545;
            }
            if (((UserInfoBean)((List)localObject1).get(i)).e <= ((UserInfoBean)((List)localObject1).get(j)).e) {
              break label536;
            }
            localObject3 = (UserInfoBean)((List)localObject1).get(i);
            ((List)localObject1).set(i, ((List)localObject1).get(j));
            ((List)localObject1).set(j, localObject3);
            break label536;
            if (i < m)
            {
              ((List)localObject2).add(((List)localObject1).get(i));
              i += 1;
              continue;
            }
          }
          Object localObject3 = ((List)localObject1).iterator();
          i = 0;
          if (((Iterator)localObject3).hasNext())
          {
            UserInfoBean localUserInfoBean = (UserInfoBean)((Iterator)localObject3).next();
            if (localUserInfoBean.f != -1L)
            {
              ((Iterator)localObject3).remove();
              if (localUserInfoBean.e < com.tencent.bugly.proguard.a.o()) {
                ((List)localObject2).add(localUserInfoBean);
              }
            }
            if (localUserInfoBean.e <= System.currentTimeMillis() - 600000L) {
              break label533;
            }
            if (localUserInfoBean.b == 1) {
              break label560;
            }
            if (localUserInfoBean.b != 4) {
              break label533;
            }
            break label560;
          }
          if (i <= 15) {
            break label527;
          }
          w.d("[userinfo] userinfo too many times in 10 min: %d", new Object[] { Integer.valueOf(i) });
          i = 0;
          break label569;
          if (((List)localObject2).size() > 0) {
            a((List)localObject2);
          }
          if ((i != 0) && (localObject1 != null))
          {
            i = ((List)localObject1).size();
            if (i != 0) {
              continue;
            }
          }
        }
        else
        {
          localObject1 = new ArrayList();
          i = 1;
          continue;
        }
        w.c("[userinfo] do userinfo, size: %d", new Object[] { Integer.valueOf(((List)localObject1).size()) });
        if (this.c == 1)
        {
          i = k;
          localObject2 = com.tencent.bugly.proguard.a.a((List)localObject1, i);
          if (localObject2 != null) {
            break label449;
          }
          w.d("[biz] create uPkg fail!", new Object[0]);
          continue;
        }
        i = 2;
      }
      finally {}
      continue;
      Object localObject2 = com.tencent.bugly.proguard.a.a((j)localObject2);
      if (localObject2 == null)
      {
        w.d("[biz] send encode fail!", new Object[0]);
      }
      else
      {
        localObject2 = com.tencent.bugly.proguard.a.a(this.a, 640, (byte[])localObject2);
        if (localObject2 == null)
        {
          w.d("request package is null.", new Object[0]);
        }
        else
        {
          s local1 = new s()
          {
            public final void a(boolean paramAnonymousBoolean)
            {
              if (paramAnonymousBoolean)
              {
                w.c("up success do final", new Object[0]);
                long l = System.currentTimeMillis();
                Iterator localIterator = localList.iterator();
                while (localIterator.hasNext())
                {
                  UserInfoBean localUserInfoBean = (UserInfoBean)localIterator.next();
                  localUserInfoBean.f = l;
                  a.a(a.this, localUserInfoBean);
                }
              }
            }
          };
          t.a().a(1001, (am)localObject2, null, local1);
          continue;
          i = 1;
          break label569;
          break label566;
          j += 1;
          continue;
          i += 1;
          continue;
          i = 0;
          continue;
          i += 1;
        }
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\bugly\crashreport\biz\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
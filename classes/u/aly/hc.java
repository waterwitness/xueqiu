package u.aly;

import android.content.Context;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Build.VERSION;
import com.umeng.analytics.AnalyticsConfig;
import com.umeng.analytics.a;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.net.URLEncoder;
import org.apache.http.HttpEntity;
import org.apache.http.HttpHost;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.entity.InputStreamEntity;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;

public final class hc
{
  hg a;
  private final int b = 1;
  private String c;
  private String d = "10.0.0.172";
  private int e = 80;
  private Context f;
  private gr g;
  
  public hc(Context paramContext)
  {
    this.f = paramContext;
    this.g = gt.b(paramContext);
    this.c = a(paramContext);
  }
  
  private static String a(Context paramContext)
  {
    StringBuffer localStringBuffer1 = new StringBuffer();
    localStringBuffer1.append("Android");
    localStringBuffer1.append("/");
    localStringBuffer1.append("5.2.4");
    localStringBuffer1.append(" ");
    try
    {
      StringBuffer localStringBuffer2 = new StringBuffer();
      localStringBuffer2.append(er.p(paramContext));
      localStringBuffer2.append("/");
      localStringBuffer2.append(er.b(paramContext));
      localStringBuffer2.append(" ");
      localStringBuffer2.append(Build.MODEL);
      localStringBuffer2.append("/");
      localStringBuffer2.append(Build.VERSION.RELEASE);
      localStringBuffer2.append(" ");
      localStringBuffer2.append(ex.a(AnalyticsConfig.getAppkey(paramContext)));
      localStringBuffer1.append(URLEncoder.encode(localStringBuffer2.toString(), "UTF-8"));
      return localStringBuffer1.toString();
    }
    catch (Exception paramContext)
    {
      for (;;)
      {
        paramContext.printStackTrace();
      }
    }
  }
  
  private boolean a()
  {
    if (this.f.getPackageManager().checkPermission("android.permission.ACCESS_NETWORK_STATE", this.f.getPackageName()) != 0) {
      return false;
    }
    try
    {
      Object localObject = ((ConnectivityManager)this.f.getSystemService("connectivity")).getActiveNetworkInfo();
      if ((localObject != null) && (((NetworkInfo)localObject).getType() != 1))
      {
        localObject = ((NetworkInfo)localObject).getExtraInfo();
        if (localObject != null) {
          if ((!((String)localObject).equals("cmwap")) && (!((String)localObject).equals("3gwap")))
          {
            boolean bool = ((String)localObject).equals("uniwap");
            if (!bool) {}
          }
          else
          {
            return true;
          }
        }
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return false;
  }
  
  private byte[] a(byte[] paramArrayOfByte, String paramString)
  {
    Object localObject1 = new HttpPost(paramString);
    Object localObject2 = new BasicHttpParams();
    HttpConnectionParams.setConnectionTimeout((HttpParams)localObject2, 10000);
    HttpConnectionParams.setSoTimeout((HttpParams)localObject2, 30000);
    localObject2 = new DefaultHttpClient((HttpParams)localObject2);
    ((HttpPost)localObject1).addHeader("X-Umeng-Sdk", this.c);
    ((HttpPost)localObject1).addHeader("Msg-Type", "envelope");
    try
    {
      if (a())
      {
        HttpHost localHttpHost = new HttpHost(this.d, this.e);
        ((HttpClient)localObject2).getParams().setParameter("http.route.default-proxy", localHttpHost);
      }
      ((HttpPost)localObject1).setEntity(new InputStreamEntity(new ByteArrayInputStream(paramArrayOfByte), paramArrayOfByte.length));
      if (this.a != null) {
        this.a.e = System.currentTimeMillis();
      }
      paramArrayOfByte = ((HttpClient)localObject2).execute((HttpUriRequest)localObject1);
      if (this.a != null)
      {
        localObject1 = this.a;
        ((hg)localObject1).c = ((int)(System.currentTimeMillis() - ((hg)localObject1).e));
      }
      int i = paramArrayOfByte.getStatusLine().getStatusCode();
      es.a("MobclickAgent", "status code : " + i);
      if (paramArrayOfByte.getStatusLine().getStatusCode() == 200)
      {
        es.a("MobclickAgent", "Sent message to " + paramString);
        paramArrayOfByte = paramArrayOfByte.getEntity();
        if (paramArrayOfByte != null)
        {
          paramArrayOfByte = paramArrayOfByte.getContent();
          try
          {
            paramString = ex.b(paramArrayOfByte);
            return paramString;
          }
          finally
          {
            ex.c(paramArrayOfByte);
          }
        }
      }
      return null;
    }
    catch (ClientProtocolException paramArrayOfByte)
    {
      es.b("MobclickAgent", "ClientProtocolException,Failed to send message.", paramArrayOfByte);
      return null;
      return null;
      return null;
    }
    catch (IOException paramArrayOfByte)
    {
      es.b("MobclickAgent", "IOException,Failed to send message.", paramArrayOfByte);
    }
  }
  
  /* Error */
  private int b(byte[] paramArrayOfByte)
  {
    // Byte code:
    //   0: new 302	u/aly/dg
    //   3: dup
    //   4: invokespecial 303	u/aly/dg:<init>	()V
    //   7: astore_3
    //   8: new 305	u/aly/fe
    //   11: dup
    //   12: new 307	u/aly/fu
    //   15: dup
    //   16: invokespecial 308	u/aly/fu:<init>	()V
    //   19: invokespecial 311	u/aly/fe:<init>	(Lu/aly/gd;)V
    //   22: astore_2
    //   23: aload_2
    //   24: aload_3
    //   25: aload_1
    //   26: invokevirtual 314	u/aly/fe:a	(Lu/aly/fa;[B)V
    //   29: aload_3
    //   30: getfield 316	u/aly/dg:a	I
    //   33: iconst_1
    //   34: if_icmpne +114 -> 148
    //   37: aload_0
    //   38: getfield 38	u/aly/hc:g	Lu/aly/gr;
    //   41: astore 4
    //   43: aload_3
    //   44: getfield 319	u/aly/dg:c	Lu/aly/bn;
    //   47: astore_2
    //   48: aload_2
    //   49: ifnull +49 -> 98
    //   52: aload_2
    //   53: getfield 322	u/aly/bn:c	Ljava/lang/String;
    //   56: aload_2
    //   57: invokestatic 327	u/aly/gr:a	(Lu/aly/bn;)Ljava/lang/String;
    //   60: invokevirtual 150	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   63: ifne +121 -> 184
    //   66: iconst_0
    //   67: istore 9
    //   69: iload 9
    //   71: ifeq +27 -> 98
    //   74: aload 4
    //   76: monitorenter
    //   77: aload 4
    //   79: getfield 329	u/aly/gr:b	Lu/aly/bn;
    //   82: astore_1
    //   83: aload_1
    //   84: ifnonnull +234 -> 318
    //   87: aload_2
    //   88: astore_1
    //   89: aload 4
    //   91: aload_1
    //   92: putfield 329	u/aly/gr:b	Lu/aly/bn;
    //   95: aload 4
    //   97: monitorexit
    //   98: aload_0
    //   99: getfield 38	u/aly/hc:g	Lu/aly/gr;
    //   102: astore_1
    //   103: aload_1
    //   104: getfield 329	u/aly/gr:b	Lu/aly/bn;
    //   107: astore_2
    //   108: aload_2
    //   109: ifnull +39 -> 148
    //   112: new 331	u/aly/fh
    //   115: dup
    //   116: invokespecial 332	u/aly/fh:<init>	()V
    //   119: aload_1
    //   120: getfield 329	u/aly/gr:b	Lu/aly/bn;
    //   123: invokevirtual 335	u/aly/fh:a	(Lu/aly/fa;)[B
    //   126: astore_2
    //   127: new 337	java/io/File
    //   130: dup
    //   131: aload_1
    //   132: getfield 339	u/aly/gr:c	Landroid/content/Context;
    //   135: invokevirtual 343	android/content/Context:getFilesDir	()Ljava/io/File;
    //   138: ldc_w 345
    //   141: invokespecial 348	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   144: aload_2
    //   145: invokestatic 351	u/aly/ex:a	(Ljava/io/File;[B)V
    //   148: ldc_w 258
    //   151: new 260	java/lang/StringBuilder
    //   154: dup
    //   155: ldc_w 353
    //   158: invokespecial 263	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   161: aload_3
    //   162: getfield 355	u/aly/dg:b	Ljava/lang/String;
    //   165: invokevirtual 276	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   168: invokevirtual 267	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   171: invokestatic 271	u/aly/es:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   174: aload_3
    //   175: getfield 316	u/aly/dg:a	I
    //   178: iconst_1
    //   179: if_icmpne +300 -> 479
    //   182: iconst_2
    //   183: ireturn
    //   184: aload_2
    //   185: getfield 358	u/aly/bn:a	Ljava/util/Map;
    //   188: invokeinterface 364 1 0
    //   193: invokeinterface 370 1 0
    //   198: astore_1
    //   199: aload_1
    //   200: invokeinterface 375 1 0
    //   205: ifne +9 -> 214
    //   208: iconst_1
    //   209: istore 9
    //   211: goto -142 -> 69
    //   214: aload_1
    //   215: invokeinterface 379 1 0
    //   220: checkcast 381	u/aly/bt
    //   223: astore 6
    //   225: aload 6
    //   227: getfield 382	u/aly/bt:c	Ljava/lang/String;
    //   230: invokestatic 387	u/aly/fb:a	(Ljava/lang/String;)[B
    //   233: astore 5
    //   235: bipush 8
    //   237: invokestatic 393	java/nio/ByteBuffer:allocate	(I)Ljava/nio/ByteBuffer;
    //   240: astore 7
    //   242: aload 7
    //   244: aconst_null
    //   245: invokevirtual 397	java/nio/ByteBuffer:order	(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;
    //   248: pop
    //   249: aload 7
    //   251: aload 6
    //   253: getfield 399	u/aly/bt:b	J
    //   256: invokevirtual 403	java/nio/ByteBuffer:putLong	(J)Ljava/nio/ByteBuffer;
    //   259: pop
    //   260: aload 7
    //   262: invokevirtual 407	java/nio/ByteBuffer:array	()[B
    //   265: astore 6
    //   267: getstatic 410	u/aly/gr:a	[B
    //   270: astore 7
    //   272: iconst_4
    //   273: newarray <illegal type>
    //   275: astore 8
    //   277: iconst_0
    //   278: istore 9
    //   280: goto +201 -> 481
    //   283: aload 8
    //   285: iload 9
    //   287: aload 6
    //   289: iload 9
    //   291: baload
    //   292: aload 7
    //   294: iload 9
    //   296: baload
    //   297: ixor
    //   298: i2b
    //   299: bastore
    //   300: iload 9
    //   302: iconst_1
    //   303: iadd
    //   304: istore 9
    //   306: goto +175 -> 481
    //   309: iload 9
    //   311: iconst_1
    //   312: iadd
    //   313: istore 9
    //   315: goto +175 -> 490
    //   318: aload_2
    //   319: ifnonnull +6 -> 325
    //   322: goto -233 -> 89
    //   325: aload_1
    //   326: getfield 358	u/aly/bn:a	Ljava/util/Map;
    //   329: astore 5
    //   331: aload_2
    //   332: getfield 358	u/aly/bn:a	Ljava/util/Map;
    //   335: invokeinterface 414 1 0
    //   340: invokeinterface 417 1 0
    //   345: astore 6
    //   347: aload 6
    //   349: invokeinterface 375 1 0
    //   354: ifne +26 -> 380
    //   357: aload_1
    //   358: aload_2
    //   359: getfield 418	u/aly/bn:b	I
    //   362: putfield 418	u/aly/bn:b	I
    //   365: aload_1
    //   366: invokevirtual 420	u/aly/bn:a	()V
    //   369: aload_1
    //   370: aload_1
    //   371: invokestatic 327	u/aly/gr:a	(Lu/aly/bn;)Ljava/lang/String;
    //   374: putfield 322	u/aly/bn:c	Ljava/lang/String;
    //   377: goto -288 -> 89
    //   380: aload 6
    //   382: invokeinterface 379 1 0
    //   387: checkcast 422	java/util/Map$Entry
    //   390: astore 7
    //   392: aload 7
    //   394: invokeinterface 425 1 0
    //   399: checkcast 381	u/aly/bt
    //   402: invokevirtual 426	u/aly/bt:a	()Z
    //   405: ifeq +48 -> 453
    //   408: aload 5
    //   410: aload 7
    //   412: invokeinterface 429 1 0
    //   417: checkcast 146	java/lang/String
    //   420: aload 7
    //   422: invokeinterface 425 1 0
    //   427: checkcast 381	u/aly/bt
    //   430: invokeinterface 433 3 0
    //   435: pop
    //   436: goto -89 -> 347
    //   439: astore_1
    //   440: aload 4
    //   442: monitorexit
    //   443: aload_1
    //   444: athrow
    //   445: astore_1
    //   446: aload_1
    //   447: invokevirtual 103	java/lang/Exception:printStackTrace	()V
    //   450: goto -276 -> 174
    //   453: aload 5
    //   455: aload 7
    //   457: invokeinterface 429 1 0
    //   462: invokeinterface 437 2 0
    //   467: pop
    //   468: goto -121 -> 347
    //   471: astore_1
    //   472: aload_1
    //   473: invokevirtual 103	java/lang/Exception:printStackTrace	()V
    //   476: goto -328 -> 148
    //   479: iconst_3
    //   480: ireturn
    //   481: iload 9
    //   483: iconst_4
    //   484: if_icmplt -201 -> 283
    //   487: iconst_0
    //   488: istore 9
    //   490: iload 9
    //   492: iconst_4
    //   493: if_icmpge -294 -> 199
    //   496: aload 5
    //   498: iload 9
    //   500: baload
    //   501: aload 8
    //   503: iload 9
    //   505: baload
    //   506: if_icmpeq -197 -> 309
    //   509: iconst_0
    //   510: istore 9
    //   512: goto -443 -> 69
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	515	0	this	hc
    //   0	515	1	paramArrayOfByte	byte[]
    //   22	337	2	localObject1	Object
    //   7	168	3	localdg	dg
    //   41	400	4	localgr	gr
    //   233	264	5	localObject2	Object
    //   223	158	6	localObject3	Object
    //   240	216	7	localObject4	Object
    //   275	227	8	arrayOfByte	byte[]
    //   67	444	9	i	int
    // Exception table:
    //   from	to	target	type
    //   77	83	439	finally
    //   89	98	439	finally
    //   325	347	439	finally
    //   347	377	439	finally
    //   380	436	439	finally
    //   440	443	439	finally
    //   453	468	439	finally
    //   23	48	445	java/lang/Exception
    //   52	66	445	java/lang/Exception
    //   74	77	445	java/lang/Exception
    //   98	108	445	java/lang/Exception
    //   148	174	445	java/lang/Exception
    //   184	199	445	java/lang/Exception
    //   199	208	445	java/lang/Exception
    //   214	277	445	java/lang/Exception
    //   443	445	445	java/lang/Exception
    //   472	476	445	java/lang/Exception
    //   112	148	471	java/lang/Exception
  }
  
  public final int a(byte[] paramArrayOfByte)
  {
    byte[] arrayOfByte = null;
    int i = 0;
    for (;;)
    {
      if (i >= a.f.length) {
        paramArrayOfByte = arrayOfByte;
      }
      for (;;)
      {
        if (paramArrayOfByte != null) {
          break label106;
        }
        return 1;
        arrayOfByte = a(paramArrayOfByte, a.f[i]);
        if (arrayOfByte == null) {
          break;
        }
        paramArrayOfByte = arrayOfByte;
        if (this.a != null)
        {
          paramArrayOfByte = this.a;
          paramArrayOfByte.a += 1;
          paramArrayOfByte.d = paramArrayOfByte.e;
          paramArrayOfByte = arrayOfByte;
        }
      }
      if (this.a != null)
      {
        hg localhg = this.a;
        localhg.b += 1;
      }
      i += 1;
    }
    label106:
    return b(paramArrayOfByte);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\u\aly\hc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
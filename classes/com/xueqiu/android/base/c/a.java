package com.xueqiu.android.base.c;

import android.content.Context;
import com.xueqiu.android.base.util.au;
import java.lang.reflect.Method;
import java.util.ArrayList;

public final class a
{
  public static final String[] b = { "Unknown", "GPRS", "EDGE", "UMTS", "CDMA", "EVDO rev. 0", "EVDO rev. A", "1xRTT", "HSDPA", "HSUPA", "HSPA", "iDen", "EVDO rev. B", "LTE", "eHRPD", "HSPA+" };
  public Context a;
  
  public a(Context paramContext)
  {
    this.a = paramContext;
  }
  
  public static String a()
  {
    for (;;)
    {
      int i;
      try
      {
        Object localObject = Class.forName("android.os.SystemProperties").getMethod("get", new Class[] { String.class });
        ArrayList localArrayList = new ArrayList();
        i = 0;
        if (i < 4)
        {
          String str = (String)((Method)localObject).invoke(null, new Object[] { new String[] { "net.dns1", "net.dns2", "net.dns3", "net.dns4" }[i] });
          if ((str != null) && (!"".equals(str)) && (!localArrayList.contains(str))) {
            localArrayList.add(str);
          }
        }
        else
        {
          localObject = au.a((String[])localArrayList.toArray(new String[localArrayList.size()]), ",");
          return (String)localObject;
        }
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        return "";
      }
      i += 1;
    }
  }
  
  /* Error */
  public static String a(String paramString, int paramInt)
  {
    // Byte code:
    //   0: invokestatic 127	android/os/SystemClock:uptimeMillis	()J
    //   3: lstore 5
    //   5: new 129	java/net/Socket
    //   8: dup
    //   9: invokespecial 130	java/net/Socket:<init>	()V
    //   12: astore_3
    //   13: aload_3
    //   14: astore_2
    //   15: aload_3
    //   16: new 132	java/net/InetSocketAddress
    //   19: dup
    //   20: aload_0
    //   21: iload_1
    //   22: invokespecial 135	java/net/InetSocketAddress:<init>	(Ljava/lang/String;I)V
    //   25: sipush 2000
    //   28: invokevirtual 139	java/net/Socket:connect	(Ljava/net/SocketAddress;I)V
    //   31: aload_3
    //   32: astore_2
    //   33: ldc -115
    //   35: iconst_3
    //   36: anewarray 4	java/lang/Object
    //   39: dup
    //   40: iconst_0
    //   41: aload_3
    //   42: invokevirtual 145	java/net/Socket:getInetAddress	()Ljava/net/InetAddress;
    //   45: aastore
    //   46: dup
    //   47: iconst_1
    //   48: iload_1
    //   49: invokestatic 151	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   52: aastore
    //   53: dup
    //   54: iconst_2
    //   55: invokestatic 127	android/os/SystemClock:uptimeMillis	()J
    //   58: lload 5
    //   60: lsub
    //   61: invokestatic 156	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   64: aastore
    //   65: invokestatic 160	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   68: astore 4
    //   70: aload_3
    //   71: invokevirtual 164	java/net/Socket:isConnected	()Z
    //   74: ifeq +7 -> 81
    //   77: aload_3
    //   78: invokevirtual 167	java/net/Socket:close	()V
    //   81: aload 4
    //   83: areturn
    //   84: astore_0
    //   85: aload_0
    //   86: invokevirtual 168	java/io/IOException:printStackTrace	()V
    //   89: aload 4
    //   91: areturn
    //   92: astore 4
    //   94: aconst_null
    //   95: astore_3
    //   96: aload_3
    //   97: astore_2
    //   98: aload 4
    //   100: invokevirtual 168	java/io/IOException:printStackTrace	()V
    //   103: aload_3
    //   104: ifnull +14 -> 118
    //   107: aload_3
    //   108: invokevirtual 164	java/net/Socket:isConnected	()Z
    //   111: ifeq +7 -> 118
    //   114: aload_3
    //   115: invokevirtual 167	java/net/Socket:close	()V
    //   118: ldc -86
    //   120: iconst_2
    //   121: anewarray 4	java/lang/Object
    //   124: dup
    //   125: iconst_0
    //   126: aload_0
    //   127: aastore
    //   128: dup
    //   129: iconst_1
    //   130: iload_1
    //   131: invokestatic 151	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   134: aastore
    //   135: invokestatic 160	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   138: areturn
    //   139: astore_2
    //   140: aload_2
    //   141: invokevirtual 168	java/io/IOException:printStackTrace	()V
    //   144: goto -26 -> 118
    //   147: astore_0
    //   148: aconst_null
    //   149: astore_2
    //   150: aload_2
    //   151: ifnull +14 -> 165
    //   154: aload_2
    //   155: invokevirtual 164	java/net/Socket:isConnected	()Z
    //   158: ifeq +7 -> 165
    //   161: aload_2
    //   162: invokevirtual 167	java/net/Socket:close	()V
    //   165: aload_0
    //   166: athrow
    //   167: astore_2
    //   168: aload_2
    //   169: invokevirtual 168	java/io/IOException:printStackTrace	()V
    //   172: goto -7 -> 165
    //   175: astore_0
    //   176: goto -26 -> 150
    //   179: astore 4
    //   181: goto -85 -> 96
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	184	0	paramString	String
    //   0	184	1	paramInt	int
    //   14	84	2	localSocket1	java.net.Socket
    //   139	2	2	localIOException1	java.io.IOException
    //   149	13	2	localObject	Object
    //   167	2	2	localIOException2	java.io.IOException
    //   12	103	3	localSocket2	java.net.Socket
    //   68	22	4	str	String
    //   92	7	4	localIOException3	java.io.IOException
    //   179	1	4	localIOException4	java.io.IOException
    //   3	56	5	l	long
    // Exception table:
    //   from	to	target	type
    //   77	81	84	java/io/IOException
    //   0	13	92	java/io/IOException
    //   114	118	139	java/io/IOException
    //   0	13	147	finally
    //   161	165	167	java/io/IOException
    //   15	31	175	finally
    //   33	70	175	finally
    //   98	103	175	finally
    //   15	31	179	java/io/IOException
    //   33	70	179	java/io/IOException
  }
  
  /* Error */
  public static String b()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: aconst_null
    //   3: astore 4
    //   5: aconst_null
    //   6: astore_1
    //   7: aconst_null
    //   8: astore_2
    //   9: new 176	java/io/BufferedReader
    //   12: dup
    //   13: new 178	java/io/InputStreamReader
    //   16: dup
    //   17: new 180	java/net/URL
    //   20: dup
    //   21: ldc -74
    //   23: invokespecial 185	java/net/URL:<init>	(Ljava/lang/String;)V
    //   26: invokevirtual 189	java/net/URL:openStream	()Ljava/io/InputStream;
    //   29: ldc -65
    //   31: invokespecial 194	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;Ljava/lang/String;)V
    //   34: invokespecial 197	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   37: astore_0
    //   38: aload_0
    //   39: astore_1
    //   40: new 199	java/lang/StringBuilder
    //   43: dup
    //   44: invokespecial 200	java/lang/StringBuilder:<init>	()V
    //   47: astore_2
    //   48: aload_0
    //   49: astore_1
    //   50: aload_0
    //   51: invokevirtual 203	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   54: astore_3
    //   55: aload_3
    //   56: ifnull +32 -> 88
    //   59: aload_0
    //   60: astore_1
    //   61: aload_2
    //   62: aload_3
    //   63: invokevirtual 207	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   66: pop
    //   67: goto -19 -> 48
    //   70: astore_2
    //   71: aload_0
    //   72: astore_1
    //   73: aload_2
    //   74: invokevirtual 208	java/net/MalformedURLException:printStackTrace	()V
    //   77: aload_0
    //   78: ifnull +7 -> 85
    //   81: aload_0
    //   82: invokevirtual 209	java/io/BufferedReader:close	()V
    //   85: ldc -45
    //   87: areturn
    //   88: aload_0
    //   89: astore_1
    //   90: aload_2
    //   91: invokevirtual 214	java/lang/StringBuilder:length	()I
    //   94: ifle +23 -> 117
    //   97: aload_0
    //   98: astore_1
    //   99: aload_2
    //   100: invokevirtual 217	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   103: astore_2
    //   104: aload_0
    //   105: invokevirtual 209	java/io/BufferedReader:close	()V
    //   108: aload_2
    //   109: areturn
    //   110: astore_0
    //   111: aload_0
    //   112: invokevirtual 168	java/io/IOException:printStackTrace	()V
    //   115: aload_2
    //   116: areturn
    //   117: aload_0
    //   118: invokevirtual 209	java/io/BufferedReader:close	()V
    //   121: ldc 89
    //   123: areturn
    //   124: astore_0
    //   125: aload_0
    //   126: invokevirtual 168	java/io/IOException:printStackTrace	()V
    //   129: ldc 89
    //   131: areturn
    //   132: astore_0
    //   133: aload_0
    //   134: invokevirtual 168	java/io/IOException:printStackTrace	()V
    //   137: goto -52 -> 85
    //   140: astore_1
    //   141: aload_2
    //   142: astore_0
    //   143: aload_1
    //   144: astore_2
    //   145: aload_0
    //   146: astore_1
    //   147: aload_2
    //   148: invokevirtual 218	java/io/UnsupportedEncodingException:printStackTrace	()V
    //   151: aload_0
    //   152: ifnull -67 -> 85
    //   155: aload_0
    //   156: invokevirtual 209	java/io/BufferedReader:close	()V
    //   159: goto -74 -> 85
    //   162: astore_0
    //   163: aload_0
    //   164: invokevirtual 168	java/io/IOException:printStackTrace	()V
    //   167: goto -82 -> 85
    //   170: astore_2
    //   171: aload_3
    //   172: astore_0
    //   173: aload_0
    //   174: astore_1
    //   175: aload_2
    //   176: invokevirtual 168	java/io/IOException:printStackTrace	()V
    //   179: aload_0
    //   180: ifnull -95 -> 85
    //   183: aload_0
    //   184: invokevirtual 209	java/io/BufferedReader:close	()V
    //   187: goto -102 -> 85
    //   190: astore_0
    //   191: aload_0
    //   192: invokevirtual 168	java/io/IOException:printStackTrace	()V
    //   195: goto -110 -> 85
    //   198: astore_2
    //   199: aload 4
    //   201: astore_0
    //   202: aload_0
    //   203: astore_1
    //   204: aload_2
    //   205: invokevirtual 118	java/lang/Exception:printStackTrace	()V
    //   208: aload_0
    //   209: ifnull -124 -> 85
    //   212: aload_0
    //   213: invokevirtual 209	java/io/BufferedReader:close	()V
    //   216: goto -131 -> 85
    //   219: astore_0
    //   220: aload_0
    //   221: invokevirtual 168	java/io/IOException:printStackTrace	()V
    //   224: goto -139 -> 85
    //   227: astore_0
    //   228: aload_1
    //   229: ifnull +7 -> 236
    //   232: aload_1
    //   233: invokevirtual 209	java/io/BufferedReader:close	()V
    //   236: aload_0
    //   237: athrow
    //   238: astore_1
    //   239: aload_1
    //   240: invokevirtual 168	java/io/IOException:printStackTrace	()V
    //   243: goto -7 -> 236
    //   246: astore_0
    //   247: goto -19 -> 228
    //   250: astore_2
    //   251: goto -49 -> 202
    //   254: astore_2
    //   255: goto -82 -> 173
    //   258: astore_2
    //   259: goto -114 -> 145
    //   262: astore_2
    //   263: aconst_null
    //   264: astore_0
    //   265: goto -194 -> 71
    // Local variable table:
    //   start	length	slot	name	signature
    //   37	68	0	localBufferedReader	java.io.BufferedReader
    //   110	8	0	localIOException1	java.io.IOException
    //   124	2	0	localIOException2	java.io.IOException
    //   132	2	0	localIOException3	java.io.IOException
    //   142	14	0	localObject1	Object
    //   162	2	0	localIOException4	java.io.IOException
    //   172	12	0	str1	String
    //   190	2	0	localIOException5	java.io.IOException
    //   201	12	0	localObject2	Object
    //   219	2	0	localIOException6	java.io.IOException
    //   227	10	0	localObject3	Object
    //   246	1	0	localObject4	Object
    //   264	1	0	localObject5	Object
    //   6	93	1	localObject6	Object
    //   140	4	1	localUnsupportedEncodingException1	java.io.UnsupportedEncodingException
    //   146	87	1	localObject7	Object
    //   238	2	1	localIOException7	java.io.IOException
    //   8	54	2	localStringBuilder	StringBuilder
    //   70	30	2	localMalformedURLException1	java.net.MalformedURLException
    //   103	45	2	localObject8	Object
    //   170	6	2	localIOException8	java.io.IOException
    //   198	7	2	localException1	Exception
    //   250	1	2	localException2	Exception
    //   254	1	2	localIOException9	java.io.IOException
    //   258	1	2	localUnsupportedEncodingException2	java.io.UnsupportedEncodingException
    //   262	1	2	localMalformedURLException2	java.net.MalformedURLException
    //   1	171	3	str2	String
    //   3	197	4	localObject9	Object
    // Exception table:
    //   from	to	target	type
    //   40	48	70	java/net/MalformedURLException
    //   50	55	70	java/net/MalformedURLException
    //   61	67	70	java/net/MalformedURLException
    //   90	97	70	java/net/MalformedURLException
    //   99	104	70	java/net/MalformedURLException
    //   104	108	110	java/io/IOException
    //   117	121	124	java/io/IOException
    //   81	85	132	java/io/IOException
    //   9	38	140	java/io/UnsupportedEncodingException
    //   155	159	162	java/io/IOException
    //   9	38	170	java/io/IOException
    //   183	187	190	java/io/IOException
    //   9	38	198	java/lang/Exception
    //   212	216	219	java/io/IOException
    //   9	38	227	finally
    //   147	151	227	finally
    //   175	179	227	finally
    //   204	208	227	finally
    //   232	236	238	java/io/IOException
    //   40	48	246	finally
    //   50	55	246	finally
    //   61	67	246	finally
    //   73	77	246	finally
    //   90	97	246	finally
    //   99	104	246	finally
    //   40	48	250	java/lang/Exception
    //   50	55	250	java/lang/Exception
    //   61	67	250	java/lang/Exception
    //   90	97	250	java/lang/Exception
    //   99	104	250	java/lang/Exception
    //   40	48	254	java/io/IOException
    //   50	55	254	java/io/IOException
    //   61	67	254	java/io/IOException
    //   90	97	254	java/io/IOException
    //   99	104	254	java/io/IOException
    //   40	48	258	java/io/UnsupportedEncodingException
    //   50	55	258	java/io/UnsupportedEncodingException
    //   61	67	258	java/io/UnsupportedEncodingException
    //   90	97	258	java/io/UnsupportedEncodingException
    //   99	104	258	java/io/UnsupportedEncodingException
    //   9	38	262	java/net/MalformedURLException
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\base\c\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
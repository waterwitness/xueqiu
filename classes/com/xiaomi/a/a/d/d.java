package com.xiaomi.a.a.d;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Log;
import com.xiaomi.a.a.f.c;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.Proxy.Type;
import java.net.URL;
import java.net.URLEncoder;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.regex.Pattern;

public final class d
{
  public static final Pattern a = Pattern.compile("([^\\s;]+)(.*)");
  public static final Pattern b = Pattern.compile("(.*?charset\\s*=[^a-zA-Z0-9]*)([-a-zA-Z0-9]+)(.*)", 2);
  public static final Pattern c = Pattern.compile("(\\<\\?xml\\s+.*?encoding\\s*=[^a-zA-Z0-9]*)([-a-zA-Z0-9]+)(.*)", 2);
  
  /* Error */
  private static b a(Context paramContext, String paramString1, String paramString2, String paramString3)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore 10
    //   3: aconst_null
    //   4: astore 7
    //   6: aconst_null
    //   7: astore 6
    //   9: aconst_null
    //   10: astore 5
    //   12: aconst_null
    //   13: astore 4
    //   15: new 39	com/xiaomi/a/a/d/b
    //   18: dup
    //   19: invokespecial 42	com/xiaomi/a/a/d/b:<init>	()V
    //   22: astore 8
    //   24: aload_0
    //   25: new 44	java/net/URL
    //   28: dup
    //   29: aload_1
    //   30: invokespecial 47	java/net/URL:<init>	(Ljava/lang/String;)V
    //   33: invokestatic 50	com/xiaomi/a/a/d/d:c	(Landroid/content/Context;Ljava/net/URL;)Ljava/net/HttpURLConnection;
    //   36: astore 9
    //   38: aload 9
    //   40: sipush 10000
    //   43: invokevirtual 56	java/net/HttpURLConnection:setConnectTimeout	(I)V
    //   46: aload 9
    //   48: sipush 15000
    //   51: invokevirtual 59	java/net/HttpURLConnection:setReadTimeout	(I)V
    //   54: aload 9
    //   56: aload_2
    //   57: invokevirtual 62	java/net/HttpURLConnection:setRequestMethod	(Ljava/lang/String;)V
    //   60: aload_3
    //   61: invokestatic 68	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   64: ifne +51 -> 115
    //   67: aload 9
    //   69: iconst_1
    //   70: invokevirtual 72	java/net/HttpURLConnection:setDoOutput	(Z)V
    //   73: aload_3
    //   74: invokevirtual 78	java/lang/String:getBytes	()[B
    //   77: astore_3
    //   78: aload 9
    //   80: invokevirtual 82	java/net/HttpURLConnection:getOutputStream	()Ljava/io/OutputStream;
    //   83: astore_0
    //   84: aload 7
    //   86: astore_1
    //   87: aload_0
    //   88: astore_2
    //   89: aload_0
    //   90: aload_3
    //   91: iconst_0
    //   92: aload_3
    //   93: arraylength
    //   94: invokevirtual 88	java/io/OutputStream:write	([BII)V
    //   97: aload 7
    //   99: astore_1
    //   100: aload_0
    //   101: astore_2
    //   102: aload_0
    //   103: invokevirtual 91	java/io/OutputStream:flush	()V
    //   106: aload 7
    //   108: astore_1
    //   109: aload_0
    //   110: astore_2
    //   111: aload_0
    //   112: invokevirtual 94	java/io/OutputStream:close	()V
    //   115: aload 8
    //   117: aload 9
    //   119: invokevirtual 98	java/net/HttpURLConnection:getResponseCode	()I
    //   122: putfield 101	com/xiaomi/a/a/d/b:a	I
    //   125: ldc 103
    //   127: new 105	java/lang/StringBuilder
    //   130: dup
    //   131: ldc 107
    //   133: invokespecial 108	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   136: aload 8
    //   138: getfield 101	com/xiaomi/a/a/d/b:a	I
    //   141: invokevirtual 112	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   144: invokevirtual 116	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   147: invokestatic 122	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   150: pop
    //   151: aload 9
    //   153: iload 10
    //   155: invokevirtual 126	java/net/HttpURLConnection:getHeaderFieldKey	(I)Ljava/lang/String;
    //   158: astore_0
    //   159: aload 9
    //   161: iload 10
    //   163: invokevirtual 129	java/net/HttpURLConnection:getHeaderField	(I)Ljava/lang/String;
    //   166: astore_1
    //   167: aload_0
    //   168: ifnonnull +7 -> 175
    //   171: aload_1
    //   172: ifnull +27 -> 199
    //   175: aload 8
    //   177: getfield 132	com/xiaomi/a/a/d/b:b	Ljava/util/Map;
    //   180: aload_0
    //   181: aload_1
    //   182: invokeinterface 138 3 0
    //   187: pop
    //   188: iload 10
    //   190: iconst_1
    //   191: iadd
    //   192: iconst_1
    //   193: iadd
    //   194: istore 10
    //   196: goto -45 -> 151
    //   199: new 140	java/io/BufferedReader
    //   202: dup
    //   203: new 142	java/io/InputStreamReader
    //   206: dup
    //   207: new 144	com/xiaomi/a/a/d/e
    //   210: dup
    //   211: aload 9
    //   213: invokevirtual 148	java/net/HttpURLConnection:getInputStream	()Ljava/io/InputStream;
    //   216: invokespecial 151	com/xiaomi/a/a/d/e:<init>	(Ljava/io/InputStream;)V
    //   219: invokespecial 152	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   222: invokespecial 155	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   225: astore_0
    //   226: aload_0
    //   227: invokevirtual 158	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   230: astore_1
    //   231: new 160	java/lang/StringBuffer
    //   234: dup
    //   235: invokespecial 161	java/lang/StringBuffer:<init>	()V
    //   238: astore_2
    //   239: ldc -93
    //   241: invokestatic 169	java/lang/System:getProperty	(Ljava/lang/String;)Ljava/lang/String;
    //   244: astore_3
    //   245: aload_1
    //   246: ifnull +83 -> 329
    //   249: aload_2
    //   250: aload_1
    //   251: invokevirtual 172	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   254: pop
    //   255: aload_2
    //   256: aload_3
    //   257: invokevirtual 172	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   260: pop
    //   261: aload_0
    //   262: invokevirtual 158	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   265: astore_1
    //   266: goto -21 -> 245
    //   269: astore_0
    //   270: new 140	java/io/BufferedReader
    //   273: dup
    //   274: new 142	java/io/InputStreamReader
    //   277: dup
    //   278: new 144	com/xiaomi/a/a/d/e
    //   281: dup
    //   282: aload 9
    //   284: invokevirtual 175	java/net/HttpURLConnection:getErrorStream	()Ljava/io/InputStream;
    //   287: invokespecial 151	com/xiaomi/a/a/d/e:<init>	(Ljava/io/InputStream;)V
    //   290: invokespecial 152	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   293: invokespecial 155	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   296: astore_0
    //   297: goto -71 -> 226
    //   300: astore_3
    //   301: aconst_null
    //   302: astore_0
    //   303: aload 4
    //   305: astore_1
    //   306: aload_0
    //   307: astore_2
    //   308: aload_3
    //   309: athrow
    //   310: astore_0
    //   311: aload_2
    //   312: ifnull +7 -> 319
    //   315: aload_2
    //   316: invokevirtual 94	java/io/OutputStream:close	()V
    //   319: aload_1
    //   320: ifnull +7 -> 327
    //   323: aload_1
    //   324: invokevirtual 176	java/io/BufferedReader:close	()V
    //   327: aload_0
    //   328: athrow
    //   329: aload 8
    //   331: aload_2
    //   332: invokevirtual 177	java/lang/StringBuffer:toString	()Ljava/lang/String;
    //   335: putfield 180	com/xiaomi/a/a/d/b:c	Ljava/lang/String;
    //   338: aload_0
    //   339: invokevirtual 176	java/io/BufferedReader:close	()V
    //   342: aload 8
    //   344: areturn
    //   345: astore_3
    //   346: aconst_null
    //   347: astore_0
    //   348: aload 5
    //   350: astore_1
    //   351: aload_0
    //   352: astore_2
    //   353: new 35	java/io/IOException
    //   356: dup
    //   357: aload_3
    //   358: invokevirtual 183	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   361: invokespecial 184	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   364: athrow
    //   365: astore_1
    //   366: ldc 103
    //   368: ldc -70
    //   370: aload_1
    //   371: invokestatic 190	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   374: pop
    //   375: goto -48 -> 327
    //   378: astore_0
    //   379: aconst_null
    //   380: astore_2
    //   381: aload 6
    //   383: astore_1
    //   384: goto -73 -> 311
    //   387: astore_3
    //   388: aconst_null
    //   389: astore_2
    //   390: aload_0
    //   391: astore_1
    //   392: aload_3
    //   393: astore_0
    //   394: goto -83 -> 311
    //   397: astore_3
    //   398: aload 5
    //   400: astore_1
    //   401: goto -50 -> 351
    //   404: astore_3
    //   405: aconst_null
    //   406: astore_2
    //   407: aload_0
    //   408: astore_1
    //   409: aload_2
    //   410: astore_0
    //   411: goto -60 -> 351
    //   414: astore_3
    //   415: aload 4
    //   417: astore_1
    //   418: goto -112 -> 306
    //   421: astore_3
    //   422: aconst_null
    //   423: astore_2
    //   424: aload_0
    //   425: astore_1
    //   426: aload_2
    //   427: astore_0
    //   428: goto -122 -> 306
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	431	0	paramContext	Context
    //   0	431	1	paramString1	String
    //   0	431	2	paramString2	String
    //   0	431	3	paramString3	String
    //   13	403	4	localObject1	Object
    //   10	389	5	localObject2	Object
    //   7	375	6	localObject3	Object
    //   4	103	7	localObject4	Object
    //   22	321	8	localb	b
    //   36	247	9	localHttpURLConnection	HttpURLConnection
    //   1	194	10	i	int
    // Exception table:
    //   from	to	target	type
    //   199	226	269	java/io/IOException
    //   24	84	300	java/io/IOException
    //   115	151	300	java/io/IOException
    //   151	167	300	java/io/IOException
    //   175	188	300	java/io/IOException
    //   270	297	300	java/io/IOException
    //   89	97	310	finally
    //   102	106	310	finally
    //   111	115	310	finally
    //   308	310	310	finally
    //   353	365	310	finally
    //   24	84	345	java/lang/Throwable
    //   115	151	345	java/lang/Throwable
    //   151	167	345	java/lang/Throwable
    //   175	188	345	java/lang/Throwable
    //   199	226	345	java/lang/Throwable
    //   270	297	345	java/lang/Throwable
    //   315	319	365	java/io/IOException
    //   323	327	365	java/io/IOException
    //   24	84	378	finally
    //   115	151	378	finally
    //   151	167	378	finally
    //   175	188	378	finally
    //   199	226	378	finally
    //   270	297	378	finally
    //   226	245	387	finally
    //   249	266	387	finally
    //   329	342	387	finally
    //   89	97	397	java/lang/Throwable
    //   102	106	397	java/lang/Throwable
    //   111	115	397	java/lang/Throwable
    //   226	245	404	java/lang/Throwable
    //   249	266	404	java/lang/Throwable
    //   329	342	404	java/lang/Throwable
    //   89	97	414	java/io/IOException
    //   102	106	414	java/io/IOException
    //   111	115	414	java/io/IOException
    //   226	245	421	java/io/IOException
    //   249	266	421	java/io/IOException
    //   329	342	421	java/io/IOException
  }
  
  public static b a(Context paramContext, String paramString, Map<String, String> paramMap)
  {
    return a(paramContext, paramString, "POST", a(paramMap));
  }
  
  public static String a(Context paramContext, URL paramURL)
  {
    return a(paramContext, paramURL, "UTF-8");
  }
  
  private static String a(Context paramContext, URL paramURL, String paramString)
  {
    localContext = null;
    try
    {
      paramContext = b(paramContext, paramURL);
      localContext = paramContext;
      paramURL = new StringBuilder(1024);
      localContext = paramContext;
      paramString = new BufferedReader(new InputStreamReader(paramContext, paramString));
      localContext = paramContext;
      char[] arrayOfChar = new char['က'];
      for (;;)
      {
        localContext = paramContext;
        int i = paramString.read(arrayOfChar);
        if (-1 == i) {
          break;
        }
        localContext = paramContext;
        paramURL.append(arrayOfChar, 0, i);
      }
      try
      {
        localContext.close();
        throw paramContext;
        try
        {
          paramContext.close();
          return paramURL.toString();
        }
        catch (IOException paramContext)
        {
          for (;;)
          {
            Log.e("com.xiaomi.common.Network", "Failed to close responseStream" + paramContext.toString());
          }
        }
      }
      catch (IOException paramURL)
      {
        for (;;)
        {
          Log.e("com.xiaomi.common.Network", "Failed to close responseStream" + paramURL.toString());
        }
      }
    }
    finally
    {
      if (localContext == null) {}
    }
  }
  
  /* Error */
  public static String a(String paramString1, Map<String, String> paramMap, java.io.File paramFile, String paramString2)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: aconst_null
    //   4: astore 7
    //   6: aconst_null
    //   7: astore 8
    //   9: aconst_null
    //   10: astore 6
    //   12: aload_2
    //   13: invokevirtual 239	java/io/File:exists	()Z
    //   16: ifne +5 -> 21
    //   19: aconst_null
    //   20: areturn
    //   21: aload_2
    //   22: invokevirtual 242	java/io/File:getName	()Ljava/lang/String;
    //   25: astore 5
    //   27: new 44	java/net/URL
    //   30: dup
    //   31: aload_0
    //   32: invokespecial 47	java/net/URL:<init>	(Ljava/lang/String;)V
    //   35: invokevirtual 246	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   38: checkcast 52	java/net/HttpURLConnection
    //   41: astore 9
    //   43: aload 9
    //   45: sipush 15000
    //   48: invokevirtual 59	java/net/HttpURLConnection:setReadTimeout	(I)V
    //   51: aload 9
    //   53: sipush 10000
    //   56: invokevirtual 56	java/net/HttpURLConnection:setConnectTimeout	(I)V
    //   59: aload 9
    //   61: iconst_1
    //   62: invokevirtual 249	java/net/HttpURLConnection:setDoInput	(Z)V
    //   65: aload 9
    //   67: iconst_1
    //   68: invokevirtual 72	java/net/HttpURLConnection:setDoOutput	(Z)V
    //   71: aload 9
    //   73: iconst_0
    //   74: invokevirtual 252	java/net/HttpURLConnection:setUseCaches	(Z)V
    //   77: aload 9
    //   79: ldc -62
    //   81: invokevirtual 62	java/net/HttpURLConnection:setRequestMethod	(Ljava/lang/String;)V
    //   84: aload 9
    //   86: ldc -2
    //   88: ldc_w 256
    //   91: invokevirtual 260	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   94: aload 9
    //   96: ldc_w 262
    //   99: ldc_w 264
    //   102: invokevirtual 260	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   105: aload_1
    //   106: invokeinterface 268 1 0
    //   111: invokeinterface 274 1 0
    //   116: astore_0
    //   117: aload_0
    //   118: invokeinterface 279 1 0
    //   123: ifeq +76 -> 199
    //   126: aload_0
    //   127: invokeinterface 283 1 0
    //   132: checkcast 285	java/util/Map$Entry
    //   135: astore_1
    //   136: aload 9
    //   138: aload_1
    //   139: invokeinterface 288 1 0
    //   144: checkcast 74	java/lang/String
    //   147: aload_1
    //   148: invokeinterface 291 1 0
    //   153: checkcast 74	java/lang/String
    //   156: invokevirtual 260	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   159: goto -42 -> 117
    //   162: astore_2
    //   163: aconst_null
    //   164: astore_0
    //   165: aconst_null
    //   166: astore_1
    //   167: aload 6
    //   169: astore_3
    //   170: aload_2
    //   171: athrow
    //   172: astore_2
    //   173: aload_1
    //   174: ifnull +7 -> 181
    //   177: aload_1
    //   178: invokevirtual 294	java/io/FileInputStream:close	()V
    //   181: aload_0
    //   182: ifnull +7 -> 189
    //   185: aload_0
    //   186: invokevirtual 297	java/io/DataOutputStream:close	()V
    //   189: aload_3
    //   190: ifnull +7 -> 197
    //   193: aload_3
    //   194: invokevirtual 176	java/io/BufferedReader:close	()V
    //   197: aload_2
    //   198: athrow
    //   199: aload 9
    //   201: aload 5
    //   203: invokevirtual 300	java/lang/String:length	()I
    //   206: bipush 77
    //   208: iadd
    //   209: aload_2
    //   210: invokevirtual 303	java/io/File:length	()J
    //   213: l2i
    //   214: iadd
    //   215: aload_3
    //   216: invokevirtual 300	java/lang/String:length	()I
    //   219: iadd
    //   220: invokevirtual 306	java/net/HttpURLConnection:setFixedLengthStreamingMode	(I)V
    //   223: new 296	java/io/DataOutputStream
    //   226: dup
    //   227: aload 9
    //   229: invokevirtual 82	java/net/HttpURLConnection:getOutputStream	()Ljava/io/OutputStream;
    //   232: invokespecial 309	java/io/DataOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   235: astore_0
    //   236: aload_0
    //   237: ldc_w 311
    //   240: invokevirtual 314	java/io/DataOutputStream:writeBytes	(Ljava/lang/String;)V
    //   243: aload_0
    //   244: new 105	java/lang/StringBuilder
    //   247: dup
    //   248: ldc_w 316
    //   251: invokespecial 108	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   254: aload_3
    //   255: invokevirtual 230	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   258: ldc_w 318
    //   261: invokevirtual 230	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   264: aload_2
    //   265: invokevirtual 242	java/io/File:getName	()Ljava/lang/String;
    //   268: invokevirtual 230	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   271: ldc_w 320
    //   274: invokevirtual 230	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   277: invokevirtual 116	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   280: invokevirtual 314	java/io/DataOutputStream:writeBytes	(Ljava/lang/String;)V
    //   283: aload_0
    //   284: ldc_w 322
    //   287: invokevirtual 314	java/io/DataOutputStream:writeBytes	(Ljava/lang/String;)V
    //   290: new 293	java/io/FileInputStream
    //   293: dup
    //   294: aload_2
    //   295: invokespecial 325	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   298: astore_1
    //   299: aload_0
    //   300: astore_3
    //   301: aload 8
    //   303: astore 4
    //   305: aload_1
    //   306: astore 5
    //   308: sipush 1024
    //   311: newarray <illegal type>
    //   313: astore_2
    //   314: aload_0
    //   315: astore_3
    //   316: aload 8
    //   318: astore 4
    //   320: aload_1
    //   321: astore 5
    //   323: aload_1
    //   324: aload_2
    //   325: invokevirtual 328	java/io/FileInputStream:read	([B)I
    //   328: istore 11
    //   330: iload 11
    //   332: iconst_m1
    //   333: if_icmpeq +36 -> 369
    //   336: aload_0
    //   337: astore_3
    //   338: aload 8
    //   340: astore 4
    //   342: aload_1
    //   343: astore 5
    //   345: aload_0
    //   346: aload_2
    //   347: iconst_0
    //   348: iload 11
    //   350: invokevirtual 329	java/io/DataOutputStream:write	([BII)V
    //   353: aload_0
    //   354: astore_3
    //   355: aload 8
    //   357: astore 4
    //   359: aload_1
    //   360: astore 5
    //   362: aload_0
    //   363: invokevirtual 330	java/io/DataOutputStream:flush	()V
    //   366: goto -52 -> 314
    //   369: aload_0
    //   370: astore_3
    //   371: aload 8
    //   373: astore 4
    //   375: aload_1
    //   376: astore 5
    //   378: aload_0
    //   379: ldc_w 322
    //   382: invokevirtual 314	java/io/DataOutputStream:writeBytes	(Ljava/lang/String;)V
    //   385: aload_0
    //   386: astore_3
    //   387: aload 8
    //   389: astore 4
    //   391: aload_1
    //   392: astore 5
    //   394: aload_0
    //   395: ldc_w 332
    //   398: invokevirtual 314	java/io/DataOutputStream:writeBytes	(Ljava/lang/String;)V
    //   401: aload_0
    //   402: astore_3
    //   403: aload 8
    //   405: astore 4
    //   407: aload_1
    //   408: astore 5
    //   410: aload_0
    //   411: ldc_w 334
    //   414: invokevirtual 314	java/io/DataOutputStream:writeBytes	(Ljava/lang/String;)V
    //   417: aload_0
    //   418: astore_3
    //   419: aload 8
    //   421: astore 4
    //   423: aload_1
    //   424: astore 5
    //   426: aload_0
    //   427: ldc_w 332
    //   430: invokevirtual 314	java/io/DataOutputStream:writeBytes	(Ljava/lang/String;)V
    //   433: aload_0
    //   434: astore_3
    //   435: aload 8
    //   437: astore 4
    //   439: aload_1
    //   440: astore 5
    //   442: aload_0
    //   443: ldc_w 322
    //   446: invokevirtual 314	java/io/DataOutputStream:writeBytes	(Ljava/lang/String;)V
    //   449: aload_0
    //   450: astore_3
    //   451: aload 8
    //   453: astore 4
    //   455: aload_1
    //   456: astore 5
    //   458: aload_0
    //   459: invokevirtual 330	java/io/DataOutputStream:flush	()V
    //   462: aload_0
    //   463: astore_3
    //   464: aload 8
    //   466: astore 4
    //   468: aload_1
    //   469: astore 5
    //   471: new 160	java/lang/StringBuffer
    //   474: dup
    //   475: invokespecial 161	java/lang/StringBuffer:<init>	()V
    //   478: astore 10
    //   480: aload_0
    //   481: astore_3
    //   482: aload 8
    //   484: astore 4
    //   486: aload_1
    //   487: astore 5
    //   489: new 140	java/io/BufferedReader
    //   492: dup
    //   493: new 142	java/io/InputStreamReader
    //   496: dup
    //   497: new 144	com/xiaomi/a/a/d/e
    //   500: dup
    //   501: aload 9
    //   503: invokevirtual 148	java/net/HttpURLConnection:getInputStream	()Ljava/io/InputStream;
    //   506: invokespecial 151	com/xiaomi/a/a/d/e:<init>	(Ljava/io/InputStream;)V
    //   509: invokespecial 152	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   512: invokespecial 155	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   515: astore_2
    //   516: aload_2
    //   517: invokevirtual 158	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   520: astore_3
    //   521: aload_3
    //   522: ifnull +13 -> 535
    //   525: aload 10
    //   527: aload_3
    //   528: invokevirtual 172	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   531: pop
    //   532: goto -16 -> 516
    //   535: aload 10
    //   537: invokevirtual 177	java/lang/StringBuffer:toString	()Ljava/lang/String;
    //   540: astore_3
    //   541: aload_1
    //   542: invokevirtual 294	java/io/FileInputStream:close	()V
    //   545: aload_0
    //   546: invokevirtual 297	java/io/DataOutputStream:close	()V
    //   549: aload_2
    //   550: invokevirtual 176	java/io/BufferedReader:close	()V
    //   553: aload_3
    //   554: areturn
    //   555: astore_0
    //   556: ldc 103
    //   558: ldc -70
    //   560: aload_0
    //   561: invokestatic 190	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   564: pop
    //   565: aload_3
    //   566: areturn
    //   567: astore_2
    //   568: aconst_null
    //   569: astore_0
    //   570: aconst_null
    //   571: astore_1
    //   572: aload 7
    //   574: astore 4
    //   576: aload_0
    //   577: astore_3
    //   578: aload_1
    //   579: astore 5
    //   581: new 35	java/io/IOException
    //   584: dup
    //   585: aload_2
    //   586: invokevirtual 183	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   589: invokespecial 184	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   592: athrow
    //   593: astore_2
    //   594: aload_3
    //   595: astore_0
    //   596: aload 4
    //   598: astore_3
    //   599: aload 5
    //   601: astore_1
    //   602: goto -429 -> 173
    //   605: astore_0
    //   606: ldc 103
    //   608: ldc -70
    //   610: aload_0
    //   611: invokestatic 190	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   614: pop
    //   615: goto -418 -> 197
    //   618: astore_2
    //   619: aconst_null
    //   620: astore_0
    //   621: aconst_null
    //   622: astore_1
    //   623: aload 4
    //   625: astore_3
    //   626: goto -453 -> 173
    //   629: astore_2
    //   630: aconst_null
    //   631: astore_1
    //   632: aload 4
    //   634: astore_3
    //   635: goto -462 -> 173
    //   638: astore 4
    //   640: aload_2
    //   641: astore_3
    //   642: aload 4
    //   644: astore_2
    //   645: goto -472 -> 173
    //   648: astore_2
    //   649: aconst_null
    //   650: astore_1
    //   651: aload 7
    //   653: astore 4
    //   655: goto -79 -> 576
    //   658: astore_2
    //   659: aload 7
    //   661: astore 4
    //   663: goto -87 -> 576
    //   666: astore_3
    //   667: aload_2
    //   668: astore 4
    //   670: aload_3
    //   671: astore_2
    //   672: goto -96 -> 576
    //   675: astore_2
    //   676: aconst_null
    //   677: astore_1
    //   678: aload 6
    //   680: astore_3
    //   681: goto -511 -> 170
    //   684: astore_2
    //   685: aload 6
    //   687: astore_3
    //   688: goto -518 -> 170
    //   691: astore 4
    //   693: aload_2
    //   694: astore_3
    //   695: aload 4
    //   697: astore_2
    //   698: goto -528 -> 170
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	701	0	paramString1	String
    //   0	701	1	paramMap	Map<String, String>
    //   0	701	2	paramFile	java.io.File
    //   0	701	3	paramString2	String
    //   1	632	4	localObject1	Object
    //   638	5	4	localObject2	Object
    //   653	16	4	localObject3	Object
    //   691	5	4	localIOException	IOException
    //   25	575	5	localObject4	Object
    //   10	676	6	localObject5	Object
    //   4	656	7	localObject6	Object
    //   7	476	8	localObject7	Object
    //   41	461	9	localHttpURLConnection	HttpURLConnection
    //   478	58	10	localStringBuffer	StringBuffer
    //   328	21	11	i	int
    // Exception table:
    //   from	to	target	type
    //   27	117	162	java/io/IOException
    //   117	159	162	java/io/IOException
    //   199	236	162	java/io/IOException
    //   170	172	172	finally
    //   541	553	555	java/io/IOException
    //   27	117	567	java/lang/Throwable
    //   117	159	567	java/lang/Throwable
    //   199	236	567	java/lang/Throwable
    //   308	314	593	finally
    //   323	330	593	finally
    //   345	353	593	finally
    //   362	366	593	finally
    //   378	385	593	finally
    //   394	401	593	finally
    //   410	417	593	finally
    //   426	433	593	finally
    //   442	449	593	finally
    //   458	462	593	finally
    //   471	480	593	finally
    //   489	516	593	finally
    //   581	593	593	finally
    //   177	181	605	java/io/IOException
    //   185	189	605	java/io/IOException
    //   193	197	605	java/io/IOException
    //   27	117	618	finally
    //   117	159	618	finally
    //   199	236	618	finally
    //   236	299	629	finally
    //   516	521	638	finally
    //   525	532	638	finally
    //   535	541	638	finally
    //   236	299	648	java/lang/Throwable
    //   308	314	658	java/lang/Throwable
    //   323	330	658	java/lang/Throwable
    //   345	353	658	java/lang/Throwable
    //   362	366	658	java/lang/Throwable
    //   378	385	658	java/lang/Throwable
    //   394	401	658	java/lang/Throwable
    //   410	417	658	java/lang/Throwable
    //   426	433	658	java/lang/Throwable
    //   442	449	658	java/lang/Throwable
    //   458	462	658	java/lang/Throwable
    //   471	480	658	java/lang/Throwable
    //   489	516	658	java/lang/Throwable
    //   516	521	666	java/lang/Throwable
    //   525	532	666	java/lang/Throwable
    //   535	541	666	java/lang/Throwable
    //   236	299	675	java/io/IOException
    //   308	314	684	java/io/IOException
    //   323	330	684	java/io/IOException
    //   345	353	684	java/io/IOException
    //   362	366	684	java/io/IOException
    //   378	385	684	java/io/IOException
    //   394	401	684	java/io/IOException
    //   410	417	684	java/io/IOException
    //   426	433	684	java/io/IOException
    //   442	449	684	java/io/IOException
    //   458	462	684	java/io/IOException
    //   471	480	684	java/io/IOException
    //   489	516	684	java/io/IOException
    //   516	521	691	java/io/IOException
    //   525	532	691	java/io/IOException
    //   535	541	691	java/io/IOException
  }
  
  private static String a(Map<String, String> paramMap)
  {
    if ((paramMap != null) && (paramMap.size() > 0))
    {
      StringBuffer localStringBuffer = new StringBuffer();
      Iterator localIterator = paramMap.entrySet().iterator();
      while (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        if ((localEntry.getKey() != null) && (localEntry.getValue() != null)) {
          try
          {
            localStringBuffer.append(URLEncoder.encode((String)localEntry.getKey(), "UTF-8"));
            localStringBuffer.append("=");
            localStringBuffer.append(URLEncoder.encode((String)localEntry.getValue(), "UTF-8"));
            localStringBuffer.append("&");
          }
          catch (UnsupportedEncodingException localUnsupportedEncodingException)
          {
            Log.d("com.xiaomi.common.Network", "Failed to convert from params map to string: " + localUnsupportedEncodingException.toString());
            Log.d("com.xiaomi.common.Network", "map: " + paramMap.toString());
            return null;
          }
        }
      }
      if (localUnsupportedEncodingException.length() <= 0) {
        break label207;
      }
    }
    label207:
    for (paramMap = localUnsupportedEncodingException.deleteCharAt(localUnsupportedEncodingException.length() - 1);; paramMap = localUnsupportedEncodingException)
    {
      return paramMap.toString();
      return null;
    }
  }
  
  public static boolean a(Context paramContext)
  {
    return d(paramContext) >= 0;
  }
  
  private static InputStream b(Context paramContext, URL paramURL)
  {
    Object localObject = null;
    if (paramContext == null) {
      throw new IllegalArgumentException("context");
    }
    if (paramURL == null) {
      throw new IllegalArgumentException("url");
    }
    String str = paramURL.toString();
    paramURL = (URL)localObject;
    if (!TextUtils.isEmpty(str))
    {
      new String();
      paramURL = String.format("%s&key=%s", new Object[] { str, c.a(String.format("%sbe988a6134bc8254465424e5a70ef037", new Object[] { str })) });
    }
    paramURL = new URL(paramURL);
    try
    {
      HttpURLConnection.setFollowRedirects(true);
      paramContext = c(paramContext, paramURL);
      paramContext.setConnectTimeout(10000);
      paramContext.setReadTimeout(15000);
      if (!TextUtils.isEmpty(null)) {
        paramContext.setRequestProperty("User-Agent", null);
      }
      paramContext = new e(paramContext.getInputStream());
      return paramContext;
    }
    catch (IOException paramContext)
    {
      throw paramContext;
    }
    catch (Throwable paramContext)
    {
      throw new IOException(paramContext.getMessage());
    }
  }
  
  public static boolean b(Context paramContext)
  {
    try
    {
      paramContext = (ConnectivityManager)paramContext.getSystemService("connectivity");
      if (paramContext == null) {
        return false;
      }
    }
    catch (Exception paramContext)
    {
      return false;
    }
    try
    {
      paramContext = paramContext.getActiveNetworkInfo();
      if (paramContext == null) {
        return false;
      }
    }
    catch (Exception paramContext)
    {
      return false;
    }
    return 1 == paramContext.getType();
  }
  
  public static String c(Context paramContext)
  {
    if (b(paramContext)) {
      return "wifi";
    }
    try
    {
      paramContext = (ConnectivityManager)paramContext.getSystemService("connectivity");
      if (paramContext == null) {
        return "";
      }
    }
    catch (Exception paramContext)
    {
      return "";
    }
    try
    {
      paramContext = paramContext.getActiveNetworkInfo();
      if (paramContext == null) {
        return "";
      }
    }
    catch (Exception paramContext)
    {
      return "";
    }
    return (paramContext.getTypeName() + "-" + paramContext.getSubtypeName() + "-" + paramContext.getExtraInfo()).toLowerCase();
  }
  
  private static HttpURLConnection c(Context paramContext, URL paramURL)
  {
    if (!"http".equals(paramURL.getProtocol())) {
      return (HttpURLConnection)paramURL.openConnection();
    }
    if (f(paramContext)) {
      return (HttpURLConnection)paramURL.openConnection(new Proxy(Proxy.Type.HTTP, new InetSocketAddress("10.0.0.200", 80)));
    }
    if (!e(paramContext)) {
      return (HttpURLConnection)paramURL.openConnection();
    }
    paramContext = paramURL.getHost();
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(paramURL.getProtocol()).append("://10.0.0.172").append(paramURL.getPath());
    if (!TextUtils.isEmpty(paramURL.getQuery())) {
      localStringBuilder.append("?").append(paramURL.getQuery());
    }
    paramURL = (HttpURLConnection)new URL(localStringBuilder.toString()).openConnection();
    paramURL.addRequestProperty("X-Online-Host", paramContext);
    return paramURL;
  }
  
  private static int d(Context paramContext)
  {
    try
    {
      paramContext = (ConnectivityManager)paramContext.getSystemService("connectivity");
      if (paramContext == null) {
        return -1;
      }
    }
    catch (Exception paramContext)
    {
      return -1;
    }
    try
    {
      paramContext = paramContext.getActiveNetworkInfo();
      if (paramContext == null) {
        return -1;
      }
    }
    catch (Exception paramContext)
    {
      return -1;
    }
    return paramContext.getType();
  }
  
  private static boolean e(Context paramContext)
  {
    if (!"CN".equalsIgnoreCase(((TelephonyManager)paramContext.getSystemService("phone")).getSimCountryIso())) {}
    for (;;)
    {
      return false;
      try
      {
        paramContext = (ConnectivityManager)paramContext.getSystemService("connectivity");
        if (paramContext == null) {
          continue;
        }
        try
        {
          paramContext = paramContext.getActiveNetworkInfo();
          if (paramContext == null) {
            continue;
          }
          paramContext = paramContext.getExtraInfo();
          if ((TextUtils.isEmpty(paramContext)) || (paramContext.length() < 3) || (paramContext.contains("ctwap"))) {
            continue;
          }
          return paramContext.regionMatches(true, paramContext.length() - 3, "wap", 0, 3);
        }
        catch (Exception paramContext)
        {
          return false;
        }
        return false;
      }
      catch (Exception paramContext) {}
    }
  }
  
  private static boolean f(Context paramContext)
  {
    if (!"CN".equalsIgnoreCase(((TelephonyManager)paramContext.getSystemService("phone")).getSimCountryIso())) {
      return false;
    }
    try
    {
      paramContext = (ConnectivityManager)paramContext.getSystemService("connectivity");
      if (paramContext == null) {
        return false;
      }
    }
    catch (Exception paramContext)
    {
      return false;
    }
    try
    {
      paramContext = paramContext.getActiveNetworkInfo();
      if (paramContext == null) {
        return false;
      }
    }
    catch (Exception paramContext)
    {
      return false;
    }
    paramContext = paramContext.getExtraInfo();
    if ((TextUtils.isEmpty(paramContext)) || (paramContext.length() < 3)) {
      return false;
    }
    return paramContext.contains("ctwap");
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\a\a\d\d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
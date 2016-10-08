package com.squareup.okhttp.internal;

import c.d;
import com.squareup.okhttp.Protocol;
import java.io.PrintStream;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.net.URI;
import java.net.URL;
import java.util.List;
import javax.net.ssl.SSLSocket;

public class Platform
{
  private static final Platform PLATFORM = ;
  
  static byte[] concatLengthPrefixed(List<Protocol> paramList)
  {
    d locald = new d();
    int j = paramList.size();
    int i = 0;
    while (i < j)
    {
      Protocol localProtocol = (Protocol)paramList.get(i);
      if (localProtocol != Protocol.HTTP_1_0)
      {
        locald.a(localProtocol.toString().length());
        locald.a(localProtocol.toString());
      }
      i += 1;
    }
    return locald.o();
  }
  
  /* Error */
  private static Platform findPlatform()
  {
    // Byte code:
    //   0: ldc 67
    //   2: invokestatic 73	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   5: pop
    //   6: new 75	com/squareup/okhttp/internal/OptionalMethod
    //   9: dup
    //   10: aconst_null
    //   11: ldc 77
    //   13: iconst_1
    //   14: anewarray 69	java/lang/Class
    //   17: dup
    //   18: iconst_0
    //   19: getstatic 83	java/lang/Boolean:TYPE	Ljava/lang/Class;
    //   22: aastore
    //   23: invokespecial 86	com/squareup/okhttp/internal/OptionalMethod:<init>	(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V
    //   26: astore 5
    //   28: new 75	com/squareup/okhttp/internal/OptionalMethod
    //   31: dup
    //   32: aconst_null
    //   33: ldc 88
    //   35: iconst_1
    //   36: anewarray 69	java/lang/Class
    //   39: dup
    //   40: iconst_0
    //   41: ldc 45
    //   43: aastore
    //   44: invokespecial 86	com/squareup/okhttp/internal/OptionalMethod:<init>	(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V
    //   47: astore 6
    //   49: ldc 90
    //   51: invokestatic 73	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   54: astore_0
    //   55: aload_0
    //   56: ldc 92
    //   58: iconst_1
    //   59: anewarray 69	java/lang/Class
    //   62: dup
    //   63: iconst_0
    //   64: ldc 94
    //   66: aastore
    //   67: invokevirtual 98	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   70: astore_1
    //   71: aload_0
    //   72: ldc 100
    //   74: iconst_1
    //   75: anewarray 69	java/lang/Class
    //   78: dup
    //   79: iconst_0
    //   80: ldc 94
    //   82: aastore
    //   83: invokevirtual 98	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   86: astore_2
    //   87: ldc 102
    //   89: invokestatic 73	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   92: pop
    //   93: new 75	com/squareup/okhttp/internal/OptionalMethod
    //   96: dup
    //   97: ldc 104
    //   99: ldc 106
    //   101: iconst_0
    //   102: anewarray 69	java/lang/Class
    //   105: invokespecial 86	com/squareup/okhttp/internal/OptionalMethod:<init>	(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V
    //   108: astore_0
    //   109: new 75	com/squareup/okhttp/internal/OptionalMethod
    //   112: dup
    //   113: aconst_null
    //   114: ldc 108
    //   116: iconst_1
    //   117: anewarray 69	java/lang/Class
    //   120: dup
    //   121: iconst_0
    //   122: ldc 104
    //   124: aastore
    //   125: invokespecial 86	com/squareup/okhttp/internal/OptionalMethod:<init>	(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V
    //   128: astore_3
    //   129: aload_1
    //   130: astore 4
    //   132: aload_0
    //   133: astore_1
    //   134: aload 4
    //   136: astore_0
    //   137: new 110	com/squareup/okhttp/internal/Platform$Android
    //   140: dup
    //   141: aload 5
    //   143: aload 6
    //   145: aload_0
    //   146: aload_2
    //   147: aload_1
    //   148: aload_3
    //   149: invokespecial 113	com/squareup/okhttp/internal/Platform$Android:<init>	(Lcom/squareup/okhttp/internal/OptionalMethod;Lcom/squareup/okhttp/internal/OptionalMethod;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lcom/squareup/okhttp/internal/OptionalMethod;Lcom/squareup/okhttp/internal/OptionalMethod;)V
    //   152: areturn
    //   153: astore_0
    //   154: ldc 115
    //   156: invokestatic 73	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   159: pop
    //   160: goto -154 -> 6
    //   163: astore_0
    //   164: ldc 117
    //   166: invokestatic 73	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   169: astore_0
    //   170: new 119	java/lang/StringBuilder
    //   173: dup
    //   174: invokespecial 120	java/lang/StringBuilder:<init>	()V
    //   177: ldc 117
    //   179: invokevirtual 124	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   182: ldc 126
    //   184: invokevirtual 124	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   187: invokevirtual 127	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   190: invokestatic 73	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   193: astore_1
    //   194: new 119	java/lang/StringBuilder
    //   197: dup
    //   198: invokespecial 120	java/lang/StringBuilder:<init>	()V
    //   201: ldc 117
    //   203: invokevirtual 124	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   206: ldc -127
    //   208: invokevirtual 124	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   211: invokevirtual 127	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   214: invokestatic 73	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   217: astore_2
    //   218: new 119	java/lang/StringBuilder
    //   221: dup
    //   222: invokespecial 120	java/lang/StringBuilder:<init>	()V
    //   225: ldc 117
    //   227: invokevirtual 124	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   230: ldc -125
    //   232: invokevirtual 124	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   235: invokevirtual 127	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   238: invokestatic 73	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   241: astore_3
    //   242: new 133	com/squareup/okhttp/internal/Platform$JdkWithJettyBootPlatform
    //   245: dup
    //   246: aload_0
    //   247: ldc -121
    //   249: iconst_2
    //   250: anewarray 69	java/lang/Class
    //   253: dup
    //   254: iconst_0
    //   255: ldc -119
    //   257: aastore
    //   258: dup
    //   259: iconst_1
    //   260: aload_1
    //   261: aastore
    //   262: invokevirtual 98	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   265: aload_0
    //   266: ldc -118
    //   268: iconst_1
    //   269: anewarray 69	java/lang/Class
    //   272: dup
    //   273: iconst_0
    //   274: ldc -119
    //   276: aastore
    //   277: invokevirtual 98	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   280: aload_0
    //   281: ldc -116
    //   283: iconst_1
    //   284: anewarray 69	java/lang/Class
    //   287: dup
    //   288: iconst_0
    //   289: ldc -119
    //   291: aastore
    //   292: invokevirtual 98	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   295: aload_2
    //   296: aload_3
    //   297: invokespecial 143	com/squareup/okhttp/internal/Platform$JdkWithJettyBootPlatform:<init>	(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/Class;)V
    //   300: astore_0
    //   301: aload_0
    //   302: areturn
    //   303: astore_0
    //   304: new 2	com/squareup/okhttp/internal/Platform
    //   307: dup
    //   308: invokespecial 144	com/squareup/okhttp/internal/Platform:<init>	()V
    //   311: areturn
    //   312: astore_0
    //   313: aconst_null
    //   314: astore_0
    //   315: aconst_null
    //   316: astore 4
    //   318: aload_1
    //   319: astore_3
    //   320: aload_0
    //   321: astore_1
    //   322: aload_3
    //   323: astore_0
    //   324: aload 4
    //   326: astore_3
    //   327: goto -190 -> 137
    //   330: astore_0
    //   331: aconst_null
    //   332: astore_0
    //   333: aconst_null
    //   334: astore_2
    //   335: aconst_null
    //   336: astore_3
    //   337: aload_0
    //   338: astore_1
    //   339: aload_3
    //   340: astore_0
    //   341: aconst_null
    //   342: astore 4
    //   344: aload_1
    //   345: astore_3
    //   346: aload_0
    //   347: astore_1
    //   348: aload_3
    //   349: astore_0
    //   350: aload 4
    //   352: astore_3
    //   353: goto -216 -> 137
    //   356: astore_0
    //   357: goto -53 -> 304
    //   360: astore_0
    //   361: aload_1
    //   362: astore_0
    //   363: goto -30 -> 333
    //   366: astore_0
    //   367: aconst_null
    //   368: astore_0
    //   369: aconst_null
    //   370: astore_2
    //   371: aconst_null
    //   372: astore_1
    //   373: goto -32 -> 341
    //   376: astore_0
    //   377: aconst_null
    //   378: astore_0
    //   379: aconst_null
    //   380: astore_2
    //   381: goto -40 -> 341
    //   384: astore_0
    //   385: aconst_null
    //   386: astore_0
    //   387: goto -46 -> 341
    //   390: astore_3
    //   391: goto -50 -> 341
    //   394: astore_3
    //   395: goto -80 -> 315
    // Local variable table:
    //   start	length	slot	name	signature
    //   54	92	0	localObject1	Object
    //   153	1	0	localClassNotFoundException1	ClassNotFoundException
    //   163	1	0	localClassNotFoundException2	ClassNotFoundException
    //   169	133	0	localObject2	Object
    //   303	1	0	localClassNotFoundException3	ClassNotFoundException
    //   312	1	0	localClassNotFoundException4	ClassNotFoundException
    //   314	10	0	localObject3	Object
    //   330	1	0	localClassNotFoundException5	ClassNotFoundException
    //   332	18	0	localObject4	Object
    //   356	1	0	localNoSuchMethodException1	NoSuchMethodException
    //   360	1	0	localClassNotFoundException6	ClassNotFoundException
    //   362	1	0	localObject5	Object
    //   366	1	0	localNoSuchMethodException2	NoSuchMethodException
    //   368	1	0	localObject6	Object
    //   376	1	0	localNoSuchMethodException3	NoSuchMethodException
    //   378	1	0	localObject7	Object
    //   384	1	0	localNoSuchMethodException4	NoSuchMethodException
    //   386	1	0	localObject8	Object
    //   70	303	1	localObject9	Object
    //   86	295	2	localObject10	Object
    //   128	225	3	localObject11	Object
    //   390	1	3	localNoSuchMethodException5	NoSuchMethodException
    //   394	1	3	localClassNotFoundException7	ClassNotFoundException
    //   130	221	4	localObject12	Object
    //   26	116	5	localOptionalMethod1	OptionalMethod
    //   47	97	6	localOptionalMethod2	OptionalMethod
    // Exception table:
    //   from	to	target	type
    //   0	6	153	java/lang/ClassNotFoundException
    //   6	49	163	java/lang/ClassNotFoundException
    //   137	153	163	java/lang/ClassNotFoundException
    //   154	160	163	java/lang/ClassNotFoundException
    //   164	301	303	java/lang/ClassNotFoundException
    //   87	109	312	java/lang/ClassNotFoundException
    //   49	71	330	java/lang/ClassNotFoundException
    //   164	301	356	java/lang/NoSuchMethodException
    //   71	87	360	java/lang/ClassNotFoundException
    //   49	71	366	java/lang/NoSuchMethodException
    //   71	87	376	java/lang/NoSuchMethodException
    //   87	109	384	java/lang/NoSuchMethodException
    //   109	129	390	java/lang/NoSuchMethodException
    //   109	129	394	java/lang/ClassNotFoundException
  }
  
  public static Platform get()
  {
    return PLATFORM;
  }
  
  public void afterHandshake(SSLSocket paramSSLSocket) {}
  
  public void configureTlsExtensions(SSLSocket paramSSLSocket, String paramString, List<Protocol> paramList) {}
  
  public void connectSocket(Socket paramSocket, InetSocketAddress paramInetSocketAddress, int paramInt)
  {
    paramSocket.connect(paramInetSocketAddress, paramInt);
  }
  
  public String getPrefix()
  {
    return "OkHttp";
  }
  
  public String getSelectedProtocol(SSLSocket paramSSLSocket)
  {
    return null;
  }
  
  public void logW(String paramString)
  {
    System.out.println(paramString);
  }
  
  public void tagSocket(Socket paramSocket) {}
  
  public URI toUriLenient(URL paramURL)
  {
    return paramURL.toURI();
  }
  
  public void untagSocket(Socket paramSocket) {}
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\squareup\okhttp\internal\Platform.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
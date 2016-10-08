package com.xiaomi.e;

import java.util.ArrayList;
import java.util.List;
import java.util.Vector;
import org.xmlpull.v1.XmlPullParser;

public final class k
{
  private static int a = 5000;
  private static int b = 330000;
  private static int c = 300000;
  private static int d = 330000;
  private static Vector<String> e = new Vector();
  
  /* Error */
  static
  {
    // Byte code:
    //   0: sipush 5000
    //   3: putstatic 20	com/xiaomi/e/k:a	I
    //   6: ldc 21
    //   8: putstatic 23	com/xiaomi/e/k:b	I
    //   11: ldc 24
    //   13: putstatic 26	com/xiaomi/e/k:c	I
    //   16: ldc 21
    //   18: putstatic 28	com/xiaomi/e/k:d	I
    //   21: new 30	java/util/Vector
    //   24: dup
    //   25: invokespecial 33	java/util/Vector:<init>	()V
    //   28: putstatic 35	com/xiaomi/e/k:e	Ljava/util/Vector;
    //   31: invokestatic 38	com/xiaomi/e/k:d	()[Ljava/lang/ClassLoader;
    //   34: astore_3
    //   35: aload_3
    //   36: arraylength
    //   37: istore 10
    //   39: iconst_0
    //   40: istore 7
    //   42: iload 7
    //   44: iload 10
    //   46: if_icmpge +277 -> 323
    //   49: aload_3
    //   50: iload 7
    //   52: aaload
    //   53: ldc 40
    //   55: invokevirtual 46	java/lang/ClassLoader:getResources	(Ljava/lang/String;)Ljava/util/Enumeration;
    //   58: astore 4
    //   60: aload 4
    //   62: invokeinterface 52 1 0
    //   67: ifeq +334 -> 401
    //   70: aload 4
    //   72: invokeinterface 56 1 0
    //   77: checkcast 58	java/net/URL
    //   80: astore_2
    //   81: aconst_null
    //   82: astore_1
    //   83: aconst_null
    //   84: astore_0
    //   85: aload_2
    //   86: invokevirtual 62	java/net/URL:openStream	()Ljava/io/InputStream;
    //   89: astore_2
    //   90: aload_2
    //   91: astore_0
    //   92: aload_2
    //   93: astore_1
    //   94: invokestatic 68	org/xmlpull/v1/XmlPullParserFactory:newInstance	()Lorg/xmlpull/v1/XmlPullParserFactory;
    //   97: invokevirtual 72	org/xmlpull/v1/XmlPullParserFactory:newPullParser	()Lorg/xmlpull/v1/XmlPullParser;
    //   100: astore 5
    //   102: aload_2
    //   103: astore_0
    //   104: aload_2
    //   105: astore_1
    //   106: aload 5
    //   108: ldc 74
    //   110: iconst_1
    //   111: invokeinterface 80 3 0
    //   116: aload_2
    //   117: astore_0
    //   118: aload_2
    //   119: astore_1
    //   120: aload 5
    //   122: aload_2
    //   123: ldc 82
    //   125: invokeinterface 86 3 0
    //   130: aload_2
    //   131: astore_0
    //   132: aload_2
    //   133: astore_1
    //   134: aload 5
    //   136: invokeinterface 90 1 0
    //   141: istore 8
    //   143: iload 8
    //   145: iconst_2
    //   146: if_icmpne +45 -> 191
    //   149: aload_2
    //   150: astore_0
    //   151: aload_2
    //   152: astore_1
    //   153: aload 5
    //   155: invokeinterface 94 1 0
    //   160: ldc 96
    //   162: invokevirtual 102	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   165: ifeq +109 -> 274
    //   168: aload_2
    //   169: astore_0
    //   170: aload_2
    //   171: astore_1
    //   172: aload 5
    //   174: invokeinterface 105 1 0
    //   179: astore 6
    //   181: aload_2
    //   182: astore_0
    //   183: aload_2
    //   184: astore_1
    //   185: aload 6
    //   187: invokestatic 111	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   190: pop
    //   191: aload_2
    //   192: astore_0
    //   193: aload_2
    //   194: astore_1
    //   195: aload 5
    //   197: invokeinterface 114 1 0
    //   202: istore 9
    //   204: iload 9
    //   206: istore 8
    //   208: iload 9
    //   210: iconst_1
    //   211: if_icmpne -68 -> 143
    //   214: aload_2
    //   215: invokevirtual 119	java/io/InputStream:close	()V
    //   218: goto -158 -> 60
    //   221: astore_0
    //   222: goto -162 -> 60
    //   225: astore_0
    //   226: aload_2
    //   227: astore_0
    //   228: aload_2
    //   229: astore_1
    //   230: getstatic 125	java/lang/System:err	Ljava/io/PrintStream;
    //   233: new 127	java/lang/StringBuilder
    //   236: dup
    //   237: ldc -127
    //   239: invokespecial 132	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   242: aload 6
    //   244: invokevirtual 136	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   247: invokevirtual 139	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   250: invokevirtual 144	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   253: goto -62 -> 191
    //   256: astore_2
    //   257: aload_0
    //   258: astore_1
    //   259: aload_2
    //   260: invokevirtual 147	java/lang/Exception:printStackTrace	()V
    //   263: aload_0
    //   264: invokevirtual 119	java/io/InputStream:close	()V
    //   267: goto -207 -> 60
    //   270: astore_0
    //   271: goto -211 -> 60
    //   274: aload_2
    //   275: astore_0
    //   276: aload_2
    //   277: astore_1
    //   278: aload 5
    //   280: invokeinterface 94 1 0
    //   285: ldc -107
    //   287: invokevirtual 102	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   290: ifeq +34 -> 324
    //   293: aload_2
    //   294: astore_0
    //   295: aload_2
    //   296: astore_1
    //   297: aload 5
    //   299: getstatic 20	com/xiaomi/e/k:a	I
    //   302: invokestatic 152	com/xiaomi/e/k:a	(Lorg/xmlpull/v1/XmlPullParser;I)I
    //   305: putstatic 20	com/xiaomi/e/k:a	I
    //   308: goto -117 -> 191
    //   311: astore_0
    //   312: aload_1
    //   313: invokevirtual 119	java/io/InputStream:close	()V
    //   316: aload_0
    //   317: athrow
    //   318: astore_0
    //   319: aload_0
    //   320: invokevirtual 147	java/lang/Exception:printStackTrace	()V
    //   323: return
    //   324: aload_2
    //   325: astore_0
    //   326: aload_2
    //   327: astore_1
    //   328: aload 5
    //   330: invokeinterface 94 1 0
    //   335: ldc -102
    //   337: invokevirtual 102	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   340: ifeq +21 -> 361
    //   343: aload_2
    //   344: astore_0
    //   345: aload_2
    //   346: astore_1
    //   347: aload 5
    //   349: getstatic 23	com/xiaomi/e/k:b	I
    //   352: invokestatic 152	com/xiaomi/e/k:a	(Lorg/xmlpull/v1/XmlPullParser;I)I
    //   355: putstatic 23	com/xiaomi/e/k:b	I
    //   358: goto -167 -> 191
    //   361: aload_2
    //   362: astore_0
    //   363: aload_2
    //   364: astore_1
    //   365: aload 5
    //   367: invokeinterface 94 1 0
    //   372: ldc -100
    //   374: invokevirtual 102	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   377: ifeq -186 -> 191
    //   380: aload_2
    //   381: astore_0
    //   382: aload_2
    //   383: astore_1
    //   384: getstatic 35	com/xiaomi/e/k:e	Ljava/util/Vector;
    //   387: aload 5
    //   389: invokeinterface 105 1 0
    //   394: invokevirtual 159	java/util/Vector:add	(Ljava/lang/Object;)Z
    //   397: pop
    //   398: goto -207 -> 191
    //   401: iload 7
    //   403: iconst_1
    //   404: iadd
    //   405: istore 7
    //   407: goto -365 -> 42
    //   410: astore_1
    //   411: goto -95 -> 316
    // Local variable table:
    //   start	length	slot	name	signature
    //   84	109	0	localObject1	Object
    //   221	1	0	localException1	Exception
    //   225	1	0	localClassNotFoundException	ClassNotFoundException
    //   227	37	0	localObject2	Object
    //   270	1	0	localException2	Exception
    //   275	20	0	localException3	Exception
    //   311	6	0	localObject3	Object
    //   318	2	0	localException4	Exception
    //   325	57	0	localException5	Exception
    //   82	302	1	localObject4	Object
    //   410	1	1	localException6	Exception
    //   80	149	2	localObject5	Object
    //   256	127	2	localException7	Exception
    //   34	16	3	arrayOfClassLoader	ClassLoader[]
    //   58	13	4	localEnumeration	java.util.Enumeration
    //   100	288	5	localXmlPullParser	XmlPullParser
    //   179	64	6	str	String
    //   40	366	7	i	int
    //   141	66	8	j	int
    //   202	10	9	k	int
    //   37	10	10	m	int
    // Exception table:
    //   from	to	target	type
    //   214	218	221	java/lang/Exception
    //   185	191	225	java/lang/ClassNotFoundException
    //   85	90	256	java/lang/Exception
    //   94	102	256	java/lang/Exception
    //   106	116	256	java/lang/Exception
    //   120	130	256	java/lang/Exception
    //   134	143	256	java/lang/Exception
    //   153	168	256	java/lang/Exception
    //   172	181	256	java/lang/Exception
    //   185	191	256	java/lang/Exception
    //   195	204	256	java/lang/Exception
    //   230	253	256	java/lang/Exception
    //   278	293	256	java/lang/Exception
    //   297	308	256	java/lang/Exception
    //   328	343	256	java/lang/Exception
    //   347	358	256	java/lang/Exception
    //   365	380	256	java/lang/Exception
    //   384	398	256	java/lang/Exception
    //   263	267	270	java/lang/Exception
    //   85	90	311	finally
    //   94	102	311	finally
    //   106	116	311	finally
    //   120	130	311	finally
    //   134	143	311	finally
    //   153	168	311	finally
    //   172	181	311	finally
    //   185	191	311	finally
    //   195	204	311	finally
    //   230	253	311	finally
    //   259	263	311	finally
    //   278	293	311	finally
    //   297	308	311	finally
    //   328	343	311	finally
    //   347	358	311	finally
    //   365	380	311	finally
    //   384	398	311	finally
    //   31	39	318	java/lang/Exception
    //   49	60	318	java/lang/Exception
    //   60	81	318	java/lang/Exception
    //   316	318	318	java/lang/Exception
    //   312	316	410	java/lang/Exception
  }
  
  private static int a(XmlPullParser paramXmlPullParser, int paramInt)
  {
    try
    {
      int i = Integer.parseInt(paramXmlPullParser.nextText());
      return i;
    }
    catch (NumberFormatException paramXmlPullParser)
    {
      paramXmlPullParser.printStackTrace();
    }
    return paramInt;
  }
  
  public static String a()
  {
    return "3.1.0";
  }
  
  public static int b()
  {
    return b;
  }
  
  public static int c()
  {
    return c;
  }
  
  private static ClassLoader[] d()
  {
    int i = 0;
    ClassLoader localClassLoader1 = k.class.getClassLoader();
    ClassLoader localClassLoader2 = Thread.currentThread().getContextClassLoader();
    ArrayList localArrayList = new ArrayList();
    while (i < 2)
    {
      ClassLoader localClassLoader3 = new ClassLoader[] { localClassLoader1, localClassLoader2 }[i];
      if (localClassLoader3 != null) {
        localArrayList.add(localClassLoader3);
      }
      i += 1;
    }
    return (ClassLoader[])localArrayList.toArray(new ClassLoader[localArrayList.size()]);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\e\k.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
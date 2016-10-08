package com.xiaomi.e.e;

import com.xiaomi.e.c.b;
import com.xiaomi.e.c.g;
import com.xiaomi.e.c.h;
import com.xiaomi.e.c.i;
import com.xiaomi.e.c.j;
import com.xiaomi.e.c.k;
import com.xiaomi.e.c.l;
import com.xiaomi.e.n;
import com.xiaomi.e.o;
import com.xiaomi.push.service.ah;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.xmlpull.v1.XmlPullParser;

public final class c
{
  private static XmlPullParser a = null;
  
  public static b a(XmlPullParser paramXmlPullParser, com.xiaomi.e.a parama)
  {
    String str1 = paramXmlPullParser.getAttributeValue("", "id");
    String str2 = paramXmlPullParser.getAttributeValue("", "to");
    String str3 = paramXmlPullParser.getAttributeValue("", "from");
    String str4 = paramXmlPullParser.getAttributeValue("", "chid");
    com.xiaomi.e.c.c localc = com.xiaomi.e.c.c.a(paramXmlPullParser.getAttributeValue("", "type"));
    HashMap localHashMap = new HashMap();
    int i = 0;
    while (i < paramXmlPullParser.getAttributeCount())
    {
      localObject = paramXmlPullParser.getAttributeName(i);
      localHashMap.put(localObject, paramXmlPullParser.getAttributeValue("", (String)localObject));
      i += 1;
    }
    i = 0;
    k localk = null;
    Object localObject = null;
    while (i == 0)
    {
      int j = paramXmlPullParser.next();
      if (j == 2)
      {
        String str5 = paramXmlPullParser.getName();
        paramXmlPullParser.getNamespace();
        if (str5.equals("error"))
        {
          localk = f(paramXmlPullParser);
        }
        else
        {
          localObject = new b();
          ((b)localObject).a(g(paramXmlPullParser));
        }
      }
      else if ((j == 3) && (paramXmlPullParser.getName().equals("iq")))
      {
        i = 1;
      }
    }
    if (localObject == null) {
      if ((com.xiaomi.e.c.c.a == localc) || (com.xiaomi.e.c.c.b == localc))
      {
        paramXmlPullParser = new d();
        paramXmlPullParser.q = str1;
        paramXmlPullParser.r = str3;
        paramXmlPullParser.s = str2;
        paramXmlPullParser.a(com.xiaomi.e.c.c.d);
        paramXmlPullParser.t = str4;
        paramXmlPullParser.v = new k(l.e);
        parama.a(paramXmlPullParser);
        com.xiaomi.a.a.b.c.d("iq usage error. send packet in packet parser.");
        return null;
      }
    }
    for (paramXmlPullParser = new e();; paramXmlPullParser = (XmlPullParser)localObject)
    {
      paramXmlPullParser.q = str1;
      paramXmlPullParser.r = str2;
      paramXmlPullParser.t = str4;
      paramXmlPullParser.s = str3;
      paramXmlPullParser.a(localc);
      paramXmlPullParser.v = localk;
      paramXmlPullParser.a(localHashMap);
      return paramXmlPullParser;
    }
  }
  
  /* Error */
  public static com.xiaomi.e.c.e a(XmlPullParser paramXmlPullParser)
  {
    // Byte code:
    //   0: ldc -100
    //   2: aload_0
    //   3: ldc 14
    //   5: ldc -99
    //   7: invokeinterface 22 3 0
    //   12: invokevirtual 70	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   15: ifeq +394 -> 409
    //   18: aload_0
    //   19: ldc 14
    //   21: ldc 28
    //   23: invokeinterface 22 3 0
    //   28: astore_3
    //   29: aload_0
    //   30: ldc 14
    //   32: ldc 16
    //   34: invokeinterface 22 3 0
    //   39: astore 4
    //   41: aload_0
    //   42: ldc 14
    //   44: ldc 26
    //   46: invokeinterface 22 3 0
    //   51: astore 5
    //   53: aload_0
    //   54: ldc 14
    //   56: ldc 24
    //   58: invokeinterface 22 3 0
    //   63: astore 6
    //   65: aload_0
    //   66: ldc 14
    //   68: ldc 30
    //   70: invokeinterface 22 3 0
    //   75: astore 7
    //   77: invokestatic 162	com/xiaomi/push/service/bb:a	()Lcom/xiaomi/push/service/bb;
    //   80: aload_3
    //   81: aload 6
    //   83: invokevirtual 165	com/xiaomi/push/service/bb:b	(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/bd;
    //   86: astore_1
    //   87: aload_1
    //   88: ifnonnull +831 -> 919
    //   91: invokestatic 162	com/xiaomi/push/service/bb:a	()Lcom/xiaomi/push/service/bb;
    //   94: aload_3
    //   95: aload 5
    //   97: invokevirtual 165	com/xiaomi/push/service/bb:b	(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/bd;
    //   100: astore_1
    //   101: aload_1
    //   102: ifnonnull +13 -> 115
    //   105: new 167	com/xiaomi/e/t
    //   108: dup
    //   109: ldc -87
    //   111: invokespecial 171	com/xiaomi/e/t:<init>	(Ljava/lang/String;)V
    //   114: athrow
    //   115: iconst_0
    //   116: istore 9
    //   118: aconst_null
    //   119: astore_2
    //   120: iload 9
    //   122: ifne +271 -> 393
    //   125: aload_0
    //   126: invokeinterface 55 1 0
    //   131: istore 10
    //   133: iload 10
    //   135: iconst_2
    //   136: if_icmpne +231 -> 367
    //   139: ldc -99
    //   141: aload_0
    //   142: invokeinterface 59 1 0
    //   147: invokevirtual 70	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   150: ifne +13 -> 163
    //   153: new 167	com/xiaomi/e/t
    //   156: dup
    //   157: ldc -83
    //   159: invokespecial 171	com/xiaomi/e/t:<init>	(Ljava/lang/String;)V
    //   162: athrow
    //   163: aload_0
    //   164: invokeinterface 55 1 0
    //   169: iconst_4
    //   170: if_icmpeq +13 -> 183
    //   173: new 167	com/xiaomi/e/t
    //   176: dup
    //   177: ldc -83
    //   179: invokespecial 171	com/xiaomi/e/t:<init>	(Ljava/lang/String;)V
    //   182: athrow
    //   183: aload_0
    //   184: invokeinterface 176 1 0
    //   189: astore_2
    //   190: ldc -78
    //   192: aload_3
    //   193: invokevirtual 70	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   196: ifne +12 -> 208
    //   199: ldc -76
    //   201: aload_3
    //   202: invokevirtual 70	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   205: ifeq +67 -> 272
    //   208: new 182	com/xiaomi/e/c/d
    //   211: dup
    //   212: invokespecial 183	com/xiaomi/e/c/d:<init>	()V
    //   215: astore_0
    //   216: aload_0
    //   217: aload_3
    //   218: putfield 116	com/xiaomi/e/c/e:t	Ljava/lang/String;
    //   221: aload_0
    //   222: iconst_1
    //   223: putfield 187	com/xiaomi/e/c/d:m	Z
    //   226: aload_0
    //   227: aload 5
    //   229: putfield 107	com/xiaomi/e/c/e:s	Ljava/lang/String;
    //   232: aload_0
    //   233: aload 6
    //   235: putfield 104	com/xiaomi/e/c/e:r	Ljava/lang/String;
    //   238: aload_0
    //   239: aload 4
    //   241: putfield 101	com/xiaomi/e/c/e:q	Ljava/lang/String;
    //   244: aload_0
    //   245: aload 7
    //   247: putfield 189	com/xiaomi/e/c/d:a	Ljava/lang/String;
    //   250: new 191	com/xiaomi/e/c/a
    //   253: dup
    //   254: ldc -99
    //   256: invokespecial 192	com/xiaomi/e/c/a:<init>	(Ljava/lang/String;)V
    //   259: astore_1
    //   260: aload_1
    //   261: aload_2
    //   262: invokevirtual 194	com/xiaomi/e/c/a:b	(Ljava/lang/String;)V
    //   265: aload_0
    //   266: aload_1
    //   267: invokevirtual 195	com/xiaomi/e/c/d:a	(Lcom/xiaomi/e/c/a;)V
    //   270: aload_0
    //   271: areturn
    //   272: aload_1
    //   273: getfield 200	com/xiaomi/push/service/bd:i	Ljava/lang/String;
    //   276: aload 4
    //   278: invokestatic 205	com/xiaomi/push/service/q:a	(Ljava/lang/String;Ljava/lang/String;)[B
    //   281: aload_2
    //   282: invokestatic 208	com/xiaomi/push/service/q:b	([BLjava/lang/String;)[B
    //   285: astore_2
    //   286: getstatic 10	com/xiaomi/e/e/c:a	Lorg/xmlpull/v1/XmlPullParser;
    //   289: ifnonnull +26 -> 315
    //   292: invokestatic 214	org/xmlpull/v1/XmlPullParserFactory:newInstance	()Lorg/xmlpull/v1/XmlPullParserFactory;
    //   295: invokevirtual 218	org/xmlpull/v1/XmlPullParserFactory:newPullParser	()Lorg/xmlpull/v1/XmlPullParser;
    //   298: astore 8
    //   300: aload 8
    //   302: putstatic 10	com/xiaomi/e/e/c:a	Lorg/xmlpull/v1/XmlPullParser;
    //   305: aload 8
    //   307: ldc -36
    //   309: iconst_1
    //   310: invokeinterface 224 3 0
    //   315: getstatic 10	com/xiaomi/e/e/c:a	Lorg/xmlpull/v1/XmlPullParser;
    //   318: new 226	java/io/InputStreamReader
    //   321: dup
    //   322: new 228	java/io/ByteArrayInputStream
    //   325: dup
    //   326: aload_2
    //   327: invokespecial 231	java/io/ByteArrayInputStream:<init>	([B)V
    //   330: invokespecial 234	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   333: invokeinterface 238 2 0
    //   338: getstatic 10	com/xiaomi/e/e/c:a	Lorg/xmlpull/v1/XmlPullParser;
    //   341: invokeinterface 55 1 0
    //   346: pop
    //   347: getstatic 10	com/xiaomi/e/e/c:a	Lorg/xmlpull/v1/XmlPullParser;
    //   350: invokestatic 240	com/xiaomi/e/e/c:a	(Lorg/xmlpull/v1/XmlPullParser;)Lcom/xiaomi/e/c/e;
    //   353: astore_2
    //   354: goto -234 -> 120
    //   357: astore 8
    //   359: aload 8
    //   361: invokevirtual 243	org/xmlpull/v1/XmlPullParserException:printStackTrace	()V
    //   364: goto -49 -> 315
    //   367: iload 10
    //   369: iconst_3
    //   370: if_icmpne -250 -> 120
    //   373: aload_0
    //   374: invokeinterface 59 1 0
    //   379: ldc -11
    //   381: invokevirtual 70	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   384: ifeq -264 -> 120
    //   387: iconst_1
    //   388: istore 9
    //   390: goto -270 -> 120
    //   393: aload_2
    //   394: ifnull +5 -> 399
    //   397: aload_2
    //   398: areturn
    //   399: new 167	com/xiaomi/e/t
    //   402: dup
    //   403: ldc -83
    //   405: invokespecial 171	com/xiaomi/e/t:<init>	(Ljava/lang/String;)V
    //   408: athrow
    //   409: new 182	com/xiaomi/e/c/d
    //   412: dup
    //   413: invokespecial 183	com/xiaomi/e/c/d:<init>	()V
    //   416: astore_3
    //   417: aload_0
    //   418: ldc 14
    //   420: ldc 16
    //   422: invokeinterface 22 3 0
    //   427: astore_2
    //   428: aload_2
    //   429: astore_1
    //   430: aload_2
    //   431: ifnonnull +6 -> 437
    //   434: ldc -9
    //   436: astore_1
    //   437: aload_3
    //   438: aload_1
    //   439: putfield 101	com/xiaomi/e/c/e:q	Ljava/lang/String;
    //   442: aload_3
    //   443: aload_0
    //   444: ldc 14
    //   446: ldc 24
    //   448: invokeinterface 22 3 0
    //   453: putfield 104	com/xiaomi/e/c/e:r	Ljava/lang/String;
    //   456: aload_3
    //   457: aload_0
    //   458: ldc 14
    //   460: ldc 26
    //   462: invokeinterface 22 3 0
    //   467: putfield 107	com/xiaomi/e/c/e:s	Ljava/lang/String;
    //   470: aload_3
    //   471: aload_0
    //   472: ldc 14
    //   474: ldc 28
    //   476: invokeinterface 22 3 0
    //   481: putfield 116	com/xiaomi/e/c/e:t	Ljava/lang/String;
    //   484: aload_3
    //   485: aload_0
    //   486: ldc 14
    //   488: ldc -7
    //   490: invokeinterface 22 3 0
    //   495: putfield 252	com/xiaomi/e/c/d:h	Ljava/lang/String;
    //   498: aload_0
    //   499: ldc 14
    //   501: ldc -2
    //   503: invokeinterface 22 3 0
    //   508: astore_1
    //   509: aload_0
    //   510: ldc 14
    //   512: ldc_w 256
    //   515: invokeinterface 22 3 0
    //   520: astore_2
    //   521: aload_2
    //   522: invokestatic 262	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   525: ifne +8 -> 533
    //   528: aload_3
    //   529: aload_2
    //   530: putfield 263	com/xiaomi/e/c/d:i	Ljava/lang/String;
    //   533: aload_0
    //   534: ldc 14
    //   536: ldc_w 265
    //   539: invokeinterface 22 3 0
    //   544: astore_2
    //   545: aload_2
    //   546: invokestatic 262	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   549: ifne +8 -> 557
    //   552: aload_3
    //   553: aload_2
    //   554: putfield 268	com/xiaomi/e/c/d:j	Ljava/lang/String;
    //   557: aload_0
    //   558: ldc 14
    //   560: ldc_w 270
    //   563: invokeinterface 22 3 0
    //   568: astore_2
    //   569: aload_2
    //   570: invokestatic 262	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   573: ifne +8 -> 581
    //   576: aload_3
    //   577: aload_2
    //   578: putfield 273	com/xiaomi/e/c/d:k	Ljava/lang/String;
    //   581: aload_0
    //   582: ldc 14
    //   584: ldc_w 275
    //   587: invokeinterface 22 3 0
    //   592: astore_2
    //   593: aload_2
    //   594: invokestatic 262	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   597: ifne +8 -> 605
    //   600: aload_3
    //   601: aload_2
    //   602: putfield 278	com/xiaomi/e/c/d:l	Ljava/lang/String;
    //   605: aload_1
    //   606: invokestatic 262	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   609: ifne +135 -> 744
    //   612: aload_1
    //   613: ldc_w 280
    //   616: invokevirtual 284	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   619: ifeq +125 -> 744
    //   622: iconst_1
    //   623: istore 11
    //   625: aload_3
    //   626: iload 11
    //   628: putfield 286	com/xiaomi/e/c/d:g	Z
    //   631: aload_3
    //   632: aload_0
    //   633: ldc 14
    //   635: ldc 30
    //   637: invokeinterface 22 3 0
    //   642: putfield 189	com/xiaomi/e/c/d:a	Ljava/lang/String;
    //   645: aload_0
    //   646: invokestatic 289	com/xiaomi/e/e/c:h	(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    //   649: astore_1
    //   650: aload_1
    //   651: ifnull +99 -> 750
    //   654: ldc 14
    //   656: aload_1
    //   657: invokevirtual 292	java/lang/String:trim	()Ljava/lang/String;
    //   660: invokevirtual 70	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   663: ifne +87 -> 750
    //   666: aload_3
    //   667: aload_1
    //   668: putfield 295	com/xiaomi/e/c/d:c	Ljava/lang/String;
    //   671: iconst_0
    //   672: istore 9
    //   674: aconst_null
    //   675: astore_1
    //   676: iload 9
    //   678: ifne +218 -> 896
    //   681: aload_0
    //   682: invokeinterface 55 1 0
    //   687: istore 10
    //   689: iload 10
    //   691: iconst_2
    //   692: if_icmpne +178 -> 870
    //   695: aload_0
    //   696: invokeinterface 59 1 0
    //   701: astore_2
    //   702: aload_0
    //   703: invokeinterface 62 1 0
    //   708: invokestatic 262	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   711: pop
    //   712: aload_2
    //   713: ldc_w 297
    //   716: invokevirtual 70	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   719: ifeq +38 -> 757
    //   722: aload_0
    //   723: invokestatic 289	com/xiaomi/e/e/c:h	(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    //   726: pop
    //   727: aload_3
    //   728: aload_0
    //   729: invokestatic 299	com/xiaomi/e/e/c:e	(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    //   732: putfield 301	com/xiaomi/e/c/d:d	Ljava/lang/String;
    //   735: goto -59 -> 676
    //   738: astore_1
    //   739: aconst_null
    //   740: astore_1
    //   741: goto -232 -> 509
    //   744: iconst_0
    //   745: istore 11
    //   747: goto -122 -> 625
    //   750: invokestatic 303	com/xiaomi/e/c/e:g	()Ljava/lang/String;
    //   753: pop
    //   754: goto -83 -> 671
    //   757: aload_2
    //   758: ldc_w 305
    //   761: invokevirtual 70	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   764: ifeq +51 -> 815
    //   767: aload_0
    //   768: ldc 14
    //   770: ldc_w 307
    //   773: invokeinterface 22 3 0
    //   778: astore_2
    //   779: aload_0
    //   780: invokestatic 299	com/xiaomi/e/e/c:e	(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    //   783: astore 4
    //   785: aload_2
    //   786: invokestatic 262	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   789: ifne +17 -> 806
    //   792: aload_3
    //   793: aload 4
    //   795: putfield 309	com/xiaomi/e/c/d:e	Ljava/lang/String;
    //   798: aload_3
    //   799: aload_2
    //   800: putfield 311	com/xiaomi/e/c/d:f	Ljava/lang/String;
    //   803: goto -127 -> 676
    //   806: aload_3
    //   807: aload 4
    //   809: putfield 309	com/xiaomi/e/c/d:e	Ljava/lang/String;
    //   812: goto -136 -> 676
    //   815: aload_2
    //   816: ldc_w 313
    //   819: invokevirtual 70	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   822: ifeq +17 -> 839
    //   825: aload_1
    //   826: ifnonnull -150 -> 676
    //   829: aload_0
    //   830: invokeinterface 316 1 0
    //   835: astore_1
    //   836: goto -160 -> 676
    //   839: aload_2
    //   840: ldc 64
    //   842: invokevirtual 70	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   845: ifeq +14 -> 859
    //   848: aload_3
    //   849: aload_0
    //   850: invokestatic 74	com/xiaomi/e/e/c:f	(Lorg/xmlpull/v1/XmlPullParser;)Lcom/xiaomi/e/c/k;
    //   853: putfield 131	com/xiaomi/e/c/e:v	Lcom/xiaomi/e/c/k;
    //   856: goto -180 -> 676
    //   859: aload_3
    //   860: aload_0
    //   861: invokestatic 81	com/xiaomi/e/e/c:g	(Lorg/xmlpull/v1/XmlPullParser;)Lcom/xiaomi/e/c/a;
    //   864: invokevirtual 195	com/xiaomi/e/c/d:a	(Lcom/xiaomi/e/c/a;)V
    //   867: goto -191 -> 676
    //   870: iload 10
    //   872: iconst_3
    //   873: if_icmpne -197 -> 676
    //   876: aload_0
    //   877: invokeinterface 59 1 0
    //   882: ldc -11
    //   884: invokevirtual 70	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   887: ifeq -211 -> 676
    //   890: iconst_1
    //   891: istore 9
    //   893: goto -217 -> 676
    //   896: aload_3
    //   897: aload_1
    //   898: putfield 318	com/xiaomi/e/c/d:b	Ljava/lang/String;
    //   901: aload_3
    //   902: areturn
    //   903: astore_2
    //   904: goto -299 -> 605
    //   907: astore_2
    //   908: goto -327 -> 581
    //   911: astore_2
    //   912: goto -355 -> 557
    //   915: astore_2
    //   916: goto -383 -> 533
    //   919: goto -818 -> 101
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	922	0	paramXmlPullParser	XmlPullParser
    //   86	590	1	localObject1	Object
    //   738	1	1	localException1	Exception
    //   740	158	1	str1	String
    //   119	721	2	localObject2	Object
    //   903	1	2	localException2	Exception
    //   907	1	2	localException3	Exception
    //   911	1	2	localException4	Exception
    //   915	1	2	localException5	Exception
    //   28	874	3	localObject3	Object
    //   39	769	4	str2	String
    //   51	177	5	str3	String
    //   63	171	6	str4	String
    //   75	171	7	str5	String
    //   298	8	8	localXmlPullParser	XmlPullParser
    //   357	3	8	localXmlPullParserException	org.xmlpull.v1.XmlPullParserException
    //   116	776	9	i	int
    //   131	743	10	j	int
    //   623	123	11	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   292	315	357	org/xmlpull/v1/XmlPullParserException
    //   498	509	738	java/lang/Exception
    //   581	605	903	java/lang/Exception
    //   557	581	907	java/lang/Exception
    //   533	557	911	java/lang/Exception
    //   509	533	915	java/lang/Exception
  }
  
  public static g b(XmlPullParser paramXmlPullParser)
  {
    Object localObject3 = i.a;
    Object localObject4 = paramXmlPullParser.getAttributeValue("", "type");
    Object localObject1 = localObject3;
    if (localObject4 != null)
    {
      localObject1 = localObject3;
      if (((String)localObject4).equals("")) {}
    }
    try
    {
      localObject1 = i.valueOf((String)localObject4);
      localObject4 = new g((i)localObject1);
      ((com.xiaomi.e.c.e)localObject4).r = paramXmlPullParser.getAttributeValue("", "to");
      ((com.xiaomi.e.c.e)localObject4).s = paramXmlPullParser.getAttributeValue("", "from");
      ((com.xiaomi.e.c.e)localObject4).t = paramXmlPullParser.getAttributeValue("", "chid");
      localObject3 = paramXmlPullParser.getAttributeValue("", "id");
      localObject1 = localObject3;
      if (localObject3 == null) {
        localObject1 = "ID_NOT_AVAILABLE";
      }
      ((com.xiaomi.e.c.e)localObject4).q = ((String)localObject1);
      i = 0;
      for (;;)
      {
        if (i != 0) {
          return localObject4;
        }
        j = paramXmlPullParser.next();
        if (j != 2) {
          break label326;
        }
        localObject1 = paramXmlPullParser.getName();
        paramXmlPullParser.getNamespace();
        if (!((String)localObject1).equals("status")) {
          break;
        }
        ((g)localObject4).a = paramXmlPullParser.nextText();
      }
    }
    catch (IllegalArgumentException localIllegalArgumentException1)
    {
      for (;;)
      {
        int i;
        int j;
        System.err.println("Found invalid presence type " + (String)localObject4);
        Object localObject2 = localObject3;
        continue;
        if (((String)localObject2).equals("priority"))
        {
          try
          {
            ((g)localObject4).a(Integer.parseInt(paramXmlPullParser.nextText()));
          }
          catch (NumberFormatException localNumberFormatException) {}catch (IllegalArgumentException localIllegalArgumentException2)
          {
            ((g)localObject4).a(0);
          }
        }
        else
        {
          String str;
          if (localIllegalArgumentException2.equals("show"))
          {
            str = paramXmlPullParser.nextText();
            try
            {
              ((g)localObject4).b = h.valueOf(str);
            }
            catch (IllegalArgumentException localIllegalArgumentException3)
            {
              System.err.println("Found invalid presence mode " + str);
            }
          }
          else if (str.equals("error"))
          {
            ((com.xiaomi.e.c.e)localObject4).v = f(paramXmlPullParser);
          }
          else
          {
            ((g)localObject4).a(g(paramXmlPullParser));
            continue;
            label326:
            if ((j == 3) && (paramXmlPullParser.getName().equals("presence"))) {
              i = 1;
            }
          }
        }
      }
    }
    return (g)localObject4;
  }
  
  public static n c(XmlPullParser paramXmlPullParser)
  {
    n localn = new n();
    Object localObject = paramXmlPullParser.getAttributeValue("", "id");
    String str1 = paramXmlPullParser.getAttributeValue("", "to");
    String str2 = paramXmlPullParser.getAttributeValue("", "from");
    String str3 = paramXmlPullParser.getAttributeValue("", "chid");
    o localo = o.a(paramXmlPullParser.getAttributeValue("", "type"));
    localn.q = ((String)localObject);
    localn.r = str1;
    localn.s = str2;
    localn.t = str3;
    int i;
    if (localo == null)
    {
      localn.a = o.a;
      i = 0;
      localObject = null;
    }
    for (;;)
    {
      if (i != 0) {
        break label185;
      }
      int j = paramXmlPullParser.next();
      if (j == 2)
      {
        if (!paramXmlPullParser.getName().equals("error")) {
          continue;
        }
        localObject = f(paramXmlPullParser);
        continue;
        localn.a = localo;
        break;
      }
      if ((j == 3) && (paramXmlPullParser.getName().equals("bind"))) {
        i = 1;
      }
    }
    label185:
    localn.v = ((k)localObject);
    return localn;
  }
  
  public static j d(XmlPullParser paramXmlPullParser)
  {
    j localj = null;
    int i = 0;
    while (i == 0)
    {
      int j = paramXmlPullParser.next();
      if (j == 2) {
        localj = new j(paramXmlPullParser.getName());
      } else if ((j == 3) && (paramXmlPullParser.getName().equals("error"))) {
        i = 1;
      }
    }
    return localj;
  }
  
  private static String e(XmlPullParser paramXmlPullParser)
  {
    String str = "";
    int i = paramXmlPullParser.getDepth();
    while ((paramXmlPullParser.next() != 3) || (paramXmlPullParser.getDepth() != i)) {
      str = str + paramXmlPullParser.getText();
    }
    return str;
  }
  
  private static k f(XmlPullParser paramXmlPullParser)
  {
    int j = 0;
    ArrayList localArrayList = new ArrayList();
    String str4 = null;
    String str1 = null;
    String str2 = "-1";
    int i = 0;
    if (i < paramXmlPullParser.getAttributeCount())
    {
      if (!paramXmlPullParser.getAttributeName(i).equals("code")) {
        break label306;
      }
      str2 = paramXmlPullParser.getAttributeValue("", "code");
    }
    label306:
    for (;;)
    {
      if (paramXmlPullParser.getAttributeName(i).equals("type")) {
        str1 = paramXmlPullParser.getAttributeValue("", "type");
      }
      for (;;)
      {
        if (paramXmlPullParser.getAttributeName(i).equals("reason")) {
          str4 = paramXmlPullParser.getAttributeValue("", "reason");
        }
        i += 1;
        break;
        Object localObject = null;
        String str3 = null;
        i = j;
        while (i == 0)
        {
          j = paramXmlPullParser.next();
          if (j == 2)
          {
            if (paramXmlPullParser.getName().equals("text"))
            {
              str3 = paramXmlPullParser.nextText();
            }
            else
            {
              String str5 = paramXmlPullParser.getName();
              if ("urn:ietf:params:xml:ns:xmpp-stanzas".equals(paramXmlPullParser.getNamespace())) {
                localObject = str5;
              } else {
                localArrayList.add(g(paramXmlPullParser));
              }
            }
          }
          else if (j == 3)
          {
            if (paramXmlPullParser.getName().equals("error")) {
              i = 1;
            }
          }
          else if (j == 4) {
            str3 = paramXmlPullParser.getText();
          }
        }
        if (str1 == null) {}
        for (paramXmlPullParser = "cancel";; paramXmlPullParser = str1) {
          return new k(Integer.parseInt(str2), paramXmlPullParser, str4, (String)localObject, str3, localArrayList);
        }
      }
    }
  }
  
  private static com.xiaomi.e.c.a g(XmlPullParser paramXmlPullParser)
  {
    Object localObject = com.xiaomi.e.d.c.a();
    String str = com.xiaomi.e.d.c.a("all", "xm:chat");
    localObject = ((com.xiaomi.e.d.c)localObject).a.get(str);
    if ((localObject != null) && ((localObject instanceof ah))) {
      return ah.a(paramXmlPullParser);
    }
    return null;
  }
  
  private static String h(XmlPullParser paramXmlPullParser)
  {
    int i = 0;
    while (i < paramXmlPullParser.getAttributeCount())
    {
      String str = paramXmlPullParser.getAttributeName(i);
      if (("xml:lang".equals(str)) || (("lang".equals(str)) && ("xml".equals(paramXmlPullParser.getAttributePrefix(i))))) {
        return paramXmlPullParser.getAttributeValue(i);
      }
      i += 1;
    }
    return null;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\e\e\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
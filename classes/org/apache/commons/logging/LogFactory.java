package org.apache.commons.logging;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintStream;
import java.net.URL;
import java.security.AccessController;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Properties;

public abstract class LogFactory
{
  public static final String DIAGNOSTICS_DEST_PROPERTY = "org.apache.commons.logging.diagnostics.dest";
  public static final String FACTORY_DEFAULT = "org.apache.commons.logging.impl.LogFactoryImpl";
  public static final String FACTORY_PROPERTIES = "commons-logging.properties";
  public static final String FACTORY_PROPERTY = "org.apache.commons.logging.LogFactory";
  public static final String HASHTABLE_IMPLEMENTATION_PROPERTY = "org.apache.commons.logging.LogFactory.HashtableImpl";
  public static final String PRIORITY_KEY = "priority";
  protected static final String SERVICE_ID = "META-INF/services/org.apache.commons.logging.LogFactory";
  public static final String TCCL_KEY = "use_tccl";
  private static final String WEAK_HASHTABLE_CLASSNAME = "org.apache.commons.logging.impl.WeakHashtable";
  static Class class$org$apache$commons$logging$LogFactory;
  private static final String diagnosticPrefix;
  private static PrintStream diagnosticsStream = null;
  protected static Hashtable factories = null;
  protected static volatile LogFactory nullClassLoaderFactory = null;
  private static final ClassLoader thisClassLoader;
  
  static
  {
    Object localObject1;
    if (class$org$apache$commons$logging$LogFactory == null)
    {
      localObject1 = class$("org.apache.commons.logging.LogFactory");
      class$org$apache$commons$logging$LogFactory = (Class)localObject1;
      thisClassLoader = getClassLoader((Class)localObject1);
    }
    for (;;)
    {
      try
      {
        localObject1 = thisClassLoader;
        if (thisClassLoader != null) {
          continue;
        }
        localObject1 = "BOOTLOADER";
      }
      catch (SecurityException localSecurityException)
      {
        Object localObject2 = "UNKNOWN";
        continue;
        localObject2 = class$org$apache$commons$logging$LogFactory;
        continue;
      }
      diagnosticPrefix = "[LogFactory from " + (String)localObject1 + "] ";
      diagnosticsStream = initDiagnostics();
      if (class$org$apache$commons$logging$LogFactory != null) {
        continue;
      }
      localObject1 = class$("org.apache.commons.logging.LogFactory");
      class$org$apache$commons$logging$LogFactory = (Class)localObject1;
      logClassLoaderEnvironment((Class)localObject1);
      factories = createFactoryStore();
      if (isDiagnosticsEnabled()) {
        logDiagnostic("BOOTSTRAP COMPLETED");
      }
      return;
      localObject1 = class$org$apache$commons$logging$LogFactory;
      break;
      localObject1 = objectId(localObject1);
    }
  }
  
  private static void cacheFactory(ClassLoader paramClassLoader, LogFactory paramLogFactory)
  {
    if (paramLogFactory != null)
    {
      if (paramClassLoader == null) {
        nullClassLoaderFactory = paramLogFactory;
      }
    }
    else {
      return;
    }
    factories.put(paramClassLoader, paramLogFactory);
  }
  
  static Class class$(String paramString)
  {
    try
    {
      paramString = Class.forName(paramString);
      return paramString;
    }
    catch (ClassNotFoundException paramString)
    {
      throw new NoClassDefFoundError(paramString.getMessage());
    }
  }
  
  /* Error */
  protected static Object createFactory(String paramString, ClassLoader paramClassLoader)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 6
    //   3: aconst_null
    //   4: astore 4
    //   6: aconst_null
    //   7: astore_3
    //   8: aconst_null
    //   9: astore 5
    //   11: aload_1
    //   12: ifnull +817 -> 829
    //   15: aload_1
    //   16: aload_0
    //   17: invokevirtual 150	java/lang/ClassLoader:loadClass	(Ljava/lang/String;)Ljava/lang/Class;
    //   20: astore_3
    //   21: aload_3
    //   22: astore 5
    //   24: aload_3
    //   25: astore_2
    //   26: aload_3
    //   27: astore 6
    //   29: aload_3
    //   30: astore 4
    //   32: getstatic 55	org/apache/commons/logging/LogFactory:class$org$apache$commons$logging$LogFactory	Ljava/lang/Class;
    //   35: ifnonnull +138 -> 173
    //   38: aload_3
    //   39: astore 5
    //   41: aload_3
    //   42: astore_2
    //   43: aload_3
    //   44: astore 6
    //   46: aload_3
    //   47: astore 4
    //   49: ldc 17
    //   51: invokestatic 59	org/apache/commons/logging/LogFactory:class$	(Ljava/lang/String;)Ljava/lang/Class;
    //   54: astore 7
    //   56: aload_3
    //   57: astore 5
    //   59: aload_3
    //   60: astore_2
    //   61: aload_3
    //   62: astore 6
    //   64: aload_3
    //   65: astore 4
    //   67: aload 7
    //   69: putstatic 55	org/apache/commons/logging/LogFactory:class$org$apache$commons$logging$LogFactory	Ljava/lang/Class;
    //   72: aload_3
    //   73: astore 5
    //   75: aload_3
    //   76: astore_2
    //   77: aload_3
    //   78: astore 6
    //   80: aload_3
    //   81: astore 4
    //   83: aload 7
    //   85: aload_3
    //   86: invokevirtual 154	java/lang/Class:isAssignableFrom	(Ljava/lang/Class;)Z
    //   89: ifeq +103 -> 192
    //   92: aload_3
    //   93: astore 5
    //   95: aload_3
    //   96: astore_2
    //   97: aload_3
    //   98: astore 6
    //   100: aload_3
    //   101: astore 4
    //   103: invokestatic 103	org/apache/commons/logging/LogFactory:isDiagnosticsEnabled	()Z
    //   106: ifeq +48 -> 154
    //   109: aload_3
    //   110: astore 5
    //   112: aload_3
    //   113: astore_2
    //   114: aload_3
    //   115: astore 6
    //   117: aload_3
    //   118: astore 4
    //   120: new 69	java/lang/StringBuffer
    //   123: dup
    //   124: ldc -100
    //   126: invokespecial 75	java/lang/StringBuffer:<init>	(Ljava/lang/String;)V
    //   129: aload_3
    //   130: invokevirtual 159	java/lang/Class:getName	()Ljava/lang/String;
    //   133: invokevirtual 79	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   136: ldc -95
    //   138: invokevirtual 79	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   141: aload_1
    //   142: invokestatic 112	org/apache/commons/logging/LogFactory:objectId	(Ljava/lang/Object;)Ljava/lang/String;
    //   145: invokevirtual 79	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   148: invokevirtual 85	java/lang/StringBuffer:toString	()Ljava/lang/String;
    //   151: invokestatic 108	org/apache/commons/logging/LogFactory:logDiagnostic	(Ljava/lang/String;)V
    //   154: aload_3
    //   155: astore 5
    //   157: aload_3
    //   158: astore_2
    //   159: aload_3
    //   160: astore 6
    //   162: aload_3
    //   163: astore 4
    //   165: aload_3
    //   166: invokevirtual 165	java/lang/Class:newInstance	()Ljava/lang/Object;
    //   169: checkcast 2	org/apache/commons/logging/LogFactory
    //   172: areturn
    //   173: aload_3
    //   174: astore 5
    //   176: aload_3
    //   177: astore_2
    //   178: aload_3
    //   179: astore 6
    //   181: aload_3
    //   182: astore 4
    //   184: getstatic 55	org/apache/commons/logging/LogFactory:class$org$apache$commons$logging$LogFactory	Ljava/lang/Class;
    //   187: astore 7
    //   189: goto -117 -> 72
    //   192: aload_3
    //   193: astore 5
    //   195: aload_3
    //   196: astore_2
    //   197: aload_3
    //   198: astore 6
    //   200: aload_3
    //   201: astore 4
    //   203: invokestatic 103	org/apache/commons/logging/LogFactory:isDiagnosticsEnabled	()Z
    //   206: ifeq -52 -> 154
    //   209: aload_3
    //   210: astore 5
    //   212: aload_3
    //   213: astore_2
    //   214: aload_3
    //   215: astore 6
    //   217: aload_3
    //   218: astore 4
    //   220: new 69	java/lang/StringBuffer
    //   223: dup
    //   224: ldc -89
    //   226: invokespecial 75	java/lang/StringBuffer:<init>	(Ljava/lang/String;)V
    //   229: aload_3
    //   230: invokevirtual 159	java/lang/Class:getName	()Ljava/lang/String;
    //   233: invokevirtual 79	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   236: ldc -87
    //   238: invokevirtual 79	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   241: aload_3
    //   242: invokevirtual 172	java/lang/Class:getClassLoader	()Ljava/lang/ClassLoader;
    //   245: invokestatic 112	org/apache/commons/logging/LogFactory:objectId	(Ljava/lang/Object;)Ljava/lang/String;
    //   248: invokevirtual 79	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   251: ldc -82
    //   253: invokevirtual 79	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   256: astore 8
    //   258: aload_3
    //   259: astore 5
    //   261: aload_3
    //   262: astore_2
    //   263: aload_3
    //   264: astore 6
    //   266: aload_3
    //   267: astore 4
    //   269: getstatic 55	org/apache/commons/logging/LogFactory:class$org$apache$commons$logging$LogFactory	Ljava/lang/Class;
    //   272: ifnonnull +206 -> 478
    //   275: aload_3
    //   276: astore 5
    //   278: aload_3
    //   279: astore_2
    //   280: aload_3
    //   281: astore 6
    //   283: aload_3
    //   284: astore 4
    //   286: ldc 17
    //   288: invokestatic 59	org/apache/commons/logging/LogFactory:class$	(Ljava/lang/String;)Ljava/lang/Class;
    //   291: astore 7
    //   293: aload_3
    //   294: astore 5
    //   296: aload_3
    //   297: astore_2
    //   298: aload_3
    //   299: astore 6
    //   301: aload_3
    //   302: astore 4
    //   304: aload 7
    //   306: putstatic 55	org/apache/commons/logging/LogFactory:class$org$apache$commons$logging$LogFactory	Ljava/lang/Class;
    //   309: aload_3
    //   310: astore 5
    //   312: aload_3
    //   313: astore_2
    //   314: aload_3
    //   315: astore 6
    //   317: aload_3
    //   318: astore 4
    //   320: aload 8
    //   322: aload 7
    //   324: invokevirtual 159	java/lang/Class:getName	()Ljava/lang/String;
    //   327: invokevirtual 79	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   330: ldc -80
    //   332: invokevirtual 79	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   335: invokevirtual 85	java/lang/StringBuffer:toString	()Ljava/lang/String;
    //   338: invokestatic 108	org/apache/commons/logging/LogFactory:logDiagnostic	(Ljava/lang/String;)V
    //   341: aload_3
    //   342: astore 5
    //   344: aload_3
    //   345: astore_2
    //   346: aload_3
    //   347: astore 6
    //   349: aload_3
    //   350: astore 4
    //   352: ldc -78
    //   354: aload_1
    //   355: invokestatic 182	org/apache/commons/logging/LogFactory:logHierarchy	(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    //   358: goto -204 -> 154
    //   361: astore 4
    //   363: aload 5
    //   365: astore_2
    //   366: aload 5
    //   368: astore_3
    //   369: aload_1
    //   370: getstatic 65	org/apache/commons/logging/LogFactory:thisClassLoader	Ljava/lang/ClassLoader;
    //   373: if_acmpne +456 -> 829
    //   376: aload 5
    //   378: astore_2
    //   379: invokestatic 103	org/apache/commons/logging/LogFactory:isDiagnosticsEnabled	()Z
    //   382: ifeq +37 -> 419
    //   385: aload 5
    //   387: astore_2
    //   388: new 69	java/lang/StringBuffer
    //   391: dup
    //   392: ldc -72
    //   394: invokespecial 75	java/lang/StringBuffer:<init>	(Ljava/lang/String;)V
    //   397: aload_0
    //   398: invokevirtual 79	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   401: ldc -70
    //   403: invokevirtual 79	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   406: aload_1
    //   407: invokestatic 112	org/apache/commons/logging/LogFactory:objectId	(Ljava/lang/Object;)Ljava/lang/String;
    //   410: invokevirtual 79	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   413: invokevirtual 85	java/lang/StringBuffer:toString	()Ljava/lang/String;
    //   416: invokestatic 108	org/apache/commons/logging/LogFactory:logDiagnostic	(Ljava/lang/String;)V
    //   419: aload 5
    //   421: astore_2
    //   422: aload 4
    //   424: athrow
    //   425: astore_0
    //   426: aload_2
    //   427: astore_1
    //   428: invokestatic 103	org/apache/commons/logging/LogFactory:isDiagnosticsEnabled	()Z
    //   431: ifeq +8 -> 439
    //   434: ldc -68
    //   436: invokestatic 108	org/apache/commons/logging/LogFactory:logDiagnostic	(Ljava/lang/String;)V
    //   439: aload_1
    //   440: ifnull +452 -> 892
    //   443: getstatic 55	org/apache/commons/logging/LogFactory:class$org$apache$commons$logging$LogFactory	Ljava/lang/Class;
    //   446: ifnonnull +439 -> 885
    //   449: ldc 17
    //   451: invokestatic 59	org/apache/commons/logging/LogFactory:class$	(Ljava/lang/String;)Ljava/lang/Class;
    //   454: astore_2
    //   455: aload_2
    //   456: putstatic 55	org/apache/commons/logging/LogFactory:class$org$apache$commons$logging$LogFactory	Ljava/lang/Class;
    //   459: aload_2
    //   460: aload_1
    //   461: invokevirtual 154	java/lang/Class:isAssignableFrom	(Ljava/lang/Class;)Z
    //   464: ifne +428 -> 892
    //   467: new 190	org/apache/commons/logging/LogConfigurationException
    //   470: dup
    //   471: ldc -64
    //   473: aload_0
    //   474: invokespecial 195	org/apache/commons/logging/LogConfigurationException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   477: areturn
    //   478: aload_3
    //   479: astore 5
    //   481: aload_3
    //   482: astore_2
    //   483: aload_3
    //   484: astore 6
    //   486: aload_3
    //   487: astore 4
    //   489: getstatic 55	org/apache/commons/logging/LogFactory:class$org$apache$commons$logging$LogFactory	Ljava/lang/Class;
    //   492: astore 7
    //   494: goto -185 -> 309
    //   497: astore 4
    //   499: aload 6
    //   501: astore_2
    //   502: aload 6
    //   504: astore_3
    //   505: aload_1
    //   506: getstatic 65	org/apache/commons/logging/LogFactory:thisClassLoader	Ljava/lang/ClassLoader;
    //   509: if_acmpne +320 -> 829
    //   512: aload 6
    //   514: astore_2
    //   515: invokestatic 103	org/apache/commons/logging/LogFactory:isDiagnosticsEnabled	()Z
    //   518: ifeq +42 -> 560
    //   521: aload 6
    //   523: astore_2
    //   524: new 69	java/lang/StringBuffer
    //   527: dup
    //   528: ldc -59
    //   530: invokespecial 75	java/lang/StringBuffer:<init>	(Ljava/lang/String;)V
    //   533: aload_0
    //   534: invokevirtual 79	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   537: ldc -57
    //   539: invokevirtual 79	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   542: aload_1
    //   543: invokestatic 112	org/apache/commons/logging/LogFactory:objectId	(Ljava/lang/Object;)Ljava/lang/String;
    //   546: invokevirtual 79	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   549: ldc -55
    //   551: invokevirtual 79	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   554: invokevirtual 85	java/lang/StringBuffer:toString	()Ljava/lang/String;
    //   557: invokestatic 108	org/apache/commons/logging/LogFactory:logDiagnostic	(Ljava/lang/String;)V
    //   560: aload 6
    //   562: astore_2
    //   563: aload 4
    //   565: athrow
    //   566: astore_2
    //   567: aload 4
    //   569: astore_2
    //   570: aload 4
    //   572: astore_3
    //   573: aload_1
    //   574: getstatic 65	org/apache/commons/logging/LogFactory:thisClassLoader	Ljava/lang/ClassLoader;
    //   577: if_acmpne +252 -> 829
    //   580: aload 4
    //   582: astore_2
    //   583: aload 4
    //   585: invokestatic 204	org/apache/commons/logging/LogFactory:implementsLogFactory	(Ljava/lang/Class;)Z
    //   588: istore 9
    //   590: aload 4
    //   592: astore_2
    //   593: new 69	java/lang/StringBuffer
    //   596: dup
    //   597: invokespecial 205	java/lang/StringBuffer:<init>	()V
    //   600: astore_1
    //   601: aload 4
    //   603: astore_2
    //   604: aload_1
    //   605: ldc -49
    //   607: invokevirtual 79	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   610: pop
    //   611: aload 4
    //   613: astore_2
    //   614: aload_1
    //   615: ldc -47
    //   617: invokevirtual 79	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   620: pop
    //   621: aload 4
    //   623: astore_2
    //   624: aload_1
    //   625: aload_0
    //   626: invokevirtual 79	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   629: pop
    //   630: aload 4
    //   632: astore_2
    //   633: aload_1
    //   634: ldc -45
    //   636: invokevirtual 79	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   639: pop
    //   640: aload 4
    //   642: astore_2
    //   643: getstatic 55	org/apache/commons/logging/LogFactory:class$org$apache$commons$logging$LogFactory	Ljava/lang/Class;
    //   646: ifnonnull +160 -> 806
    //   649: aload 4
    //   651: astore_2
    //   652: ldc 17
    //   654: invokestatic 59	org/apache/commons/logging/LogFactory:class$	(Ljava/lang/String;)Ljava/lang/Class;
    //   657: astore_0
    //   658: aload 4
    //   660: astore_2
    //   661: aload_0
    //   662: putstatic 55	org/apache/commons/logging/LogFactory:class$org$apache$commons$logging$LogFactory	Ljava/lang/Class;
    //   665: aload 4
    //   667: astore_2
    //   668: aload_1
    //   669: aload_0
    //   670: invokevirtual 159	java/lang/Class:getName	()Ljava/lang/String;
    //   673: invokevirtual 79	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   676: pop
    //   677: aload 4
    //   679: astore_2
    //   680: aload_1
    //   681: ldc -43
    //   683: invokevirtual 79	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   686: pop
    //   687: iload 9
    //   689: ifeq +127 -> 816
    //   692: aload 4
    //   694: astore_2
    //   695: aload_1
    //   696: ldc -41
    //   698: invokevirtual 79	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   701: pop
    //   702: aload 4
    //   704: astore_2
    //   705: aload_1
    //   706: ldc -39
    //   708: invokevirtual 79	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   711: pop
    //   712: aload 4
    //   714: astore_2
    //   715: aload_1
    //   716: ldc -37
    //   718: invokevirtual 79	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   721: pop
    //   722: aload 4
    //   724: astore_2
    //   725: aload_1
    //   726: ldc -35
    //   728: invokevirtual 79	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   731: pop
    //   732: aload 4
    //   734: astore_2
    //   735: aload_1
    //   736: ldc -33
    //   738: invokevirtual 79	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   741: pop
    //   742: aload 4
    //   744: astore_2
    //   745: aload_1
    //   746: ldc -31
    //   748: invokevirtual 79	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   751: pop
    //   752: aload 4
    //   754: astore_2
    //   755: aload_1
    //   756: ldc -29
    //   758: invokevirtual 79	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   761: pop
    //   762: aload 4
    //   764: astore_2
    //   765: aload_1
    //   766: ldc -27
    //   768: invokevirtual 79	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   771: pop
    //   772: aload 4
    //   774: astore_2
    //   775: invokestatic 103	org/apache/commons/logging/LogFactory:isDiagnosticsEnabled	()Z
    //   778: ifeq +13 -> 791
    //   781: aload 4
    //   783: astore_2
    //   784: aload_1
    //   785: invokevirtual 85	java/lang/StringBuffer:toString	()Ljava/lang/String;
    //   788: invokestatic 108	org/apache/commons/logging/LogFactory:logDiagnostic	(Ljava/lang/String;)V
    //   791: aload 4
    //   793: astore_2
    //   794: new 143	java/lang/ClassCastException
    //   797: dup
    //   798: aload_1
    //   799: invokevirtual 85	java/lang/StringBuffer:toString	()Ljava/lang/String;
    //   802: invokespecial 230	java/lang/ClassCastException:<init>	(Ljava/lang/String;)V
    //   805: athrow
    //   806: aload 4
    //   808: astore_2
    //   809: getstatic 55	org/apache/commons/logging/LogFactory:class$org$apache$commons$logging$LogFactory	Ljava/lang/Class;
    //   812: astore_0
    //   813: goto -148 -> 665
    //   816: aload 4
    //   818: astore_2
    //   819: aload_1
    //   820: ldc -24
    //   822: invokevirtual 79	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   825: pop
    //   826: goto -64 -> 762
    //   829: aload_3
    //   830: astore_2
    //   831: invokestatic 103	org/apache/commons/logging/LogFactory:isDiagnosticsEnabled	()Z
    //   834: ifeq +32 -> 866
    //   837: aload_3
    //   838: astore_2
    //   839: new 69	java/lang/StringBuffer
    //   842: dup
    //   843: ldc -22
    //   845: invokespecial 75	java/lang/StringBuffer:<init>	(Ljava/lang/String;)V
    //   848: aload_1
    //   849: invokestatic 112	org/apache/commons/logging/LogFactory:objectId	(Ljava/lang/Object;)Ljava/lang/String;
    //   852: invokevirtual 79	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   855: ldc -20
    //   857: invokevirtual 79	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   860: invokevirtual 85	java/lang/StringBuffer:toString	()Ljava/lang/String;
    //   863: invokestatic 108	org/apache/commons/logging/LogFactory:logDiagnostic	(Ljava/lang/String;)V
    //   866: aload_3
    //   867: astore_2
    //   868: aload_0
    //   869: invokestatic 133	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   872: astore_0
    //   873: aload_0
    //   874: astore_2
    //   875: aload_0
    //   876: invokevirtual 165	java/lang/Class:newInstance	()Ljava/lang/Object;
    //   879: checkcast 2	org/apache/commons/logging/LogFactory
    //   882: astore_0
    //   883: aload_0
    //   884: areturn
    //   885: getstatic 55	org/apache/commons/logging/LogFactory:class$org$apache$commons$logging$LogFactory	Ljava/lang/Class;
    //   888: astore_2
    //   889: goto -430 -> 459
    //   892: new 190	org/apache/commons/logging/LogConfigurationException
    //   895: dup
    //   896: aload_0
    //   897: invokespecial 239	org/apache/commons/logging/LogConfigurationException:<init>	(Ljava/lang/Throwable;)V
    //   900: areturn
    //   901: astore_0
    //   902: aconst_null
    //   903: astore_1
    //   904: goto -476 -> 428
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	907	0	paramString	String
    //   0	907	1	paramClassLoader	ClassLoader
    //   25	538	2	localObject1	Object
    //   566	1	2	localClassCastException	ClassCastException
    //   569	320	2	localObject2	Object
    //   7	860	3	localObject3	Object
    //   4	347	4	localObject4	Object
    //   361	62	4	localClassNotFoundException	ClassNotFoundException
    //   487	1	4	localObject5	Object
    //   497	320	4	localNoClassDefFoundError	NoClassDefFoundError
    //   9	471	5	localObject6	Object
    //   1	560	6	localObject7	Object
    //   54	439	7	localClass	Class
    //   256	65	8	localStringBuffer	StringBuffer
    //   588	100	9	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   15	21	361	java/lang/ClassNotFoundException
    //   32	38	361	java/lang/ClassNotFoundException
    //   49	56	361	java/lang/ClassNotFoundException
    //   67	72	361	java/lang/ClassNotFoundException
    //   83	92	361	java/lang/ClassNotFoundException
    //   103	109	361	java/lang/ClassNotFoundException
    //   120	154	361	java/lang/ClassNotFoundException
    //   165	173	361	java/lang/ClassNotFoundException
    //   184	189	361	java/lang/ClassNotFoundException
    //   203	209	361	java/lang/ClassNotFoundException
    //   220	258	361	java/lang/ClassNotFoundException
    //   269	275	361	java/lang/ClassNotFoundException
    //   286	293	361	java/lang/ClassNotFoundException
    //   304	309	361	java/lang/ClassNotFoundException
    //   320	341	361	java/lang/ClassNotFoundException
    //   352	358	361	java/lang/ClassNotFoundException
    //   489	494	361	java/lang/ClassNotFoundException
    //   32	38	425	java/lang/Exception
    //   49	56	425	java/lang/Exception
    //   67	72	425	java/lang/Exception
    //   83	92	425	java/lang/Exception
    //   103	109	425	java/lang/Exception
    //   120	154	425	java/lang/Exception
    //   165	173	425	java/lang/Exception
    //   184	189	425	java/lang/Exception
    //   203	209	425	java/lang/Exception
    //   220	258	425	java/lang/Exception
    //   269	275	425	java/lang/Exception
    //   286	293	425	java/lang/Exception
    //   304	309	425	java/lang/Exception
    //   320	341	425	java/lang/Exception
    //   352	358	425	java/lang/Exception
    //   369	376	425	java/lang/Exception
    //   379	385	425	java/lang/Exception
    //   388	419	425	java/lang/Exception
    //   422	425	425	java/lang/Exception
    //   489	494	425	java/lang/Exception
    //   505	512	425	java/lang/Exception
    //   515	521	425	java/lang/Exception
    //   524	560	425	java/lang/Exception
    //   563	566	425	java/lang/Exception
    //   573	580	425	java/lang/Exception
    //   583	590	425	java/lang/Exception
    //   593	601	425	java/lang/Exception
    //   604	611	425	java/lang/Exception
    //   614	621	425	java/lang/Exception
    //   624	630	425	java/lang/Exception
    //   633	640	425	java/lang/Exception
    //   643	649	425	java/lang/Exception
    //   652	658	425	java/lang/Exception
    //   661	665	425	java/lang/Exception
    //   668	677	425	java/lang/Exception
    //   680	687	425	java/lang/Exception
    //   695	702	425	java/lang/Exception
    //   705	712	425	java/lang/Exception
    //   715	722	425	java/lang/Exception
    //   725	732	425	java/lang/Exception
    //   735	742	425	java/lang/Exception
    //   745	752	425	java/lang/Exception
    //   755	762	425	java/lang/Exception
    //   765	772	425	java/lang/Exception
    //   775	781	425	java/lang/Exception
    //   784	791	425	java/lang/Exception
    //   794	806	425	java/lang/Exception
    //   809	813	425	java/lang/Exception
    //   819	826	425	java/lang/Exception
    //   831	837	425	java/lang/Exception
    //   839	866	425	java/lang/Exception
    //   868	873	425	java/lang/Exception
    //   875	883	425	java/lang/Exception
    //   15	21	497	java/lang/NoClassDefFoundError
    //   32	38	497	java/lang/NoClassDefFoundError
    //   49	56	497	java/lang/NoClassDefFoundError
    //   67	72	497	java/lang/NoClassDefFoundError
    //   83	92	497	java/lang/NoClassDefFoundError
    //   103	109	497	java/lang/NoClassDefFoundError
    //   120	154	497	java/lang/NoClassDefFoundError
    //   165	173	497	java/lang/NoClassDefFoundError
    //   184	189	497	java/lang/NoClassDefFoundError
    //   203	209	497	java/lang/NoClassDefFoundError
    //   220	258	497	java/lang/NoClassDefFoundError
    //   269	275	497	java/lang/NoClassDefFoundError
    //   286	293	497	java/lang/NoClassDefFoundError
    //   304	309	497	java/lang/NoClassDefFoundError
    //   320	341	497	java/lang/NoClassDefFoundError
    //   352	358	497	java/lang/NoClassDefFoundError
    //   489	494	497	java/lang/NoClassDefFoundError
    //   15	21	566	java/lang/ClassCastException
    //   32	38	566	java/lang/ClassCastException
    //   49	56	566	java/lang/ClassCastException
    //   67	72	566	java/lang/ClassCastException
    //   83	92	566	java/lang/ClassCastException
    //   103	109	566	java/lang/ClassCastException
    //   120	154	566	java/lang/ClassCastException
    //   165	173	566	java/lang/ClassCastException
    //   184	189	566	java/lang/ClassCastException
    //   203	209	566	java/lang/ClassCastException
    //   220	258	566	java/lang/ClassCastException
    //   269	275	566	java/lang/ClassCastException
    //   286	293	566	java/lang/ClassCastException
    //   304	309	566	java/lang/ClassCastException
    //   320	341	566	java/lang/ClassCastException
    //   352	358	566	java/lang/ClassCastException
    //   489	494	566	java/lang/ClassCastException
    //   15	21	901	java/lang/Exception
  }
  
  private static final Hashtable createFactoryStore()
  {
    try
    {
      Object localObject1 = getSystemProperty("org.apache.commons.logging.LogFactory.HashtableImpl", null);
      if (localObject1 == null)
      {
        localObject1 = "org.apache.commons.logging.impl.WeakHashtable";
        try
        {
          localObject3 = (Hashtable)Class.forName((String)localObject1).newInstance();
          localObject1 = localObject3;
        }
        catch (Throwable localThrowable)
        {
          for (;;)
          {
            Object localObject3;
            Object localObject2;
            handleThrowable(localThrowable);
            if (!"org.apache.commons.logging.impl.WeakHashtable".equals(localObject2))
            {
              if (isDiagnosticsEnabled())
              {
                logDiagnostic("[ERROR] LogFactory: Load of custom hashtable failed");
                localObject2 = null;
              }
              else
              {
                System.err.println("[ERROR] LogFactory: Load of custom hashtable failed");
              }
            }
            else {
              localObject2 = null;
            }
          }
        }
        localObject3 = localObject1;
        if (localObject1 == null) {
          localObject3 = new Hashtable();
        }
        return (Hashtable)localObject3;
      }
    }
    catch (SecurityException localSecurityException)
    {
      for (;;)
      {
        localObject2 = null;
      }
    }
  }
  
  protected static ClassLoader directGetContextClassLoader()
  {
    try
    {
      ClassLoader localClassLoader = Thread.currentThread().getContextClassLoader();
      return localClassLoader;
    }
    catch (SecurityException localSecurityException) {}
    return null;
  }
  
  private static LogFactory getCachedFactory(ClassLoader paramClassLoader)
  {
    if (paramClassLoader == null) {
      return nullClassLoaderFactory;
    }
    return (LogFactory)factories.get(paramClassLoader);
  }
  
  protected static ClassLoader getClassLoader(Class paramClass)
  {
    try
    {
      ClassLoader localClassLoader = paramClass.getClassLoader();
      return localClassLoader;
    }
    catch (SecurityException localSecurityException)
    {
      if (isDiagnosticsEnabled()) {
        logDiagnostic("Unable to get classloader for class '" + paramClass + "' due to security restrictions - " + localSecurityException.getMessage());
      }
      throw localSecurityException;
    }
  }
  
  private static final Properties getConfigurationFile(ClassLoader paramClassLoader, String paramString)
  {
    Properties localProperties = null;
    localObject1 = null;
    localObject3 = null;
    for (;;)
    {
      try
      {
        localEnumeration = getResources(paramClassLoader, paramString);
        if (localEnumeration != null) {
          continue;
        }
        paramClassLoader = (ClassLoader)localObject3;
        return paramClassLoader;
      }
      catch (SecurityException paramClassLoader)
      {
        Enumeration localEnumeration;
        String str;
        double d2;
        Object localObject2;
        paramClassLoader = null;
        continue;
        double d1 = 0.0D;
        localObject1 = null;
        paramClassLoader = (ClassLoader)localObject2;
        continue;
        paramClassLoader = (ClassLoader)localObject3;
        d1 = d2;
        localObject1 = localObject2;
        continue;
      }
      try
      {
        if (localEnumeration.hasMoreElements())
        {
          localObject3 = (URL)localEnumeration.nextElement();
          localProperties = getProperties((URL)localObject3);
          if (localProperties == null) {
            continue;
          }
          if (localObject1 != null) {}
        }
      }
      catch (SecurityException localSecurityException)
      {
        localObject3 = paramClassLoader;
        localObject2 = localObject1;
        if (isDiagnosticsEnabled())
        {
          logDiagnostic("SecurityException thrown while trying to find/read config files.");
          localObject2 = localObject1;
          localObject3 = paramClassLoader;
        }
        paramClassLoader = (ClassLoader)localObject2;
      }
      try
      {
        paramClassLoader = localProperties.getProperty("priority");
        if (paramClassLoader == null) {
          continue;
        }
        d1 = Double.parseDouble(paramClassLoader);
      }
      catch (SecurityException paramClassLoader)
      {
        localObject1 = localObject2;
        paramClassLoader = (ClassLoader)localObject3;
        continue;
        d2 = 0.0D;
        continue;
        d1 = 0.0D;
        continue;
      }
      if (isDiagnosticsEnabled()) {
        logDiagnostic("[LOOKUP] Properties file found at '" + localObject3 + "' with priority " + d1);
      }
      paramClassLoader = (ClassLoader)localObject3;
      localObject1 = localProperties;
      continue;
      str = localProperties.getProperty("priority");
      if (str == null) {
        continue;
      }
      d2 = Double.parseDouble(str);
      if (d2 > d1)
      {
        if (!isDiagnosticsEnabled()) {
          continue;
        }
        logDiagnostic("[LOOKUP] Properties file at '" + localObject3 + "' with priority " + d2 + " overrides file at '" + paramClassLoader + "' with priority " + d1);
        continue;
      }
      if (isDiagnosticsEnabled())
      {
        logDiagnostic("[LOOKUP] Properties file at '" + localObject3 + "' with priority " + d2 + " does not override file at '" + paramClassLoader + "' with priority " + d1);
        continue;
        if (isDiagnosticsEnabled())
        {
          if (localObject2 != null) {
            continue;
          }
          logDiagnostic("[LOOKUP] No properties file of name '" + paramString + "' found.");
          return (Properties)localObject2;
          localObject3 = paramClassLoader;
          localObject2 = localObject1;
        }
      }
    }
    logDiagnostic("[LOOKUP] Properties file of name '" + paramString + "' found at '" + localObject3 + '"');
    return (Properties)localObject2;
  }
  
  protected static ClassLoader getContextClassLoader()
  {
    return directGetContextClassLoader();
  }
  
  private static ClassLoader getContextClassLoaderInternal()
  {
    return (ClassLoader)AccessController.doPrivileged(new LogFactory.1());
  }
  
  /* Error */
  public static LogFactory getFactory()
  {
    // Byte code:
    //   0: invokestatic 369	org/apache/commons/logging/LogFactory:getContextClassLoaderInternal	()Ljava/lang/ClassLoader;
    //   3: astore_3
    //   4: aload_3
    //   5: ifnonnull +15 -> 20
    //   8: invokestatic 103	org/apache/commons/logging/LogFactory:isDiagnosticsEnabled	()Z
    //   11: ifeq +9 -> 20
    //   14: ldc_w 371
    //   17: invokestatic 108	org/apache/commons/logging/LogFactory:logDiagnostic	(Ljava/lang/String;)V
    //   20: aload_3
    //   21: invokestatic 373	org/apache/commons/logging/LogFactory:getCachedFactory	(Ljava/lang/ClassLoader;)Lorg/apache/commons/logging/LogFactory;
    //   24: astore_1
    //   25: aload_1
    //   26: ifnull +5 -> 31
    //   29: aload_1
    //   30: areturn
    //   31: invokestatic 103	org/apache/commons/logging/LogFactory:isDiagnosticsEnabled	()Z
    //   34: ifeq +33 -> 67
    //   37: new 69	java/lang/StringBuffer
    //   40: dup
    //   41: ldc_w 375
    //   44: invokespecial 75	java/lang/StringBuffer:<init>	(Ljava/lang/String;)V
    //   47: aload_3
    //   48: invokestatic 112	org/apache/commons/logging/LogFactory:objectId	(Ljava/lang/Object;)Ljava/lang/String;
    //   51: invokevirtual 79	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   54: invokevirtual 85	java/lang/StringBuffer:toString	()Ljava/lang/String;
    //   57: invokestatic 108	org/apache/commons/logging/LogFactory:logDiagnostic	(Ljava/lang/String;)V
    //   60: ldc_w 377
    //   63: aload_3
    //   64: invokestatic 182	org/apache/commons/logging/LogFactory:logHierarchy	(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    //   67: aload_3
    //   68: ldc 14
    //   70: invokestatic 379	org/apache/commons/logging/LogFactory:getConfigurationFile	(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/util/Properties;
    //   73: astore 4
    //   75: aload 4
    //   77: ifnull +604 -> 681
    //   80: aload 4
    //   82: ldc 29
    //   84: invokevirtual 317	java/util/Properties:getProperty	(Ljava/lang/String;)Ljava/lang/String;
    //   87: astore_0
    //   88: aload_0
    //   89: ifnull +592 -> 681
    //   92: aload_0
    //   93: invokestatic 385	java/lang/Boolean:valueOf	(Ljava/lang/String;)Ljava/lang/Boolean;
    //   96: invokevirtual 388	java/lang/Boolean:booleanValue	()Z
    //   99: ifne +582 -> 681
    //   102: getstatic 65	org/apache/commons/logging/LogFactory:thisClassLoader	Ljava/lang/ClassLoader;
    //   105: astore_2
    //   106: invokestatic 103	org/apache/commons/logging/LogFactory:isDiagnosticsEnabled	()Z
    //   109: ifeq +9 -> 118
    //   112: ldc_w 390
    //   115: invokestatic 108	org/apache/commons/logging/LogFactory:logDiagnostic	(Ljava/lang/String;)V
    //   118: ldc 17
    //   120: aconst_null
    //   121: invokestatic 245	org/apache/commons/logging/LogFactory:getSystemProperty	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   124: astore_0
    //   125: aload_0
    //   126: ifnull +319 -> 445
    //   129: invokestatic 103	org/apache/commons/logging/LogFactory:isDiagnosticsEnabled	()Z
    //   132: ifeq +29 -> 161
    //   135: new 69	java/lang/StringBuffer
    //   138: dup
    //   139: ldc_w 392
    //   142: invokespecial 75	java/lang/StringBuffer:<init>	(Ljava/lang/String;)V
    //   145: aload_0
    //   146: invokevirtual 79	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   149: ldc_w 394
    //   152: invokevirtual 79	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   155: invokevirtual 85	java/lang/StringBuffer:toString	()Ljava/lang/String;
    //   158: invokestatic 108	org/apache/commons/logging/LogFactory:logDiagnostic	(Ljava/lang/String;)V
    //   161: aload_0
    //   162: aload_2
    //   163: aload_3
    //   164: invokestatic 398	org/apache/commons/logging/LogFactory:newFactory	(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;)Lorg/apache/commons/logging/LogFactory;
    //   167: astore_0
    //   168: aload_0
    //   169: astore_1
    //   170: aload_0
    //   171: ifnonnull +119 -> 290
    //   174: invokestatic 103	org/apache/commons/logging/LogFactory:isDiagnosticsEnabled	()Z
    //   177: ifeq +9 -> 186
    //   180: ldc_w 400
    //   183: invokestatic 108	org/apache/commons/logging/LogFactory:logDiagnostic	(Ljava/lang/String;)V
    //   186: aload_3
    //   187: ldc 26
    //   189: invokestatic 404	org/apache/commons/logging/LogFactory:getResourceAsStream	(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/InputStream;
    //   192: astore 5
    //   194: aload 5
    //   196: ifnull +426 -> 622
    //   199: new 406	java/io/BufferedReader
    //   202: dup
    //   203: new 408	java/io/InputStreamReader
    //   206: dup
    //   207: aload 5
    //   209: ldc_w 410
    //   212: invokespecial 413	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;Ljava/lang/String;)V
    //   215: invokespecial 416	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   218: astore_1
    //   219: aload_1
    //   220: invokevirtual 419	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   223: astore 5
    //   225: aload_1
    //   226: invokevirtual 422	java/io/BufferedReader:close	()V
    //   229: aload_0
    //   230: astore_1
    //   231: aload 5
    //   233: ifnull +57 -> 290
    //   236: aload_0
    //   237: astore_1
    //   238: ldc_w 424
    //   241: aload 5
    //   243: invokevirtual 255	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   246: ifne +44 -> 290
    //   249: invokestatic 103	org/apache/commons/logging/LogFactory:isDiagnosticsEnabled	()Z
    //   252: ifeq +30 -> 282
    //   255: new 69	java/lang/StringBuffer
    //   258: dup
    //   259: ldc_w 426
    //   262: invokespecial 75	java/lang/StringBuffer:<init>	(Ljava/lang/String;)V
    //   265: aload 5
    //   267: invokevirtual 79	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   270: ldc_w 428
    //   273: invokevirtual 79	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   276: invokevirtual 85	java/lang/StringBuffer:toString	()Ljava/lang/String;
    //   279: invokestatic 108	org/apache/commons/logging/LogFactory:logDiagnostic	(Ljava/lang/String;)V
    //   282: aload 5
    //   284: aload_2
    //   285: aload_3
    //   286: invokestatic 398	org/apache/commons/logging/LogFactory:newFactory	(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;)Lorg/apache/commons/logging/LogFactory;
    //   289: astore_1
    //   290: aload_1
    //   291: astore_0
    //   292: aload_1
    //   293: ifnonnull +71 -> 364
    //   296: aload 4
    //   298: ifnull +362 -> 660
    //   301: invokestatic 103	org/apache/commons/logging/LogFactory:isDiagnosticsEnabled	()Z
    //   304: ifeq +9 -> 313
    //   307: ldc_w 430
    //   310: invokestatic 108	org/apache/commons/logging/LogFactory:logDiagnostic	(Ljava/lang/String;)V
    //   313: aload 4
    //   315: ldc 17
    //   317: invokevirtual 317	java/util/Properties:getProperty	(Ljava/lang/String;)Ljava/lang/String;
    //   320: astore_0
    //   321: aload_0
    //   322: ifnull +319 -> 641
    //   325: invokestatic 103	org/apache/commons/logging/LogFactory:isDiagnosticsEnabled	()Z
    //   328: ifeq +29 -> 357
    //   331: new 69	java/lang/StringBuffer
    //   334: dup
    //   335: ldc_w 432
    //   338: invokespecial 75	java/lang/StringBuffer:<init>	(Ljava/lang/String;)V
    //   341: aload_0
    //   342: invokevirtual 79	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   345: ldc_w 434
    //   348: invokevirtual 79	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   351: invokevirtual 85	java/lang/StringBuffer:toString	()Ljava/lang/String;
    //   354: invokestatic 108	org/apache/commons/logging/LogFactory:logDiagnostic	(Ljava/lang/String;)V
    //   357: aload_0
    //   358: aload_2
    //   359: aload_3
    //   360: invokestatic 398	org/apache/commons/logging/LogFactory:newFactory	(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;)Lorg/apache/commons/logging/LogFactory;
    //   363: astore_0
    //   364: aload_0
    //   365: astore_1
    //   366: aload_0
    //   367: ifnonnull +25 -> 392
    //   370: invokestatic 103	org/apache/commons/logging/LogFactory:isDiagnosticsEnabled	()Z
    //   373: ifeq +9 -> 382
    //   376: ldc_w 436
    //   379: invokestatic 108	org/apache/commons/logging/LogFactory:logDiagnostic	(Ljava/lang/String;)V
    //   382: ldc 11
    //   384: getstatic 65	org/apache/commons/logging/LogFactory:thisClassLoader	Ljava/lang/ClassLoader;
    //   387: aload_3
    //   388: invokestatic 398	org/apache/commons/logging/LogFactory:newFactory	(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;)Lorg/apache/commons/logging/LogFactory;
    //   391: astore_1
    //   392: aload_1
    //   393: ifnull +286 -> 679
    //   396: aload_3
    //   397: aload_1
    //   398: invokestatic 438	org/apache/commons/logging/LogFactory:cacheFactory	(Ljava/lang/ClassLoader;Lorg/apache/commons/logging/LogFactory;)V
    //   401: aload 4
    //   403: ifnull +276 -> 679
    //   406: aload 4
    //   408: invokevirtual 442	java/util/Properties:propertyNames	()Ljava/util/Enumeration;
    //   411: astore_0
    //   412: aload_0
    //   413: invokeinterface 302 1 0
    //   418: ifeq +261 -> 679
    //   421: aload_0
    //   422: invokeinterface 305 1 0
    //   427: checkcast 251	java/lang/String
    //   430: astore_2
    //   431: aload_1
    //   432: aload_2
    //   433: aload 4
    //   435: aload_2
    //   436: invokevirtual 317	java/util/Properties:getProperty	(Ljava/lang/String;)Ljava/lang/String;
    //   439: invokevirtual 446	org/apache/commons/logging/LogFactory:setAttribute	(Ljava/lang/String;Ljava/lang/Object;)V
    //   442: goto -30 -> 412
    //   445: aload_1
    //   446: astore_0
    //   447: invokestatic 103	org/apache/commons/logging/LogFactory:isDiagnosticsEnabled	()Z
    //   450: ifeq -282 -> 168
    //   453: ldc_w 448
    //   456: invokestatic 108	org/apache/commons/logging/LogFactory:logDiagnostic	(Ljava/lang/String;)V
    //   459: aload_1
    //   460: astore_0
    //   461: goto -293 -> 168
    //   464: astore 5
    //   466: aload_1
    //   467: astore_0
    //   468: invokestatic 103	org/apache/commons/logging/LogFactory:isDiagnosticsEnabled	()Z
    //   471: ifeq -303 -> 168
    //   474: new 69	java/lang/StringBuffer
    //   477: dup
    //   478: ldc_w 450
    //   481: invokespecial 75	java/lang/StringBuffer:<init>	(Ljava/lang/String;)V
    //   484: aload 5
    //   486: invokevirtual 291	java/lang/SecurityException:getMessage	()Ljava/lang/String;
    //   489: invokestatic 453	org/apache/commons/logging/LogFactory:trim	(Ljava/lang/String;)Ljava/lang/String;
    //   492: invokevirtual 79	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   495: ldc_w 455
    //   498: invokevirtual 79	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   501: invokevirtual 85	java/lang/StringBuffer:toString	()Ljava/lang/String;
    //   504: invokestatic 108	org/apache/commons/logging/LogFactory:logDiagnostic	(Ljava/lang/String;)V
    //   507: aload_1
    //   508: astore_0
    //   509: goto -341 -> 168
    //   512: astore_0
    //   513: invokestatic 103	org/apache/commons/logging/LogFactory:isDiagnosticsEnabled	()Z
    //   516: ifeq +35 -> 551
    //   519: new 69	java/lang/StringBuffer
    //   522: dup
    //   523: ldc_w 457
    //   526: invokespecial 75	java/lang/StringBuffer:<init>	(Ljava/lang/String;)V
    //   529: aload_0
    //   530: invokevirtual 458	java/lang/RuntimeException:getMessage	()Ljava/lang/String;
    //   533: invokestatic 453	org/apache/commons/logging/LogFactory:trim	(Ljava/lang/String;)Ljava/lang/String;
    //   536: invokevirtual 79	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   539: ldc_w 460
    //   542: invokevirtual 79	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   545: invokevirtual 85	java/lang/StringBuffer:toString	()Ljava/lang/String;
    //   548: invokestatic 108	org/apache/commons/logging/LogFactory:logDiagnostic	(Ljava/lang/String;)V
    //   551: aload_0
    //   552: athrow
    //   553: astore_1
    //   554: new 406	java/io/BufferedReader
    //   557: dup
    //   558: new 408	java/io/InputStreamReader
    //   561: dup
    //   562: aload 5
    //   564: invokespecial 463	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   567: invokespecial 416	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   570: astore_1
    //   571: goto -352 -> 219
    //   574: astore 5
    //   576: aload_0
    //   577: astore_1
    //   578: invokestatic 103	org/apache/commons/logging/LogFactory:isDiagnosticsEnabled	()Z
    //   581: ifeq -291 -> 290
    //   584: new 69	java/lang/StringBuffer
    //   587: dup
    //   588: ldc_w 450
    //   591: invokespecial 75	java/lang/StringBuffer:<init>	(Ljava/lang/String;)V
    //   594: aload 5
    //   596: invokevirtual 464	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   599: invokestatic 453	org/apache/commons/logging/LogFactory:trim	(Ljava/lang/String;)Ljava/lang/String;
    //   602: invokevirtual 79	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   605: ldc_w 455
    //   608: invokevirtual 79	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   611: invokevirtual 85	java/lang/StringBuffer:toString	()Ljava/lang/String;
    //   614: invokestatic 108	org/apache/commons/logging/LogFactory:logDiagnostic	(Ljava/lang/String;)V
    //   617: aload_0
    //   618: astore_1
    //   619: goto -329 -> 290
    //   622: aload_0
    //   623: astore_1
    //   624: invokestatic 103	org/apache/commons/logging/LogFactory:isDiagnosticsEnabled	()Z
    //   627: ifeq -337 -> 290
    //   630: ldc_w 466
    //   633: invokestatic 108	org/apache/commons/logging/LogFactory:logDiagnostic	(Ljava/lang/String;)V
    //   636: aload_0
    //   637: astore_1
    //   638: goto -348 -> 290
    //   641: aload_1
    //   642: astore_0
    //   643: invokestatic 103	org/apache/commons/logging/LogFactory:isDiagnosticsEnabled	()Z
    //   646: ifeq -282 -> 364
    //   649: ldc_w 468
    //   652: invokestatic 108	org/apache/commons/logging/LogFactory:logDiagnostic	(Ljava/lang/String;)V
    //   655: aload_1
    //   656: astore_0
    //   657: goto -293 -> 364
    //   660: aload_1
    //   661: astore_0
    //   662: invokestatic 103	org/apache/commons/logging/LogFactory:isDiagnosticsEnabled	()Z
    //   665: ifeq -301 -> 364
    //   668: ldc_w 470
    //   671: invokestatic 108	org/apache/commons/logging/LogFactory:logDiagnostic	(Ljava/lang/String;)V
    //   674: aload_1
    //   675: astore_0
    //   676: goto -312 -> 364
    //   679: aload_1
    //   680: areturn
    //   681: aload_3
    //   682: astore_2
    //   683: goto -577 -> 106
    // Local variable table:
    //   start	length	slot	name	signature
    //   87	422	0	localObject1	Object
    //   512	125	0	localRuntimeException	RuntimeException
    //   642	34	0	localObject2	Object
    //   24	484	1	localObject3	Object
    //   553	1	1	localUnsupportedEncodingException	java.io.UnsupportedEncodingException
    //   570	110	1	localObject4	Object
    //   105	578	2	localObject5	Object
    //   3	679	3	localClassLoader	ClassLoader
    //   73	361	4	localProperties	Properties
    //   192	91	5	localObject6	Object
    //   464	99	5	localSecurityException	SecurityException
    //   574	21	5	localException	Exception
    // Exception table:
    //   from	to	target	type
    //   118	125	464	java/lang/SecurityException
    //   129	161	464	java/lang/SecurityException
    //   161	168	464	java/lang/SecurityException
    //   447	459	464	java/lang/SecurityException
    //   118	125	512	java/lang/RuntimeException
    //   129	161	512	java/lang/RuntimeException
    //   161	168	512	java/lang/RuntimeException
    //   447	459	512	java/lang/RuntimeException
    //   199	219	553	java/io/UnsupportedEncodingException
    //   186	194	574	java/lang/Exception
    //   199	219	574	java/lang/Exception
    //   219	229	574	java/lang/Exception
    //   238	282	574	java/lang/Exception
    //   282	290	574	java/lang/Exception
    //   554	571	574	java/lang/Exception
    //   624	636	574	java/lang/Exception
  }
  
  public static Log getLog(Class paramClass)
  {
    return getFactory().getInstance(paramClass);
  }
  
  public static Log getLog(String paramString)
  {
    return getFactory().getInstance(paramString);
  }
  
  private static Properties getProperties(URL paramURL)
  {
    return (Properties)AccessController.doPrivileged(new LogFactory.5(paramURL));
  }
  
  private static InputStream getResourceAsStream(ClassLoader paramClassLoader, String paramString)
  {
    return (InputStream)AccessController.doPrivileged(new LogFactory.3(paramClassLoader, paramString));
  }
  
  private static Enumeration getResources(ClassLoader paramClassLoader, String paramString)
  {
    return (Enumeration)AccessController.doPrivileged(new LogFactory.4(paramClassLoader, paramString));
  }
  
  private static String getSystemProperty(String paramString1, String paramString2)
  {
    return (String)AccessController.doPrivileged(new LogFactory.6(paramString1, paramString2));
  }
  
  protected static void handleThrowable(Throwable paramThrowable)
  {
    if ((paramThrowable instanceof ThreadDeath)) {
      throw ((ThreadDeath)paramThrowable);
    }
    if ((paramThrowable instanceof VirtualMachineError)) {
      throw ((VirtualMachineError)paramThrowable);
    }
  }
  
  private static boolean implementsLogFactory(Class paramClass)
  {
    boolean bool5 = false;
    boolean bool6 = false;
    boolean bool1 = false;
    boolean bool2 = false;
    if (paramClass != null)
    {
      boolean bool3 = bool2;
      boolean bool4 = bool5;
      bool1 = bool6;
      try
      {
        ClassLoader localClassLoader = paramClass.getClassLoader();
        if (localClassLoader == null)
        {
          bool3 = bool2;
          bool4 = bool5;
          bool1 = bool6;
          logDiagnostic("[CUSTOM LOG FACTORY] was loaded by the boot classloader");
          return false;
        }
        bool3 = bool2;
        bool4 = bool5;
        bool1 = bool6;
        logHierarchy("[CUSTOM LOG FACTORY] ", localClassLoader);
        bool3 = bool2;
        bool4 = bool5;
        bool1 = bool6;
        bool2 = Class.forName("org.apache.commons.logging.LogFactory", false, localClassLoader).isAssignableFrom(paramClass);
        if (bool2)
        {
          bool3 = bool2;
          bool4 = bool2;
          bool1 = bool2;
          logDiagnostic("[CUSTOM LOG FACTORY] " + paramClass.getName() + " implements LogFactory but was loaded by an incompatible classloader.");
          return bool2;
        }
      }
      catch (SecurityException paramClass)
      {
        logDiagnostic("[CUSTOM LOG FACTORY] SecurityException thrown whilst trying to determine whether the compatibility was caused by a classloader conflict: " + paramClass.getMessage());
        return bool3;
        bool3 = bool2;
        bool4 = bool2;
        bool1 = bool2;
        logDiagnostic("[CUSTOM LOG FACTORY] " + paramClass.getName() + " does not implement LogFactory.");
        return bool2;
      }
      catch (LinkageError paramClass)
      {
        logDiagnostic("[CUSTOM LOG FACTORY] LinkageError thrown whilst trying to determine whether the compatibility was caused by a classloader conflict: " + paramClass.getMessage());
        return bool4;
      }
      catch (ClassNotFoundException paramClass)
      {
        logDiagnostic("[CUSTOM LOG FACTORY] LogFactory class cannot be loaded by classloader which loaded the custom LogFactory implementation. Is the custom factory in the right classloader?");
      }
    }
    return bool1;
  }
  
  private static PrintStream initDiagnostics()
  {
    try
    {
      Object localObject = getSystemProperty("org.apache.commons.logging.diagnostics.dest", null);
      if (localObject == null) {
        return null;
      }
      if (((String)localObject).equals("STDOUT")) {
        return System.out;
      }
      if (((String)localObject).equals("STDERR")) {
        return System.err;
      }
      try
      {
        localObject = new PrintStream(new FileOutputStream((String)localObject, true));
        return (PrintStream)localObject;
      }
      catch (IOException localIOException)
      {
        return null;
      }
      return null;
    }
    catch (SecurityException localSecurityException) {}
  }
  
  protected static boolean isDiagnosticsEnabled()
  {
    return diagnosticsStream != null;
  }
  
  private static void logClassLoaderEnvironment(Class paramClass)
  {
    if (!isDiagnosticsEnabled()) {
      return;
    }
    try
    {
      logDiagnostic("[ENV] Extension directories (java.ext.dir): " + System.getProperty("java.ext.dir"));
      logDiagnostic("[ENV] Application classpath (java.class.path): " + System.getProperty("java.class.path"));
      str = paramClass.getName();
    }
    catch (SecurityException localSecurityException)
    {
      for (;;)
      {
        try
        {
          String str;
          paramClass = getClassLoader(paramClass);
          logDiagnostic("[ENV] Class " + str + " was loaded via classloader " + objectId(paramClass));
          logHierarchy("[ENV] Ancestry of classloader which loaded " + str + " is ", paramClass);
          return;
        }
        catch (SecurityException paramClass)
        {
          logDiagnostic("[ENV] Security forbids determining the classloader for " + localSecurityException);
        }
        localSecurityException = localSecurityException;
        logDiagnostic("[ENV] Security setting prevent interrogation of system classpaths.");
      }
    }
  }
  
  private static final void logDiagnostic(String paramString)
  {
    if (diagnosticsStream != null)
    {
      diagnosticsStream.print(diagnosticPrefix);
      diagnosticsStream.println(paramString);
      diagnosticsStream.flush();
    }
  }
  
  private static void logHierarchy(String paramString, ClassLoader paramClassLoader)
  {
    if (!isDiagnosticsEnabled()) {
      return;
    }
    Object localObject;
    if (paramClassLoader != null)
    {
      localObject = paramClassLoader.toString();
      logDiagnostic(paramString + objectId(paramClassLoader) + " == '" + (String)localObject + "'");
    }
    for (;;)
    {
      StringBuffer localStringBuffer;
      try
      {
        localObject = ClassLoader.getSystemClassLoader();
        if (paramClassLoader == null) {
          break;
        }
        localStringBuffer = new StringBuffer(paramString + "ClassLoader tree:");
        localStringBuffer.append(objectId(paramClassLoader));
        if (paramClassLoader == localObject) {
          localStringBuffer.append(" (SYSTEM) ");
        }
      }
      catch (SecurityException paramClassLoader)
      {
        logDiagnostic(paramString + "Security forbids determining the system classloader.");
        return;
      }
      try
      {
        paramString = paramClassLoader.getParent();
        localStringBuffer.append(" --> ");
        paramClassLoader = paramString;
        if (paramString == null) {
          localStringBuffer.append("BOOT");
        }
      }
      catch (SecurityException paramString)
      {
        localStringBuffer.append(" --> SECRET");
      }
    }
    logDiagnostic(localStringBuffer.toString());
  }
  
  protected static final void logRawDiagnostic(String paramString)
  {
    if (diagnosticsStream != null)
    {
      diagnosticsStream.println(paramString);
      diagnosticsStream.flush();
    }
  }
  
  protected static LogFactory newFactory(String paramString, ClassLoader paramClassLoader)
  {
    return newFactory(paramString, paramClassLoader, null);
  }
  
  protected static LogFactory newFactory(String paramString, ClassLoader paramClassLoader1, ClassLoader paramClassLoader2)
  {
    paramString = AccessController.doPrivileged(new LogFactory.2(paramString, paramClassLoader1));
    if ((paramString instanceof LogConfigurationException))
    {
      paramString = (LogConfigurationException)paramString;
      if (isDiagnosticsEnabled()) {
        logDiagnostic("An error occurred while loading the factory class:" + paramString.getMessage());
      }
      throw paramString;
    }
    if (isDiagnosticsEnabled()) {
      logDiagnostic("Created object " + objectId(paramString) + " to manage classloader " + objectId(paramClassLoader2));
    }
    return (LogFactory)paramString;
  }
  
  public static String objectId(Object paramObject)
  {
    if (paramObject == null) {
      return "null";
    }
    return paramObject.getClass().getName() + "@" + System.identityHashCode(paramObject);
  }
  
  public static void release(ClassLoader paramClassLoader)
  {
    if (isDiagnosticsEnabled()) {
      logDiagnostic("Releasing factory for classloader " + objectId(paramClassLoader));
    }
    localHashtable = factories;
    if (paramClassLoader == null) {}
    for (;;)
    {
      try
      {
        if (nullClassLoaderFactory != null)
        {
          nullClassLoaderFactory.release();
          nullClassLoaderFactory = null;
        }
        return;
      }
      finally {}
      LogFactory localLogFactory = (LogFactory)localHashtable.get(paramClassLoader);
      if (localLogFactory != null)
      {
        localLogFactory.release();
        localHashtable.remove(paramClassLoader);
      }
    }
  }
  
  public static void releaseAll()
  {
    if (isDiagnosticsEnabled()) {
      logDiagnostic("Releasing factory for all classloaders.");
    }
    synchronized (factories)
    {
      Enumeration localEnumeration = ???.elements();
      if (localEnumeration.hasMoreElements()) {
        ((LogFactory)localEnumeration.nextElement()).release();
      }
    }
    ???.clear();
    if (nullClassLoaderFactory != null)
    {
      nullClassLoaderFactory.release();
      nullClassLoaderFactory = null;
    }
  }
  
  private static String trim(String paramString)
  {
    if (paramString == null) {
      return null;
    }
    return paramString.trim();
  }
  
  public abstract Object getAttribute(String paramString);
  
  public abstract String[] getAttributeNames();
  
  public abstract Log getInstance(Class paramClass);
  
  public abstract Log getInstance(String paramString);
  
  public abstract void release();
  
  public abstract void removeAttribute(String paramString);
  
  public abstract void setAttribute(String paramString, Object paramObject);
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\commons\logging\LogFactory.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
package com.alipay.euler.andfix.security;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.Signature;
import android.text.TextUtils;
import android.util.Log;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.InputStream;
import java.security.PublicKey;
import java.security.cert.Certificate;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.jar.JarEntry;
import java.util.jar.JarFile;
import javax.security.auth.x500.X500Principal;

public class SecurityChecker
{
  private static final String CLASSES_DEX = "classes.dex";
  private static final X500Principal DEBUG_DN = new X500Principal("CN=Android Debug,O=Android,C=US");
  private static final String SP_MD5 = "-md5";
  private static final String SP_NAME = "_andfix_";
  private static final String TAG = "SecurityChecker";
  private final Context mContext;
  private boolean mDebuggable;
  private PublicKey mPublicKey;
  
  public SecurityChecker(Context paramContext)
  {
    this.mContext = paramContext;
    init(this.mContext);
  }
  
  private boolean check(File paramFile, Certificate[] paramArrayOfCertificate)
  {
    if (paramArrayOfCertificate.length > 0)
    {
      int i = paramArrayOfCertificate.length - 1;
      while (i >= 0) {
        try
        {
          paramArrayOfCertificate[i].verify(this.mPublicKey);
          return true;
        }
        catch (Exception localException)
        {
          Log.e("SecurityChecker", paramFile.getAbsolutePath(), localException);
          i -= 1;
        }
      }
    }
    return false;
  }
  
  /* Error */
  private String getFileMD5(File paramFile)
  {
    // Byte code:
    //   0: aload_1
    //   1: invokevirtual 78	java/io/File:isFile	()Z
    //   4: ifne +5 -> 9
    //   7: aconst_null
    //   8: areturn
    //   9: sipush 8192
    //   12: newarray <illegal type>
    //   14: astore 4
    //   16: ldc 80
    //   18: invokestatic 86	java/security/MessageDigest:getInstance	(Ljava/lang/String;)Ljava/security/MessageDigest;
    //   21: astore_3
    //   22: new 88	java/io/FileInputStream
    //   25: dup
    //   26: aload_1
    //   27: invokespecial 91	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   30: astore_2
    //   31: aload_2
    //   32: astore_1
    //   33: aload_2
    //   34: aload 4
    //   36: invokevirtual 95	java/io/FileInputStream:read	([B)I
    //   39: istore 5
    //   41: iload 5
    //   43: iconst_m1
    //   44: if_icmpeq +51 -> 95
    //   47: aload_2
    //   48: astore_1
    //   49: aload_3
    //   50: aload 4
    //   52: iconst_0
    //   53: iload 5
    //   55: invokevirtual 99	java/security/MessageDigest:update	([BII)V
    //   58: goto -27 -> 31
    //   61: astore_3
    //   62: aload_2
    //   63: astore_1
    //   64: ldc 19
    //   66: ldc 100
    //   68: aload_3
    //   69: invokestatic 70	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   72: pop
    //   73: aload_2
    //   74: ifnull -67 -> 7
    //   77: aload_2
    //   78: invokevirtual 103	java/io/FileInputStream:close	()V
    //   81: aconst_null
    //   82: areturn
    //   83: astore_1
    //   84: ldc 19
    //   86: ldc 100
    //   88: aload_1
    //   89: invokestatic 70	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   92: pop
    //   93: aconst_null
    //   94: areturn
    //   95: aload_2
    //   96: invokevirtual 103	java/io/FileInputStream:close	()V
    //   99: new 105	java/math/BigInteger
    //   102: dup
    //   103: aload_3
    //   104: invokevirtual 109	java/security/MessageDigest:digest	()[B
    //   107: invokespecial 112	java/math/BigInteger:<init>	([B)V
    //   110: invokevirtual 115	java/math/BigInteger:toString	()Ljava/lang/String;
    //   113: areturn
    //   114: astore_1
    //   115: ldc 19
    //   117: ldc 100
    //   119: aload_1
    //   120: invokestatic 70	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   123: pop
    //   124: goto -25 -> 99
    //   127: astore_2
    //   128: aconst_null
    //   129: astore_1
    //   130: aload_1
    //   131: ifnull +7 -> 138
    //   134: aload_1
    //   135: invokevirtual 103	java/io/FileInputStream:close	()V
    //   138: aload_2
    //   139: athrow
    //   140: astore_1
    //   141: ldc 19
    //   143: ldc 100
    //   145: aload_1
    //   146: invokestatic 70	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   149: pop
    //   150: goto -12 -> 138
    //   153: astore_2
    //   154: goto -24 -> 130
    //   157: astore_3
    //   158: aconst_null
    //   159: astore_2
    //   160: goto -98 -> 62
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	163	0	this	SecurityChecker
    //   0	163	1	paramFile	File
    //   30	66	2	localFileInputStream	java.io.FileInputStream
    //   127	12	2	localObject1	Object
    //   153	1	2	localObject2	Object
    //   159	1	2	localObject3	Object
    //   21	29	3	localMessageDigest	java.security.MessageDigest
    //   61	43	3	localException1	Exception
    //   157	1	3	localException2	Exception
    //   14	37	4	arrayOfByte	byte[]
    //   39	15	5	i	int
    // Exception table:
    //   from	to	target	type
    //   33	41	61	java/lang/Exception
    //   49	58	61	java/lang/Exception
    //   77	81	83	java/io/IOException
    //   95	99	114	java/io/IOException
    //   16	31	127	finally
    //   134	138	140	java/io/IOException
    //   33	41	153	finally
    //   49	58	153	finally
    //   64	73	153	finally
    //   16	31	157	java/lang/Exception
  }
  
  private String getFingerprint(String paramString)
  {
    return this.mContext.getSharedPreferences("_andfix_", 0).getString(paramString + "-md5", null);
  }
  
  private void init(Context paramContext)
  {
    try
    {
      paramContext = paramContext.getPackageManager().getPackageInfo(paramContext.getPackageName(), 64);
      paramContext = (X509Certificate)CertificateFactory.getInstance("X.509").generateCertificate(new ByteArrayInputStream(paramContext.signatures[0].toByteArray()));
      this.mDebuggable = paramContext.getSubjectX500Principal().equals(DEBUG_DN);
      this.mPublicKey = paramContext.getPublicKey();
      return;
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
      Log.e("SecurityChecker", "init", paramContext);
      return;
    }
    catch (CertificateException paramContext)
    {
      Log.e("SecurityChecker", "init", paramContext);
    }
  }
  
  private void loadDigestes(JarFile paramJarFile, JarEntry paramJarEntry)
  {
    JarFile localJarFile = null;
    try
    {
      paramJarFile = paramJarFile.getInputStream(paramJarEntry);
      localJarFile = paramJarFile;
      paramJarEntry = new byte[' '];
      int i;
      do
      {
        localJarFile = paramJarFile;
        i = paramJarFile.read(paramJarEntry);
      } while (i > 0);
      return;
    }
    finally
    {
      if (localJarFile != null) {
        localJarFile.close();
      }
    }
  }
  
  private void saveFingerprint(String paramString1, String paramString2)
  {
    SharedPreferences.Editor localEditor = this.mContext.getSharedPreferences("_andfix_", 0).edit();
    localEditor.putString(paramString1 + "-md5", paramString2);
    localEditor.commit();
  }
  
  public void saveOptSig(File paramFile)
  {
    String str = getFileMD5(paramFile);
    saveFingerprint(paramFile.getName(), str);
  }
  
  /* Error */
  public boolean verifyApk(File paramFile)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore 5
    //   3: aload_0
    //   4: getfield 191	com/alipay/euler/andfix/security/SecurityChecker:mDebuggable	Z
    //   7: ifeq +17 -> 24
    //   10: ldc 19
    //   12: ldc -21
    //   14: invokestatic 239	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   17: pop
    //   18: iconst_1
    //   19: istore 5
    //   21: iload 5
    //   23: ireturn
    //   24: new 200	java/util/jar/JarFile
    //   27: dup
    //   28: aload_1
    //   29: invokespecial 240	java/util/jar/JarFile:<init>	(Ljava/io/File;)V
    //   32: astore_3
    //   33: aload_3
    //   34: astore_2
    //   35: aload_3
    //   36: ldc 8
    //   38: invokevirtual 244	java/util/jar/JarFile:getJarEntry	(Ljava/lang/String;)Ljava/util/jar/JarEntry;
    //   41: astore 4
    //   43: aload 4
    //   45: ifnonnull +23 -> 68
    //   48: aload_3
    //   49: invokevirtual 245	java/util/jar/JarFile:close	()V
    //   52: iconst_0
    //   53: ireturn
    //   54: astore_2
    //   55: ldc 19
    //   57: aload_1
    //   58: invokevirtual 64	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   61: aload_2
    //   62: invokestatic 70	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   65: pop
    //   66: iconst_0
    //   67: ireturn
    //   68: aload_3
    //   69: astore_2
    //   70: aload_0
    //   71: aload_3
    //   72: aload 4
    //   74: invokespecial 247	com/alipay/euler/andfix/security/SecurityChecker:loadDigestes	(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;)V
    //   77: aload_3
    //   78: astore_2
    //   79: aload 4
    //   81: invokevirtual 253	java/util/jar/JarEntry:getCertificates	()[Ljava/security/cert/Certificate;
    //   84: astore 4
    //   86: aload 4
    //   88: ifnonnull +23 -> 111
    //   91: aload_3
    //   92: invokevirtual 245	java/util/jar/JarFile:close	()V
    //   95: iconst_0
    //   96: ireturn
    //   97: astore_2
    //   98: ldc 19
    //   100: aload_1
    //   101: invokevirtual 64	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   104: aload_2
    //   105: invokestatic 70	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   108: pop
    //   109: iconst_0
    //   110: ireturn
    //   111: aload_3
    //   112: astore_2
    //   113: aload_0
    //   114: aload_1
    //   115: aload 4
    //   117: invokespecial 255	com/alipay/euler/andfix/security/SecurityChecker:check	(Ljava/io/File;[Ljava/security/cert/Certificate;)Z
    //   120: istore 6
    //   122: aload_3
    //   123: invokevirtual 245	java/util/jar/JarFile:close	()V
    //   126: iload 6
    //   128: ireturn
    //   129: astore_2
    //   130: ldc 19
    //   132: aload_1
    //   133: invokevirtual 64	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   136: aload_2
    //   137: invokestatic 70	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   140: pop
    //   141: iload 6
    //   143: ireturn
    //   144: astore 4
    //   146: aconst_null
    //   147: astore_3
    //   148: aload_3
    //   149: astore_2
    //   150: ldc 19
    //   152: aload_1
    //   153: invokevirtual 64	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   156: aload 4
    //   158: invokestatic 70	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   161: pop
    //   162: aload_3
    //   163: ifnull -142 -> 21
    //   166: aload_3
    //   167: invokevirtual 245	java/util/jar/JarFile:close	()V
    //   170: iconst_0
    //   171: ireturn
    //   172: astore_2
    //   173: ldc 19
    //   175: aload_1
    //   176: invokevirtual 64	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   179: aload_2
    //   180: invokestatic 70	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   183: pop
    //   184: iconst_0
    //   185: ireturn
    //   186: astore_3
    //   187: aconst_null
    //   188: astore_2
    //   189: aload_2
    //   190: ifnull +7 -> 197
    //   193: aload_2
    //   194: invokevirtual 245	java/util/jar/JarFile:close	()V
    //   197: aload_3
    //   198: athrow
    //   199: astore_2
    //   200: ldc 19
    //   202: aload_1
    //   203: invokevirtual 64	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   206: aload_2
    //   207: invokestatic 70	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   210: pop
    //   211: goto -14 -> 197
    //   214: astore_3
    //   215: goto -26 -> 189
    //   218: astore 4
    //   220: goto -72 -> 148
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	223	0	this	SecurityChecker
    //   0	223	1	paramFile	File
    //   34	1	2	localJarFile1	JarFile
    //   54	8	2	localIOException1	java.io.IOException
    //   69	10	2	localJarFile2	JarFile
    //   97	8	2	localIOException2	java.io.IOException
    //   112	1	2	localJarFile3	JarFile
    //   129	8	2	localIOException3	java.io.IOException
    //   149	1	2	localJarFile4	JarFile
    //   172	8	2	localIOException4	java.io.IOException
    //   188	6	2	localObject1	Object
    //   199	8	2	localIOException5	java.io.IOException
    //   32	135	3	localJarFile5	JarFile
    //   186	12	3	localObject2	Object
    //   214	1	3	localObject3	Object
    //   41	75	4	localObject4	Object
    //   144	13	4	localIOException6	java.io.IOException
    //   218	1	4	localIOException7	java.io.IOException
    //   1	21	5	bool1	boolean
    //   120	22	6	bool2	boolean
    // Exception table:
    //   from	to	target	type
    //   48	52	54	java/io/IOException
    //   91	95	97	java/io/IOException
    //   122	126	129	java/io/IOException
    //   24	33	144	java/io/IOException
    //   166	170	172	java/io/IOException
    //   24	33	186	finally
    //   193	197	199	java/io/IOException
    //   35	43	214	finally
    //   70	77	214	finally
    //   79	86	214	finally
    //   113	122	214	finally
    //   150	162	214	finally
    //   35	43	218	java/io/IOException
    //   70	77	218	java/io/IOException
    //   79	86	218	java/io/IOException
    //   113	122	218	java/io/IOException
  }
  
  public boolean verifyOpt(File paramFile)
  {
    String str = getFileMD5(paramFile);
    paramFile = getFingerprint(paramFile.getName());
    return (str != null) && (TextUtils.equals(str, paramFile));
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\alipay\euler\andfix\security\SecurityChecker.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
package com.alipay.sdk.g;

import android.content.Context;
import android.text.TextUtils;
import com.alipay.sdk.b.d;
import com.f.a.a.a.h;
import com.f.a.c.b;
import java.io.File;

public final class a
{
  private static a c;
  public Context a;
  public d b;
  
  public static a a()
  {
    if (c == null) {
      c = new a();
    }
    return c;
  }
  
  /* Error */
  private static String a(String[] paramArrayOfString)
  {
    // Byte code:
    //   0: new 24	java/lang/ProcessBuilder
    //   3: dup
    //   4: aload_0
    //   5: invokespecial 27	java/lang/ProcessBuilder:<init>	([Ljava/lang/String;)V
    //   8: astore_0
    //   9: aload_0
    //   10: iconst_0
    //   11: invokevirtual 31	java/lang/ProcessBuilder:redirectErrorStream	(Z)Ljava/lang/ProcessBuilder;
    //   14: pop
    //   15: aload_0
    //   16: invokevirtual 35	java/lang/ProcessBuilder:start	()Ljava/lang/Process;
    //   19: astore_0
    //   20: new 37	java/io/DataOutputStream
    //   23: dup
    //   24: aload_0
    //   25: invokevirtual 43	java/lang/Process:getOutputStream	()Ljava/io/OutputStream;
    //   28: invokespecial 46	java/io/DataOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   31: astore_2
    //   32: new 48	java/io/DataInputStream
    //   35: dup
    //   36: aload_0
    //   37: invokevirtual 52	java/lang/Process:getInputStream	()Ljava/io/InputStream;
    //   40: invokespecial 55	java/io/DataInputStream:<init>	(Ljava/io/InputStream;)V
    //   43: invokevirtual 59	java/io/DataInputStream:readLine	()Ljava/lang/String;
    //   46: astore_1
    //   47: aload_2
    //   48: ldc 61
    //   50: invokevirtual 65	java/io/DataOutputStream:writeBytes	(Ljava/lang/String;)V
    //   53: aload_2
    //   54: invokevirtual 68	java/io/DataOutputStream:flush	()V
    //   57: aload_0
    //   58: invokevirtual 72	java/lang/Process:waitFor	()I
    //   61: pop
    //   62: aload_0
    //   63: invokevirtual 75	java/lang/Process:destroy	()V
    //   66: aload_1
    //   67: areturn
    //   68: astore_0
    //   69: aconst_null
    //   70: astore_0
    //   71: ldc 77
    //   73: astore_1
    //   74: aload_0
    //   75: invokevirtual 75	java/lang/Process:destroy	()V
    //   78: aload_1
    //   79: areturn
    //   80: astore_0
    //   81: aload_1
    //   82: areturn
    //   83: astore_1
    //   84: aconst_null
    //   85: astore_0
    //   86: aload_0
    //   87: invokevirtual 75	java/lang/Process:destroy	()V
    //   90: aload_1
    //   91: athrow
    //   92: astore_0
    //   93: aload_1
    //   94: areturn
    //   95: astore_0
    //   96: goto -6 -> 90
    //   99: astore_1
    //   100: goto -14 -> 86
    //   103: astore_1
    //   104: ldc 77
    //   106: astore_1
    //   107: goto -33 -> 74
    //   110: astore_2
    //   111: goto -37 -> 74
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	114	0	paramArrayOfString	String[]
    //   46	36	1	str1	String
    //   83	11	1	str2	String
    //   99	1	1	localObject	Object
    //   103	1	1	localException1	Exception
    //   106	1	1	str3	String
    //   31	23	2	localDataOutputStream	java.io.DataOutputStream
    //   110	1	2	localException2	Exception
    // Exception table:
    //   from	to	target	type
    //   0	20	68	java/lang/Exception
    //   74	78	80	java/lang/Exception
    //   0	20	83	finally
    //   62	66	92	java/lang/Exception
    //   86	90	95	java/lang/Exception
    //   20	47	99	finally
    //   47	62	99	finally
    //   20	47	103	java/lang/Exception
    //   47	62	110	java/lang/Exception
  }
  
  public static boolean b()
  {
    boolean bool = true;
    int i = 0;
    while (i < 5) {
      try
      {
        String str = new String[] { "/system/xbin/", "/system/bin/", "/system/sbin/", "/sbin/", "/vendor/bin/" }[i] + "su";
        if (new File(str).exists())
        {
          str = a(new String[] { "ls", "-l", str });
          if (!TextUtils.isEmpty(str))
          {
            i = str.indexOf("root");
            int j = str.lastIndexOf("root");
            if (i != j) {}
          }
          else
          {
            bool = false;
          }
          return bool;
        }
        i += 1;
      }
      catch (Exception localException) {}
    }
    return false;
  }
  
  public final String c()
  {
    Object localObject = b.a(this.a);
    char[] arrayOfChar;
    int m;
    int j;
    int i;
    if ((localObject == null) || (h.a(((com.f.a.c.a)localObject).d)))
    {
      localObject = "ffffffffffffffffffffffff";
      if (!TextUtils.isEmpty((CharSequence)localObject))
      {
        arrayOfChar = ((String)localObject).toCharArray();
        m = arrayOfChar.length;
        j = 0;
        i = 0;
      }
    }
    else
    {
      int k;
      for (;;)
      {
        k = i;
        if (j >= m) {
          break label505;
        }
        int n = arrayOfChar[j];
        k = 0;
        i = 0;
        for (;;)
        {
          if (k < 65)
          {
            if (n == new char[] { 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 43, 47, 61 }[k]) {
              i = 1;
            }
            k += 1;
            continue;
            localObject = ((com.f.a.c.a)localObject).d;
            break;
          }
        }
        k = i;
        if (i == 0) {
          break label505;
        }
        j += 1;
      }
      label505:
      if (k != 0) {
        return (String)localObject;
      }
    }
    return "";
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\alipay\sdk\g\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
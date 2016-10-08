package com.xueqiu.android.base.c;

import java.util.regex.Pattern;
import rx.a;
import rx.b;

public final class e
{
  private static final Pattern a = Pattern.compile(".*[F|f]rom (\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}).*");
  
  public static a<String> a(String paramString)
  {
    a.a(new b() {});
  }
  
  /* Error */
  private static String b(java.io.InputStream paramInputStream)
  {
    // Byte code:
    //   0: aload_0
    //   1: ifnonnull +6 -> 7
    //   4: ldc 41
    //   6: areturn
    //   7: new 43	java/io/BufferedReader
    //   10: dup
    //   11: new 45	java/io/InputStreamReader
    //   14: dup
    //   15: aload_0
    //   16: ldc 47
    //   18: invokestatic 53	java/nio/charset/Charset:forName	(Ljava/lang/String;)Ljava/nio/charset/Charset;
    //   21: invokespecial 56	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    //   24: invokespecial 59	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   27: astore_0
    //   28: new 61	java/lang/StringBuilder
    //   31: dup
    //   32: invokespecial 63	java/lang/StringBuilder:<init>	()V
    //   35: astore_1
    //   36: aload_0
    //   37: invokevirtual 67	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   40: astore_2
    //   41: aload_2
    //   42: ifnull +24 -> 66
    //   45: aload_1
    //   46: aload_2
    //   47: invokevirtual 71	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   50: pop
    //   51: goto -15 -> 36
    //   54: astore_1
    //   55: aload_1
    //   56: invokevirtual 74	java/io/IOException:printStackTrace	()V
    //   59: aload_0
    //   60: invokevirtual 77	java/io/BufferedReader:close	()V
    //   63: ldc 41
    //   65: areturn
    //   66: aload_1
    //   67: invokevirtual 80	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   70: astore_1
    //   71: aload_0
    //   72: invokevirtual 77	java/io/BufferedReader:close	()V
    //   75: aload_1
    //   76: areturn
    //   77: astore_1
    //   78: aload_0
    //   79: invokevirtual 77	java/io/BufferedReader:close	()V
    //   82: aload_1
    //   83: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	84	0	paramInputStream	java.io.InputStream
    //   35	11	1	localStringBuilder	StringBuilder
    //   54	13	1	localIOException	java.io.IOException
    //   70	6	1	str1	String
    //   77	6	1	localObject	Object
    //   40	7	2	str2	String
    // Exception table:
    //   from	to	target	type
    //   36	41	54	java/io/IOException
    //   45	51	54	java/io/IOException
    //   66	71	54	java/io/IOException
    //   36	41	77	finally
    //   45	51	77	finally
    //   55	59	77	finally
    //   66	71	77	finally
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\base\c\e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
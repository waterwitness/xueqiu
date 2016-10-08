package com.pingan.b.c.a;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.pingan.b.c.e;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public final class a
  implements e
{
  public String a;
  
  public a(String paramString)
  {
    this.a = paramString;
    paramString = new File(paramString);
    if (!paramString.exists())
    {
      if (!paramString.mkdirs()) {
        throw new IOException("mkdir failed");
      }
    }
    else if (!paramString.isDirectory()) {
      throw new IOException("does not mkdir");
    }
  }
  
  public final List<com.pingan.b.b.a> a(File paramFile, String paramString1, String paramString2)
  {
    ArrayList localArrayList = new ArrayList();
    int j = (int)(paramFile.length() / 4194304L);
    int i = j;
    if (paramFile.length() % 4194304L != 0L) {
      i = j + 1;
    }
    j = 1;
    while (j <= i)
    {
      localArrayList.add(new com.pingan.b.b.a(j));
      j += 1;
    }
    a(paramString1, paramString2, new Gson().toJson(localArrayList).getBytes());
    return localArrayList;
  }
  
  /* Error */
  public final void a(String paramString1, String paramString2, byte[] paramArrayOfByte)
  {
    // Byte code:
    //   0: new 80	java/lang/StringBuilder
    //   3: dup
    //   4: invokespecial 81	java/lang/StringBuilder:<init>	()V
    //   7: aload_1
    //   8: invokevirtual 85	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   11: ldc 87
    //   13: invokevirtual 85	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   16: aload_2
    //   17: invokevirtual 85	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   20: ldc 89
    //   22: invokevirtual 85	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   25: invokevirtual 93	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   28: astore_1
    //   29: new 19	java/io/File
    //   32: dup
    //   33: aload_0
    //   34: getfield 17	com/pingan/b/c/a/a:a	Ljava/lang/String;
    //   37: aload_1
    //   38: invokespecial 96	java/io/File:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   41: astore_1
    //   42: new 98	java/io/FileOutputStream
    //   45: dup
    //   46: aload_1
    //   47: invokespecial 101	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   50: astore_1
    //   51: aload_1
    //   52: aload_3
    //   53: invokevirtual 105	java/io/FileOutputStream:write	([B)V
    //   56: aload_1
    //   57: ifnull +7 -> 64
    //   60: aload_1
    //   61: invokevirtual 108	java/io/FileOutputStream:close	()V
    //   64: return
    //   65: astore_2
    //   66: aconst_null
    //   67: astore_1
    //   68: aload_2
    //   69: invokevirtual 111	java/io/IOException:printStackTrace	()V
    //   72: goto -16 -> 56
    //   75: astore_1
    //   76: aload_1
    //   77: invokevirtual 111	java/io/IOException:printStackTrace	()V
    //   80: return
    //   81: astore_2
    //   82: goto -14 -> 68
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	85	0	this	a
    //   0	85	1	paramString1	String
    //   0	85	2	paramString2	String
    //   0	85	3	paramArrayOfByte	byte[]
    // Exception table:
    //   from	to	target	type
    //   42	51	65	java/io/IOException
    //   60	64	75	java/io/IOException
    //   51	56	81	java/io/IOException
  }
  
  /* Error */
  public final byte[] a(String paramString1, String paramString2)
  {
    // Byte code:
    //   0: new 80	java/lang/StringBuilder
    //   3: dup
    //   4: invokespecial 81	java/lang/StringBuilder:<init>	()V
    //   7: aload_1
    //   8: invokevirtual 85	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   11: ldc 87
    //   13: invokevirtual 85	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   16: aload_2
    //   17: invokevirtual 85	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   20: ldc 89
    //   22: invokevirtual 85	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   25: invokevirtual 93	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   28: astore_1
    //   29: new 19	java/io/File
    //   32: dup
    //   33: aload_0
    //   34: getfield 17	com/pingan/b/c/a/a:a	Ljava/lang/String;
    //   37: aload_1
    //   38: invokespecial 96	java/io/File:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   41: astore_1
    //   42: aload_1
    //   43: invokevirtual 25	java/io/File:exists	()Z
    //   46: ifne +5 -> 51
    //   49: aconst_null
    //   50: areturn
    //   51: aload_1
    //   52: invokevirtual 47	java/io/File:length	()J
    //   55: l2i
    //   56: newarray <illegal type>
    //   58: astore_3
    //   59: new 114	java/io/FileInputStream
    //   62: dup
    //   63: aload_1
    //   64: invokespecial 115	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   67: astore_1
    //   68: aload_1
    //   69: aload_3
    //   70: invokevirtual 119	java/io/FileInputStream:read	([B)I
    //   73: istore 4
    //   75: aload_1
    //   76: ifnull +7 -> 83
    //   79: aload_1
    //   80: invokevirtual 120	java/io/FileInputStream:close	()V
    //   83: iload 4
    //   85: ifeq -36 -> 49
    //   88: aload_3
    //   89: areturn
    //   90: astore_2
    //   91: aconst_null
    //   92: astore_1
    //   93: aload_2
    //   94: invokevirtual 111	java/io/IOException:printStackTrace	()V
    //   97: iconst_0
    //   98: istore 4
    //   100: goto -25 -> 75
    //   103: astore_1
    //   104: aload_1
    //   105: invokevirtual 111	java/io/IOException:printStackTrace	()V
    //   108: goto -25 -> 83
    //   111: astore_2
    //   112: goto -19 -> 93
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	115	0	this	a
    //   0	115	1	paramString1	String
    //   0	115	2	paramString2	String
    //   58	31	3	arrayOfByte	byte[]
    //   73	26	4	i	int
    // Exception table:
    //   from	to	target	type
    //   59	68	90	java/io/IOException
    //   79	83	103	java/io/IOException
    //   68	75	111	java/io/IOException
  }
  
  public final void b(String paramString1, String paramString2)
  {
    paramString1 = paramString1 + "_" + paramString2 + ".json";
    new File(this.a, paramString1).delete();
  }
  
  public final List<com.pingan.b.b.a> c(String paramString1, String paramString2)
  {
    paramString1 = new String(a(paramString1, paramString2));
    (List)new Gson().fromJson(paramString1, new TypeToken() {}.getType());
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\pingan\b\c\a\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
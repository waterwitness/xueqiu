package com.tencent.bugly.proguard;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public final class o
{
  private static o a = null;
  private static p b = null;
  private static boolean c = false;
  
  private o(Context paramContext, List<com.tencent.bugly.a> paramList)
  {
    b = new p(paramContext, paramList);
  }
  
  /* Error */
  private int a(String paramString1, String paramString2, String[] paramArrayOfString, n paramn)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore 8
    //   3: iconst_0
    //   4: istore 6
    //   6: aload_0
    //   7: monitorenter
    //   8: getstatic 16	com/tencent/bugly/proguard/o:b	Lcom/tencent/bugly/proguard/p;
    //   11: invokevirtual 39	com/tencent/bugly/proguard/p:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   14: astore 5
    //   16: aload 5
    //   18: ifnull +13 -> 31
    //   21: aload 5
    //   23: aload_1
    //   24: aload_2
    //   25: aload_3
    //   26: invokevirtual 45	android/database/sqlite/SQLiteDatabase:delete	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    //   29: istore 6
    //   31: iload 6
    //   33: istore 7
    //   35: aload 4
    //   37: ifnull +7 -> 44
    //   40: iload 6
    //   42: istore 7
    //   44: aload_0
    //   45: monitorexit
    //   46: iload 7
    //   48: ireturn
    //   49: astore_1
    //   50: aload_1
    //   51: invokestatic 50	com/tencent/bugly/proguard/w:a	(Ljava/lang/Throwable;)Z
    //   54: ifne +7 -> 61
    //   57: aload_1
    //   58: invokevirtual 53	java/lang/Throwable:printStackTrace	()V
    //   61: iload 8
    //   63: istore 7
    //   65: aload 4
    //   67: ifnull -23 -> 44
    //   70: iload 8
    //   72: istore 7
    //   74: goto -30 -> 44
    //   77: astore_1
    //   78: aload_0
    //   79: monitorexit
    //   80: aload_1
    //   81: athrow
    //   82: astore_1
    //   83: aload 4
    //   85: ifnull +3 -> 88
    //   88: aload_1
    //   89: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	90	0	this	o
    //   0	90	1	paramString1	String
    //   0	90	2	paramString2	String
    //   0	90	3	paramArrayOfString	String[]
    //   0	90	4	paramn	n
    //   14	8	5	localSQLiteDatabase	SQLiteDatabase
    //   4	37	6	i	int
    //   33	40	7	j	int
    //   1	70	8	k	int
    // Exception table:
    //   from	to	target	type
    //   8	16	49	java/lang/Throwable
    //   21	31	49	java/lang/Throwable
    //   88	90	77	finally
    //   8	16	82	finally
    //   21	31	82	finally
    //   50	61	82	finally
  }
  
  /* Error */
  private long a(String paramString, ContentValues paramContentValues, n paramn)
  {
    // Byte code:
    //   0: lconst_0
    //   1: lstore 7
    //   3: aload_0
    //   4: monitorenter
    //   5: getstatic 16	com/tencent/bugly/proguard/o:b	Lcom/tencent/bugly/proguard/p;
    //   8: invokevirtual 39	com/tencent/bugly/proguard/p:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   11: astore 4
    //   13: lload 7
    //   15: lstore 5
    //   17: aload 4
    //   19: ifnull +43 -> 62
    //   22: lload 7
    //   24: lstore 5
    //   26: aload_2
    //   27: ifnull +35 -> 62
    //   30: aload 4
    //   32: aload_1
    //   33: ldc 59
    //   35: aload_2
    //   36: invokevirtual 63	android/database/sqlite/SQLiteDatabase:replace	(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    //   39: lstore 5
    //   41: lload 5
    //   43: lconst_0
    //   44: lcmp
    //   45: iflt +34 -> 79
    //   48: ldc 65
    //   50: iconst_1
    //   51: anewarray 4	java/lang/Object
    //   54: dup
    //   55: iconst_0
    //   56: aload_1
    //   57: aastore
    //   58: invokestatic 68	com/tencent/bugly/proguard/w:c	(Ljava/lang/String;[Ljava/lang/Object;)Z
    //   61: pop
    //   62: lload 5
    //   64: lstore 9
    //   66: aload_3
    //   67: ifnull +7 -> 74
    //   70: lload 5
    //   72: lstore 9
    //   74: aload_0
    //   75: monitorexit
    //   76: lload 9
    //   78: lreturn
    //   79: ldc 70
    //   81: iconst_1
    //   82: anewarray 4	java/lang/Object
    //   85: dup
    //   86: iconst_0
    //   87: aload_1
    //   88: aastore
    //   89: invokestatic 73	com/tencent/bugly/proguard/w:d	(Ljava/lang/String;[Ljava/lang/Object;)Z
    //   92: pop
    //   93: goto -31 -> 62
    //   96: astore_1
    //   97: aload_1
    //   98: invokestatic 50	com/tencent/bugly/proguard/w:a	(Ljava/lang/Throwable;)Z
    //   101: ifne +7 -> 108
    //   104: aload_1
    //   105: invokevirtual 53	java/lang/Throwable:printStackTrace	()V
    //   108: lload 7
    //   110: lstore 9
    //   112: aload_3
    //   113: ifnull -39 -> 74
    //   116: lload 7
    //   118: lstore 9
    //   120: goto -46 -> 74
    //   123: astore_1
    //   124: aload_0
    //   125: monitorexit
    //   126: aload_1
    //   127: athrow
    //   128: astore_1
    //   129: aload_3
    //   130: ifnull +3 -> 133
    //   133: aload_1
    //   134: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	135	0	this	o
    //   0	135	1	paramString	String
    //   0	135	2	paramContentValues	ContentValues
    //   0	135	3	paramn	n
    //   11	20	4	localSQLiteDatabase	SQLiteDatabase
    //   15	56	5	l1	long
    //   1	116	7	l2	long
    //   64	55	9	l3	long
    // Exception table:
    //   from	to	target	type
    //   5	13	96	java/lang/Throwable
    //   30	41	96	java/lang/Throwable
    //   48	62	96	java/lang/Throwable
    //   79	93	96	java/lang/Throwable
    //   133	135	123	finally
    //   5	13	128	finally
    //   30	41	128	finally
    //   48	62	128	finally
    //   79	93	128	finally
    //   97	108	128	finally
  }
  
  private Cursor a(boolean paramBoolean, String paramString1, String[] paramArrayOfString1, String paramString2, String[] paramArrayOfString2, String paramString3, String paramString4, String paramString5, String paramString6, n paramn)
  {
    try
    {
      SQLiteDatabase localSQLiteDatabase = b.getWritableDatabase();
      if (localSQLiteDatabase == null) {
        break label80;
      }
      paramString1 = localSQLiteDatabase.query(paramBoolean, paramString1, paramArrayOfString1, paramString2, paramArrayOfString2, paramString3, paramString4, paramString5, paramString6);
    }
    catch (Throwable paramString1)
    {
      for (;;)
      {
        if (!w.a(paramString1)) {
          paramString1.printStackTrace();
        }
        if (paramn == null) {
          break;
        }
        paramString1 = null;
      }
    }
    finally
    {
      for (;;)
      {
        try
        {
          throw paramString1;
        }
        finally {}
        paramString1 = null;
        continue;
        label80:
        paramString1 = null;
      }
    }
    if (paramn != null) {}
    return paramString1;
  }
  
  public static o a()
  {
    try
    {
      o localo = a;
      return localo;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public static o a(Context paramContext, List<com.tencent.bugly.a> paramList)
  {
    try
    {
      if (a == null) {
        a = new o(paramContext, paramList);
      }
      paramContext = a;
      return paramContext;
    }
    finally {}
  }
  
  private static q a(Cursor paramCursor)
  {
    if (paramCursor == null) {}
    do
    {
      return null;
      try
      {
        q localq = new q();
        localq.a = paramCursor.getLong(paramCursor.getColumnIndex("_id"));
        localq.b = paramCursor.getInt(paramCursor.getColumnIndex("_tp"));
        localq.c = paramCursor.getString(paramCursor.getColumnIndex("_pc"));
        localq.d = paramCursor.getString(paramCursor.getColumnIndex("_th"));
        localq.e = paramCursor.getLong(paramCursor.getColumnIndex("_tm"));
        localq.g = paramCursor.getBlob(paramCursor.getColumnIndex("_dt"));
        return localq;
      }
      catch (Throwable paramCursor) {}
    } while (w.a(paramCursor));
    paramCursor.printStackTrace();
    return null;
  }
  
  /* Error */
  private Map<String, byte[]> a(int paramInt, n paramn)
  {
    // Byte code:
    //   0: aload_0
    //   1: iload_1
    //   2: invokespecial 143	com/tencent/bugly/proguard/o:c	(I)Ljava/util/List;
    //   5: astore 4
    //   7: new 145	java/util/HashMap
    //   10: dup
    //   11: invokespecial 146	java/util/HashMap:<init>	()V
    //   14: astore_3
    //   15: aload 4
    //   17: invokeinterface 152 1 0
    //   22: astore 4
    //   24: aload 4
    //   26: invokeinterface 158 1 0
    //   31: ifeq +65 -> 96
    //   34: aload 4
    //   36: invokeinterface 162 1 0
    //   41: checkcast 88	com/tencent/bugly/proguard/q
    //   44: astore 5
    //   46: aload 5
    //   48: getfield 139	com/tencent/bugly/proguard/q:g	[B
    //   51: astore 6
    //   53: aload 6
    //   55: ifnull -31 -> 24
    //   58: aload_3
    //   59: aload 5
    //   61: getfield 165	com/tencent/bugly/proguard/q:f	Ljava/lang/String;
    //   64: aload 6
    //   66: invokeinterface 171 3 0
    //   71: pop
    //   72: goto -48 -> 24
    //   75: astore 4
    //   77: aload 4
    //   79: invokestatic 50	com/tencent/bugly/proguard/w:a	(Ljava/lang/Throwable;)Z
    //   82: ifne +8 -> 90
    //   85: aload 4
    //   87: invokevirtual 53	java/lang/Throwable:printStackTrace	()V
    //   90: aload_2
    //   91: ifnull +3 -> 94
    //   94: aload_3
    //   95: areturn
    //   96: aload_2
    //   97: ifnull +15 -> 112
    //   100: aload_3
    //   101: areturn
    //   102: astore_2
    //   103: aload_2
    //   104: athrow
    //   105: astore 4
    //   107: aconst_null
    //   108: astore_3
    //   109: goto -32 -> 77
    //   112: aload_3
    //   113: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	114	0	this	o
    //   0	114	1	paramInt	int
    //   0	114	2	paramn	n
    //   14	99	3	localHashMap	java.util.HashMap
    //   5	30	4	localObject	Object
    //   75	11	4	localThrowable1	Throwable
    //   105	1	4	localThrowable2	Throwable
    //   44	16	5	localq	q
    //   51	14	6	arrayOfByte	byte[]
    // Exception table:
    //   from	to	target	type
    //   15	24	75	java/lang/Throwable
    //   24	53	75	java/lang/Throwable
    //   58	72	75	java/lang/Throwable
    //   0	15	102	finally
    //   15	24	102	finally
    //   24	53	102	finally
    //   58	72	102	finally
    //   77	90	102	finally
    //   0	15	105	java/lang/Throwable
  }
  
  public static void a(List<q> paramList)
  {
    if ((paramList == null) || (paramList.size() == 0)) {}
    for (;;)
    {
      return;
      SQLiteDatabase localSQLiteDatabase = b.getWritableDatabase();
      if (localSQLiteDatabase == null) {
        continue;
      }
      StringBuilder localStringBuilder = new StringBuilder();
      paramList = paramList.iterator();
      while (paramList.hasNext())
      {
        localObject = (q)paramList.next();
        localStringBuilder.append(" or _id = ").append(((q)localObject).a);
      }
      Object localObject = localStringBuilder.toString();
      paramList = (List<q>)localObject;
      if (((String)localObject).length() > 0) {
        paramList = ((String)localObject).substring(4);
      }
      localStringBuilder.setLength(0);
      try
      {
        w.c("deleted %s data %d", new Object[] { "t_lr", Integer.valueOf(localSQLiteDatabase.delete("t_lr", paramList, null)) });
        return;
      }
      catch (Throwable paramList)
      {
        paramList = paramList;
        if (w.a(paramList)) {
          continue;
        }
        paramList.printStackTrace();
        return;
      }
      finally {}
    }
  }
  
  public static boolean a(int paramInt, String paramString, n paramn)
  {
    boolean bool2 = true;
    bool3 = false;
    bool1 = false;
    for (;;)
    {
      try
      {
        SQLiteDatabase localSQLiteDatabase = b.getWritableDatabase();
        if (localSQLiteDatabase != null)
        {
          if ((paramString == null) || (paramString.trim().length() <= 0)) {
            continue;
          }
          i = 0;
          if (i == 0) {
            continue;
          }
          paramString = "_id = " + paramInt;
          paramInt = localSQLiteDatabase.delete("t_pf", paramString, null);
          w.c("deleted %s data %d", new Object[] { "t_pf", Integer.valueOf(paramInt) });
          if (paramInt <= 0) {
            continue;
          }
          bool1 = bool2;
        }
      }
      catch (Throwable paramString)
      {
        int i;
        if (w.a(paramString)) {
          continue;
        }
        paramString.printStackTrace();
        bool1 = bool3;
        return false;
      }
      finally
      {
        if (paramn == null) {
          continue;
        }
      }
      return bool1;
      i = 1;
      continue;
      paramString = "_id = " + paramInt + " and _tp = \"" + paramString + "\"";
      continue;
      bool1 = false;
    }
  }
  
  private boolean a(int paramInt, String paramString, byte[] paramArrayOfByte, n paramn)
  {
    boolean bool1 = false;
    try
    {
      q localq = new q();
      localq.a = paramInt;
      localq.f = paramString;
      localq.e = System.currentTimeMillis();
      localq.g = paramArrayOfByte;
      boolean bool2 = b(localq);
      bool1 = bool2;
    }
    catch (Throwable paramString)
    {
      if (w.a(paramString)) {
        break label71;
      }
      paramString.printStackTrace();
      return false;
    }
    finally
    {
      if (paramn == null) {
        break label84;
      }
    }
    return bool1;
  }
  
  private static ContentValues b(l paraml)
  {
    if (paraml == null) {}
    do
    {
      for (;;)
      {
        return null;
        try
        {
          ContentValues localContentValues = new ContentValues();
          if ((paraml.a > 0L) && (!TextUtils.isEmpty(paraml.b)))
          {
            localContentValues.put("_id", Long.valueOf(paraml.a));
            localContentValues.put("_pc", paraml.b);
            localContentValues.put("_tm", Long.valueOf(paraml.c));
            localContentValues.put("_fl", Integer.valueOf(paraml.d));
            localContentValues.put("_av", paraml.f);
            localContentValues.put("_sv", paraml.e);
            localContentValues.put("_uid", Long.valueOf(paraml.g));
            return localContentValues;
          }
        }
        catch (Throwable paraml) {}
      }
    } while (w.a(paraml));
    paraml.printStackTrace();
    return null;
  }
  
  private static q b(Cursor paramCursor)
  {
    if (paramCursor == null) {}
    do
    {
      return null;
      try
      {
        q localq = new q();
        localq.a = paramCursor.getLong(paramCursor.getColumnIndex("_id"));
        localq.e = paramCursor.getLong(paramCursor.getColumnIndex("_tm"));
        localq.f = paramCursor.getString(paramCursor.getColumnIndex("_tp"));
        localq.g = paramCursor.getBlob(paramCursor.getColumnIndex("_dt"));
        return localq;
      }
      catch (Throwable paramCursor) {}
    } while (w.a(paramCursor));
    paramCursor.printStackTrace();
    return null;
  }
  
  public static void b(int paramInt)
  {
    String str = null;
    SQLiteDatabase localSQLiteDatabase = b.getWritableDatabase();
    if ((localSQLiteDatabase == null) || (paramInt >= 0)) {}
    try
    {
      str = "_tp = " + paramInt;
      w.c("deleted %s data %d", new Object[] { "t_lr", Integer.valueOf(localSQLiteDatabase.delete("t_lr", str, null)) });
      return;
    }
    catch (Throwable localThrowable)
    {
      do
      {
        localThrowable = localThrowable;
      } while (w.a(localThrowable));
      localThrowable.printStackTrace();
      return;
    }
    finally {}
  }
  
  private boolean b(q paramq)
  {
    if (paramq == null) {}
    for (;;)
    {
      return false;
      try
      {
        SQLiteDatabase localSQLiteDatabase = b.getWritableDatabase();
        if (localSQLiteDatabase == null) {
          continue;
        }
        ContentValues localContentValues = d(paramq);
        if (localContentValues == null) {
          continue;
        }
        long l = localSQLiteDatabase.replace("t_pf", "_id", localContentValues);
        if (l < 0L) {
          continue;
        }
        w.c("insert %s success!", new Object[] { "t_pf" });
        paramq.a = l;
        return true;
      }
      catch (Throwable paramq)
      {
        paramq = paramq;
        if (w.a(paramq)) {
          continue;
        }
        paramq.printStackTrace();
        return false;
      }
      finally {}
    }
  }
  
  private static ContentValues c(q paramq)
  {
    if (paramq == null) {}
    do
    {
      return null;
      try
      {
        ContentValues localContentValues = new ContentValues();
        if (paramq.a > 0L) {
          localContentValues.put("_id", Long.valueOf(paramq.a));
        }
        localContentValues.put("_tp", Integer.valueOf(paramq.b));
        localContentValues.put("_pc", paramq.c);
        localContentValues.put("_th", paramq.d);
        localContentValues.put("_tm", Long.valueOf(paramq.e));
        if (paramq.g != null) {
          localContentValues.put("_dt", paramq.g);
        }
        return localContentValues;
      }
      catch (Throwable paramq) {}
    } while (w.a(paramq));
    paramq.printStackTrace();
    return null;
  }
  
  private static l c(Cursor paramCursor)
  {
    if (paramCursor == null) {}
    do
    {
      return null;
      try
      {
        l locall = new l();
        locall.a = paramCursor.getLong(paramCursor.getColumnIndex("_id"));
        locall.b = paramCursor.getString(paramCursor.getColumnIndex("_pc"));
        locall.e = paramCursor.getString(paramCursor.getColumnIndex("_sv"));
        locall.f = paramCursor.getString(paramCursor.getColumnIndex("_av"));
        locall.c = paramCursor.getLong(paramCursor.getColumnIndex("_tm"));
        locall.d = paramCursor.getInt(paramCursor.getColumnIndex("_fl"));
        locall.g = paramCursor.getLong(paramCursor.getColumnIndex("_uid"));
        return locall;
      }
      catch (Throwable paramCursor) {}
    } while (w.a(paramCursor));
    paramCursor.printStackTrace();
    return null;
  }
  
  /* Error */
  private List<q> c(int paramInt)
  {
    // Byte code:
    //   0: getstatic 16	com/tencent/bugly/proguard/o:b	Lcom/tencent/bugly/proguard/p;
    //   3: invokevirtual 39	com/tencent/bugly/proguard/p:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   6: astore_3
    //   7: aload_3
    //   8: ifnull +142 -> 150
    //   11: new 182	java/lang/StringBuilder
    //   14: dup
    //   15: ldc -31
    //   17: invokespecial 228	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   20: iload_1
    //   21: invokevirtual 231	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   24: invokevirtual 196	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   27: astore 4
    //   29: aload_3
    //   30: ldc -23
    //   32: aconst_null
    //   33: aload 4
    //   35: aconst_null
    //   36: aconst_null
    //   37: aconst_null
    //   38: aconst_null
    //   39: invokevirtual 311	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   42: astore_2
    //   43: aload_2
    //   44: ifnonnull +24 -> 68
    //   47: aload_2
    //   48: ifnull +18 -> 66
    //   51: aload_2
    //   52: invokeinterface 314 1 0
    //   57: ifne +9 -> 66
    //   60: aload_2
    //   61: invokeinterface 317 1 0
    //   66: aconst_null
    //   67: areturn
    //   68: new 182	java/lang/StringBuilder
    //   71: dup
    //   72: invokespecial 183	java/lang/StringBuilder:<init>	()V
    //   75: astore 5
    //   77: new 319	java/util/ArrayList
    //   80: dup
    //   81: invokespecial 320	java/util/ArrayList:<init>	()V
    //   84: astore 6
    //   86: aload_2
    //   87: invokeinterface 323 1 0
    //   92: ifeq +137 -> 229
    //   95: aload_2
    //   96: invokestatic 325	com/tencent/bugly/proguard/o:b	(Landroid/database/Cursor;)Lcom/tencent/bugly/proguard/q;
    //   99: astore 7
    //   101: aload 7
    //   103: ifnull +49 -> 152
    //   106: aload 6
    //   108: aload 7
    //   110: invokeinterface 329 2 0
    //   115: pop
    //   116: goto -30 -> 86
    //   119: astore_3
    //   120: aload_3
    //   121: invokestatic 50	com/tencent/bugly/proguard/w:a	(Ljava/lang/Throwable;)Z
    //   124: ifne +7 -> 131
    //   127: aload_3
    //   128: invokevirtual 53	java/lang/Throwable:printStackTrace	()V
    //   131: aload_2
    //   132: ifnull +18 -> 150
    //   135: aload_2
    //   136: invokeinterface 314 1 0
    //   141: ifne +9 -> 150
    //   144: aload_2
    //   145: invokeinterface 317 1 0
    //   150: aconst_null
    //   151: areturn
    //   152: aload_2
    //   153: aload_2
    //   154: ldc 104
    //   156: invokeinterface 95 2 0
    //   161: invokeinterface 117 2 0
    //   166: astore 7
    //   168: aload 5
    //   170: ldc_w 331
    //   173: invokevirtual 189	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   176: aload 7
    //   178: invokevirtual 189	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   181: pop
    //   182: goto -96 -> 86
    //   185: astore 7
    //   187: ldc_w 333
    //   190: iconst_0
    //   191: anewarray 4	java/lang/Object
    //   194: invokestatic 73	com/tencent/bugly/proguard/w:d	(Ljava/lang/String;[Ljava/lang/Object;)Z
    //   197: pop
    //   198: goto -112 -> 86
    //   201: astore 4
    //   203: aload_2
    //   204: astore_3
    //   205: aload 4
    //   207: astore_2
    //   208: aload_3
    //   209: ifnull +18 -> 227
    //   212: aload_3
    //   213: invokeinterface 314 1 0
    //   218: ifne +9 -> 227
    //   221: aload_3
    //   222: invokeinterface 317 1 0
    //   227: aload_2
    //   228: athrow
    //   229: aload 5
    //   231: invokevirtual 334	java/lang/StringBuilder:length	()I
    //   234: ifle +51 -> 285
    //   237: aload 5
    //   239: ldc_w 336
    //   242: invokevirtual 189	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   245: iload_1
    //   246: invokevirtual 231	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   249: pop
    //   250: ldc_w 338
    //   253: iconst_2
    //   254: anewarray 4	java/lang/Object
    //   257: dup
    //   258: iconst_0
    //   259: ldc -23
    //   261: aastore
    //   262: dup
    //   263: iconst_1
    //   264: aload_3
    //   265: ldc -23
    //   267: aload 4
    //   269: iconst_4
    //   270: invokevirtual 204	java/lang/String:substring	(I)Ljava/lang/String;
    //   273: aconst_null
    //   274: invokevirtual 45	android/database/sqlite/SQLiteDatabase:delete	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    //   277: invokestatic 218	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   280: aastore
    //   281: invokestatic 73	com/tencent/bugly/proguard/w:d	(Ljava/lang/String;[Ljava/lang/Object;)Z
    //   284: pop
    //   285: aload_2
    //   286: ifnull +18 -> 304
    //   289: aload_2
    //   290: invokeinterface 314 1 0
    //   295: ifne +9 -> 304
    //   298: aload_2
    //   299: invokeinterface 317 1 0
    //   304: aload 6
    //   306: areturn
    //   307: astore_2
    //   308: aconst_null
    //   309: astore_3
    //   310: goto -102 -> 208
    //   313: astore 4
    //   315: aload_2
    //   316: astore_3
    //   317: aload 4
    //   319: astore_2
    //   320: goto -112 -> 208
    //   323: astore_3
    //   324: aconst_null
    //   325: astore_2
    //   326: goto -206 -> 120
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	329	0	this	o
    //   0	329	1	paramInt	int
    //   42	257	2	localObject1	Object
    //   307	9	2	localObject2	Object
    //   319	7	2	localObject3	Object
    //   6	24	3	localSQLiteDatabase	SQLiteDatabase
    //   119	9	3	localThrowable1	Throwable
    //   204	113	3	localObject4	Object
    //   323	1	3	localThrowable2	Throwable
    //   27	7	4	str	String
    //   201	67	4	localObject5	Object
    //   313	5	4	localObject6	Object
    //   75	163	5	localStringBuilder	StringBuilder
    //   84	221	6	localArrayList	java.util.ArrayList
    //   99	78	7	localObject7	Object
    //   185	1	7	localThrowable3	Throwable
    // Exception table:
    //   from	to	target	type
    //   68	86	119	java/lang/Throwable
    //   86	101	119	java/lang/Throwable
    //   106	116	119	java/lang/Throwable
    //   187	198	119	java/lang/Throwable
    //   229	285	119	java/lang/Throwable
    //   152	182	185	java/lang/Throwable
    //   68	86	201	finally
    //   86	101	201	finally
    //   106	116	201	finally
    //   152	182	201	finally
    //   187	198	201	finally
    //   229	285	201	finally
    //   0	7	307	finally
    //   11	43	307	finally
    //   120	131	313	finally
    //   0	7	323	java/lang/Throwable
    //   11	43	323	java/lang/Throwable
  }
  
  private static ContentValues d(q paramq)
  {
    Object localObject;
    int i;
    if (paramq != null)
    {
      localObject = paramq.f;
      if ((localObject != null) && (((String)localObject).trim().length() > 0))
      {
        i = 0;
        if (i == 0) {
          break label38;
        }
      }
    }
    else
    {
      localObject = null;
    }
    for (;;)
    {
      return (ContentValues)localObject;
      i = 1;
      break;
      try
      {
        label38:
        ContentValues localContentValues = new ContentValues();
        if (paramq.a > 0L) {
          localContentValues.put("_id", Long.valueOf(paramq.a));
        }
        localContentValues.put("_tp", paramq.f);
        localContentValues.put("_tm", Long.valueOf(paramq.e));
        localObject = localContentValues;
        if (paramq.g != null)
        {
          localContentValues.put("_dt", paramq.g);
          return localContentValues;
        }
      }
      catch (Throwable paramq)
      {
        if (!w.a(paramq)) {
          paramq.printStackTrace();
        }
      }
    }
    return null;
  }
  
  public final int a(int paramInt, String paramString, long paramLong)
  {
    StringBuilder localStringBuilder = new StringBuilder("_id = ").append(paramInt).append(" and _pc = '").append(paramString).append("' ");
    if (paramLong == 0L) {}
    for (paramString = "";; paramString = " and _tm < " + paramLong) {
      return a("t_crd", paramString, null, null);
    }
  }
  
  public final int a(String paramString1, String paramString2, String[] paramArrayOfString, n paramn, boolean paramBoolean)
  {
    return a(paramString1, paramString2, null, null);
  }
  
  public final long a(String paramString, ContentValues paramContentValues, n paramn, boolean paramBoolean)
  {
    return a(paramString, paramContentValues, null);
  }
  
  public final Cursor a(String paramString1, String[] paramArrayOfString1, String paramString2, String[] paramArrayOfString2, n paramn, boolean paramBoolean)
  {
    return a(false, paramString1, paramArrayOfString1, paramString2, null, null, null, null, null, null);
  }
  
  /* Error */
  public final l a(int paramInt, String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: getstatic 16	com/tencent/bugly/proguard/o:b	Lcom/tencent/bugly/proguard/p;
    //   5: invokevirtual 39	com/tencent/bugly/proguard/p:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   8: astore 4
    //   10: aload 4
    //   12: ifnull +173 -> 185
    //   15: aload 4
    //   17: ldc_w 348
    //   20: aconst_null
    //   21: new 182	java/lang/StringBuilder
    //   24: dup
    //   25: ldc -31
    //   27: invokespecial 228	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   30: iload_1
    //   31: invokevirtual 231	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   34: ldc_w 342
    //   37: invokevirtual 189	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   40: aload_2
    //   41: invokevirtual 189	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   44: ldc_w 356
    //   47: invokevirtual 189	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   50: invokevirtual 196	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   53: aconst_null
    //   54: aconst_null
    //   55: aconst_null
    //   56: ldc_w 358
    //   59: invokevirtual 311	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   62: astore_2
    //   63: aload_2
    //   64: ifnonnull +28 -> 92
    //   67: aload_2
    //   68: ifnull +18 -> 86
    //   71: aload_2
    //   72: invokeinterface 314 1 0
    //   77: ifne +9 -> 86
    //   80: aload_2
    //   81: invokeinterface 317 1 0
    //   86: aconst_null
    //   87: astore 4
    //   89: aload 4
    //   91: areturn
    //   92: aload_2
    //   93: ifnull +125 -> 218
    //   96: aload_2
    //   97: astore_3
    //   98: aload_2
    //   99: invokeinterface 361 1 0
    //   104: ifeq +114 -> 218
    //   107: aload_2
    //   108: astore_3
    //   109: aload_2
    //   110: invokestatic 363	com/tencent/bugly/proguard/o:c	(Landroid/database/Cursor;)Lcom/tencent/bugly/proguard/l;
    //   113: astore 4
    //   115: aload 4
    //   117: astore_3
    //   118: aload_3
    //   119: astore 4
    //   121: aload_2
    //   122: ifnull -33 -> 89
    //   125: aload_3
    //   126: astore 4
    //   128: aload_2
    //   129: invokeinterface 314 1 0
    //   134: ifne -45 -> 89
    //   137: aload_2
    //   138: invokeinterface 317 1 0
    //   143: aload_3
    //   144: areturn
    //   145: astore 4
    //   147: aconst_null
    //   148: astore_2
    //   149: aload_2
    //   150: astore_3
    //   151: aload 4
    //   153: invokestatic 50	com/tencent/bugly/proguard/w:a	(Ljava/lang/Throwable;)Z
    //   156: ifne +10 -> 166
    //   159: aload_2
    //   160: astore_3
    //   161: aload 4
    //   163: invokevirtual 53	java/lang/Throwable:printStackTrace	()V
    //   166: aload_2
    //   167: ifnull +18 -> 185
    //   170: aload_2
    //   171: invokeinterface 314 1 0
    //   176: ifne +9 -> 185
    //   179: aload_2
    //   180: invokeinterface 317 1 0
    //   185: aconst_null
    //   186: areturn
    //   187: astore_2
    //   188: aload_3
    //   189: ifnull +18 -> 207
    //   192: aload_3
    //   193: invokeinterface 314 1 0
    //   198: ifne +9 -> 207
    //   201: aload_3
    //   202: invokeinterface 317 1 0
    //   207: aload_2
    //   208: athrow
    //   209: astore_2
    //   210: goto -22 -> 188
    //   213: astore 4
    //   215: goto -66 -> 149
    //   218: aconst_null
    //   219: astore_3
    //   220: goto -102 -> 118
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	223	0	this	o
    //   0	223	1	paramInt	int
    //   0	223	2	paramString	String
    //   1	219	3	localObject1	Object
    //   8	119	4	localObject2	Object
    //   145	17	4	localThrowable1	Throwable
    //   213	1	4	localThrowable2	Throwable
    // Exception table:
    //   from	to	target	type
    //   15	63	145	java/lang/Throwable
    //   15	63	187	finally
    //   98	107	209	finally
    //   109	115	209	finally
    //   151	159	209	finally
    //   161	166	209	finally
    //   98	107	213	java/lang/Throwable
    //   109	115	213	java/lang/Throwable
  }
  
  /* Error */
  public final List<q> a(int paramInt)
  {
    // Byte code:
    //   0: getstatic 16	com/tencent/bugly/proguard/o:b	Lcom/tencent/bugly/proguard/p;
    //   3: invokevirtual 39	com/tencent/bugly/proguard/p:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   6: astore_3
    //   7: aload_3
    //   8: ifnull +150 -> 158
    //   11: iload_1
    //   12: iflt +59 -> 71
    //   15: new 182	java/lang/StringBuilder
    //   18: dup
    //   19: ldc_w 298
    //   22: invokespecial 228	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   25: iload_1
    //   26: invokevirtual 231	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   29: invokevirtual 196	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   32: astore_2
    //   33: aload_3
    //   34: ldc -44
    //   36: aconst_null
    //   37: aload_2
    //   38: aconst_null
    //   39: aconst_null
    //   40: aconst_null
    //   41: aconst_null
    //   42: invokevirtual 311	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   45: astore_2
    //   46: aload_2
    //   47: ifnonnull +29 -> 76
    //   50: aload_2
    //   51: ifnull +18 -> 69
    //   54: aload_2
    //   55: invokeinterface 314 1 0
    //   60: ifne +9 -> 69
    //   63: aload_2
    //   64: invokeinterface 317 1 0
    //   69: aconst_null
    //   70: areturn
    //   71: aconst_null
    //   72: astore_2
    //   73: goto -40 -> 33
    //   76: new 182	java/lang/StringBuilder
    //   79: dup
    //   80: invokespecial 183	java/lang/StringBuilder:<init>	()V
    //   83: astore 5
    //   85: new 319	java/util/ArrayList
    //   88: dup
    //   89: invokespecial 320	java/util/ArrayList:<init>	()V
    //   92: astore 4
    //   94: aload_2
    //   95: invokeinterface 323 1 0
    //   100: ifeq +136 -> 236
    //   103: aload_2
    //   104: invokestatic 365	com/tencent/bugly/proguard/o:a	(Landroid/database/Cursor;)Lcom/tencent/bugly/proguard/q;
    //   107: astore 6
    //   109: aload 6
    //   111: ifnull +49 -> 160
    //   114: aload 4
    //   116: aload 6
    //   118: invokeinterface 329 2 0
    //   123: pop
    //   124: goto -30 -> 94
    //   127: astore_3
    //   128: aload_3
    //   129: invokestatic 50	com/tencent/bugly/proguard/w:a	(Ljava/lang/Throwable;)Z
    //   132: ifne +7 -> 139
    //   135: aload_3
    //   136: invokevirtual 53	java/lang/Throwable:printStackTrace	()V
    //   139: aload_2
    //   140: ifnull +18 -> 158
    //   143: aload_2
    //   144: invokeinterface 314 1 0
    //   149: ifne +9 -> 158
    //   152: aload_2
    //   153: invokeinterface 317 1 0
    //   158: aconst_null
    //   159: areturn
    //   160: aload_2
    //   161: aload_2
    //   162: ldc 59
    //   164: invokeinterface 95 2 0
    //   169: invokeinterface 99 2 0
    //   174: lstore 7
    //   176: aload 5
    //   178: ldc -71
    //   180: invokevirtual 189	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   183: lload 7
    //   185: invokevirtual 192	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   188: pop
    //   189: goto -95 -> 94
    //   192: astore 6
    //   194: ldc_w 333
    //   197: iconst_0
    //   198: anewarray 4	java/lang/Object
    //   201: invokestatic 73	com/tencent/bugly/proguard/w:d	(Ljava/lang/String;[Ljava/lang/Object;)Z
    //   204: pop
    //   205: goto -111 -> 94
    //   208: astore 4
    //   210: aload_2
    //   211: astore_3
    //   212: aload 4
    //   214: astore_2
    //   215: aload_3
    //   216: ifnull +18 -> 234
    //   219: aload_3
    //   220: invokeinterface 314 1 0
    //   225: ifne +9 -> 234
    //   228: aload_3
    //   229: invokeinterface 317 1 0
    //   234: aload_2
    //   235: athrow
    //   236: aload 5
    //   238: invokevirtual 196	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   241: astore 5
    //   243: aload 5
    //   245: invokevirtual 201	java/lang/String:length	()I
    //   248: ifle +38 -> 286
    //   251: ldc_w 338
    //   254: iconst_2
    //   255: anewarray 4	java/lang/Object
    //   258: dup
    //   259: iconst_0
    //   260: ldc -44
    //   262: aastore
    //   263: dup
    //   264: iconst_1
    //   265: aload_3
    //   266: ldc -44
    //   268: aload 5
    //   270: iconst_4
    //   271: invokevirtual 204	java/lang/String:substring	(I)Ljava/lang/String;
    //   274: aconst_null
    //   275: invokevirtual 45	android/database/sqlite/SQLiteDatabase:delete	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    //   278: invokestatic 218	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   281: aastore
    //   282: invokestatic 73	com/tencent/bugly/proguard/w:d	(Ljava/lang/String;[Ljava/lang/Object;)Z
    //   285: pop
    //   286: aload_2
    //   287: ifnull +18 -> 305
    //   290: aload_2
    //   291: invokeinterface 314 1 0
    //   296: ifne +9 -> 305
    //   299: aload_2
    //   300: invokeinterface 317 1 0
    //   305: aload 4
    //   307: areturn
    //   308: astore_2
    //   309: aconst_null
    //   310: astore_3
    //   311: goto -96 -> 215
    //   314: astore 4
    //   316: aload_2
    //   317: astore_3
    //   318: aload 4
    //   320: astore_2
    //   321: goto -106 -> 215
    //   324: astore_3
    //   325: aconst_null
    //   326: astore_2
    //   327: goto -199 -> 128
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	330	0	this	o
    //   0	330	1	paramInt	int
    //   32	268	2	localObject1	Object
    //   308	9	2	localObject2	Object
    //   320	7	2	localObject3	Object
    //   6	28	3	localSQLiteDatabase	SQLiteDatabase
    //   127	9	3	localThrowable1	Throwable
    //   211	107	3	localObject4	Object
    //   324	1	3	localThrowable2	Throwable
    //   92	23	4	localArrayList	java.util.ArrayList
    //   208	98	4	localList	List<q>
    //   314	5	4	localObject5	Object
    //   83	186	5	localObject6	Object
    //   107	10	6	localq	q
    //   192	1	6	localThrowable3	Throwable
    //   174	10	7	l	long
    // Exception table:
    //   from	to	target	type
    //   76	94	127	java/lang/Throwable
    //   94	109	127	java/lang/Throwable
    //   114	124	127	java/lang/Throwable
    //   194	205	127	java/lang/Throwable
    //   236	286	127	java/lang/Throwable
    //   160	189	192	java/lang/Throwable
    //   76	94	208	finally
    //   94	109	208	finally
    //   114	124	208	finally
    //   160	189	208	finally
    //   194	205	208	finally
    //   236	286	208	finally
    //   15	33	308	finally
    //   33	46	308	finally
    //   128	139	314	finally
    //   15	33	324	java/lang/Throwable
    //   33	46	324	java/lang/Throwable
  }
  
  /* Error */
  public final List<l> a(int paramInt, String paramString1, long paramLong, String paramString2)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 6
    //   3: getstatic 16	com/tencent/bugly/proguard/o:b	Lcom/tencent/bugly/proguard/p;
    //   6: invokevirtual 39	com/tencent/bugly/proguard/p:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   9: astore 7
    //   11: aload 7
    //   13: ifnull +232 -> 245
    //   16: new 182	java/lang/StringBuilder
    //   19: dup
    //   20: ldc -31
    //   22: invokespecial 228	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   25: iload_1
    //   26: invokevirtual 231	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   29: ldc_w 342
    //   32: invokevirtual 189	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   35: aload_2
    //   36: invokevirtual 189	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   39: ldc_w 368
    //   42: invokevirtual 189	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   45: aload 5
    //   47: invokevirtual 189	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   50: ldc_w 344
    //   53: invokevirtual 189	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   56: astore 5
    //   58: lload_3
    //   59: lconst_0
    //   60: lcmp
    //   61: ifeq +78 -> 139
    //   64: new 182	java/lang/StringBuilder
    //   67: dup
    //   68: ldc_w 370
    //   71: invokespecial 228	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   74: lload_3
    //   75: invokevirtual 192	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   78: invokevirtual 196	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   81: astore_2
    //   82: aload 7
    //   84: ldc_w 348
    //   87: aconst_null
    //   88: aload 5
    //   90: aload_2
    //   91: invokevirtual 189	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   94: invokevirtual 196	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   97: aconst_null
    //   98: aconst_null
    //   99: aconst_null
    //   100: ldc_w 372
    //   103: invokevirtual 311	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   106: astore 5
    //   108: aload 5
    //   110: ifnonnull +36 -> 146
    //   113: aload 5
    //   115: ifnull +20 -> 135
    //   118: aload 5
    //   120: invokeinterface 314 1 0
    //   125: ifne +10 -> 135
    //   128: aload 5
    //   130: invokeinterface 317 1 0
    //   135: aconst_null
    //   136: astore_2
    //   137: aload_2
    //   138: areturn
    //   139: ldc_w 346
    //   142: astore_2
    //   143: goto -61 -> 82
    //   146: aload 5
    //   148: astore_2
    //   149: new 319	java/util/ArrayList
    //   152: dup
    //   153: invokespecial 320	java/util/ArrayList:<init>	()V
    //   156: astore 6
    //   158: aload 5
    //   160: astore_2
    //   161: aload 5
    //   163: invokeinterface 323 1 0
    //   168: ifeq +79 -> 247
    //   171: aload 5
    //   173: astore_2
    //   174: aload 5
    //   176: invokestatic 363	com/tencent/bugly/proguard/o:c	(Landroid/database/Cursor;)Lcom/tencent/bugly/proguard/l;
    //   179: astore 7
    //   181: aload 7
    //   183: ifnull -25 -> 158
    //   186: aload 5
    //   188: astore_2
    //   189: aload 6
    //   191: aload 7
    //   193: invokeinterface 329 2 0
    //   198: pop
    //   199: goto -41 -> 158
    //   202: astore 6
    //   204: aload 5
    //   206: astore_2
    //   207: aload 6
    //   209: invokestatic 50	com/tencent/bugly/proguard/w:a	(Ljava/lang/Throwable;)Z
    //   212: ifne +11 -> 223
    //   215: aload 5
    //   217: astore_2
    //   218: aload 6
    //   220: invokevirtual 53	java/lang/Throwable:printStackTrace	()V
    //   223: aload 5
    //   225: ifnull +20 -> 245
    //   228: aload 5
    //   230: invokeinterface 314 1 0
    //   235: ifne +10 -> 245
    //   238: aload 5
    //   240: invokeinterface 317 1 0
    //   245: aconst_null
    //   246: areturn
    //   247: aload 6
    //   249: astore_2
    //   250: aload 5
    //   252: ifnull -115 -> 137
    //   255: aload 6
    //   257: astore_2
    //   258: aload 5
    //   260: invokeinterface 314 1 0
    //   265: ifne -128 -> 137
    //   268: aload 5
    //   270: invokeinterface 317 1 0
    //   275: aload 6
    //   277: areturn
    //   278: astore_2
    //   279: aload 6
    //   281: astore 5
    //   283: aload 5
    //   285: ifnull +20 -> 305
    //   288: aload 5
    //   290: invokeinterface 314 1 0
    //   295: ifne +10 -> 305
    //   298: aload 5
    //   300: invokeinterface 317 1 0
    //   305: aload_2
    //   306: athrow
    //   307: astore 6
    //   309: aload_2
    //   310: astore 5
    //   312: aload 6
    //   314: astore_2
    //   315: goto -32 -> 283
    //   318: astore 6
    //   320: aconst_null
    //   321: astore 5
    //   323: goto -119 -> 204
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	326	0	this	o
    //   0	326	1	paramInt	int
    //   0	326	2	paramString1	String
    //   0	326	3	paramLong	long
    //   0	326	5	paramString2	String
    //   1	189	6	localArrayList	java.util.ArrayList
    //   202	78	6	localThrowable1	Throwable
    //   307	6	6	localObject1	Object
    //   318	1	6	localThrowable2	Throwable
    //   9	183	7	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   149	158	202	java/lang/Throwable
    //   161	171	202	java/lang/Throwable
    //   174	181	202	java/lang/Throwable
    //   189	199	202	java/lang/Throwable
    //   16	58	278	finally
    //   64	82	278	finally
    //   82	108	278	finally
    //   149	158	307	finally
    //   161	171	307	finally
    //   174	181	307	finally
    //   189	199	307	finally
    //   207	215	307	finally
    //   218	223	307	finally
    //   16	58	318	java/lang/Throwable
    //   64	82	318	java/lang/Throwable
    //   82	108	318	java/lang/Throwable
  }
  
  public final Map<String, byte[]> a(int paramInt, n paramn, boolean paramBoolean)
  {
    return a(paramInt, null);
  }
  
  public final boolean a(int paramInt, String paramString, n paramn, boolean paramBoolean)
  {
    return a(555, paramString, null);
  }
  
  public final boolean a(int paramInt, String paramString, byte[] paramArrayOfByte, n paramn, boolean paramBoolean)
  {
    if (!paramBoolean)
    {
      paramn = new as(this);
      paramn.a = paramInt;
      paramn.b = paramString;
      paramn.c = paramArrayOfByte;
      v.a().b(paramn);
      return true;
    }
    return a(paramInt, paramString, paramArrayOfByte, null);
  }
  
  public final boolean a(l paraml)
  {
    if (paraml == null) {}
    for (;;)
    {
      return false;
      try
      {
        SQLiteDatabase localSQLiteDatabase = b.getWritableDatabase();
        if (localSQLiteDatabase == null) {
          continue;
        }
        ContentValues localContentValues = b(paraml);
        if (localContentValues == null) {
          continue;
        }
        long l = localSQLiteDatabase.replace("t_crd", "_id", localContentValues);
        if (l < 0L) {
          continue;
        }
        w.c("insert %s success!", new Object[] { "t_crd" });
        paraml.a = l;
        return true;
      }
      catch (Throwable paraml)
      {
        paraml = paraml;
        if (w.a(paraml)) {
          continue;
        }
        paraml.printStackTrace();
        return false;
      }
      finally {}
    }
  }
  
  public final boolean a(q paramq)
  {
    if (paramq == null) {}
    for (;;)
    {
      return false;
      try
      {
        SQLiteDatabase localSQLiteDatabase = b.getWritableDatabase();
        if (localSQLiteDatabase == null) {
          continue;
        }
        ContentValues localContentValues = c(paramq);
        if (localContentValues == null) {
          continue;
        }
        long l = localSQLiteDatabase.replace("t_lr", "_id", localContentValues);
        if (l < 0L) {
          continue;
        }
        w.c("insert %s success!", new Object[] { "t_lr" });
        paramq.a = l;
        return true;
      }
      catch (Throwable paramq)
      {
        paramq = paramq;
        if (w.a(paramq)) {
          continue;
        }
        paramq.printStackTrace();
        return false;
      }
      finally {}
    }
  }
  
  public final int b()
  {
    StringBuilder localStringBuilder = new StringBuilder("_fl = 0 or _sv <> '");
    com.tencent.bugly.crashreport.common.info.a.a().getClass();
    return a("t_crd", "2.1.9'", null, null);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\bugly\proguard\o.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
package com.tencent.open.cgireport;

import android.content.ContentValues;
import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.util.Log;
import java.util.ArrayList;
import java.util.Iterator;

public class ReportDataModal
{
  private Context a;
  private SQLiteDatabase b;
  private a c;
  private int d;
  
  public ReportDataModal(Context paramContext)
  {
    this.a = paramContext;
    this.c = new a(this, paramContext, "sdk_cgi_report.db");
    this.d = c().size();
  }
  
  public int a(ArrayList paramArrayList)
  {
    int i;
    try
    {
      Log.i("cgi_report_debug", "ReportDataModal backupOldItems count = " + paramArrayList.size());
      paramArrayList = paramArrayList.iterator();
      i = 0;
      for (;;)
      {
        if (paramArrayList.hasNext())
        {
          reportItem localreportItem = (reportItem)paramArrayList.next();
          ContentValues localContentValues = new ContentValues();
          localContentValues.put("apn", localreportItem.a());
          localContentValues.put("frequency", localreportItem.b());
          localContentValues.put("commandid", localreportItem.c());
          localContentValues.put("resultcode", localreportItem.d());
          localContentValues.put("tmcost", localreportItem.e());
          localContentValues.put("reqsize", localreportItem.f());
          localContentValues.put("rspsize", localreportItem.g());
          localContentValues.put("deviceinfo", localreportItem.i());
          localContentValues.put("detail", localreportItem.h());
          try
          {
            this.b = this.c.getWritableDatabase();
            this.b.insertOrThrow("olddata", null, localContentValues);
            this.b.close();
            i += 1;
          }
          catch (Exception localException)
          {
            for (;;)
            {
              localException.printStackTrace();
            }
          }
        }
      }
      Log.i("cgi_report_debug", "ReportDataModal backupOldItems succ_count = " + i);
    }
    finally {}
    return i;
  }
  
  public boolean a()
  {
    boolean bool = false;
    try
    {
      Log.i("cgi_report_debug", "ReportDataModal deleteOldItems start");
      try
      {
        this.b = this.c.getWritableDatabase();
      }
      catch (Exception localException1)
      {
        for (;;)
        {
          label49:
          localException1.printStackTrace();
        }
      }
    }
    finally {}
    try
    {
      this.b.execSQL("delete from olddata;");
      this.b.close();
      Log.i("cgi_report_debug", "ReportDataModal deleteOldItems success");
      bool = true;
    }
    catch (Exception localException2)
    {
      localException2.printStackTrace();
      this.b.close();
      break label49;
    }
    return bool;
  }
  
  /* Error */
  public boolean a(String paramString1, String paramString2, String paramString3, int paramInt, long paramLong1, long paramLong2, long paramLong3, String paramString4)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_3
    //   3: astore 12
    //   5: aload_3
    //   6: ldc -93
    //   8: invokevirtual 169	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   11: ifeq +13 -> 24
    //   14: aload_3
    //   15: ldc -85
    //   17: invokevirtual 175	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   20: iconst_0
    //   21: aaload
    //   22: astore 12
    //   24: ldc 45
    //   26: new 47	java/lang/StringBuilder
    //   29: dup
    //   30: ldc -79
    //   32: invokespecial 52	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   35: aload_1
    //   36: invokevirtual 180	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   39: ldc -74
    //   41: invokevirtual 180	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   44: aload_2
    //   45: invokevirtual 180	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   48: ldc -72
    //   50: invokevirtual 180	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   53: aload 12
    //   55: invokevirtual 180	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   58: ldc -70
    //   60: invokevirtual 180	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   63: iload 4
    //   65: invokevirtual 56	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   68: ldc -68
    //   70: invokevirtual 180	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   73: lload 5
    //   75: invokevirtual 191	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   78: ldc -63
    //   80: invokevirtual 180	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   83: lload 7
    //   85: invokevirtual 191	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   88: ldc -61
    //   90: invokevirtual 180	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   93: lload 9
    //   95: invokevirtual 191	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   98: invokevirtual 60	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   101: invokestatic 66	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;)I
    //   104: pop
    //   105: new 84	android/content/ContentValues
    //   108: dup
    //   109: invokespecial 85	android/content/ContentValues:<init>	()V
    //   112: astore_3
    //   113: aload_3
    //   114: ldc 87
    //   116: aload_1
    //   117: invokevirtual 93	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   120: aload_3
    //   121: ldc 95
    //   123: aload_2
    //   124: invokevirtual 93	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   127: aload_3
    //   128: ldc 99
    //   130: aload 12
    //   132: invokevirtual 93	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   135: aload_3
    //   136: ldc 103
    //   138: iload 4
    //   140: invokestatic 199	java/lang/String:valueOf	(I)Ljava/lang/String;
    //   143: invokevirtual 93	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   146: aload_3
    //   147: ldc 107
    //   149: lload 5
    //   151: invokestatic 202	java/lang/String:valueOf	(J)Ljava/lang/String;
    //   154: invokevirtual 93	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   157: aload_3
    //   158: ldc 112
    //   160: lload 7
    //   162: invokestatic 202	java/lang/String:valueOf	(J)Ljava/lang/String;
    //   165: invokevirtual 93	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   168: aload_3
    //   169: ldc 117
    //   171: lload 9
    //   173: invokestatic 202	java/lang/String:valueOf	(J)Ljava/lang/String;
    //   176: invokevirtual 93	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   179: new 47	java/lang/StringBuilder
    //   182: dup
    //   183: invokespecial 203	java/lang/StringBuilder:<init>	()V
    //   186: astore_2
    //   187: aload_2
    //   188: ldc -51
    //   190: invokevirtual 180	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   193: aload_1
    //   194: invokevirtual 180	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   197: bipush 38
    //   199: invokevirtual 208	java/lang/StringBuilder:append	(C)Ljava/lang/StringBuilder;
    //   202: pop
    //   203: aload_2
    //   204: ldc -46
    //   206: invokevirtual 180	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   209: astore_1
    //   210: invokestatic 215	android/os/Environment:getExternalStorageState	()Ljava/lang/String;
    //   213: ldc -39
    //   215: invokevirtual 221	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   218: ifeq +109 -> 327
    //   221: iconst_1
    //   222: istore 4
    //   224: aload_1
    //   225: iload 4
    //   227: invokevirtual 56	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   230: bipush 38
    //   232: invokevirtual 208	java/lang/StringBuilder:append	(C)Ljava/lang/StringBuilder;
    //   235: pop
    //   236: aload_2
    //   237: ldc -33
    //   239: invokevirtual 180	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   242: aload_0
    //   243: getfield 19	com/tencent/open/cgireport/ReportDataModal:a	Landroid/content/Context;
    //   246: invokestatic 228	com/tencent/open/cgireport/MobileInfoUtil:c	(Landroid/content/Context;)Ljava/lang/String;
    //   249: invokevirtual 180	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   252: pop
    //   253: aload_3
    //   254: ldc 122
    //   256: aload_2
    //   257: invokevirtual 60	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   260: invokevirtual 93	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   263: aload_3
    //   264: ldc 126
    //   266: aload 11
    //   268: invokevirtual 93	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   271: aload_0
    //   272: aload_0
    //   273: getfield 28	com/tencent/open/cgireport/ReportDataModal:c	Lcom/tencent/open/cgireport/a;
    //   276: invokevirtual 133	com/tencent/open/cgireport/a:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   279: putfield 135	com/tencent/open/cgireport/ReportDataModal:b	Landroid/database/sqlite/SQLiteDatabase;
    //   282: aload_0
    //   283: getfield 135	com/tencent/open/cgireport/ReportDataModal:b	Landroid/database/sqlite/SQLiteDatabase;
    //   286: ldc -26
    //   288: aconst_null
    //   289: aload_3
    //   290: invokevirtual 143	android/database/sqlite/SQLiteDatabase:insertOrThrow	(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    //   293: pop2
    //   294: aload_0
    //   295: getfield 135	com/tencent/open/cgireport/ReportDataModal:b	Landroid/database/sqlite/SQLiteDatabase;
    //   298: invokevirtual 146	android/database/sqlite/SQLiteDatabase:close	()V
    //   301: ldc 45
    //   303: ldc -24
    //   305: invokestatic 66	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;)I
    //   308: pop
    //   309: aload_0
    //   310: aload_0
    //   311: getfield 39	com/tencent/open/cgireport/ReportDataModal:d	I
    //   314: iconst_1
    //   315: iadd
    //   316: putfield 39	com/tencent/open/cgireport/ReportDataModal:d	I
    //   319: iconst_1
    //   320: istore 13
    //   322: aload_0
    //   323: monitorexit
    //   324: iload 13
    //   326: ireturn
    //   327: iconst_0
    //   328: istore 4
    //   330: goto -106 -> 224
    //   333: astore_1
    //   334: ldc 45
    //   336: ldc -22
    //   338: invokestatic 236	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   341: pop
    //   342: aload_1
    //   343: invokevirtual 149	java/lang/Exception:printStackTrace	()V
    //   346: iconst_0
    //   347: istore 13
    //   349: goto -27 -> 322
    //   352: astore_1
    //   353: aload_0
    //   354: monitorexit
    //   355: aload_1
    //   356: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	357	0	this	ReportDataModal
    //   0	357	1	paramString1	String
    //   0	357	2	paramString2	String
    //   0	357	3	paramString3	String
    //   0	357	4	paramInt	int
    //   0	357	5	paramLong1	long
    //   0	357	7	paramLong2	long
    //   0	357	9	paramLong3	long
    //   0	357	11	paramString4	String
    //   3	128	12	str	String
    //   320	28	13	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   271	309	333	java/lang/Exception
    //   5	24	352	finally
    //   24	221	352	finally
    //   224	271	352	finally
    //   271	309	352	finally
    //   309	319	352	finally
    //   334	346	352	finally
  }
  
  public boolean b()
  {
    boolean bool = false;
    try
    {
      Log.i("cgi_report_debug", "ReportDataModal deleteNewItems start");
      try
      {
        this.b = this.c.getWritableDatabase();
      }
      catch (Exception localException1)
      {
        for (;;)
        {
          label54:
          localException1.printStackTrace();
        }
      }
    }
    finally {}
    try
    {
      this.b.execSQL("delete from newdata;");
      this.d = 0;
      this.b.close();
      Log.i("cgi_report_debug", "ReportDataModal deleteNewItems start");
      bool = true;
    }
    catch (Exception localException2)
    {
      localException2.printStackTrace();
      this.b.close();
      break label54;
    }
    return bool;
  }
  
  /* Error */
  public ArrayList c()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: ldc 45
    //   4: ldc -14
    //   6: invokestatic 66	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;)I
    //   9: pop
    //   10: new 33	java/util/ArrayList
    //   13: dup
    //   14: invokespecial 243	java/util/ArrayList:<init>	()V
    //   17: astore_1
    //   18: aload_0
    //   19: aload_0
    //   20: getfield 28	com/tencent/open/cgireport/ReportDataModal:c	Lcom/tencent/open/cgireport/a;
    //   23: invokevirtual 246	com/tencent/open/cgireport/a:getReadableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   26: putfield 135	com/tencent/open/cgireport/ReportDataModal:b	Landroid/database/sqlite/SQLiteDatabase;
    //   29: aload_0
    //   30: getfield 135	com/tencent/open/cgireport/ReportDataModal:b	Landroid/database/sqlite/SQLiteDatabase;
    //   33: ldc -8
    //   35: iconst_0
    //   36: anewarray 165	java/lang/String
    //   39: invokevirtual 252	android/database/sqlite/SQLiteDatabase:rawQuery	(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    //   42: astore_2
    //   43: aload_2
    //   44: invokeinterface 257 1 0
    //   49: pop
    //   50: aload_2
    //   51: invokeinterface 260 1 0
    //   56: ifne +195 -> 251
    //   59: aload_2
    //   60: aload_2
    //   61: ldc 87
    //   63: invokeinterface 264 2 0
    //   68: invokeinterface 267 2 0
    //   73: astore_3
    //   74: aload_2
    //   75: aload_2
    //   76: ldc 95
    //   78: invokeinterface 264 2 0
    //   83: invokeinterface 267 2 0
    //   88: astore 4
    //   90: aload_2
    //   91: aload_2
    //   92: ldc 99
    //   94: invokeinterface 264 2 0
    //   99: invokeinterface 267 2 0
    //   104: astore 5
    //   106: aload_2
    //   107: aload_2
    //   108: ldc 103
    //   110: invokeinterface 264 2 0
    //   115: invokeinterface 267 2 0
    //   120: astore 6
    //   122: aload_2
    //   123: aload_2
    //   124: ldc 107
    //   126: invokeinterface 264 2 0
    //   131: invokeinterface 267 2 0
    //   136: astore 7
    //   138: aload_2
    //   139: aload_2
    //   140: ldc 112
    //   142: invokeinterface 264 2 0
    //   147: invokeinterface 267 2 0
    //   152: astore 8
    //   154: aload_2
    //   155: aload_2
    //   156: ldc 117
    //   158: invokeinterface 264 2 0
    //   163: invokeinterface 267 2 0
    //   168: astore 9
    //   170: aload_2
    //   171: aload_2
    //   172: ldc 126
    //   174: invokeinterface 264 2 0
    //   179: invokeinterface 267 2 0
    //   184: astore 10
    //   186: aload_1
    //   187: new 82	com/tencent/open/cgireport/reportItem
    //   190: dup
    //   191: aload_3
    //   192: aload 4
    //   194: aload 5
    //   196: aload 6
    //   198: aload 7
    //   200: aload 8
    //   202: aload 9
    //   204: aload_2
    //   205: aload_2
    //   206: ldc 122
    //   208: invokeinterface 264 2 0
    //   213: invokeinterface 267 2 0
    //   218: aload 10
    //   220: invokespecial 270	com/tencent/open/cgireport/reportItem:<init>	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   223: invokevirtual 273	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   226: pop
    //   227: aload_2
    //   228: invokeinterface 276 1 0
    //   233: pop
    //   234: goto -184 -> 50
    //   237: astore_1
    //   238: aload_0
    //   239: monitorexit
    //   240: aload_1
    //   241: athrow
    //   242: astore_2
    //   243: aload_2
    //   244: invokevirtual 149	java/lang/Exception:printStackTrace	()V
    //   247: aload_0
    //   248: monitorexit
    //   249: aload_1
    //   250: areturn
    //   251: aload_2
    //   252: invokeinterface 277 1 0
    //   257: aload_0
    //   258: getfield 135	com/tencent/open/cgireport/ReportDataModal:b	Landroid/database/sqlite/SQLiteDatabase;
    //   261: invokevirtual 146	android/database/sqlite/SQLiteDatabase:close	()V
    //   264: ldc 45
    //   266: new 47	java/lang/StringBuilder
    //   269: dup
    //   270: ldc_w 279
    //   273: invokespecial 52	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   276: aload_1
    //   277: invokevirtual 37	java/util/ArrayList:size	()I
    //   280: invokevirtual 56	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   283: invokevirtual 60	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   286: invokestatic 66	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;)I
    //   289: pop
    //   290: goto -43 -> 247
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	293	0	this	ReportDataModal
    //   17	170	1	localArrayList1	ArrayList
    //   237	40	1	localArrayList2	ArrayList
    //   42	186	2	localCursor	android.database.Cursor
    //   242	10	2	localException	Exception
    //   73	119	3	str1	String
    //   88	105	4	str2	String
    //   104	91	5	str3	String
    //   120	77	6	str4	String
    //   136	63	7	str5	String
    //   152	49	8	str6	String
    //   168	35	9	str7	String
    //   184	35	10	str8	String
    // Exception table:
    //   from	to	target	type
    //   2	18	237	finally
    //   18	29	237	finally
    //   29	50	237	finally
    //   50	234	237	finally
    //   243	247	237	finally
    //   251	290	237	finally
    //   18	29	242	java/lang/Exception
  }
  
  /* Error */
  public ArrayList d()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: ldc 45
    //   4: ldc_w 281
    //   7: invokestatic 66	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;)I
    //   10: pop
    //   11: new 33	java/util/ArrayList
    //   14: dup
    //   15: invokespecial 243	java/util/ArrayList:<init>	()V
    //   18: astore_1
    //   19: aload_0
    //   20: aload_0
    //   21: getfield 28	com/tencent/open/cgireport/ReportDataModal:c	Lcom/tencent/open/cgireport/a;
    //   24: invokevirtual 246	com/tencent/open/cgireport/a:getReadableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   27: putfield 135	com/tencent/open/cgireport/ReportDataModal:b	Landroid/database/sqlite/SQLiteDatabase;
    //   30: aload_0
    //   31: getfield 135	com/tencent/open/cgireport/ReportDataModal:b	Landroid/database/sqlite/SQLiteDatabase;
    //   34: ldc_w 283
    //   37: iconst_0
    //   38: anewarray 165	java/lang/String
    //   41: invokevirtual 252	android/database/sqlite/SQLiteDatabase:rawQuery	(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    //   44: astore_2
    //   45: aload_2
    //   46: invokeinterface 257 1 0
    //   51: pop
    //   52: aload_2
    //   53: invokeinterface 260 1 0
    //   58: ifne +195 -> 253
    //   61: aload_2
    //   62: aload_2
    //   63: ldc 87
    //   65: invokeinterface 264 2 0
    //   70: invokeinterface 267 2 0
    //   75: astore_3
    //   76: aload_2
    //   77: aload_2
    //   78: ldc 95
    //   80: invokeinterface 264 2 0
    //   85: invokeinterface 267 2 0
    //   90: astore 4
    //   92: aload_2
    //   93: aload_2
    //   94: ldc 99
    //   96: invokeinterface 264 2 0
    //   101: invokeinterface 267 2 0
    //   106: astore 5
    //   108: aload_2
    //   109: aload_2
    //   110: ldc 103
    //   112: invokeinterface 264 2 0
    //   117: invokeinterface 267 2 0
    //   122: astore 6
    //   124: aload_2
    //   125: aload_2
    //   126: ldc 107
    //   128: invokeinterface 264 2 0
    //   133: invokeinterface 267 2 0
    //   138: astore 7
    //   140: aload_2
    //   141: aload_2
    //   142: ldc 112
    //   144: invokeinterface 264 2 0
    //   149: invokeinterface 267 2 0
    //   154: astore 8
    //   156: aload_2
    //   157: aload_2
    //   158: ldc 117
    //   160: invokeinterface 264 2 0
    //   165: invokeinterface 267 2 0
    //   170: astore 9
    //   172: aload_2
    //   173: aload_2
    //   174: ldc 126
    //   176: invokeinterface 264 2 0
    //   181: invokeinterface 267 2 0
    //   186: astore 10
    //   188: aload_1
    //   189: new 82	com/tencent/open/cgireport/reportItem
    //   192: dup
    //   193: aload_3
    //   194: aload 4
    //   196: aload 5
    //   198: aload 6
    //   200: aload 7
    //   202: aload 8
    //   204: aload 9
    //   206: aload_2
    //   207: aload_2
    //   208: ldc 122
    //   210: invokeinterface 264 2 0
    //   215: invokeinterface 267 2 0
    //   220: aload 10
    //   222: invokespecial 270	com/tencent/open/cgireport/reportItem:<init>	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   225: invokevirtual 273	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   228: pop
    //   229: aload_2
    //   230: invokeinterface 276 1 0
    //   235: pop
    //   236: goto -184 -> 52
    //   239: astore_1
    //   240: aload_0
    //   241: monitorexit
    //   242: aload_1
    //   243: athrow
    //   244: astore_2
    //   245: aload_2
    //   246: invokevirtual 149	java/lang/Exception:printStackTrace	()V
    //   249: aload_0
    //   250: monitorexit
    //   251: aload_1
    //   252: areturn
    //   253: aload_2
    //   254: invokeinterface 277 1 0
    //   259: aload_0
    //   260: getfield 135	com/tencent/open/cgireport/ReportDataModal:b	Landroid/database/sqlite/SQLiteDatabase;
    //   263: invokevirtual 146	android/database/sqlite/SQLiteDatabase:close	()V
    //   266: ldc 45
    //   268: new 47	java/lang/StringBuilder
    //   271: dup
    //   272: ldc_w 285
    //   275: invokespecial 52	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   278: aload_1
    //   279: invokevirtual 37	java/util/ArrayList:size	()I
    //   282: invokevirtual 56	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   285: invokevirtual 60	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   288: invokestatic 66	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;)I
    //   291: pop
    //   292: goto -43 -> 249
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	295	0	this	ReportDataModal
    //   18	171	1	localArrayList1	ArrayList
    //   239	40	1	localArrayList2	ArrayList
    //   44	186	2	localCursor	android.database.Cursor
    //   244	10	2	localException	Exception
    //   75	119	3	str1	String
    //   90	105	4	str2	String
    //   106	91	5	str3	String
    //   122	77	6	str4	String
    //   138	63	7	str5	String
    //   154	49	8	str6	String
    //   170	35	9	str7	String
    //   186	35	10	str8	String
    // Exception table:
    //   from	to	target	type
    //   2	19	239	finally
    //   19	30	239	finally
    //   30	52	239	finally
    //   52	236	239	finally
    //   245	249	239	finally
    //   253	292	239	finally
    //   19	30	244	java/lang/Exception
  }
  
  public int e()
  {
    Log.i("cgi_report_debug", "ReportDataModal getTotalCount count = " + this.d);
    return this.d;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\open\cgireport\ReportDataModal.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
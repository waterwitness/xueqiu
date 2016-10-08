package com.umeng.update.net;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import u.a.m;

public class b
{
  private static final String a = b.class.getName();
  private static final String b = "umeng_download_task_list";
  private static final String c = "UMENG_DATA";
  private static final String d = "cp";
  private static final String e = "url";
  private static final String f = "progress";
  private static final String g = "last_modified";
  private static final String h = "extra";
  private static Context i;
  private static final String j = "yyyy-MM-dd HH:mm:ss";
  private b.a k = new b.a(this, i);
  
  public static b a(Context paramContext)
  {
    if ((i == null) && (paramContext == null)) {
      throw new NullPointerException();
    }
    if (i == null) {
      i = paramContext;
    }
    return b.b.a;
  }
  
  public List<String> a(String paramString)
  {
    paramString = this.k.getReadableDatabase().query("umeng_download_task_list", new String[] { "url" }, "cp=?", new String[] { paramString }, null, null, null, "1");
    ArrayList localArrayList = new ArrayList();
    paramString.moveToFirst();
    for (;;)
    {
      if (paramString.isAfterLast())
      {
        paramString.close();
        return localArrayList;
      }
      localArrayList.add(paramString.getString(0));
      paramString.moveToNext();
    }
  }
  
  public void a(int paramInt)
  {
    try
    {
      Date localDate = new Date(new Date().getTime() - paramInt * 1000);
      String str = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(localDate);
      str = " DELETE FROM umeng_download_task_list WHERE strftime('yyyy-MM-dd HH:mm:ss', last_modified)<=strftime('yyyy-MM-dd HH:mm:ss', '" + str + "')";
      this.k.getWritableDatabase().execSQL(str);
      u.a.b.c(a, "clearOverdueTasks(" + paramInt + ") remove all tasks before " + new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(localDate));
      return;
    }
    catch (Exception localException)
    {
      u.a.b.b(a, localException.getMessage());
    }
  }
  
  public void a(String paramString1, String paramString2, int paramInt)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("progress", Integer.valueOf(paramInt));
    localContentValues.put("last_modified", m.a());
    this.k.getWritableDatabase().update("umeng_download_task_list", localContentValues, "cp=? and url=?", new String[] { paramString1, paramString2 });
    u.a.b.c(a, "updateProgress(" + paramString1 + ", " + paramString2 + ", " + paramInt + ")");
  }
  
  public void a(String paramString1, String paramString2, String paramString3)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("extra", paramString3);
    localContentValues.put("last_modified", m.a());
    this.k.getWritableDatabase().update("umeng_download_task_list", localContentValues, "cp=? and url=?", new String[] { paramString1, paramString2 });
    u.a.b.c(a, "updateExtra(" + paramString1 + ", " + paramString2 + ", " + paramString3 + ")");
  }
  
  /* Error */
  public boolean a(String paramString1, String paramString2)
  {
    // Byte code:
    //   0: new 177	android/content/ContentValues
    //   3: dup
    //   4: invokespecial 178	android/content/ContentValues:<init>	()V
    //   7: astore_3
    //   8: aload_3
    //   9: ldc 15
    //   11: aload_1
    //   12: invokevirtual 194	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   15: aload_3
    //   16: ldc 18
    //   18: aload_2
    //   19: invokevirtual 194	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   22: aload_3
    //   23: ldc 21
    //   25: iconst_0
    //   26: invokestatic 184	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   29: invokevirtual 188	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   32: aload_3
    //   33: ldc 24
    //   35: invokestatic 192	u/a/m:a	()Ljava/lang/String;
    //   38: invokevirtual 194	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   41: aload_0
    //   42: getfield 57	com/umeng/update/net/b:k	Lcom/umeng/update/net/b$a;
    //   45: invokevirtual 73	com/umeng/update/net/b$a:getReadableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   48: ldc 9
    //   50: iconst_1
    //   51: anewarray 75	java/lang/String
    //   54: dup
    //   55: iconst_0
    //   56: ldc 21
    //   58: aastore
    //   59: ldc -60
    //   61: iconst_2
    //   62: anewarray 75	java/lang/String
    //   65: dup
    //   66: iconst_0
    //   67: aload_1
    //   68: aastore
    //   69: dup
    //   70: iconst_1
    //   71: aload_2
    //   72: aastore
    //   73: aconst_null
    //   74: aconst_null
    //   75: aconst_null
    //   76: ldc 79
    //   78: invokevirtual 85	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   81: astore 4
    //   83: aload 4
    //   85: invokeinterface 214 1 0
    //   90: ifle +52 -> 142
    //   93: getstatic 44	com/umeng/update/net/b:a	Ljava/lang/String;
    //   96: new 139	java/lang/StringBuilder
    //   99: dup
    //   100: ldc -40
    //   102: invokespecial 142	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   105: aload_1
    //   106: invokevirtual 146	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   109: ldc -52
    //   111: invokevirtual 146	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   114: aload_2
    //   115: invokevirtual 146	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   118: ldc -38
    //   120: invokevirtual 146	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   123: invokevirtual 151	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   126: invokestatic 169	u/a/b:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   129: iconst_0
    //   130: istore 7
    //   132: aload 4
    //   134: invokeinterface 100 1 0
    //   139: iload 7
    //   141: ireturn
    //   142: aload_0
    //   143: getfield 57	com/umeng/update/net/b:k	Lcom/umeng/update/net/b$a;
    //   146: invokevirtual 154	com/umeng/update/net/b$a:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   149: ldc 9
    //   151: aconst_null
    //   152: aload_3
    //   153: invokevirtual 222	android/database/sqlite/SQLiteDatabase:insert	(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    //   156: lstore 5
    //   158: lload 5
    //   160: ldc2_w 223
    //   163: lcmp
    //   164: ifne +50 -> 214
    //   167: iconst_0
    //   168: istore 7
    //   170: getstatic 44	com/umeng/update/net/b:a	Ljava/lang/String;
    //   173: new 139	java/lang/StringBuilder
    //   176: dup
    //   177: ldc -40
    //   179: invokespecial 142	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   182: aload_1
    //   183: invokevirtual 146	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   186: ldc -52
    //   188: invokevirtual 146	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   191: aload_2
    //   192: invokevirtual 146	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   195: ldc -30
    //   197: invokevirtual 146	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   200: lload 5
    //   202: invokevirtual 229	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   205: invokevirtual 151	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   208: invokestatic 169	u/a/b:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   211: goto -79 -> 132
    //   214: iconst_1
    //   215: istore 7
    //   217: goto -47 -> 170
    //   220: astore_3
    //   221: iconst_0
    //   222: istore 7
    //   224: getstatic 44	com/umeng/update/net/b:a	Ljava/lang/String;
    //   227: new 139	java/lang/StringBuilder
    //   230: dup
    //   231: ldc -40
    //   233: invokespecial 142	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   236: aload_1
    //   237: invokevirtual 146	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   240: ldc -52
    //   242: invokevirtual 146	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   245: aload_2
    //   246: invokevirtual 146	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   249: ldc -25
    //   251: invokevirtual 146	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   254: aload_3
    //   255: invokevirtual 172	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   258: invokevirtual 146	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   261: invokevirtual 151	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   264: aload_3
    //   265: invokestatic 234	u/a/b:c	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    //   268: iload 7
    //   270: ireturn
    //   271: astore_3
    //   272: goto -48 -> 224
    //   275: astore_3
    //   276: goto -52 -> 224
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	279	0	this	b
    //   0	279	1	paramString1	String
    //   0	279	2	paramString2	String
    //   7	146	3	localContentValues	ContentValues
    //   220	45	3	localException1	Exception
    //   271	1	3	localException2	Exception
    //   275	1	3	localException3	Exception
    //   81	52	4	localCursor	Cursor
    //   156	45	5	l	long
    //   130	139	7	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   41	129	220	java/lang/Exception
    //   142	158	220	java/lang/Exception
    //   170	211	271	java/lang/Exception
    //   132	139	275	java/lang/Exception
  }
  
  public int b(String paramString1, String paramString2)
  {
    paramString1 = this.k.getReadableDatabase().query("umeng_download_task_list", new String[] { "progress" }, "cp=? and url=?", new String[] { paramString1, paramString2 }, null, null, null, "1");
    if (paramString1.getCount() > 0) {
      paramString1.moveToFirst();
    }
    for (int m = paramString1.getInt(0);; m = -1)
    {
      paramString1.close();
      return m;
    }
  }
  
  public String c(String paramString1, String paramString2)
  {
    Object localObject = null;
    paramString2 = this.k.getReadableDatabase().query("umeng_download_task_list", new String[] { "extra" }, "cp=? and url=?", new String[] { paramString1, paramString2 }, null, null, null, "1");
    paramString1 = (String)localObject;
    if (paramString2.getCount() > 0)
    {
      paramString2.moveToFirst();
      paramString1 = paramString2.getString(0);
    }
    paramString2.close();
    return paramString1;
  }
  
  public Date d(String paramString1, String paramString2)
  {
    Object localObject2 = null;
    Cursor localCursor = this.k.getReadableDatabase().query("umeng_download_task_list", new String[] { "last_modified" }, "cp=? and url=?", new String[] { paramString1, paramString2 }, null, null, null, null);
    Object localObject1 = localObject2;
    if (localCursor.getCount() > 0)
    {
      localCursor.moveToFirst();
      localObject1 = localCursor.getString(0);
      u.a.b.c(a, "getLastModified(" + paramString1 + ", " + paramString2 + "): " + (String)localObject1);
    }
    try
    {
      localObject1 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse((String)localObject1);
      localCursor.close();
      return (Date)localObject1;
    }
    catch (Exception paramString1)
    {
      for (;;)
      {
        u.a.b.c(a, paramString1.getMessage());
        localObject1 = localObject2;
      }
    }
  }
  
  public void e(String paramString1, String paramString2)
  {
    this.k.getWritableDatabase().delete("umeng_download_task_list", "cp=? and url=?", new String[] { paramString1, paramString2 });
    u.a.b.c(a, "delete(" + paramString1 + ", " + paramString2 + ")");
  }
  
  public void finalize()
  {
    this.k.close();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\umeng\update\net\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
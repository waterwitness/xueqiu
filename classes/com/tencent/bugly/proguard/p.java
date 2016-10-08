package com.tencent.bugly.proguard;

import android.annotation.TargetApi;
import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import java.io.File;
import java.util.Iterator;
import java.util.List;

public final class p
  extends SQLiteOpenHelper
{
  private static int a = 11;
  private Context b;
  private List<com.tencent.bugly.a> c;
  
  public p(Context paramContext, List<com.tencent.bugly.a> paramList)
  {
    super(paramContext, localStringBuilder.toString(), null, a);
    this.b = paramContext;
    this.c = paramList;
  }
  
  private boolean a(SQLiteDatabase paramSQLiteDatabase)
  {
    boolean bool2 = true;
    int i = 0;
    for (;;)
    {
      boolean bool1 = bool2;
      if (i < 4) {}
      try
      {
        String str = new String[] { "t_crd", "t_lr", "t_ui", "t_pf" }[i];
        paramSQLiteDatabase.execSQL("DROP TABLE IF EXISTS " + str);
        i += 1;
      }
      catch (Throwable paramSQLiteDatabase)
      {
        if (!w.b(paramSQLiteDatabase)) {
          paramSQLiteDatabase.printStackTrace();
        }
        bool1 = false;
        return bool1;
      }
      finally {}
    }
  }
  
  public final SQLiteDatabase getReadableDatabase()
  {
    int i = 0;
    Object localObject = null;
    while ((localObject == null) && (i < 5))
    {
      i += 1;
      try
      {
        SQLiteDatabase localSQLiteDatabase2 = super.getReadableDatabase();
        localObject = localSQLiteDatabase2;
      }
      catch (Throwable localThrowable)
      {
        w.d("try db count %d", new Object[] { Integer.valueOf(i) });
        if (i == 5) {
          w.e("get db fail!", new Object[0]);
        }
        try
        {
          Thread.sleep(200L);
        }
        catch (InterruptedException localInterruptedException)
        {
          localInterruptedException.printStackTrace();
        }
      }
      finally {}
    }
    return localSQLiteDatabase1;
  }
  
  public final SQLiteDatabase getWritableDatabase()
  {
    int i = 0;
    Object localObject = null;
    while ((localObject == null) && (i < 5))
    {
      i += 1;
      try
      {
        SQLiteDatabase localSQLiteDatabase2 = super.getWritableDatabase();
        localObject = localSQLiteDatabase2;
      }
      catch (Throwable localThrowable)
      {
        w.d("try db %d", new Object[] { Integer.valueOf(i) });
        if (i == 5) {
          w.e("get db fail!", new Object[0]);
        }
        try
        {
          Thread.sleep(200L);
        }
        catch (InterruptedException localInterruptedException)
        {
          localInterruptedException.printStackTrace();
        }
      }
      finally {}
    }
    if (localSQLiteDatabase1 == null) {
      w.d("db error delay error record 1min", new Object[0]);
    }
    return localSQLiteDatabase1;
  }
  
  public final void onCreate(SQLiteDatabase paramSQLiteDatabase)
  {
    for (;;)
    {
      try
      {
        Object localObject = new StringBuilder();
        ((StringBuilder)localObject).setLength(0);
        ((StringBuilder)localObject).append(" CREATE TABLE IF NOT EXISTS t_ui ( _id INTEGER PRIMARY KEY , _tm int , _ut int , _tp int , _dt blob , _pc text ) ");
        w.c("create %s", new Object[] { ((StringBuilder)localObject).toString() });
        paramSQLiteDatabase.execSQL(((StringBuilder)localObject).toString());
        ((StringBuilder)localObject).setLength(0);
        ((StringBuilder)localObject).append(" CREATE TABLE IF NOT EXISTS t_lr ( _id INTEGER PRIMARY KEY , _tp int , _tm int , _pc text , _th text , _dt blob ) ");
        w.c("create %s", new Object[] { ((StringBuilder)localObject).toString() });
        paramSQLiteDatabase.execSQL(((StringBuilder)localObject).toString());
        ((StringBuilder)localObject).setLength(0);
        ((StringBuilder)localObject).append(" CREATE TABLE IF NOT EXISTS t_pf ( _id integer , _tp text , _tm int , _dt blob,primary key(_id,_tp )) ");
        w.c("create %s", new Object[] { ((StringBuilder)localObject).toString() });
        paramSQLiteDatabase.execSQL(((StringBuilder)localObject).toString());
        ((StringBuilder)localObject).setLength(0);
        ((StringBuilder)localObject).append(" CREATE TABLE IF NOT EXISTS t_crd ( _id integer , _pc text , _tm int , _fl int , _sv text , _av text , _uid integer,primary key(_id,_pc,_uid )) ");
        w.c("create %s", new Object[] { ((StringBuilder)localObject).toString() });
        paramSQLiteDatabase.execSQL(((StringBuilder)localObject).toString());
        ((StringBuilder)localObject).setLength(0);
        ((StringBuilder)localObject).append(" CREATE TABLE IF NOT EXISTS t_cr ( _id INTEGER PRIMARY KEY , _tm int , _s1 text , _up int , _me int , _uc int , _dt blob ) ");
        w.c("create %s", new Object[] { localObject });
        paramSQLiteDatabase.execSQL(((StringBuilder)localObject).toString());
        ((StringBuilder)localObject).setLength(0);
        ((StringBuilder)localObject).append(" CREATE TABLE IF NOT EXISTS dl_1002 (_id integer primary key autoincrement, _dUrl varchar(100), _sFile varchar(100), _sLen INTEGER, _tLen INTEGER, _MD5 varchar(100), _DLTIME INTEGER)");
        w.c("create %s", new Object[] { localObject });
        paramSQLiteDatabase.execSQL(((StringBuilder)localObject).toString());
        ((StringBuilder)localObject).setLength(0);
        ((StringBuilder)localObject).append("CREATE TABLE IF NOT EXISTS ge_1002 (_id integer primary key autoincrement, _time INTEGER, _datas blob)");
        w.c("create %s", new Object[] { localObject });
        paramSQLiteDatabase.execSQL(((StringBuilder)localObject).toString());
        ((StringBuilder)localObject).setLength(0);
        ((StringBuilder)localObject).append(" CREATE TABLE IF NOT EXISTS st_1002 ( _id integer , _tp text , _tm int , _dt blob,primary key(_id,_tp )) ");
        w.c("create %s", new Object[] { ((StringBuilder)localObject).toString() });
        paramSQLiteDatabase.execSQL(((StringBuilder)localObject).toString());
        localObject = this.c;
        if (localObject == null) {
          return;
        }
      }
      catch (Throwable localThrowable1)
      {
        if (w.b(localThrowable1)) {
          continue;
        }
        localThrowable1.printStackTrace();
        continue;
      }
      finally {}
      Iterator localIterator = this.c.iterator();
      while (localIterator.hasNext())
      {
        com.tencent.bugly.a locala = (com.tencent.bugly.a)localIterator.next();
        try
        {
          locala.onDbCreate(paramSQLiteDatabase);
        }
        catch (Throwable localThrowable2) {}
        if (!w.b(localThrowable2)) {
          localThrowable2.printStackTrace();
        }
      }
    }
  }
  
  @TargetApi(11)
  public final void onDowngrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
  {
    try
    {
      if (a.d() < 11) {
        break label121;
      }
      w.d("drowngrade %d to %d drop tables!}", new Object[] { Integer.valueOf(paramInt1), Integer.valueOf(paramInt2) });
      if (this.c != null)
      {
        Iterator localIterator = this.c.iterator();
        while (localIterator.hasNext())
        {
          com.tencent.bugly.a locala = (com.tencent.bugly.a)localIterator.next();
          try
          {
            locala.onDbDowngrade(paramSQLiteDatabase, paramInt1, paramInt2);
          }
          catch (Throwable localThrowable) {}
          if (!w.b(localThrowable)) {
            localThrowable.printStackTrace();
          }
        }
      }
      if (!a(paramSQLiteDatabase)) {
        break label124;
      }
    }
    finally {}
    onCreate(paramSQLiteDatabase);
    for (;;)
    {
      label121:
      return;
      label124:
      w.d("drop fail delete db", new Object[0]);
      paramSQLiteDatabase = this.b.getDatabasePath("bugly_db");
      if ((paramSQLiteDatabase != null) && (paramSQLiteDatabase.canWrite())) {
        paramSQLiteDatabase.delete();
      }
    }
  }
  
  public final void onUpgrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
  {
    try
    {
      w.d("upgrade %d to %d , drop tables!", new Object[] { Integer.valueOf(paramInt1), Integer.valueOf(paramInt2) });
      if (this.c != null)
      {
        Iterator localIterator = this.c.iterator();
        while (localIterator.hasNext())
        {
          com.tencent.bugly.a locala = (com.tencent.bugly.a)localIterator.next();
          try
          {
            locala.onDbUpgrade(paramSQLiteDatabase, paramInt1, paramInt2);
          }
          catch (Throwable localThrowable) {}
          if (!w.b(localThrowable)) {
            localThrowable.printStackTrace();
          }
        }
      }
      if (!a(paramSQLiteDatabase)) {
        break label116;
      }
    }
    finally {}
    onCreate(paramSQLiteDatabase);
    for (;;)
    {
      return;
      label116:
      w.d("drop fail delete db", new Object[0]);
      paramSQLiteDatabase = this.b.getDatabasePath("bugly_db");
      if ((paramSQLiteDatabase != null) && (paramSQLiteDatabase.canWrite())) {
        paramSQLiteDatabase.delete();
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\bugly\proguard\p.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
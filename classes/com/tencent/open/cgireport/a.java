package com.tencent.open.cgireport;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.util.Log;

final class a
  extends SQLiteOpenHelper
{
  public a(ReportDataModal paramReportDataModal, Context paramContext, String paramString)
  {
    super(paramContext, paramString, null, 2);
  }
  
  public final void onCreate(SQLiteDatabase paramSQLiteDatabase)
  {
    try
    {
      Log.i("cgi_report_debug", "ReportDataModal onCreate sql1 = create table if not exists newdata(id integer primary key,apn text,frequency text,commandid text,resultcode text,tmcost text,reqsize text,rspsize text,deviceinfo text,detail text)");
      paramSQLiteDatabase.execSQL("create table if not exists newdata(id integer primary key,apn text,frequency text,commandid text,resultcode text,tmcost text,reqsize text,rspsize text,deviceinfo text,detail text)");
      Log.i("cgi_report_debug", "ReportDataModal onCreate sql2 = create table if not exists olddata(id integer primary key,apn text,frequency text,commandid text,resultcode text,tmcost text,reqsize text,rspsize text,deviceinfo text,detail text)");
      paramSQLiteDatabase.execSQL("create table if not exists olddata(id integer primary key,apn text,frequency text,commandid text,resultcode text,tmcost text,reqsize text,rspsize text,deviceinfo text,detail text)");
      return;
    }
    catch (Exception paramSQLiteDatabase)
    {
      Log.e("cgi_report_debug", "ReportDataModal onCreate failed");
      paramSQLiteDatabase.printStackTrace();
    }
  }
  
  public final void onUpgrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
  {
    Log.i("cgi_report_debug", "ReportDataModal onUpgrade oldVersion=" + paramInt1 + "  newVersion=" + paramInt2);
    if (paramInt1 != paramInt2) {}
    try
    {
      paramSQLiteDatabase.execSQL("drop table if exists newdata");
      paramSQLiteDatabase.execSQL("drop table if exists olddata");
      onCreate(paramSQLiteDatabase);
      Log.i("cgi_report_debug", "ReportDataModal onUpgrade success");
      return;
    }
    catch (Exception paramSQLiteDatabase)
    {
      Log.e("cgi_report_debug", "ReportDataModal onUpgrade failed");
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\open\cgireport\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
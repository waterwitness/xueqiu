package com.sleepycat.b.p;

import java.io.PrintWriter;
import java.io.StringWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.TimeZone;
import java.util.logging.Formatter;
import java.util.logging.Level;
import java.util.logging.LogRecord;

public class at
  extends Formatter
{
  private static final TimeZone a = TimeZone.getTimeZone("UTC");
  private final Date b = new Date();
  private final DateFormat c = a();
  private String d;
  
  public at() {}
  
  public at(String paramString)
  {
    this();
    this.d = paramString;
  }
  
  private String a(long paramLong)
  {
    try
    {
      this.b.setTime(paramLong);
      String str = this.c.format(this.b);
      return str;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public static DateFormat a()
  {
    SimpleDateFormat localSimpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS z");
    localSimpleDateFormat.setTimeZone(a);
    return localSimpleDateFormat;
  }
  
  public void a(StringBuilder paramStringBuilder)
  {
    if (this.d != null) {
      paramStringBuilder.append(" [" + this.d + "]");
    }
  }
  
  public String format(LogRecord paramLogRecord)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(a(paramLogRecord.getMillis()));
    localStringBuilder.append(" ");
    localStringBuilder.append(paramLogRecord.getLevel().getLocalizedName());
    a(localStringBuilder);
    localStringBuilder.append(" ");
    localStringBuilder.append(formatMessage(paramLogRecord));
    localStringBuilder.append("\n");
    if (paramLogRecord.getThrown() != null) {}
    try
    {
      StringWriter localStringWriter = new StringWriter();
      PrintWriter localPrintWriter = new PrintWriter(localStringWriter);
      paramLogRecord.getThrown().printStackTrace(localPrintWriter);
      localPrintWriter.close();
      localStringBuilder.append(localStringWriter.toString());
      return localStringBuilder.toString();
    }
    catch (Exception paramLogRecord)
    {
      for (;;) {}
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\p\at.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
package com.sleepycat.b.i.g.a;

public class b
{
  private static final String b;
  private d a;
  
  static
  {
    StringBuilder localStringBuilder = new StringBuilder("usage: ");
    String str = b.class.getName();
    str = str.substring(str.lastIndexOf('.') + 1);
    b = new StringBuilder("java { ").append(b.class.getName()).append(" | -jar je-<version>.jar ").append(str).append(" }").toString() + "\n  -h <dir>[,<dir2>]   # environment home directory\n  [-a]                # analyze diff\n  [-b <blockSize>]    # number of records to put in each block\n  [-m <maxErrors>]    # abort diff after a number of errors\n  [-s <databaseName>,<databaseName>] # database(s) to compare\n  [-q]                # be quiet, do not print to stdout";
  }
  
  private b() {}
  
  public b(d paramd)
  {
    this.a = paramd;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\g\a\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
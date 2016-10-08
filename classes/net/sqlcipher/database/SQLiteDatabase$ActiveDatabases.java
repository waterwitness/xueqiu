package net.sqlcipher.database;

import java.lang.ref.WeakReference;
import java.util.HashSet;

class SQLiteDatabase$ActiveDatabases
{
  private static final ActiveDatabases activeDatabases = new ActiveDatabases();
  private HashSet<WeakReference<SQLiteDatabase>> mActiveDatabases = new HashSet();
  
  static ActiveDatabases getInstance()
  {
    return activeDatabases;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\net\sqlcipher\database\SQLiteDatabase$ActiveDatabases.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
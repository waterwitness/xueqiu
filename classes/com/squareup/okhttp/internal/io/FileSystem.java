package com.squareup.okhttp.internal.io;

import c.m;
import c.r;
import c.s;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;

public abstract interface FileSystem
{
  public static final FileSystem SYSTEM = new FileSystem()
  {
    public final r appendingSink(File paramAnonymousFile)
    {
      try
      {
        r localr = m.c(paramAnonymousFile);
        return localr;
      }
      catch (FileNotFoundException localFileNotFoundException)
      {
        paramAnonymousFile.getParentFile().mkdirs();
      }
      return m.c(paramAnonymousFile);
    }
    
    public final void delete(File paramAnonymousFile)
    {
      if ((!paramAnonymousFile.delete()) && (paramAnonymousFile.exists())) {
        throw new IOException("failed to delete " + paramAnonymousFile);
      }
    }
    
    public final void deleteContents(File paramAnonymousFile)
    {
      File[] arrayOfFile = paramAnonymousFile.listFiles();
      if (arrayOfFile == null) {
        throw new IOException("not a readable directory: " + paramAnonymousFile);
      }
      int j = arrayOfFile.length;
      int i = 0;
      while (i < j)
      {
        paramAnonymousFile = arrayOfFile[i];
        if (paramAnonymousFile.isDirectory()) {
          deleteContents(paramAnonymousFile);
        }
        if (!paramAnonymousFile.delete()) {
          throw new IOException("failed to delete " + paramAnonymousFile);
        }
        i += 1;
      }
    }
    
    public final boolean exists(File paramAnonymousFile)
    {
      return paramAnonymousFile.exists();
    }
    
    public final void rename(File paramAnonymousFile1, File paramAnonymousFile2)
    {
      delete(paramAnonymousFile2);
      if (!paramAnonymousFile1.renameTo(paramAnonymousFile2)) {
        throw new IOException("failed to rename " + paramAnonymousFile1 + " to " + paramAnonymousFile2);
      }
    }
    
    public final r sink(File paramAnonymousFile)
    {
      try
      {
        r localr = m.b(paramAnonymousFile);
        return localr;
      }
      catch (FileNotFoundException localFileNotFoundException)
      {
        paramAnonymousFile.getParentFile().mkdirs();
      }
      return m.b(paramAnonymousFile);
    }
    
    public final long size(File paramAnonymousFile)
    {
      return paramAnonymousFile.length();
    }
    
    public final s source(File paramAnonymousFile)
    {
      return m.a(paramAnonymousFile);
    }
  };
  
  public abstract r appendingSink(File paramFile);
  
  public abstract void delete(File paramFile);
  
  public abstract void deleteContents(File paramFile);
  
  public abstract boolean exists(File paramFile);
  
  public abstract void rename(File paramFile1, File paramFile2);
  
  public abstract r sink(File paramFile);
  
  public abstract long size(File paramFile);
  
  public abstract s source(File paramFile);
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\squareup\okhttp\internal\io\FileSystem.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
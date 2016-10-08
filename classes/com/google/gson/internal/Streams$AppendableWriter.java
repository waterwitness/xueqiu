package com.google.gson.internal;

import java.io.Writer;

final class Streams$AppendableWriter
  extends Writer
{
  private final Appendable appendable;
  private final Streams.AppendableWriter.CurrentWrite currentWrite = new Streams.AppendableWriter.CurrentWrite();
  
  private Streams$AppendableWriter(Appendable paramAppendable)
  {
    this.appendable = paramAppendable;
  }
  
  public final void close() {}
  
  public final void flush() {}
  
  public final void write(int paramInt)
  {
    this.appendable.append((char)paramInt);
  }
  
  public final void write(char[] paramArrayOfChar, int paramInt1, int paramInt2)
  {
    this.currentWrite.chars = paramArrayOfChar;
    this.appendable.append(this.currentWrite, paramInt1, paramInt1 + paramInt2);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\google\gson\internal\Streams$AppendableWriter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
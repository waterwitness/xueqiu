package com.squareup.okhttp.internal;

import c.d;
import c.i;
import c.r;
import java.io.IOException;

class FaultHidingSink
  extends i
{
  private boolean hasErrors;
  
  public FaultHidingSink(r paramr)
  {
    super(paramr);
  }
  
  public void close()
  {
    if (this.hasErrors) {
      return;
    }
    try
    {
      super.close();
      return;
    }
    catch (IOException localIOException)
    {
      this.hasErrors = true;
      onException(localIOException);
    }
  }
  
  public void flush()
  {
    if (this.hasErrors) {
      return;
    }
    try
    {
      super.flush();
      return;
    }
    catch (IOException localIOException)
    {
      this.hasErrors = true;
      onException(localIOException);
    }
  }
  
  protected void onException(IOException paramIOException) {}
  
  public void write(d paramd, long paramLong)
  {
    if (this.hasErrors)
    {
      paramd.f(paramLong);
      return;
    }
    try
    {
      super.write(paramd, paramLong);
      return;
    }
    catch (IOException paramd)
    {
      this.hasErrors = true;
      onException(paramd);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\squareup\okhttp\internal\FaultHidingSink.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
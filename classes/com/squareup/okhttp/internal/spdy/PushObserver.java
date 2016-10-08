package com.squareup.okhttp.internal.spdy;

import c.f;
import java.util.List;

public abstract interface PushObserver
{
  public static final PushObserver CANCEL = new PushObserver()
  {
    public final boolean onData(int paramAnonymousInt1, f paramAnonymousf, int paramAnonymousInt2, boolean paramAnonymousBoolean)
    {
      paramAnonymousf.f(paramAnonymousInt2);
      return true;
    }
    
    public final boolean onHeaders(int paramAnonymousInt, List<Header> paramAnonymousList, boolean paramAnonymousBoolean)
    {
      return true;
    }
    
    public final boolean onRequest(int paramAnonymousInt, List<Header> paramAnonymousList)
    {
      return true;
    }
    
    public final void onReset(int paramAnonymousInt, ErrorCode paramAnonymousErrorCode) {}
  };
  
  public abstract boolean onData(int paramInt1, f paramf, int paramInt2, boolean paramBoolean);
  
  public abstract boolean onHeaders(int paramInt, List<Header> paramList, boolean paramBoolean);
  
  public abstract boolean onRequest(int paramInt, List<Header> paramList);
  
  public abstract void onReset(int paramInt, ErrorCode paramErrorCode);
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\squareup\okhttp\internal\spdy\PushObserver.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
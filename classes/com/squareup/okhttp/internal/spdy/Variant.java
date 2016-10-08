package com.squareup.okhttp.internal.spdy;

import c.e;
import c.f;
import com.squareup.okhttp.Protocol;

public abstract interface Variant
{
  public abstract Protocol getProtocol();
  
  public abstract FrameReader newReader(f paramf, boolean paramBoolean);
  
  public abstract FrameWriter newWriter(e parame, boolean paramBoolean);
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\squareup\okhttp\internal\spdy\Variant.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
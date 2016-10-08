package com.flurry.sdk;

import java.io.InputStream;
import java.io.OutputStream;

public class kn<RequestObjectType, ResponseObjectType>
  extends kp
{
  private kn.a<RequestObjectType, ResponseObjectType> a;
  private RequestObjectType b;
  private ResponseObjectType c;
  private lb<RequestObjectType> d;
  private lb<ResponseObjectType> e;
  
  private void r()
  {
    a(new kp.c()
    {
      public void a(kp paramAnonymouskp)
      {
        kn.d(kn.this);
      }
      
      public void a(kp paramAnonymouskp, InputStream paramAnonymousInputStream)
      {
        if (!paramAnonymouskp.g()) {}
        while (kn.c(kn.this) == null) {
          return;
        }
        kn.a(kn.this, kn.c(kn.this).b(paramAnonymousInputStream));
      }
      
      public void a(kp paramAnonymouskp, OutputStream paramAnonymousOutputStream)
      {
        if ((kn.a(kn.this) != null) && (kn.b(kn.this) != null)) {
          kn.b(kn.this).a(paramAnonymousOutputStream, kn.a(kn.this));
        }
      }
    });
  }
  
  private void s()
  {
    if (this.a == null) {}
    while (e()) {
      return;
    }
    this.a.a(this, this.c);
  }
  
  public void a()
  {
    r();
    super.a();
  }
  
  public void a(kn.a<RequestObjectType, ResponseObjectType> parama)
  {
    this.a = parama;
  }
  
  public void a(lb<RequestObjectType> paramlb)
  {
    this.d = paramlb;
  }
  
  public void a(RequestObjectType paramRequestObjectType)
  {
    this.b = paramRequestObjectType;
  }
  
  public void b(lb<ResponseObjectType> paramlb)
  {
    this.e = paramlb;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\flurry\sdk\kn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
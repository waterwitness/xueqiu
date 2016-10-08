package com.flurry.sdk;

import java.io.InputStream;
import java.io.OutputStream;

public class ky<ObjectType>
  implements lb<ObjectType>
{
  protected final lb<ObjectType> a;
  
  public ky(lb<ObjectType> paramlb)
  {
    this.a = paramlb;
  }
  
  public void a(OutputStream paramOutputStream, ObjectType paramObjectType)
  {
    if ((this.a != null) && (paramOutputStream != null) && (paramObjectType != null)) {
      this.a.a(paramOutputStream, paramObjectType);
    }
  }
  
  public ObjectType b(InputStream paramInputStream)
  {
    if ((this.a != null) && (paramInputStream != null)) {
      return (ObjectType)this.a.b(paramInputStream);
    }
    return null;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\flurry\sdk\ky.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
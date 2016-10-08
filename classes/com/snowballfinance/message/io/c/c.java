package com.snowballfinance.message.io.c;

import com.snowballfinance.message.io.a;
import java.security.GeneralSecurityException;
import java.security.Key;
import java.security.KeyPair;
import java.security.KeyPairGenerator;

public final class c
  extends a
{
  private static final KeyPair g = ;
  final d b;
  Key c;
  Key d;
  int e;
  byte[] f;
  
  public c(d paramd)
  {
    this(paramd, g);
  }
  
  private c(d paramd, KeyPair paramKeyPair)
  {
    this.b = paramd;
    this.c = paramKeyPair.getPrivate();
    this.d = paramKeyPair.getPublic();
    this.e = 1024;
  }
  
  private static final KeyPair a()
  {
    try
    {
      Object localObject = KeyPairGenerator.getInstance("RSA");
      ((KeyPairGenerator)localObject).initialize(1024);
      localObject = ((KeyPairGenerator)localObject).generateKeyPair();
      return (KeyPair)localObject;
    }
    catch (GeneralSecurityException localGeneralSecurityException)
    {
      localGeneralSecurityException.printStackTrace();
    }
    return null;
  }
  
  public final String toString()
  {
    return String.format("ChannelContext:%s", new Object[] { this.b });
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\snowballfinance\message\io\c\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
package org.apache.http.impl.auth;

@Deprecated
public abstract interface SpnegoTokenGenerator
{
  public abstract byte[] generateSpnegoDERObject(byte[] paramArrayOfByte);
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\auth\SpnegoTokenGenerator.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
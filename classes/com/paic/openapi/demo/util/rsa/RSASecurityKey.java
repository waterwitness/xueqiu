package com.paic.openapi.demo.util.rsa;

public class RSASecurityKey
{
  private String base64PrivateKey;
  private String base64PublicKey;
  private byte[] bytePrivateKey;
  private byte[] bytePublicKey;
  
  public String getBase64PrivateKey()
  {
    return this.base64PrivateKey;
  }
  
  public String getBase64PublicKey()
  {
    return this.base64PublicKey;
  }
  
  public byte[] getBytePrivateKey()
  {
    return this.bytePrivateKey;
  }
  
  public byte[] getBytePublicKey()
  {
    return this.bytePublicKey;
  }
  
  public void setBase64PrivateKey(String paramString)
  {
    this.base64PrivateKey = paramString;
  }
  
  public void setBase64PublicKey(String paramString)
  {
    this.base64PublicKey = paramString;
  }
  
  public void setBytePrivateKey(byte[] paramArrayOfByte)
  {
    this.bytePrivateKey = paramArrayOfByte;
  }
  
  public void setBytePublicKey(byte[] paramArrayOfByte)
  {
    this.bytePublicKey = paramArrayOfByte;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\paic\openapi\demo\util\rsa\RSASecurityKey.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
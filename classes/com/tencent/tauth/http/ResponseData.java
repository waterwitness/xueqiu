package com.tencent.tauth.http;

public final class ResponseData
{
  private byte[] responseBody;
  private int statusCode;
  
  public ResponseData(int paramInt, byte[] paramArrayOfByte)
  {
    this.statusCode = paramInt;
    this.responseBody = paramArrayOfByte;
  }
  
  public final byte[] getResponseBody()
  {
    return this.responseBody;
  }
  
  public final int getStatusCode()
  {
    return this.statusCode;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\tauth\http\ResponseData.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
package org.apache.http.impl.auth;

import org.apache.commons.codec.binary.Base64;
import org.apache.http.util.EncodingUtils;

class NTLMEngineImpl$NTLMMessage
{
  private int currentOutputPosition = 0;
  private byte[] messageContents = null;
  
  NTLMEngineImpl$NTLMMessage() {}
  
  NTLMEngineImpl$NTLMMessage(String paramString, int paramInt)
  {
    this.messageContents = Base64.decodeBase64(paramString.getBytes(NTLMEngineImpl.access$1000()));
    if (this.messageContents.length < NTLMEngineImpl.access$1100().length) {
      throw new NTLMEngineException("NTLM message decoding error - packet too short");
    }
    do
    {
      i += 1;
      if (i >= NTLMEngineImpl.access$1100().length) {
        break;
      }
    } while (this.messageContents[i] == NTLMEngineImpl.access$1100()[i]);
    throw new NTLMEngineException("NTLM message expected - instead got unrecognized bytes");
    i = readULong(NTLMEngineImpl.access$1100().length);
    if (i != paramInt) {
      throw new NTLMEngineException("NTLM type " + Integer.toString(paramInt) + " message expected - instead got type " + Integer.toString(i));
    }
    this.currentOutputPosition = this.messageContents.length;
  }
  
  protected void addByte(byte paramByte)
  {
    this.messageContents[this.currentOutputPosition] = paramByte;
    this.currentOutputPosition += 1;
  }
  
  protected void addBytes(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null) {}
    for (;;)
    {
      return;
      int k = paramArrayOfByte.length;
      int j = 0;
      while (j < k)
      {
        int i = paramArrayOfByte[j];
        this.messageContents[this.currentOutputPosition] = i;
        this.currentOutputPosition += 1;
        j += 1;
      }
    }
  }
  
  protected void addULong(int paramInt)
  {
    addByte((byte)(paramInt & 0xFF));
    addByte((byte)(paramInt >> 8 & 0xFF));
    addByte((byte)(paramInt >> 16 & 0xFF));
    addByte((byte)(paramInt >> 24 & 0xFF));
  }
  
  protected void addUShort(int paramInt)
  {
    addByte((byte)(paramInt & 0xFF));
    addByte((byte)(paramInt >> 8 & 0xFF));
  }
  
  protected int getMessageLength()
  {
    return this.currentOutputPosition;
  }
  
  protected int getPreambleLength()
  {
    return NTLMEngineImpl.access$1100().length + 4;
  }
  
  String getResponse()
  {
    byte[] arrayOfByte;
    if (this.messageContents.length > this.currentOutputPosition)
    {
      arrayOfByte = new byte[this.currentOutputPosition];
      System.arraycopy(this.messageContents, 0, arrayOfByte, 0, this.currentOutputPosition);
    }
    for (;;)
    {
      return EncodingUtils.getAsciiString(Base64.encodeBase64(arrayOfByte));
      arrayOfByte = this.messageContents;
    }
  }
  
  protected void prepareResponse(int paramInt1, int paramInt2)
  {
    this.messageContents = new byte[paramInt1];
    this.currentOutputPosition = 0;
    addBytes(NTLMEngineImpl.access$1100());
    addULong(paramInt2);
  }
  
  protected byte readByte(int paramInt)
  {
    if (this.messageContents.length < paramInt + 1) {
      throw new NTLMEngineException("NTLM: Message too short");
    }
    return this.messageContents[paramInt];
  }
  
  protected void readBytes(byte[] paramArrayOfByte, int paramInt)
  {
    if (this.messageContents.length < paramArrayOfByte.length + paramInt) {
      throw new NTLMEngineException("NTLM: Message too short");
    }
    System.arraycopy(this.messageContents, paramInt, paramArrayOfByte, 0, paramArrayOfByte.length);
  }
  
  protected byte[] readSecurityBuffer(int paramInt)
  {
    return NTLMEngineImpl.access$1400(this.messageContents, paramInt);
  }
  
  protected int readULong(int paramInt)
  {
    return NTLMEngineImpl.access$1300(this.messageContents, paramInt);
  }
  
  protected int readUShort(int paramInt)
  {
    return NTLMEngineImpl.access$1200(this.messageContents, paramInt);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\auth\NTLMEngineImpl$NTLMMessage.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
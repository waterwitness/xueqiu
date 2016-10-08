package org.apache.http.impl.auth;

import java.security.Key;
import java.util.Arrays;
import javax.crypto.Cipher;

public class NTLMEngineImpl$CipherGen
{
  protected final byte[] challenge;
  protected byte[] clientChallenge;
  protected byte[] clientChallenge2;
  protected final String domain;
  protected byte[] lanManagerSessionKey = null;
  protected byte[] lm2SessionResponse = null;
  protected byte[] lmHash = null;
  protected byte[] lmResponse = null;
  protected byte[] lmUserSessionKey = null;
  protected byte[] lmv2Hash = null;
  protected byte[] lmv2Response = null;
  protected byte[] ntlm2SessionResponse = null;
  protected byte[] ntlm2SessionResponseUserSessionKey = null;
  protected byte[] ntlmHash = null;
  protected byte[] ntlmResponse = null;
  protected byte[] ntlmUserSessionKey = null;
  protected byte[] ntlmv2Blob = null;
  protected byte[] ntlmv2Hash = null;
  protected byte[] ntlmv2Response = null;
  protected byte[] ntlmv2UserSessionKey = null;
  protected final String password;
  protected byte[] secondaryKey;
  protected final String target;
  protected final byte[] targetInformation;
  protected byte[] timestamp;
  protected final String user;
  
  public NTLMEngineImpl$CipherGen(String paramString1, String paramString2, String paramString3, byte[] paramArrayOfByte1, String paramString4, byte[] paramArrayOfByte2)
  {
    this(paramString1, paramString2, paramString3, paramArrayOfByte1, paramString4, paramArrayOfByte2, null, null, null, null);
  }
  
  public NTLMEngineImpl$CipherGen(String paramString1, String paramString2, String paramString3, byte[] paramArrayOfByte1, String paramString4, byte[] paramArrayOfByte2, byte[] paramArrayOfByte3, byte[] paramArrayOfByte4, byte[] paramArrayOfByte5, byte[] paramArrayOfByte6)
  {
    this.domain = paramString1;
    this.target = paramString4;
    this.user = paramString2;
    this.password = paramString3;
    this.challenge = paramArrayOfByte1;
    this.targetInformation = paramArrayOfByte2;
    this.clientChallenge = paramArrayOfByte3;
    this.clientChallenge2 = paramArrayOfByte4;
    this.secondaryKey = paramArrayOfByte5;
    this.timestamp = paramArrayOfByte6;
  }
  
  public byte[] getClientChallenge()
  {
    if (this.clientChallenge == null) {
      this.clientChallenge = NTLMEngineImpl.access$000();
    }
    return this.clientChallenge;
  }
  
  public byte[] getClientChallenge2()
  {
    if (this.clientChallenge2 == null) {
      this.clientChallenge2 = NTLMEngineImpl.access$000();
    }
    return this.clientChallenge2;
  }
  
  public byte[] getLM2SessionResponse()
  {
    if (this.lm2SessionResponse == null)
    {
      byte[] arrayOfByte = getClientChallenge();
      this.lm2SessionResponse = new byte[24];
      System.arraycopy(arrayOfByte, 0, this.lm2SessionResponse, 0, arrayOfByte.length);
      Arrays.fill(this.lm2SessionResponse, arrayOfByte.length, this.lm2SessionResponse.length, (byte)0);
    }
    return this.lm2SessionResponse;
  }
  
  public byte[] getLMHash()
  {
    if (this.lmHash == null) {
      this.lmHash = NTLMEngineImpl.access$200(this.password);
    }
    return this.lmHash;
  }
  
  public byte[] getLMResponse()
  {
    if (this.lmResponse == null) {
      this.lmResponse = NTLMEngineImpl.access$300(getLMHash(), this.challenge);
    }
    return this.lmResponse;
  }
  
  public byte[] getLMUserSessionKey()
  {
    if (this.lmUserSessionKey == null)
    {
      this.lmUserSessionKey = new byte[16];
      System.arraycopy(getLMHash(), 0, this.lmUserSessionKey, 0, 8);
      Arrays.fill(this.lmUserSessionKey, 8, 16, (byte)0);
    }
    return this.lmUserSessionKey;
  }
  
  public byte[] getLMv2Hash()
  {
    if (this.lmv2Hash == null) {
      this.lmv2Hash = NTLMEngineImpl.access$500(this.domain, this.user, getNTLMHash());
    }
    return this.lmv2Hash;
  }
  
  public byte[] getLMv2Response()
  {
    if (this.lmv2Response == null) {
      this.lmv2Response = NTLMEngineImpl.access$800(getLMv2Hash(), this.challenge, getClientChallenge());
    }
    return this.lmv2Response;
  }
  
  public byte[] getLanManagerSessionKey()
  {
    if (this.lanManagerSessionKey == null) {}
    try
    {
      Object localObject1 = new byte[14];
      System.arraycopy(getLMHash(), 0, localObject1, 0, 8);
      Arrays.fill((byte[])localObject1, 8, 14, (byte)-67);
      Object localObject2 = NTLMEngineImpl.access$900((byte[])localObject1, 0);
      localObject1 = NTLMEngineImpl.access$900((byte[])localObject1, 7);
      byte[] arrayOfByte = new byte[8];
      System.arraycopy(getLMResponse(), 0, arrayOfByte, 0, 8);
      Cipher localCipher = Cipher.getInstance("DES/ECB/NoPadding");
      localCipher.init(1, (Key)localObject2);
      localObject2 = localCipher.doFinal(arrayOfByte);
      localCipher = Cipher.getInstance("DES/ECB/NoPadding");
      localCipher.init(1, (Key)localObject1);
      localObject1 = localCipher.doFinal(arrayOfByte);
      this.lanManagerSessionKey = new byte[16];
      System.arraycopy(localObject2, 0, this.lanManagerSessionKey, 0, localObject2.length);
      System.arraycopy(localObject1, 0, this.lanManagerSessionKey, localObject2.length, localObject1.length);
      return this.lanManagerSessionKey;
    }
    catch (Exception localException)
    {
      throw new NTLMEngineException(localException.getMessage(), localException);
    }
  }
  
  public byte[] getNTLM2SessionResponse()
  {
    if (this.ntlm2SessionResponse == null) {
      this.ntlm2SessionResponse = NTLMEngineImpl.ntlm2SessionResponse(getNTLMHash(), this.challenge, getClientChallenge());
    }
    return this.ntlm2SessionResponse;
  }
  
  public byte[] getNTLM2SessionResponseUserSessionKey()
  {
    if (this.ntlm2SessionResponseUserSessionKey == null)
    {
      byte[] arrayOfByte1 = getLM2SessionResponse();
      byte[] arrayOfByte2 = new byte[this.challenge.length + arrayOfByte1.length];
      System.arraycopy(this.challenge, 0, arrayOfByte2, 0, this.challenge.length);
      System.arraycopy(arrayOfByte1, 0, arrayOfByte2, this.challenge.length, arrayOfByte1.length);
      this.ntlm2SessionResponseUserSessionKey = NTLMEngineImpl.hmacMD5(arrayOfByte2, getNTLMUserSessionKey());
    }
    return this.ntlm2SessionResponseUserSessionKey;
  }
  
  public byte[] getNTLMHash()
  {
    if (this.ntlmHash == null) {
      this.ntlmHash = NTLMEngineImpl.access$400(this.password);
    }
    return this.ntlmHash;
  }
  
  public byte[] getNTLMResponse()
  {
    if (this.ntlmResponse == null) {
      this.ntlmResponse = NTLMEngineImpl.access$300(getNTLMHash(), this.challenge);
    }
    return this.ntlmResponse;
  }
  
  public byte[] getNTLMUserSessionKey()
  {
    if (this.ntlmUserSessionKey == null)
    {
      NTLMEngineImpl.MD4 localMD4 = new NTLMEngineImpl.MD4();
      localMD4.update(getNTLMHash());
      this.ntlmUserSessionKey = localMD4.getOutput();
    }
    return this.ntlmUserSessionKey;
  }
  
  public byte[] getNTLMv2Blob()
  {
    if (this.ntlmv2Blob == null) {
      this.ntlmv2Blob = NTLMEngineImpl.access$700(getClientChallenge2(), this.targetInformation, getTimestamp());
    }
    return this.ntlmv2Blob;
  }
  
  public byte[] getNTLMv2Hash()
  {
    if (this.ntlmv2Hash == null) {
      this.ntlmv2Hash = NTLMEngineImpl.access$600(this.domain, this.user, getNTLMHash());
    }
    return this.ntlmv2Hash;
  }
  
  public byte[] getNTLMv2Response()
  {
    if (this.ntlmv2Response == null) {
      this.ntlmv2Response = NTLMEngineImpl.access$800(getNTLMv2Hash(), this.challenge, getNTLMv2Blob());
    }
    return this.ntlmv2Response;
  }
  
  public byte[] getNTLMv2UserSessionKey()
  {
    if (this.ntlmv2UserSessionKey == null)
    {
      byte[] arrayOfByte1 = getNTLMv2Hash();
      byte[] arrayOfByte2 = new byte[16];
      System.arraycopy(getNTLMv2Response(), 0, arrayOfByte2, 0, 16);
      this.ntlmv2UserSessionKey = NTLMEngineImpl.hmacMD5(arrayOfByte2, arrayOfByte1);
    }
    return this.ntlmv2UserSessionKey;
  }
  
  public byte[] getSecondaryKey()
  {
    if (this.secondaryKey == null) {
      this.secondaryKey = NTLMEngineImpl.access$100();
    }
    return this.secondaryKey;
  }
  
  public byte[] getTimestamp()
  {
    if (this.timestamp == null)
    {
      long l = 10000L * (System.currentTimeMillis() + 11644473600000L);
      this.timestamp = new byte[8];
      int i = 0;
      while (i < 8)
      {
        this.timestamp[i] = ((byte)(int)l);
        l >>>= 8;
        i += 1;
      }
    }
    return this.timestamp;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\auth\NTLMEngineImpl$CipherGen.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
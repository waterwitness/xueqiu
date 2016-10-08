package org.apache.http.impl.auth;

import java.util.Locale;

class NTLMEngineImpl$Type3Message
  extends NTLMEngineImpl.NTLMMessage
{
  protected byte[] domainBytes;
  protected byte[] hostBytes;
  protected byte[] lmResp;
  protected byte[] ntResp;
  protected byte[] sessionKey;
  protected int type2Flags;
  protected byte[] userBytes;
  
  NTLMEngineImpl$Type3Message(String paramString1, String paramString2, String paramString3, String paramString4, byte[] paramArrayOfByte1, int paramInt, String paramString5, byte[] paramArrayOfByte2)
  {
    this.type2Flags = paramInt;
    String str = NTLMEngineImpl.access$1600(paramString2);
    paramString2 = NTLMEngineImpl.access$1700(paramString1);
    paramString4 = new NTLMEngineImpl.CipherGen(paramString2, paramString3, paramString4, paramArrayOfByte1, paramString5, paramArrayOfByte2);
    if (((0x800000 & paramInt) != 0) && (paramArrayOfByte2 != null) && (paramString5 != null)) {}
    for (;;)
    {
      try
      {
        this.ntResp = paramString4.getNTLMv2Response();
        this.lmResp = paramString4.getLMv2Response();
        if ((paramInt & 0x80) == 0) {
          continue;
        }
        paramString1 = paramString4.getLanManagerSessionKey();
      }
      catch (NTLMEngineException paramString1)
      {
        this.ntResp = new byte[0];
        this.lmResp = paramString4.getLMResponse();
        if ((paramInt & 0x80) == 0) {
          continue;
        }
        paramString1 = paramString4.getLanManagerSessionKey();
        continue;
        paramString1 = paramString4.getLMUserSessionKey();
        continue;
        this.sessionKey = paramString1;
        continue;
        this.sessionKey = null;
        continue;
      }
      if ((paramInt & 0x10) == 0) {
        continue;
      }
      if ((0x40000000 & paramInt) == 0) {
        continue;
      }
      this.sessionKey = NTLMEngineImpl.RC4(paramString4.getSecondaryKey(), paramString1);
      if (NTLMEngineImpl.access$1500() != null) {
        break label303;
      }
      throw new NTLMEngineException("Unicode not supported");
      paramString1 = paramString4.getNTLMv2UserSessionKey();
      continue;
      if ((0x80000 & paramInt) != 0)
      {
        this.ntResp = paramString4.getNTLM2SessionResponse();
        this.lmResp = paramString4.getLM2SessionResponse();
        if ((paramInt & 0x80) != 0) {
          paramString1 = paramString4.getLanManagerSessionKey();
        } else {
          paramString1 = paramString4.getNTLM2SessionResponseUserSessionKey();
        }
      }
      else
      {
        this.ntResp = paramString4.getNTLMResponse();
        this.lmResp = paramString4.getLMResponse();
        if ((paramInt & 0x80) != 0) {
          paramString1 = paramString4.getLanManagerSessionKey();
        } else {
          paramString1 = paramString4.getNTLMUserSessionKey();
        }
      }
    }
    label303:
    if (str != null)
    {
      paramString1 = str.getBytes(NTLMEngineImpl.access$1500());
      this.hostBytes = paramString1;
      if (paramString2 == null) {
        break label362;
      }
    }
    label362:
    for (paramString1 = paramString2.toUpperCase(Locale.ROOT).getBytes(NTLMEngineImpl.access$1500());; paramString1 = null)
    {
      this.domainBytes = paramString1;
      this.userBytes = paramString3.getBytes(NTLMEngineImpl.access$1500());
      return;
      paramString1 = null;
      break;
    }
  }
  
  String getResponse()
  {
    int k = 0;
    int m = this.ntResp.length;
    int n = this.lmResp.length;
    int i;
    if (this.domainBytes != null)
    {
      i = this.domainBytes.length;
      if (this.hostBytes == null) {
        break label394;
      }
    }
    label394:
    for (int j = this.hostBytes.length;; j = 0)
    {
      int i1 = this.userBytes.length;
      if (this.sessionKey != null) {
        k = this.sessionKey.length;
      }
      int i2 = n + 72;
      int i3 = i2 + m;
      int i4 = i3 + i;
      int i5 = i4 + i1;
      int i6 = i5 + j;
      prepareResponse(i6 + k, 3);
      addUShort(n);
      addUShort(n);
      addULong(72);
      addUShort(m);
      addUShort(m);
      addULong(i2);
      addUShort(i);
      addUShort(i);
      addULong(i3);
      addUShort(i1);
      addUShort(i1);
      addULong(i4);
      addUShort(j);
      addUShort(j);
      addULong(i5);
      addUShort(k);
      addUShort(k);
      addULong(i6);
      addULong(this.type2Flags & 0x80 | this.type2Flags & 0x200 | this.type2Flags & 0x80000 | 0x2000000 | this.type2Flags & 0x8000 | this.type2Flags & 0x20 | this.type2Flags & 0x10 | this.type2Flags & 0x20000000 | this.type2Flags & 0x80000000 | this.type2Flags & 0x40000000 | this.type2Flags & 0x800000 | this.type2Flags & 0x1 | this.type2Flags & 0x4);
      addUShort(261);
      addULong(2600);
      addUShort(3840);
      addBytes(this.lmResp);
      addBytes(this.ntResp);
      addBytes(this.domainBytes);
      addBytes(this.userBytes);
      addBytes(this.hostBytes);
      if (this.sessionKey != null) {
        addBytes(this.sessionKey);
      }
      return super.getResponse();
      i = 0;
      break;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\auth\NTLMEngineImpl$Type3Message.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
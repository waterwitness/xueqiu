package org.apache.http.impl.auth;

import java.util.Locale;

class NTLMEngineImpl$Type1Message
  extends NTLMEngineImpl.NTLMMessage
{
  private final byte[] domainBytes;
  private final byte[] hostBytes;
  
  NTLMEngineImpl$Type1Message()
  {
    this.hostBytes = null;
    this.domainBytes = null;
  }
  
  NTLMEngineImpl$Type1Message(String paramString1, String paramString2)
  {
    if (NTLMEngineImpl.access$1500() == null) {
      throw new NTLMEngineException("Unicode not supported");
    }
    String str = NTLMEngineImpl.access$1600(paramString2);
    paramString2 = NTLMEngineImpl.access$1700(paramString1);
    if (str != null) {}
    for (paramString1 = str.getBytes(NTLMEngineImpl.access$1500());; paramString1 = null)
    {
      this.hostBytes = paramString1;
      paramString1 = (String)localObject;
      if (paramString2 != null) {
        paramString1 = paramString2.toUpperCase(Locale.ROOT).getBytes(NTLMEngineImpl.access$1500());
      }
      this.domainBytes = paramString1;
      return;
    }
  }
  
  String getResponse()
  {
    prepareResponse(40, 1);
    addULong(-1576500735);
    addUShort(0);
    addUShort(0);
    addULong(40);
    addUShort(0);
    addUShort(0);
    addULong(40);
    addUShort(261);
    addULong(2600);
    addUShort(3840);
    if (this.hostBytes != null) {
      addBytes(this.hostBytes);
    }
    if (this.domainBytes != null) {
      addBytes(this.domainBytes);
    }
    return super.getResponse();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\auth\NTLMEngineImpl$Type1Message.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
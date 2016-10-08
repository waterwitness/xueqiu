package com.xueqiu.android.message.database.bind;

import com.sleepycat.a.a.k;
import com.sleepycat.a.a.l;
import com.sleepycat.a.a.m;
import com.snowballfinance.message.a.c;
import com.snowballfinance.message.a.d;
import com.xueqiu.android.message.model.Message;
import java.nio.charset.Charset;
import java.util.Date;

public class MessageBinding
  extends k
{
  private static final int ENCRYPT_TIMES = 16;
  private byte[] secret;
  
  public MessageBinding(byte[] paramArrayOfByte)
  {
    this.secret = paramArrayOfByte;
  }
  
  private String encryptRead(l paraml)
  {
    int i = paraml.d();
    if (i > 2097152) {
      throw new RuntimeException("too large encrypt data length:" + i);
    }
    byte[] arrayOfByte = new byte[i];
    paraml.read(arrayOfByte);
    return new String(c.a(arrayOfByte, this.secret), Charset.forName("UTF-8"));
  }
  
  private void encryptWrite(String paramString, m paramm)
  {
    paramString = d.a(paramString.getBytes(Charset.forName("UTF-8")), this.secret);
    paramm.b(paramString.length);
    paramm.write(paramString);
  }
  
  public Object entryToObject(l paraml)
  {
    Message localMessage = new Message();
    localMessage.setId(paraml.e());
    localMessage.setSequence(paraml.e());
    localMessage.setType(paraml.d());
    localMessage.setStatus(paraml.d());
    localMessage.setText(encryptRead(paraml));
    localMessage.setSummary(encryptRead(paraml));
    localMessage.setFromId(paraml.e());
    localMessage.setFromGroup(paraml.b());
    localMessage.setToId(paraml.e());
    localMessage.setToGroup(paraml.b());
    localMessage.setCreatedAt(new Date(paraml.e()));
    return localMessage;
  }
  
  public void objectToEntry(Object paramObject, m paramm)
  {
    paramObject = (Message)paramObject;
    paramm.a(((Message)paramObject).getId());
    paramm.a(((Message)paramObject).getSequence());
    paramm.b(((Message)paramObject).getType());
    paramm.b(((Message)paramObject).getStatus());
    encryptWrite(((Message)paramObject).getText(), paramm);
    encryptWrite(((Message)paramObject).getSummary(), paramm);
    paramm.a(((Message)paramObject).getFromId());
    paramm.a(((Message)paramObject).isFromGroup());
    paramm.a(((Message)paramObject).getToId());
    paramm.a(((Message)paramObject).isToGroup());
    paramm.a(((Message)paramObject).getCreatedAt().getTime());
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\message\database\bind\MessageBinding.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
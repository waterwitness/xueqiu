package com.snowballfinance.messageplatform.a.a;

import com.snowballfinance.message.io.logger.Logger;
import com.snowballfinance.message.io.logger.LoggerFactory;
import com.snowballfinance.messageplatform.a.e;
import com.snowballfinance.messageplatform.a.f;
import com.snowballfinance.messageplatform.a.i;
import com.snowballfinance.messageplatform.a.k;
import com.snowballfinance.messageplatform.a.m;
import com.snowballfinance.messageplatform.data.Message;
import com.snowballfinance.messageplatform.data.MessageSession;
import com.snowballfinance.messageplatform.data.MessageSessionExt;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

public final class a
{
  protected final Logger a = LoggerFactory.getLogger(getClass());
  public d b;
  
  public a(InputStream paramInputStream)
  {
    if ((paramInputStream instanceof d))
    {
      this.b = ((d)paramInputStream);
      return;
    }
    this.b = new d(paramInputStream);
  }
  
  public final e a(int paramInt1, String paramString, int paramInt2)
  {
    boolean bool = true;
    e locale = new e();
    locale.a = Integer.valueOf(paramInt1);
    locale.b = paramString;
    if (this.b.a() == 1) {}
    for (;;)
    {
      locale.c = Boolean.valueOf(bool);
      paramInt1 = paramInt2 - 1;
      paramString = new ArrayList();
      while (paramInt1 > 0)
      {
        paramInt2 = this.b.a;
        paramString.add(Message.decodeMessage(this.b));
        paramInt1 -= this.b.a - paramInt2;
      }
      bool = false;
    }
    locale.d = paramString;
    return locale;
  }
  
  public final f b(int paramInt1, String paramString, int paramInt2)
  {
    f localf = new f();
    localf.a = Integer.valueOf(paramInt1);
    localf.b = paramString;
    paramString = new ArrayList();
    while (paramInt2 > 0)
    {
      paramInt1 = this.b.a;
      paramString.add(Long.valueOf(this.b.d()));
      paramInt2 -= this.b.a - paramInt1;
    }
    localf.c = paramString;
    return localf;
  }
  
  public final m c(int paramInt1, String paramString, int paramInt2)
  {
    m localm = new m();
    localm.a = Integer.valueOf(paramInt1);
    localm.b = paramString;
    paramString = new ArrayList();
    while (paramInt2 > 0)
    {
      paramInt1 = this.b.a;
      paramString.add(Message.decodeMessage(this.b));
      paramInt2 -= this.b.a - paramInt1;
    }
    localm.c = paramString;
    return localm;
  }
  
  public final k d(int paramInt1, String paramString, int paramInt2)
  {
    k localk = new k();
    localk.a = Integer.valueOf(paramInt1);
    localk.b = paramString;
    paramString = new ArrayList();
    while (paramInt2 > 0)
    {
      paramInt1 = this.b.a;
      paramString.add(MessageSession.decodeMessageSession(this.b));
      paramInt2 -= this.b.a - paramInt1;
    }
    localk.c = paramString;
    return localk;
  }
  
  public final i e(int paramInt1, String paramString, int paramInt2)
  {
    i locali = new i();
    locali.a = Integer.valueOf(paramInt1);
    locali.b = paramString;
    paramString = new ArrayList();
    while (paramInt2 > 0)
    {
      paramInt1 = this.b.a;
      paramString.add(MessageSessionExt.decodeMessageSessionExt(this.b));
      paramInt2 -= this.b.a - paramInt1;
    }
    locali.c = paramString;
    return locali;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\snowballfinance\messageplatform\a\a\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
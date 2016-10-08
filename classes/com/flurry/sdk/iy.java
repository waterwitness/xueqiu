package com.flurry.sdk;

import android.widget.Toast;
import java.util.Arrays;

public class iy
  extends kt
  implements ll.a
{
  private static final String e = iy.class.getSimpleName();
  private static String f = "http://data.flurry.com/aap.do";
  private static String g = "https://data.flurry.com/aap.do";
  private String h;
  private boolean i;
  
  public iy()
  {
    this(null);
  }
  
  public iy(kt.a parama)
  {
    super("Analytics", iy.class.getSimpleName());
    this.d = "AnalyticsData_";
    h();
    a(parama);
  }
  
  private void b(String paramString)
  {
    if ((paramString != null) && (!paramString.endsWith(".do"))) {
      kg.a(5, e, "overriding analytics agent report URL without an endpoint, are you sure?");
    }
    this.h = paramString;
  }
  
  private void h()
  {
    lk locallk = lk.a();
    this.i = ((Boolean)locallk.a("UseHttps")).booleanValue();
    locallk.a("UseHttps", this);
    kg.a(4, e, "initSettings, UseHttps = " + this.i);
    String str = (String)locallk.a("ReportUrl");
    locallk.a("ReportUrl", this);
    b(str);
    kg.a(4, e, "initSettings, ReportUrl = " + str);
  }
  
  public void a()
  {
    lk.a().b("UseHttps", this);
    lk.a().b("ReportUrl", this);
  }
  
  public void a(String paramString, Object paramObject)
  {
    int j = -1;
    switch (paramString.hashCode())
    {
    }
    for (;;)
    {
      switch (j)
      {
      default: 
        kg.a(6, e, "onSettingUpdate internal error!");
        return;
        if (paramString.equals("UseHttps"))
        {
          j = 0;
          continue;
          if (paramString.equals("ReportUrl")) {
            j = 1;
          }
        }
        break;
      }
    }
    this.i = ((Boolean)paramObject).booleanValue();
    kg.a(4, e, "onSettingUpdate, UseHttps = " + this.i);
    return;
    paramString = (String)paramObject;
    b(paramString);
    kg.a(4, e, "onSettingUpdate, ReportUrl = " + paramString);
  }
  
  protected void a(String paramString1, String paramString2, final int paramInt)
  {
    a(new ly()
    {
      public void a()
      {
        if (paramInt == 200) {
          hl.a().f();
        }
      }
    });
    super.a(paramString1, paramString2, paramInt);
  }
  
  protected void a(byte[] paramArrayOfByte, final String paramString1, final String paramString2)
  {
    String str = b();
    kg.a(4, e, "FlurryDataSender: start upload data " + Arrays.toString(paramArrayOfByte) + " with id = " + paramString1 + " to " + str);
    kn localkn = new kn();
    localkn.a(str);
    localkn.d(100000);
    localkn.a(kp.a.c);
    localkn.a("Content-Type", "application/octet-stream");
    localkn.a(new kx());
    localkn.a(paramArrayOfByte);
    localkn.a(new kn.a()
    {
      public void a(kn<byte[], Void> paramAnonymouskn, Void paramAnonymousVoid)
      {
        final int i = paramAnonymouskn.h();
        if (i > 0)
        {
          kg.e(iy.c(), "Analytics report sent.");
          kg.a(3, iy.c(), "FlurryDataSender: report " + paramString1 + " sent. HTTP response: " + i);
          if ((kg.c() <= 3) && (kg.d())) {
            js.a().a(new Runnable()
            {
              public void run()
              {
                Toast.makeText(js.a().c(), "SD HTTP Response Code: " + i, 0).show();
              }
            });
          }
          iy.this.a(paramString1, paramString2, i);
          iy.a(iy.this);
          return;
        }
        iy.a(iy.this, paramString1, paramString2);
      }
    });
    jq.a().a(this, localkn);
  }
  
  String b()
  {
    if (this.h != null) {
      return this.h;
    }
    if (this.i) {
      return g;
    }
    return f;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\flurry\sdk\iy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
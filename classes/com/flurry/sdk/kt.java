package com.flurry.sdk;

import android.content.Context;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public abstract class kt
{
  protected final String a;
  Set<String> b = new HashSet();
  kv c;
  protected String d = "defaultDataKey_";
  private kb<jk> e = new kb()
  {
    public void a(jk paramAnonymousjk)
    {
      kg.a(4, kt.this.a, "onNetworkStateChanged : isNetworkEnable = " + paramAnonymousjk.a);
      if (paramAnonymousjk.a) {
        kt.this.e();
      }
    }
  };
  
  public kt(String paramString1, String paramString2)
  {
    this.a = paramString2;
    kc.a().a("com.flurry.android.sdk.NetworkStateEvent", this.e);
    a(paramString1);
  }
  
  public String a(String paramString1, String paramString2)
  {
    return this.d + paramString1 + "_" + paramString2;
  }
  
  protected void a(final kt.a parama)
  {
    a(new ly()
    {
      public void a()
      {
        kt.this.g();
        if (parama != null) {
          parama.a();
        }
      }
    });
  }
  
  protected void a(ly paramly)
  {
    js.a().b(paramly);
  }
  
  protected void a(final String paramString)
  {
    a(new ly()
    {
      public void a()
      {
        kt.this.c = new kv(paramString);
      }
    });
  }
  
  protected void a(final String paramString1, final String paramString2, int paramInt)
  {
    a(new ly()
    {
      public void a()
      {
        if (!kt.this.c.a(paramString1, paramString2)) {
          kg.a(6, paramString1, "Internal error. Block wasn't deleted with id = " + paramString1);
        }
        if (!kt.this.b.remove(paramString1)) {
          kg.a(6, paramString1, "Internal error. Block with id = " + paramString1 + " was not in progress state");
        }
      }
    });
  }
  
  protected abstract void a(byte[] paramArrayOfByte, String paramString1, String paramString2);
  
  public void a(byte[] paramArrayOfByte, String paramString1, String paramString2, kt.a parama)
  {
    if ((paramArrayOfByte == null) || (paramArrayOfByte.length == 0))
    {
      kg.a(6, this.a, "Report that has to be sent is EMPTY or NULL");
      return;
    }
    c(paramArrayOfByte, paramString1, paramString2);
    a(parama);
  }
  
  protected void b(final String paramString1, String paramString2)
  {
    a(new ly()
    {
      public void a()
      {
        if (!kt.this.b.remove(paramString1)) {
          kg.a(6, paramString1, "Internal error. Block with id = " + paramString1 + " was not in progress state");
        }
      }
    });
  }
  
  public void b(byte[] paramArrayOfByte, String paramString1, String paramString2)
  {
    a(paramArrayOfByte, paramString1, paramString2, null);
  }
  
  protected void c(String paramString1, String paramString2)
  {
    if (!this.c.a(paramString1, paramString2)) {
      kg.a(6, this.a, "Internal error. Block wasn't deleted with id = " + paramString1);
    }
    if (!this.b.remove(paramString1)) {
      kg.a(6, this.a, "Internal error. Block with id = " + paramString1 + " was not in progress state");
    }
  }
  
  protected void c(final byte[] paramArrayOfByte, final String paramString1, final String paramString2)
  {
    a(new ly()
    {
      public void a()
      {
        kt.this.d(paramArrayOfByte, paramString1, paramString2);
      }
    });
  }
  
  public int d()
  {
    return this.b.size();
  }
  
  protected void d(byte[] paramArrayOfByte, String paramString1, String paramString2)
  {
    paramString1 = a(paramString1, paramString2);
    paramArrayOfByte = new ku(paramArrayOfByte);
    paramString2 = paramArrayOfByte.a();
    new jz(js.a().c().getFileStreamPath(ku.a(paramString2)), ".yflurrydatasenderblock.", 1, new le()
    {
      public lb<ku> a(int paramAnonymousInt)
      {
        return new ku.a();
      }
    }).a(paramArrayOfByte);
    kg.a(5, this.a, "Saving Block File " + paramString2 + " at " + js.a().c().getFileStreamPath(ku.a(paramString2)));
    this.c.a(paramArrayOfByte, paramString1);
  }
  
  protected void e()
  {
    a(null);
  }
  
  protected boolean f()
  {
    return d() <= 5;
  }
  
  protected void g()
  {
    if (!jl.a().c()) {
      kg.a(5, this.a, "Reports were not sent! No Internet connection!");
    }
    String str1;
    int i;
    label126:
    String str2;
    do
    {
      return;
      do
      {
        Object localObject1;
        do
        {
          localObject1 = this.c.a();
          if ((localObject1 == null) || (((List)localObject1).isEmpty()))
          {
            kg.a(4, this.a, "No more reports to send.");
            return;
          }
          localObject1 = ((List)localObject1).iterator();
        } while (!((Iterator)localObject1).hasNext());
        str1 = (String)((Iterator)localObject1).next();
      } while (!f());
      List localList = this.c.c(str1);
      kg.a(4, this.a, "Number of not sent blocks = " + localList.size());
      i = 0;
      if (i >= localList.size()) {
        break label245;
      }
      str2 = (String)localList.get(i);
      if (this.b.contains(str2)) {
        break;
      }
    } while (!f());
    Object localObject2 = (ku)new jz(js.a().c().getFileStreamPath(ku.a(str2)), ".yflurrydatasenderblock.", 1, new le()
    {
      public lb<ku> a(int paramAnonymousInt)
      {
        return new ku.a();
      }
    }).a();
    if (localObject2 == null)
    {
      kg.a(6, this.a, "Internal ERROR! Cannot read!");
      this.c.a(str2, str1);
    }
    for (;;)
    {
      i += 1;
      break label126;
      label245:
      break;
      localObject2 = ((ku)localObject2).b();
      if ((localObject2 == null) || (localObject2.length == 0))
      {
        kg.a(6, this.a, "Internal ERROR! Report is empty!");
        this.c.a(str2, str1);
      }
      else
      {
        kg.a(5, this.a, "Reading block info " + str2);
        this.b.add(str2);
        a((byte[])localObject2, str2, str1);
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\flurry\sdk\kt.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
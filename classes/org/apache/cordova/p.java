package org.apache.cordova;

import android.util.Log;
import java.util.Iterator;
import java.util.LinkedList;

public final class p
{
  private static int e = 524288000;
  int a;
  boolean b;
  final LinkedList<r> c = new LinkedList();
  final q[] d;
  private final f f;
  private final CordovaWebView g;
  
  public p(CordovaWebView paramCordovaWebView, f paramf)
  {
    this.f = paramf;
    this.g = paramCordovaWebView;
    this.d = new q[4];
    this.d[0] = new u(this, 0);
    this.d[1] = new s(this, 0);
    this.d[2] = new t(this, 0);
    this.d[3] = new v(this, 0);
    a();
  }
  
  private String b()
  {
    int j;
    int i;
    int k;
    label94:
    int m;
    try
    {
      if (this.c.size() == 0) {
        return null;
      }
      Object localObject1 = this.c.iterator();
      j = 0;
      i = 0;
      if (((Iterator)localObject1).hasNext())
      {
        k = ((r)((Iterator)localObject1).next()).a() + 50;
        if ((j <= 0) || (i + k <= e) || (e <= 0)) {
          break label225;
        }
      }
      if (j != this.c.size()) {
        break label246;
      }
      k = 1;
      if (k == 0) {
        break label252;
      }
      m = 0;
      label102:
      localObject1 = new StringBuilder(m + i);
      i = 0;
      label116:
      if (i < j)
      {
        r localr = (r)this.c.removeFirst();
        if ((k != 0) && (i + 1 == j))
        {
          localr.a((StringBuilder)localObject1);
        }
        else
        {
          ((StringBuilder)localObject1).append("try{");
          localr.a((StringBuilder)localObject1);
          ((StringBuilder)localObject1).append("}finally{");
        }
      }
    }
    finally {}
    if (k == 0) {
      ((StringBuilder)localObject2).append("window.setTimeout(function(){cordova.require('cordova/plugin/android/polling').pollOnce();},0);");
    }
    for (;;)
    {
      if (i < j)
      {
        ((StringBuilder)localObject2).append('}');
        i += 1;
      }
      else
      {
        String str = ((StringBuilder)localObject2).toString();
        return str;
        label225:
        i += k;
        j += 1;
        break;
        i += 1;
        break label116;
        label246:
        k = 0;
        break label94;
        label252:
        m = 100;
        break label102;
        if (k != 0) {
          i = 1;
        } else {
          i = 0;
        }
      }
    }
  }
  
  public final String a(boolean paramBoolean)
  {
    Object localObject1;
    int i;
    int j;
    int k;
    label119:
    r localr;
    int n;
    label202:
    int m;
    label215:
    label237:
    char c1;
    label251:
    try
    {
      this.d[this.a].a(paramBoolean);
      if (this.c.isEmpty()) {
        return null;
      }
      localObject1 = this.c.iterator();
      i = 0;
      j = 0;
      if (((Iterator)localObject1).hasNext())
      {
        k = ((r)((Iterator)localObject1).next()).a();
        k = k + String.valueOf(k).length() + 1;
        if ((i <= 0) || (j + k <= e) || (e <= 0)) {
          break label523;
        }
      }
      localObject1 = new StringBuilder(j);
      j = 0;
      if (j >= i) {
        break label497;
      }
      localr = (r)this.c.removeFirst();
      ((StringBuilder)localObject1).append(localr.a()).append(' ');
      if (localr.b == null)
      {
        ((StringBuilder)localObject1).append('J').append(localr.a);
        break label539;
      }
      n = localr.b.a;
      if (n != aa.a - 1) {
        break label353;
      }
      k = 1;
      if (n != aa.b - 1) {
        break label359;
      }
      m = 1;
      paramBoolean = localr.b.c;
      if (k != 0) {
        break label548;
      }
      if (m == 0) {
        break label365;
      }
    }
    finally {}
    StringBuilder localStringBuilder = ((StringBuilder)localObject1).append(c1);
    if (paramBoolean)
    {
      c1 = '1';
      localStringBuilder.append(c1).append(n).append(' ').append(localr.a).append(' ');
      switch (localr.b.b)
      {
      }
    }
    for (;;)
    {
      ((StringBuilder)localObject1).append(localr.b.a());
      break label539;
      label353:
      k = 0;
      break label202;
      label359:
      m = 0;
      break label215;
      label365:
      c1 = 'F';
      break label237;
      c1 = '0';
      break label251;
      ((StringBuilder)localObject2).append(localr.b.a().charAt(0));
      break label539;
      ((StringBuilder)localObject2).append('N');
      break label539;
      ((StringBuilder)localObject2).append('n').append(localr.b.a());
      break label539;
      ((StringBuilder)localObject2).append('s');
      ((StringBuilder)localObject2).append(localr.b.d);
      break label539;
      ((StringBuilder)localObject2).append('S');
      ((StringBuilder)localObject2).append(localr.b.a());
      break label539;
      ((StringBuilder)localObject2).append('A');
      ((StringBuilder)localObject2).append(localr.b.a());
      break label539;
      label497:
      if (!this.c.isEmpty()) {
        ((StringBuilder)localObject2).append('*');
      }
      String str = ((StringBuilder)localObject2).toString();
      return str;
      label523:
      j += k;
      i += 1;
      break;
      label539:
      j += 1;
      break label119;
      label548:
      c1 = 'S';
      break label237;
    }
  }
  
  public final void a()
  {
    try
    {
      this.c.clear();
      a(2);
      this.d[this.a].b();
      return;
    }
    finally {}
  }
  
  public final void a(int paramInt)
  {
    if ((paramInt < 0) || (paramInt >= this.d.length)) {
      Log.d("JsMessageQueue", "Invalid NativeToJsBridgeMode: " + paramInt);
    }
    while (paramInt == this.a) {
      return;
    }
    Log.d("JsMessageQueue", "Set native->JS mode to " + paramInt);
    try
    {
      this.a = paramInt;
      q localq = this.d[paramInt];
      localq.b();
      if ((!this.b) && (!this.c.isEmpty())) {
        localq.a();
      }
      return;
    }
    finally {}
  }
  
  public final void b(boolean paramBoolean)
  {
    if ((this.b) && (paramBoolean)) {
      Log.e("JsMessageQueue", "nested call to setPaused detected.", new Throwable());
    }
    this.b = paramBoolean;
    if (!paramBoolean) {
      try
      {
        if (!this.c.isEmpty()) {
          this.d[this.a].a();
        }
        return;
      }
      finally {}
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\cordova\p.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
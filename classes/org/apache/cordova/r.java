package org.apache.cordova;

final class r
{
  final String a;
  final z b;
  
  r(z paramz, String paramString)
  {
    if ((paramString == null) || (paramz == null)) {
      throw new NullPointerException();
    }
    this.a = paramString;
    this.b = paramz;
  }
  
  final int a()
  {
    if (this.b == null) {
      return this.a.length() + 1;
    }
    int i = String.valueOf(this.b.a).length() + 2 + 1 + this.a.length() + 1;
    switch (this.b.b)
    {
    case 2: 
    default: 
      return i + this.b.a().length();
    case 4: 
    case 5: 
      return i + 1;
    case 3: 
      return i + (this.b.a().length() + 1);
    case 1: 
      return i + (this.b.d.length() + 1);
    case 7: 
      return i + (this.b.a().length() + 1);
    }
    return i + (this.b.a().length() + 1);
  }
  
  final void a(StringBuilder paramStringBuilder)
  {
    if (this.b == null)
    {
      paramStringBuilder.append(this.a);
      return;
    }
    int i = this.b.a;
    boolean bool;
    if ((i == aa.b - 1) || (i == aa.a - 1))
    {
      bool = true;
      paramStringBuilder.append("cordova.callbackFromNative('").append(this.a).append("',").append(bool).append(",").append(i).append(",[");
      switch (this.b.b)
      {
      default: 
        paramStringBuilder.append(this.b.a());
      }
    }
    for (;;)
    {
      paramStringBuilder.append("],").append(this.b.c).append(");");
      return;
      bool = false;
      break;
      paramStringBuilder.append("atob('").append(this.b.a()).append("')");
      continue;
      paramStringBuilder.append("cordova.require('cordova/base64').toArrayBuffer('").append(this.b.a()).append("')");
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\cordova\r.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
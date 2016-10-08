package com.alipay.sdk.b;

import java.util.ArrayList;
import org.apache.http.Header;
import org.apache.http.message.BasicHeader;

public final class c
{
  public Header[] a = null;
  public String b = null;
  public String c = null;
  
  public final ArrayList<BasicHeader> a()
  {
    Object localObject;
    if ((this.a == null) || (this.a.length == 0))
    {
      localObject = null;
      return (ArrayList<BasicHeader>)localObject;
    }
    ArrayList localArrayList = new ArrayList();
    Header[] arrayOfHeader = this.a;
    int j = arrayOfHeader.length;
    int i = 0;
    for (;;)
    {
      localObject = localArrayList;
      if (i >= j) {
        break;
      }
      localObject = arrayOfHeader[i];
      localArrayList.add(new BasicHeader(((Header)localObject).getName(), ((Header)localObject).getValue()));
      i += 1;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\alipay\sdk\b\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
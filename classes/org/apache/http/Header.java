package org.apache.http;

public abstract interface Header
{
  public abstract HeaderElement[] getElements();
  
  public abstract String getName();
  
  public abstract String getValue();
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\Header.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
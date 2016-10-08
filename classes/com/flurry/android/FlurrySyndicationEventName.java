package com.flurry.android;

public enum FlurrySyndicationEventName
{
  private String a;
  
  static
  {
    FAST_REBLOG = new FlurrySyndicationEventName("FAST_REBLOG", 1, "FastReblog");
    SOURCE_LINK = new FlurrySyndicationEventName("SOURCE_LINK", 2, "SourceClick");
  }
  
  private FlurrySyndicationEventName(String paramString)
  {
    this.a = paramString;
  }
  
  public final String toString()
  {
    return this.a;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\flurry\android\FlurrySyndicationEventName.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
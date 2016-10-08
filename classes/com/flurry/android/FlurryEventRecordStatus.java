package com.flurry.android;

public enum FlurryEventRecordStatus
{
  static
  {
    kFlurryEventParamsCountExceeded = new FlurryEventRecordStatus("kFlurryEventParamsCountExceeded", 3);
    kFlurryEventLogCountExceeded = new FlurryEventRecordStatus("kFlurryEventLogCountExceeded", 4);
    kFlurryEventLoggingDelayed = new FlurryEventRecordStatus("kFlurryEventLoggingDelayed", 5);
    kFlurryEventAnalyticsDisabled = new FlurryEventRecordStatus("kFlurryEventAnalyticsDisabled", 6);
  }
  
  private FlurryEventRecordStatus() {}
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\flurry\android\FlurryEventRecordStatus.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
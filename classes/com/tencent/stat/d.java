package com.tencent.stat;

import android.content.Context;
import com.tencent.stat.common.StatCommonHelper;
import com.tencent.stat.common.StatLogger;
import com.tencent.stat.common.StatPreferences;
import com.tencent.stat.event.Event;
import com.tencent.stat.event.EventType;

final class d
  implements Runnable
{
  private Event a;
  private StatReportStrategy b = null;
  
  public d(Event paramEvent)
  {
    this.a = paramEvent;
    this.b = StatConfig.getStatSendStrategy();
  }
  
  private void a()
  {
    if (StatStore.getInstance().getNumStoredEvents() > 0)
    {
      StatStore.getInstance().storeEvent(this.a, null);
      StatStore.getInstance().loadEvents(-1);
      return;
    }
    a(true);
  }
  
  private void a(boolean paramBoolean)
  {
    b local1 = null;
    if (paramBoolean) {
      local1 = new b()
      {
        public final void a()
        {
          StatStore.getInstance().loadEvents(-1);
        }
        
        public final void b()
        {
          StatStore.getInstance().storeEvent(d.a(d.this), null);
        }
      };
    }
    c.b().send(this.a, local1);
  }
  
  public final void run()
  {
    if (!StatConfig.isEnableStatService()) {}
    do
    {
      for (;;)
      {
        return;
        if ((this.a.getType() != EventType.ERROR) && (this.a.toJsonString().length() > StatConfig.getMaxReportEventLength()))
        {
          StatService.access$000().e("Event length exceed StatConfig.getMaxReportEventLength(): " + StatConfig.getMaxReportEventLength());
          return;
        }
        if (StatConfig.getMaxSessionStatReportCount() > 0)
        {
          if (StatConfig.getCurSessionStatReportCount() >= StatConfig.getMaxSessionStatReportCount())
          {
            StatService.access$000().e("Times for reporting events has reached the limit of StatConfig.getMaxSessionStatReportCount() in current session.");
            return;
          }
          StatConfig.incCurSessionStatReportCount();
        }
        StatService.access$000().i("Lauch stat task in thread:" + Thread.currentThread().getName());
        Context localContext = this.a.getContext();
        if (!StatCommonHelper.isNetworkAvailable(localContext))
        {
          StatStore.getInstance(localContext).storeEvent(this.a, null);
          return;
        }
        if ((StatConfig.isEnableSmartReporting()) && (this.b != StatReportStrategy.ONLY_WIFI_NO_CACHE) && (StatCommonHelper.isWifiNet(localContext))) {
          this.b = StatReportStrategy.INSTANT;
        }
        switch (StatService.2.a[this.b.ordinal()])
        {
        default: 
          StatService.access$000().error("Invalid stat strategy:" + StatConfig.getStatSendStrategy());
          return;
        case 1: 
          a();
          return;
        case 2: 
          if (StatCommonHelper.isWiFiActive(localContext))
          {
            a();
            return;
          }
          StatStore.getInstance(localContext).storeEvent(this.a, null);
          return;
        case 3: 
        case 4: 
          StatStore.getInstance(localContext).storeEvent(this.a, null);
          return;
        case 5: 
          if (StatStore.getInstance(this.a.getContext()) != null)
          {
            StatStore.getInstance(localContext).storeEvent(this.a, new b()
            {
              public final void a()
              {
                if (StatStore.getInstance().getNumStoredEvents() >= StatConfig.getMaxBatchReportCount()) {
                  StatStore.getInstance().loadEvents(StatConfig.getMaxBatchReportCount());
                }
              }
              
              public final void b() {}
            });
            return;
          }
          break;
        case 6: 
          try
          {
            StatStore.getInstance(localContext).storeEvent(this.a, null);
            long l = StatPreferences.getLong(localContext, "last_period_ts", 0L);
            Long localLong = Long.valueOf(System.currentTimeMillis());
            if (Long.valueOf(Long.valueOf(localLong.longValue() - Long.valueOf(l).longValue()).longValue() / 60000L).longValue() > StatConfig.getSendPeriodMinutes())
            {
              StatStore.getInstance(localContext).loadEvents(-1);
              StatPreferences.putLong(localContext, "last_period_ts", localLong.longValue());
              return;
            }
          }
          catch (Exception localException)
          {
            StatService.access$000().e(localException);
            return;
          }
        }
      }
    } while (!StatCommonHelper.isWiFiActive(localException));
    a(false);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\stat\d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
package com.pingan.paphone.extension;

import java.util.TimerTask;

class MCPExtension2$QueueDetailTask
  extends TimerTask
{
  public void run()
  {
    if ((MCPExtension2.access$600() != null) && (MCPExtension2.access$700() != null)) {
      MCPExtension2.getQueueInfo(MCPExtension2.access$600(), MCPExtension2.access$700());
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\pingan\paphone\extension\MCPExtension2$QueueDetailTask.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
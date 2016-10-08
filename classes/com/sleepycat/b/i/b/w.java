package com.sleepycat.b.i.b;

import com.sleepycat.b.p.ag;

public final class w
{
  public static ag a = new ag("phase1NoQuorum", "Number of times Phase 1 ended with insufficient votes for a quorum.");
  public static ag b = new ag("phase1NoNonZeroPrio", "Number of times Phase 1 ended due to the absence of participating electable nodes with non-zero priority");
  public static ag c = new ag("phase1HigherProposal", "Number of times Phase 1 was terminated because one of the Acceptor agents already had a higher numbered proposal.");
  public static ag d = new ag("phase2NoQuorum", "Number of times Phase 2 ended with insufficient votes for a quorum.");
  public static ag e = new ag("phase2HigherProposal", "Number of times Phase 2 was terminated because one of the Acceptor agents already had a higher numbered proposal.");
  public static ag f = new ag("promiseCount", "Number of promises made by Acceptors in phase 1.");
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\b\w.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
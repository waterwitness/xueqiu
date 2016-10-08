package com.loopj.android.http;

class AssertUtils
{
  public static void asserts(boolean paramBoolean, String paramString)
  {
    if (!paramBoolean) {
      throw new AssertionError(paramString);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\loopj\android\http\AssertUtils.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
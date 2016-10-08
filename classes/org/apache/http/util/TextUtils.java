package org.apache.http.util;

public final class TextUtils
{
  public static boolean containsBlanks(CharSequence paramCharSequence)
  {
    if (paramCharSequence == null) {}
    for (;;)
    {
      return false;
      int i = 0;
      while (i < paramCharSequence.length())
      {
        if (Character.isWhitespace(paramCharSequence.charAt(i))) {
          return true;
        }
        i += 1;
      }
    }
  }
  
  public static boolean isBlank(CharSequence paramCharSequence)
  {
    boolean bool2 = false;
    boolean bool1;
    if (paramCharSequence == null)
    {
      bool1 = true;
      return bool1;
    }
    int i = 0;
    for (;;)
    {
      if (i >= paramCharSequence.length()) {
        break label44;
      }
      bool1 = bool2;
      if (!Character.isWhitespace(paramCharSequence.charAt(i))) {
        break;
      }
      i += 1;
    }
    label44:
    return true;
  }
  
  public static boolean isEmpty(CharSequence paramCharSequence)
  {
    if (paramCharSequence == null) {}
    while (paramCharSequence.length() == 0) {
      return true;
    }
    return false;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\util\TextUtils.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
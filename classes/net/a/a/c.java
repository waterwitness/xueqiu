package net.a.a;

import java.util.Properties;

public final class c
{
  public static String[] a(char paramChar)
  {
    String[] arrayOfString = null;
    Object localObject = b.a;
    String str = Integer.toHexString(paramChar).toUpperCase();
    localObject = ((a)localObject).a.getProperty(str);
    if ((localObject != null) && (!((String)localObject).equals("(none0)")) && (((String)localObject).startsWith("(")) && (((String)localObject).endsWith(")")))
    {
      paramChar = '\001';
      if (paramChar == 0) {
        break label95;
      }
    }
    for (;;)
    {
      if (localObject != null) {
        arrayOfString = ((String)localObject).substring(((String)localObject).indexOf("(") + 1, ((String)localObject).lastIndexOf(")")).split(",");
      }
      return arrayOfString;
      paramChar = '\000';
      break;
      label95:
      localObject = null;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\net\a\a\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
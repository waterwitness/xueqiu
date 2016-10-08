package net.a.a;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Properties;

final class a
{
  Properties a = null;
  
  private a()
  {
    try
    {
      this.a = new Properties();
      this.a.load(d.a("/pinyindb/unicode_to_hanyu_pinyin.txt"));
      return;
    }
    catch (FileNotFoundException localFileNotFoundException)
    {
      localFileNotFoundException.printStackTrace();
      return;
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\net\a\a\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
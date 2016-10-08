package android.support.v4.content;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build.VERSION;
import android.support.v4.d.a;

public final class c
{
  private static final d a = new e();
  
  static
  {
    if (Build.VERSION.SDK_INT >= 16)
    {
      a = new f();
      return;
    }
  }
  
  public static Cursor a(ContentResolver paramContentResolver, Uri paramUri, String[] paramArrayOfString1, String paramString1, String[] paramArrayOfString2, String paramString2, a parama)
  {
    return a.a(paramContentResolver, paramUri, paramArrayOfString1, paramString1, paramArrayOfString2, paramString2, parama);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v4\content\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
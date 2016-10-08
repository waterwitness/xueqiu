package android.support.v4.content;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import android.support.v4.d.a;
import android.support.v4.d.b;

class e
  implements d
{
  public Cursor a(ContentResolver paramContentResolver, Uri paramUri, String[] paramArrayOfString1, String paramString1, String[] paramArrayOfString2, String paramString2, a parama)
  {
    if ((parama != null) && (parama.a())) {
      throw new b();
    }
    return paramContentResolver.query(paramUri, paramArrayOfString1, paramString1, paramArrayOfString2, paramString2);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v4\content\e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
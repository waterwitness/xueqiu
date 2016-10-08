package android.support.v4.content;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import android.os.CancellationSignal;
import android.os.OperationCanceledException;
import android.support.v4.d.a;
import android.support.v4.d.b;

final class f
  extends e
{
  public final Cursor a(ContentResolver paramContentResolver, Uri paramUri, String[] paramArrayOfString1, String paramString1, String[] paramArrayOfString2, String paramString2, a parama)
  {
    if (parama != null) {}
    for (;;)
    {
      try
      {
        parama = parama.b();
        paramContentResolver = paramContentResolver.query(paramUri, paramArrayOfString1, paramString1, paramArrayOfString2, paramString2, (CancellationSignal)parama);
        return paramContentResolver;
      }
      catch (Exception paramContentResolver)
      {
        if (!(paramContentResolver instanceof OperationCanceledException)) {
          continue;
        }
        throw new b();
        throw paramContentResolver;
      }
      parama = null;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v4\content\f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
package com.a.a;

import android.net.Uri;
import android.os.AsyncTask;
import org.vudroid.a.a;

final class g
  extends AsyncTask<Void, Void, Void>
{
  private a a;
  private boolean b = false;
  private Uri c;
  private i d;
  
  public g(Uri paramUri, i parami)
  {
    this.d = parami;
    this.c = paramUri;
  }
  
  protected final void onCancelled()
  {
    this.b = true;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\a\a\g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
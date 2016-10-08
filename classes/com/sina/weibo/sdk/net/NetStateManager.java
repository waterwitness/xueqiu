package com.sina.weibo.sdk.net;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import org.apache.http.HttpHost;

public class NetStateManager
{
  public static NetStateManager.NetState CUR_NETSTATE = NetStateManager.NetState.Mobile;
  private static Context mContext;
  
  public static HttpHost getAPN()
  {
    String str = null;
    Object localObject2 = null;
    Object localObject1 = Uri.parse("content://telephony/carriers/preferapn");
    if (mContext != null) {}
    for (Cursor localCursor = mContext.getContentResolver().query((Uri)localObject1, null, null, null, null);; localCursor = null)
    {
      localObject1 = str;
      if (localCursor != null)
      {
        localObject1 = str;
        if (localCursor.moveToFirst())
        {
          str = localCursor.getString(localCursor.getColumnIndex("proxy"));
          localObject1 = localObject2;
          if (str != null)
          {
            localObject1 = localObject2;
            if (str.trim().length() > 0) {
              localObject1 = new HttpHost(str, 80);
            }
          }
          localCursor.close();
        }
      }
      return (HttpHost)localObject1;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sina\weibo\sdk\net\NetStateManager.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
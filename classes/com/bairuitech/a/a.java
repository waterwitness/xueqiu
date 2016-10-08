package com.bairuitech.a;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.media.MediaPlayer;
import android.os.Bundle;
import android.util.Log;
import com.b.a.a.f;
import com.bairuitech.anychat.AnyChatCoreSDK;
import java.util.ArrayList;

public final class a
{
  public static AnyChatCoreSDK a;
  public static b b;
  public static Activity c;
  public static ArrayList<Object> d;
  public static ArrayList<Integer> e;
  public static int f;
  public static boolean g = false;
  public static String h;
  private static a i;
  private MediaPlayer j;
  
  private a()
  {
    a = new AnyChatCoreSDK();
    d = new ArrayList();
    e = new ArrayList();
  }
  
  public static a a()
  {
    if (i == null) {
      i = new a();
    }
    return i;
  }
  
  public static void a(int paramInt, String paramString)
  {
    a.VideoCallControl(1, paramInt, 0, 0, 0, paramString);
  }
  
  public static void c()
  {
    b = null;
  }
  
  public final String a(int paramInt1, int paramInt2)
  {
    String str = null;
    switch (paramInt2)
    {
    }
    for (;;)
    {
      if (str != null)
      {
        com.bairuitech.b.a.a(str, c);
        if (g)
        {
          new Bundle().putInt("USERID", paramInt1);
          Activity localActivity = c;
          Intent localIntent = new Intent();
          localIntent.setAction("com.bairuitech.callcenter.backcancelsession");
          localActivity.sendBroadcast(localIntent);
        }
        b();
      }
      return str;
      str = c.getString(f.c(c, "str_returncode_bussiness"));
      continue;
      str = c.getString(f.c(c, "str_returncode_requestrefuse"));
      continue;
      str = c.getString(f.c(c, "str_returncode_offline"));
      continue;
      str = c.getString(f.c(c, "str_returncode_requestcancel"));
      continue;
      str = c.getString(f.c(c, "str_returncode_timeout"));
      continue;
      str = c.getString(f.c(c, "str_returncode_disconnect"));
    }
  }
  
  public final void b()
  {
    if (this.j == null) {
      return;
    }
    try
    {
      this.j.pause();
      this.j.stop();
      this.j.release();
      this.j = null;
      return;
    }
    catch (Exception localException)
    {
      Log.i("media-stop", "er");
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\bairuitech\a\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
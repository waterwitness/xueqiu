package com.bairuitech.anychat;

import android.content.Context;
import android.media.AudioRecord;
import android.media.AudioTrack;
import android.util.Log;

public final class a
{
  AudioTrack a = null;
  AudioRecord b = null;
  b c = null;
  boolean d = false;
  boolean e = false;
  c f = null;
  boolean g = false;
  boolean h = false;
  public Context i = null;
  private int j = 0;
  private int k = 0;
  private int l = 0;
  private int m = 2;
  
  public final int a(int paramInt)
  {
    int i1 = 3;
    if (this.a != null) {
      return 0;
    }
    this.l = paramInt;
    Log.d("ANYCHAT", "InitAudioPlayer, profile: " + paramInt);
    int n;
    if (paramInt == 1)
    {
      paramInt = 16000;
      n = 2;
    }
    try
    {
      this.e = false;
      this.j = AudioTrack.getMinBufferSize(paramInt, n, 2);
      if (this.m == 2) {}
      for (;;)
      {
        this.a = new AudioTrack(i1, paramInt, n, 2, this.j, 1);
        if (this.c == null)
        {
          this.d = false;
          this.c = new b(this);
          this.c.start();
        }
        Log.d("ANYCHAT", "mMinPlayBufSize = " + this.j);
        return 0;
        if (paramInt == 2)
        {
          paramInt = 44100;
          n = 3;
          break;
        }
        return -1;
        i1 = 0;
      }
      return -1;
    }
    catch (Exception localException) {}
  }
  
  public final int b(int paramInt)
  {
    int n = 2;
    if (this.b != null) {
      return 0;
    }
    Log.d("ANYCHAT", "InitAudioRecorder, profile: " + paramInt);
    if (paramInt == 1) {
      paramInt = 16000;
    }
    for (;;)
    {
      try
      {
        this.h = false;
        this.k = AudioRecord.getMinBufferSize(paramInt, n, 2);
        this.b = new AudioRecord(1, paramInt, n, 2, this.k);
        AnyChatCoreSDK.SetInputAudioFormat(this.b.getChannelCount(), this.b.getSampleRate(), 16, 0);
        if (this.f == null)
        {
          this.g = false;
          this.f = new c(this);
          this.f.start();
        }
        Log.d("ANYCHAT", "mMinRecordBufSize = " + this.k);
        return 0;
      }
      catch (Exception localException) {}
      if (paramInt == 2)
      {
        paramInt = 44100;
        n = 3;
      }
      else
      {
        return -1;
      }
    }
    return -1;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\bairuitech\anychat\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
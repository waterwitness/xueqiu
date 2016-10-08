package org.webrtc.voiceengine;

import android.content.Context;
import android.media.AudioManager;
import android.media.AudioTrack;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Environment;
import android.os.Process;
import com.pingan.a.a.c;
import com.pingan.a.a.e;
import java.io.File;
import java.nio.ByteBuffer;
import java.util.concurrent.locks.ReentrantLock;

class WebRtcAudioTrack
{
  private AudioManager _audioManager;
  private AudioTrack _audioTrack = null;
  private int _bufferedPlaySamples = 0;
  private Context _context;
  private boolean _doPlayInit = true;
  private boolean _doRecInit = true;
  private boolean _isPlaying = false;
  private boolean _isRecording = false;
  private ByteBuffer _playBuffer;
  private final ReentrantLock _playLock = new ReentrantLock();
  private int _playPosition = 0;
  private byte[] _tempBufPlay;
  private boolean byte2FileSwitch = false;
  private File file = new File(Environment.getExternalStorageDirectory().getPath() + "/PinganSDK/play.pcm");
  final String logTag = "WebRTC AD java";
  
  WebRtcAudioTrack()
  {
    try
    {
      this._playBuffer = ByteBuffer.allocateDirect(960);
      this._tempBufPlay = new byte['π'];
      return;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        DoLog(localException.getMessage());
      }
    }
  }
  
  private void DoLog(String paramString)
  {
    e.a("WebRTC AD java", paramString);
  }
  
  private void DoLogErr(String paramString)
  {
    e.d("WebRTC AD java", paramString);
  }
  
  private int GetPlayoutVolume()
  {
    if ((this._audioManager == null) && (this._context != null)) {
      this._audioManager = ((AudioManager)this._context.getSystemService("audio"));
    }
    int i = -1;
    if (this._audioManager != null) {
      i = this._audioManager.getStreamVolume(3);
    }
    return i;
  }
  
  private int InitPlayback(int paramInt)
  {
    int j = AudioTrack.getMinBufferSize(paramInt, 4, 2);
    int i = j;
    if (j < 6000) {
      i = j * 2;
    }
    this._bufferedPlaySamples = 0;
    if (this._audioTrack != null)
    {
      this._audioTrack.release();
      this._audioTrack = null;
    }
    try
    {
      this._audioTrack = new AudioTrack(3, paramInt, 4, 2, i, 1);
      if (this._audioTrack.getState() != 1) {
        return -1;
      }
    }
    catch (Exception localException)
    {
      DoLog(localException.getMessage());
      return -1;
    }
    if ((this._audioManager == null) && (this._context != null)) {
      this._audioManager = ((AudioManager)this._context.getSystemService("audio"));
    }
    if (this._audioManager == null) {
      return 0;
    }
    return this._audioManager.getStreamMaxVolume(3);
  }
  
  private int PlayAudio(int paramInt)
  {
    int i = 0;
    this._playLock.lock();
    for (;;)
    {
      try
      {
        Object localObject1 = this._audioTrack;
        if (localObject1 == null) {
          return -2;
        }
        boolean bool = this._doPlayInit;
        if (bool) {}
        try
        {
          Process.setThreadPriority(-19);
          this._doPlayInit = false;
          this._playBuffer.get(this._tempBufPlay);
          int j = this._audioTrack.write(this._tempBufPlay, 0, paramInt);
          this._playBuffer.rewind();
          if (this.byte2FileSwitch)
          {
            localObject1 = new byte[paramInt];
            if (i >= paramInt) {
              c.a((byte[])localObject1, this.file);
            }
          }
          else
          {
            this._bufferedPlaySamples += (j >> 1);
            i = this._audioTrack.getPlaybackHeadPosition();
            if (i < this._playPosition) {
              this._playPosition = 0;
            }
            this._bufferedPlaySamples -= i - this._playPosition;
            this._playPosition = i;
            if (j == paramInt) {
              break;
            }
            return -1;
          }
        }
        catch (Exception localException)
        {
          DoLog("Set play thread priority failed: " + localException.getMessage());
          continue;
        }
        localObject2[i] = this._tempBufPlay[i];
      }
      finally
      {
        this._playLock.unlock();
      }
      i += 1;
    }
    this._playLock.unlock();
    return this._bufferedPlaySamples;
  }
  
  private int SetPlayoutSpeaker(boolean paramBoolean)
  {
    if ((this._audioManager == null) && (this._context != null)) {
      this._audioManager = ((AudioManager)this._context.getSystemService("audio"));
    }
    if (this._audioManager == null)
    {
      DoLogErr("Could not change audio routing - no audio manager");
      return -1;
    }
    int i = Build.VERSION.SDK_INT;
    if ((3 == i) || (4 == i)) {
      if (paramBoolean) {
        this._audioManager.setMode(0);
      }
    }
    for (;;)
    {
      return 0;
      this._audioManager.setMode(2);
      continue;
      if (((Build.BRAND.equals("Samsung")) || (Build.BRAND.equals("samsung"))) && ((5 == i) || (6 == i) || (7 == i)))
      {
        if (paramBoolean) {
          this._audioManager.setMode(2);
        }
      }
      else
      {
        this._audioManager.setSpeakerphoneOn(paramBoolean);
        continue;
      }
      this._audioManager.setSpeakerphoneOn(paramBoolean);
      this._audioManager.setMode(0);
    }
  }
  
  private int SetPlayoutVolume(int paramInt)
  {
    if ((this._audioManager == null) && (this._context != null)) {
      this._audioManager = ((AudioManager)this._context.getSystemService("audio"));
    }
    int i = -1;
    if (this._audioManager != null)
    {
      this._audioManager.setStreamVolume(3, paramInt, 0);
      i = 0;
    }
    return i;
  }
  
  private int StartPlayback()
  {
    try
    {
      this._audioTrack.play();
      this._isPlaying = true;
      return 0;
    }
    catch (IllegalStateException localIllegalStateException)
    {
      localIllegalStateException.printStackTrace();
    }
    return -1;
  }
  
  /* Error */
  private int StopPlayback()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 79	org/webrtc/voiceengine/WebRtcAudioTrack:_playLock	Ljava/util/concurrent/locks/ReentrantLock;
    //   4: invokevirtual 165	java/util/concurrent/locks/ReentrantLock:lock	()V
    //   7: aload_0
    //   8: getfield 74	org/webrtc/voiceengine/WebRtcAudioTrack:_audioTrack	Landroid/media/AudioTrack;
    //   11: invokevirtual 245	android/media/AudioTrack:getPlayState	()I
    //   14: istore_2
    //   15: iload_2
    //   16: iconst_3
    //   17: if_icmpne +17 -> 34
    //   20: aload_0
    //   21: getfield 74	org/webrtc/voiceengine/WebRtcAudioTrack:_audioTrack	Landroid/media/AudioTrack;
    //   24: invokevirtual 248	android/media/AudioTrack:stop	()V
    //   27: aload_0
    //   28: getfield 74	org/webrtc/voiceengine/WebRtcAudioTrack:_audioTrack	Landroid/media/AudioTrack;
    //   31: invokevirtual 251	android/media/AudioTrack:flush	()V
    //   34: aload_0
    //   35: getfield 74	org/webrtc/voiceengine/WebRtcAudioTrack:_audioTrack	Landroid/media/AudioTrack;
    //   38: invokevirtual 152	android/media/AudioTrack:release	()V
    //   41: aload_0
    //   42: aconst_null
    //   43: putfield 74	org/webrtc/voiceengine/WebRtcAudioTrack:_audioTrack	Landroid/media/AudioTrack;
    //   46: aload_0
    //   47: iconst_1
    //   48: putfield 81	org/webrtc/voiceengine/WebRtcAudioTrack:_doPlayInit	Z
    //   51: aload_0
    //   52: getfield 79	org/webrtc/voiceengine/WebRtcAudioTrack:_playLock	Ljava/util/concurrent/locks/ReentrantLock;
    //   55: invokevirtual 168	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   58: aload_0
    //   59: iconst_0
    //   60: putfield 87	org/webrtc/voiceengine/WebRtcAudioTrack:_isPlaying	Z
    //   63: iconst_0
    //   64: ireturn
    //   65: astore_1
    //   66: aload_1
    //   67: invokevirtual 241	java/lang/IllegalStateException:printStackTrace	()V
    //   70: aload_0
    //   71: iconst_1
    //   72: putfield 81	org/webrtc/voiceengine/WebRtcAudioTrack:_doPlayInit	Z
    //   75: aload_0
    //   76: getfield 79	org/webrtc/voiceengine/WebRtcAudioTrack:_playLock	Ljava/util/concurrent/locks/ReentrantLock;
    //   79: invokevirtual 168	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   82: iconst_m1
    //   83: ireturn
    //   84: astore_1
    //   85: aload_0
    //   86: iconst_1
    //   87: putfield 81	org/webrtc/voiceengine/WebRtcAudioTrack:_doPlayInit	Z
    //   90: aload_0
    //   91: getfield 79	org/webrtc/voiceengine/WebRtcAudioTrack:_playLock	Ljava/util/concurrent/locks/ReentrantLock;
    //   94: invokevirtual 168	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   97: aload_1
    //   98: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	99	0	this	WebRtcAudioTrack
    //   65	2	1	localIllegalStateException	IllegalStateException
    //   84	14	1	localObject	Object
    //   14	4	2	i	int
    // Exception table:
    //   from	to	target	type
    //   20	27	65	java/lang/IllegalStateException
    //   7	15	84	finally
    //   20	27	84	finally
    //   27	34	84	finally
    //   34	46	84	finally
    //   66	70	84	finally
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\webrtc\voiceengine\WebRtcAudioTrack.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
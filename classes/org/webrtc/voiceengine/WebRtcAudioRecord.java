package org.webrtc.voiceengine;

import android.content.Context;
import android.media.AudioRecord;
import android.os.Environment;
import android.os.Process;
import android.util.Log;
import com.letpower.engine.LDEngineDemo;
import com.pingan.a.a.c;
import com.pingan.a.a.e;
import com.pingan.main.IAVCallStatusListener;
import java.io.File;
import java.nio.ByteBuffer;
import java.util.concurrent.locks.ReentrantLock;

class WebRtcAudioRecord
{
  private static File file = new File(Environment.getExternalStorageDirectory() + "/PinganSDK/record.pcm");
  private static IAVCallStatusListener mAvCallStatusListener = null;
  private final String TAG = "WebRtcAudioRecord";
  private AudioRecord _audioRecord = null;
  private int _bufferedRecSamples = 0;
  private Context _context;
  private boolean _doRecInit = true;
  private boolean _isRecording = false;
  private ByteBuffer _recBuffer;
  private final ReentrantLock _recLock = new ReentrantLock();
  private byte[] _tempBufRec;
  private boolean byte2FileSwitch = false;
  private boolean isCheckedRecord = false;
  final String logTag = "WebRTC AD java";
  private long maxWait = 10L;
  private long wait = 0L;
  
  WebRtcAudioRecord()
  {
    try
    {
      this._recBuffer = ByteBuffer.allocateDirect(960);
      this._tempBufRec = new byte['π'];
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
    e.a("WebRtcAudioRecord", paramString);
  }
  
  private void DoLogErr(String paramString)
  {
    e.d("WebRtcAudioRecord", paramString);
  }
  
  private int InitRecording(int paramInt1, int paramInt2)
  {
    e.a("WebRtcAudioRecord", "InitRecording---audioSource=" + paramInt1 + ",sampleRate=" + paramInt2);
    paramInt1 = AudioRecord.getMinBufferSize(paramInt2, 16, 2);
    this._bufferedRecSamples = (paramInt2 / 200);
    if (this._audioRecord != null)
    {
      this._audioRecord.release();
      this._audioRecord = null;
    }
    try
    {
      this._audioRecord = new AudioRecord(7, paramInt2, 16, 2, paramInt1 * 2);
      if (this._audioRecord.getState() != 1) {
        return -1;
      }
    }
    catch (Exception localException)
    {
      DoLog(localException.getMessage());
      return -1;
    }
    return this._bufferedRecSamples;
  }
  
  private int RecordAudio(int paramInt)
  {
    long l2 = 0L;
    int j = 0;
    this._recLock.lock();
    for (;;)
    {
      try
      {
        localObject1 = this._audioRecord;
        if (localObject1 == null) {
          return -2;
        }
        boolean bool = this._doRecInit;
        if (!bool) {}
      }
      catch (Exception localException2)
      {
        Object localObject1;
        int k;
        int i;
        long l1;
        double d;
        DoLogErr("RecordAudio try failed: " + localException2.getMessage());
        return this._bufferedRecSamples;
        localException2[i] = this._tempBufRec[i];
        i += 1;
        continue;
        l1 += this._tempBufRec[i] * this._tempBufRec[i];
        i += 1;
        continue;
        if (d <= 0.0D) {
          continue;
        }
        this.isCheckedRecord = false;
        continue;
      }
      finally
      {
        this._recLock.unlock();
      }
      try
      {
        Process.setThreadPriority(-19);
        this._doRecInit = false;
        this._recBuffer.rewind();
        k = this._audioRecord.read(this._tempBufRec, 0, paramInt);
        this._recBuffer.put(this._tempBufRec);
        i = j;
        l1 = l2;
        if (this.byte2FileSwitch)
        {
          localObject1 = new byte[paramInt];
          i = 0;
          if (i >= paramInt)
          {
            c.a((byte[])localObject1, file);
            l1 = l2;
            i = j;
          }
        }
        else
        {
          if (i < this._tempBufRec.length) {
            continue;
          }
          d = Math.log10(l1 / k) * 10.0D;
          this.wait += 1L;
          if (this.wait <= this.maxWait) {
            break label380;
          }
          this.wait = 0L;
          if ((d > 0.0D) || (this.isCheckedRecord)) {
            continue;
          }
          Log.d("volume", "byte平方和=0");
          this.isCheckedRecord = true;
          outputAVCallStatus(20, "PERMISSION_AUDIO_RECORD");
          if (k == paramInt) {
            break label380;
          }
          this._recLock.unlock();
          return -1;
        }
      }
      catch (Exception localException1)
      {
        DoLog("Set rec thread priority failed: " + localException1.getMessage());
      }
    }
    for (;;)
    {
      label380:
      this._recLock.unlock();
    }
  }
  
  private int StartRecording()
  {
    try
    {
      this.isCheckedRecord = false;
      this._audioRecord.startRecording();
      this._isRecording = true;
      return 0;
    }
    catch (IllegalStateException localIllegalStateException)
    {
      localIllegalStateException.printStackTrace();
    }
    return -1;
  }
  
  /* Error */
  private int StopRecording()
  {
    // Byte code:
    //   0: ldc 72
    //   2: ldc -32
    //   4: invokestatic 123	com/pingan/a/a/e:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   7: aload_0
    //   8: getfield 83	org/webrtc/voiceengine/WebRtcAudioRecord:_recLock	Ljava/util/concurrent/locks/ReentrantLock;
    //   11: invokevirtual 158	java/util/concurrent/locks/ReentrantLock:lock	()V
    //   14: aload_0
    //   15: getfield 78	org/webrtc/voiceengine/WebRtcAudioRecord:_audioRecord	Landroid/media/AudioRecord;
    //   18: invokevirtual 227	android/media/AudioRecord:getRecordingState	()I
    //   21: istore_2
    //   22: iload_2
    //   23: iconst_3
    //   24: if_icmpne +10 -> 34
    //   27: aload_0
    //   28: getfield 78	org/webrtc/voiceengine/WebRtcAudioRecord:_audioRecord	Landroid/media/AudioRecord;
    //   31: invokevirtual 230	android/media/AudioRecord:stop	()V
    //   34: aload_0
    //   35: getfield 78	org/webrtc/voiceengine/WebRtcAudioRecord:_audioRecord	Landroid/media/AudioRecord;
    //   38: invokevirtual 146	android/media/AudioRecord:release	()V
    //   41: aload_0
    //   42: aconst_null
    //   43: putfield 78	org/webrtc/voiceengine/WebRtcAudioRecord:_audioRecord	Landroid/media/AudioRecord;
    //   46: aload_0
    //   47: iconst_1
    //   48: putfield 85	org/webrtc/voiceengine/WebRtcAudioRecord:_doRecInit	Z
    //   51: aload_0
    //   52: getfield 83	org/webrtc/voiceengine/WebRtcAudioRecord:_recLock	Ljava/util/concurrent/locks/ReentrantLock;
    //   55: invokevirtual 161	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   58: aload_0
    //   59: iconst_0
    //   60: putfield 87	org/webrtc/voiceengine/WebRtcAudioRecord:_isRecording	Z
    //   63: iconst_0
    //   64: ireturn
    //   65: astore_1
    //   66: ldc 72
    //   68: ldc -24
    //   70: invokestatic 127	com/pingan/a/a/e:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   73: aload_1
    //   74: invokevirtual 222	java/lang/IllegalStateException:printStackTrace	()V
    //   77: aload_0
    //   78: iconst_1
    //   79: putfield 85	org/webrtc/voiceengine/WebRtcAudioRecord:_doRecInit	Z
    //   82: aload_0
    //   83: getfield 83	org/webrtc/voiceengine/WebRtcAudioRecord:_recLock	Ljava/util/concurrent/locks/ReentrantLock;
    //   86: invokevirtual 161	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   89: iconst_m1
    //   90: ireturn
    //   91: astore_1
    //   92: aload_0
    //   93: iconst_1
    //   94: putfield 85	org/webrtc/voiceengine/WebRtcAudioRecord:_doRecInit	Z
    //   97: aload_0
    //   98: getfield 83	org/webrtc/voiceengine/WebRtcAudioRecord:_recLock	Ljava/util/concurrent/locks/ReentrantLock;
    //   101: invokevirtual 161	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   104: aload_1
    //   105: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	106	0	this	WebRtcAudioRecord
    //   65	9	1	localIllegalStateException	IllegalStateException
    //   91	14	1	localObject	Object
    //   21	4	2	i	int
    // Exception table:
    //   from	to	target	type
    //   27	34	65	java/lang/IllegalStateException
    //   14	22	91	finally
    //   27	34	91	finally
    //   34	46	91	finally
    //   66	77	91	finally
  }
  
  private void outputAVCallStatus(int paramInt, Object paramObject)
  {
    mAvCallStatusListener = LDEngineDemo.getIAVCallStatusListener();
    e.a("PASDK", "WebRtcAudioRecordoutputAVCallStatus mAvCallStatusListener:" + mAvCallStatusListener + "--status:" + paramInt + "--obj:" + paramObject);
    if (mAvCallStatusListener != null)
    {
      e.a("PASDK", "WebRtcAudioRecordoutputAVCallStatus mAvCallStatusListener ==null");
      mAvCallStatusListener.outputAVCallStatus(paramInt, paramObject);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\webrtc\voiceengine\WebRtcAudioRecord.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */
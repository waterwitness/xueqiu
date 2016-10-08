.class Lorg/webrtc/voiceengine/WebRtcAudioRecord;
.super Ljava/lang/Object;
.source "WebRtcAudioRecord.java"


# static fields
.field private static file:Ljava/io/File;

.field private static mAvCallStatusListener:Lcom/pingan/main/IAVCallStatusListener;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private _audioRecord:Landroid/media/AudioRecord;

.field private _bufferedRecSamples:I

.field private _context:Landroid/content/Context;

.field private _doRecInit:Z

.field private _isRecording:Z

.field private _recBuffer:Ljava/nio/ByteBuffer;

.field private final _recLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private _tempBufRec:[B

.field private byte2FileSwitch:Z

.field private isCheckedRecord:Z

.field final logTag:Ljava/lang/String;

.field private maxWait:J

.field private wait:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 35
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/PinganSDK/record.pcm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->file:Ljava/io/File;

    .line 37
    const/4 v0, 0x0

    sput-object v0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->mAvCallStatusListener:Lcom/pingan/main/IAVCallStatusListener;

    return-void
.end method

.method constructor <init>()V
    .locals 4

    .prologue
    const/16 v3, 0x3c0

    const/4 v2, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string v0, "WebRtcAudioRecord"

    iput-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->TAG:Ljava/lang/String;

    .line 33
    iput-boolean v2, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->byte2FileSwitch:Z

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_audioRecord:Landroid/media/AudioRecord;

    .line 46
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_doRecInit:Z

    .line 49
    iput-boolean v2, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_isRecording:Z

    .line 51
    iput v2, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_bufferedRecSamples:I

    .line 163
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->wait:J

    .line 164
    const-wide/16 v0, 0xa

    iput-wide v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->maxWait:J

    .line 165
    iput-boolean v2, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->isCheckedRecord:Z

    .line 244
    const-string v0, "WebRTC AD java"

    iput-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->logTag:Ljava/lang/String;

    .line 55
    const/16 v0, 0x3c0

    :try_start_0
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_recBuffer:Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :goto_0
    new-array v0, v3, [B

    iput-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_tempBufRec:[B

    .line 62
    return-void

    .line 57
    :catch_0
    move-exception v0

    .line 58
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->DoLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private DoLog(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 247
    const-string v0, "WebRtcAudioRecord"

    invoke-static {v0, p1}, Lcom/pingan/a/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    return-void
.end method

.method private DoLogErr(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 251
    const-string v0, "WebRtcAudioRecord"

    invoke-static {v0, p1}, Lcom/pingan/a/a/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    return-void
.end method

.method private InitRecording(II)I
    .locals 7

    .prologue
    const/16 v4, 0x10

    const/4 v3, 0x2

    const/4 v6, -0x1

    .line 66
    const-string v0, "WebRtcAudioRecord"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "InitRecording---audioSource="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",sampleRate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pingan/a/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-static {p2, v4, v3}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    .line 77
    mul-int/lit8 v5, v0, 0x2

    .line 80
    div-int/lit16 v0, p2, 0xc8

    iput v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_bufferedRecSamples:I

    .line 84
    iget-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_audioRecord:Landroid/media/AudioRecord;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_audioRecord:Landroid/media/AudioRecord;

    .line 90
    :cond_0
    :try_start_0
    new-instance v0, Landroid/media/AudioRecord;

    .line 91
    const/4 v1, 0x7

    .line 93
    const/16 v3, 0x10

    .line 94
    const/4 v4, 0x2

    move v2, p2

    .line 95
    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    .line 90
    iput-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_audioRecord:Landroid/media/AudioRecord;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    iget-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    move v0, v6

    .line 110
    :goto_0
    return v0

    .line 97
    :catch_0
    move-exception v0

    .line 98
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->DoLog(Ljava/lang/String;)V

    move v0, v6

    .line 99
    goto :goto_0

    .line 110
    :cond_1
    iget v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_bufferedRecSamples:I

    goto :goto_0
.end method

.method private RecordAudio(I)I
    .locals 10

    .prologue
    const-wide/16 v2, 0x0

    const-wide/16 v8, 0x0

    const/4 v0, 0x0

    .line 169
    iget-object v1, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 172
    :try_start_0
    iget-object v1, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_audioRecord:Landroid/media/AudioRecord;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 238
    iget-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 173
    const/4 v0, -0x2

    .line 241
    :goto_0
    return v0

    .line 178
    :cond_0
    :try_start_1
    iget-boolean v1, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_doRecInit:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    .line 181
    const/16 v1, -0x13

    .line 180
    :try_start_2
    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 185
    :goto_1
    const/4 v1, 0x0

    :try_start_3
    iput-boolean v1, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_doRecInit:Z

    .line 189
    :cond_1
    iget-object v1, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_recBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 190
    iget-object v1, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_audioRecord:Landroid/media/AudioRecord;

    iget-object v4, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_tempBufRec:[B

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5, p1}, Landroid/media/AudioRecord;->read([BII)I

    move-result v4

    .line 192
    iget-object v1, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_recBuffer:Ljava/nio/ByteBuffer;

    iget-object v5, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_tempBufRec:[B

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 194
    iget-boolean v1, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->byte2FileSwitch:Z

    if-eqz v1, :cond_2

    .line 195
    new-array v5, p1, [B

    move v1, v0

    .line 196
    :goto_2
    if-lt v1, p1, :cond_4

    .line 199
    sget-object v1, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->file:Ljava/io/File;

    invoke-static {v5, v1}, Lcom/pingan/a/a/c;->a([BLjava/io/File;)V

    .line 205
    :cond_2
    :goto_3
    iget-object v1, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_tempBufRec:[B

    array-length v1, v1

    if-lt v0, v1, :cond_5

    .line 209
    long-to-double v0, v2

    int-to-double v2, v4

    div-double/2addr v0, v2

    .line 210
    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    invoke-static {v0, v1}, Ljava/lang/Math;->log10(D)D

    move-result-wide v0

    mul-double/2addr v0, v2

    .line 212
    iget-wide v2, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->wait:J

    const-wide/16 v6, 0x1

    add-long/2addr v2, v6

    iput-wide v2, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->wait:J

    .line 213
    iget-wide v2, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->wait:J

    iget-wide v6, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->maxWait:J

    cmp-long v2, v2, v6

    if-lez v2, :cond_7

    .line 214
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->wait:J

    .line 218
    cmpg-double v2, v0, v8

    if-gtz v2, :cond_6

    iget-boolean v2, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->isCheckedRecord:Z

    if-nez v2, :cond_6

    .line 219
    const-string v0, "volume"

    const-string v1, "byte\u5e73\u65b9\u548c=0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->isCheckedRecord:Z

    .line 221
    const/16 v0, 0x14

    const-string v1, "PERMISSION_AUDIO_RECORD"

    invoke-direct {p0, v0, v1}, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->outputAVCallStatus(ILjava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 226
    :cond_3
    :goto_4
    if-eq v4, p1, :cond_7

    .line 238
    iget-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 229
    const/4 v0, -0x1

    goto :goto_0

    .line 182
    :catch_0
    move-exception v1

    .line 183
    :try_start_4
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Set rec thread priority failed: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->DoLog(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    .line 232
    :catch_1
    move-exception v0

    .line 233
    :try_start_5
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RecordAudio try failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->DoLogErr(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 238
    iget-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 241
    :goto_5
    iget v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_bufferedRecSamples:I

    goto/16 :goto_0

    .line 197
    :cond_4
    :try_start_6
    iget-object v6, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_tempBufRec:[B

    aget-byte v6, v6, v1

    aput-byte v6, v5, v1

    .line 196
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .line 206
    :cond_5
    iget-object v1, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_tempBufRec:[B

    aget-byte v1, v1, v0

    iget-object v5, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_tempBufRec:[B

    aget-byte v5, v5, v0

    mul-int/2addr v1, v5

    int-to-long v6, v1

    add-long/2addr v2, v6

    .line 205
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3

    .line 222
    :cond_6
    cmpl-double v0, v0, v8

    if-lez v0, :cond_3

    .line 223
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->isCheckedRecord:Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_4

    .line 235
    :catchall_0
    move-exception v0

    .line 238
    iget-object v1, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 239
    throw v0

    .line 238
    :cond_7
    iget-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_5
.end method

.method private StartRecording()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 117
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->isCheckedRecord:Z

    .line 118
    iget-object v1, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->startRecording()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_isRecording:Z

    .line 126
    :goto_0
    return v0

    .line 121
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 122
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private StopRecording()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x1

    .line 131
    const-string v1, "WebRtcAudioRecord"

    const-string v2, "StopRecording"

    invoke-static {v1, v2}, Lcom/pingan/a/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-object v1, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 135
    :try_start_0
    iget-object v1, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->getRecordingState()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 136
    const/4 v2, 0x3

    .line 135
    if-ne v1, v2, :cond_0

    .line 139
    :try_start_1
    iget-object v1, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->stop()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 148
    :cond_0
    :try_start_2
    iget-object v1, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->release()V

    .line 149
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_audioRecord:Landroid/media/AudioRecord;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 154
    iput-boolean v3, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_doRecInit:Z

    .line 155
    iget-object v1, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 158
    iput-boolean v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_isRecording:Z

    .line 159
    :goto_0
    return v0

    .line 140
    :catch_0
    move-exception v0

    .line 141
    :try_start_3
    const-string v1, "WebRtcAudioRecord"

    const-string v2, "StopRecording---IllegalStateException"

    invoke-static {v1, v2}, Lcom/pingan/a/a/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 154
    iput-boolean v3, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_doRecInit:Z

    .line 155
    iget-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 143
    const/4 v0, -0x1

    goto :goto_0

    .line 151
    :catchall_0
    move-exception v0

    .line 154
    iput-boolean v3, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_doRecInit:Z

    .line 155
    iget-object v1, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 156
    throw v0
.end method

.method private outputAVCallStatus(ILjava/lang/Object;)V
    .locals 3

    .prologue
    .line 255
    invoke-static {}, Lcom/letpower/engine/LDEngineDemo;->getIAVCallStatusListener()Lcom/pingan/main/IAVCallStatusListener;

    move-result-object v0

    sput-object v0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->mAvCallStatusListener:Lcom/pingan/main/IAVCallStatusListener;

    .line 256
    const-string v0, "PASDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "WebRtcAudioRecordoutputAVCallStatus mAvCallStatusListener:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->mAvCallStatusListener:Lcom/pingan/main/IAVCallStatusListener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "--status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "--obj:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pingan/a/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    sget-object v0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->mAvCallStatusListener:Lcom/pingan/main/IAVCallStatusListener;

    if-eqz v0, :cond_0

    .line 258
    const-string v0, "PASDK"

    const-string v1, "WebRtcAudioRecordoutputAVCallStatus mAvCallStatusListener ==null"

    invoke-static {v0, v1}, Lcom/pingan/a/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    sget-object v0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->mAvCallStatusListener:Lcom/pingan/main/IAVCallStatusListener;

    invoke-interface {v0, p1, p2}, Lcom/pingan/main/IAVCallStatusListener;->outputAVCallStatus(ILjava/lang/Object;)V

    .line 261
    :cond_0
    return-void
.end method

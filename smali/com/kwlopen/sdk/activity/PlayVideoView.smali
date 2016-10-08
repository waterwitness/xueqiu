.class public Lcom/kwlopen/sdk/activity/PlayVideoView;
.super Landroid/view/SurfaceView;
.source "PlayVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field public btnStartPlay:Landroid/widget/Button;

.field private context:Lcom/kwlopen/sdk/activity/CaptureVideo;

.field private handler:Landroid/os/Handler;

.field public mediaPlayer:Landroid/media/MediaPlayer;

.field private minute:I

.field private pathString:Ljava/lang/String;

.field private second:I

.field private surfaceHolder:Landroid/view/SurfaceHolder;

.field private timerCount:Ljava/util/Timer;

.field public timerTextView:Landroid/widget/TextView;

.field private videoTimeLong:J

.field private videoTimeString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 133
    new-instance v0, Lcom/kwlopen/sdk/activity/PlayVideoView$1;

    invoke-direct {v0, p0}, Lcom/kwlopen/sdk/activity/PlayVideoView$1;-><init>(Lcom/kwlopen/sdk/activity/PlayVideoView;)V

    iput-object v0, p0, Lcom/kwlopen/sdk/activity/PlayVideoView;->handler:Landroid/os/Handler;

    .line 142
    iput v1, p0, Lcom/kwlopen/sdk/activity/PlayVideoView;->minute:I

    .line 143
    iput v1, p0, Lcom/kwlopen/sdk/activity/PlayVideoView;->second:I

    .line 63
    check-cast p1, Lcom/kwlopen/sdk/activity/CaptureVideo;

    iput-object p1, p0, Lcom/kwlopen/sdk/activity/PlayVideoView;->context:Lcom/kwlopen/sdk/activity/CaptureVideo;

    .line 64
    iput-object p2, p0, Lcom/kwlopen/sdk/activity/PlayVideoView;->pathString:Ljava/lang/String;

    .line 65
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/PlayVideoView;->context:Lcom/kwlopen/sdk/activity/CaptureVideo;

    iget-object v0, v0, Lcom/kwlopen/sdk/activity/CaptureVideo;->timerTextView:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kwlopen/sdk/activity/PlayVideoView;->timerTextView:Landroid/widget/TextView;

    .line 66
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/PlayVideoView;->context:Lcom/kwlopen/sdk/activity/CaptureVideo;

    iget-object v0, v0, Lcom/kwlopen/sdk/activity/CaptureVideo;->btnStartPlay:Landroid/widget/Button;

    iput-object v0, p0, Lcom/kwlopen/sdk/activity/PlayVideoView;->btnStartPlay:Landroid/widget/Button;

    .line 67
    invoke-virtual {p0}, Lcom/kwlopen/sdk/activity/PlayVideoView;->initViews()V

    .line 68
    return-void
.end method

.method static synthetic access$000(Lcom/kwlopen/sdk/activity/PlayVideoView;)I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/kwlopen/sdk/activity/PlayVideoView;->second:I

    return v0
.end method

.method static synthetic access$008(Lcom/kwlopen/sdk/activity/PlayVideoView;)I
    .locals 2

    .prologue
    .line 24
    iget v0, p0, Lcom/kwlopen/sdk/activity/PlayVideoView;->second:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/kwlopen/sdk/activity/PlayVideoView;->second:I

    return v0
.end method

.method static synthetic access$100(Lcom/kwlopen/sdk/activity/PlayVideoView;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/PlayVideoView;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method private cancelTimer()V
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/PlayVideoView;->timerCount:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/PlayVideoView;->timerCount:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 347
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kwlopen/sdk/activity/PlayVideoView;->timerCount:Ljava/util/Timer;

    .line 349
    :cond_0
    return-void
.end method

.method private startTimer()V
    .locals 6

    .prologue
    const-wide/16 v2, 0x3e8

    .line 352
    invoke-direct {p0}, Lcom/kwlopen/sdk/activity/PlayVideoView;->cancelTimer()V

    .line 353
    const/4 v0, 0x0

    iput v0, p0, Lcom/kwlopen/sdk/activity/PlayVideoView;->second:I

    .line 354
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/kwlopen/sdk/activity/PlayVideoView;->timerCount:Ljava/util/Timer;

    .line 355
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/PlayVideoView;->timerCount:Ljava/util/Timer;

    new-instance v1, Lcom/kwlopen/sdk/activity/PlayVideoView$2;

    invoke-direct {v1, p0}, Lcom/kwlopen/sdk/activity/PlayVideoView$2;-><init>(Lcom/kwlopen/sdk/activity/PlayVideoView;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 369
    return-void
.end method


# virtual methods
.method public format(I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 149
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 150
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 151
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "0"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 153
    :cond_0
    return-object v0
.end method

.method public getShowTime(J)Ljava/lang/String;
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    .prologue
    .line 281
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 282
    invoke-virtual {v1, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 285
    const-wide/32 v2, 0xea60

    div-long v2, p1, v2

    const-wide/16 v4, 0x3c

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    .line 286
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "mm:ss"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 290
    :goto_0
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 288
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "mm:ss"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public initViews()V
    .locals 2

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/kwlopen/sdk/activity/PlayVideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/kwlopen/sdk/activity/PlayVideoView;->surfaceHolder:Landroid/view/SurfaceHolder;

    .line 74
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/PlayVideoView;->surfaceHolder:Landroid/view/SurfaceHolder;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 76
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/PlayVideoView;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 78
    return-void
.end method

.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 3

    .prologue
    .line 194
    const-string v0, "text"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onBufferingUpdate-->"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    .prologue
    .line 183
    invoke-direct {p0}, Lcom/kwlopen/sdk/activity/PlayVideoView;->cancelTimer()V

    .line 184
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/PlayVideoView;->context:Lcom/kwlopen/sdk/activity/CaptureVideo;

    iget-object v0, v0, Lcom/kwlopen/sdk/activity/CaptureVideo;->btnStartPlay:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 186
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 208
    sparse-switch p2, :sswitch_data_0

    .line 221
    :goto_0
    sparse-switch p3, :sswitch_data_1

    .line 244
    :goto_1
    return v2

    .line 210
    :sswitch_0
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/PlayVideoView;->context:Lcom/kwlopen/sdk/activity/CaptureVideo;

    const-string v1, "MEDIA_ERROR_UNKNOWN"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 211
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 214
    :sswitch_1
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/PlayVideoView;->context:Lcom/kwlopen/sdk/activity/CaptureVideo;

    const-string v1, "MEDIA_ERROR_SERVER_DIED"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 215
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 223
    :sswitch_2
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/PlayVideoView;->context:Lcom/kwlopen/sdk/activity/CaptureVideo;

    const-string v1, "MEDIA_ERROR_IO"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 224
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 227
    :sswitch_3
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/PlayVideoView;->context:Lcom/kwlopen/sdk/activity/CaptureVideo;

    const-string v1, "MEDIA_ERROR_MALFORMED"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 228
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 231
    :sswitch_4
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/PlayVideoView;->context:Lcom/kwlopen/sdk/activity/CaptureVideo;

    const-string v1, "MEDIA_ERROR_NOT_VALID_FOR_PROGRESSIVE_PLAYBACK"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 233
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 236
    :sswitch_5
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/PlayVideoView;->context:Lcom/kwlopen/sdk/activity/CaptureVideo;

    const-string v1, "MEDIA_ERROR_TIMED_OUT"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 237
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 240
    :sswitch_6
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/PlayVideoView;->context:Lcom/kwlopen/sdk/activity/CaptureVideo;

    const-string v1, "MEDIA_ERROR_UNSUPPORTED"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 241
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 208
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x64 -> :sswitch_1
    .end sparse-switch

    .line 221
    :sswitch_data_1
    .sparse-switch
        -0x3f2 -> :sswitch_6
        -0x3ef -> :sswitch_3
        -0x3ec -> :sswitch_2
        -0x6e -> :sswitch_5
        0xc8 -> :sswitch_4
    .end sparse-switch
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 120
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/PlayVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/kwlopen/sdk/activity/PlayVideoView;->videoTimeLong:J

    .line 121
    iget-wide v0, p0, Lcom/kwlopen/sdk/activity/PlayVideoView;->videoTimeLong:J

    invoke-virtual {p0, v0, v1}, Lcom/kwlopen/sdk/activity/PlayVideoView;->getShowTime(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kwlopen/sdk/activity/PlayVideoView;->videoTimeString:Ljava/lang/String;

    .line 122
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/PlayVideoView;->timerTextView:Landroid/widget/TextView;

    const-string v1, "00:00"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/PlayVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 124
    invoke-direct {p0}, Lcom/kwlopen/sdk/activity/PlayVideoView;->startTimer()V

    .line 126
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/PlayVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/kwlopen/sdk/activity/PlayVideoView;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 128
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/PlayVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 129
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/PlayVideoView;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->setKeepScreenOn(Z)V

    .line 131
    return-void
.end method

.method public onRelease()V
    .locals 1

    .prologue
    .line 252
    :try_start_0
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/PlayVideoView;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {p0, v0}, Lcom/kwlopen/sdk/activity/PlayVideoView;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 253
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/PlayVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 256
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/PlayVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/PlayVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 258
    invoke-direct {p0}, Lcom/kwlopen/sdk/activity/PlayVideoView;->cancelTimer()V

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/PlayVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 262
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kwlopen/sdk/activity/PlayVideoView;->mediaPlayer:Landroid/media/MediaPlayer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    :cond_1
    :goto_0
    return-void

    .line 267
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public paserTime(I)Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0xa

    .line 322
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 326
    div-int/lit16 v0, p1, 0xe10

    if-ge v0, v4, :cond_0

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "0"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    div-int/lit16 v2, p1, 0xe10

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 335
    :goto_0
    rem-int/lit16 v0, p1, 0xe10

    div-int/lit8 v0, v0, 0x3c

    .line 336
    if-ge v0, v4, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "0"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 338
    rem-int/lit16 v0, p1, 0xe10

    rem-int/lit8 v0, v0, 0x3c

    .line 339
    if-ge v0, v4, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "0"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 341
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 330
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit16 v2, p1, 0xe10

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 336
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 339
    :cond_2
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method public playVideo()V
    .locals 3

    .prologue
    .line 85
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/PlayVideoView;->btnStartPlay:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 87
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/kwlopen/sdk/activity/PlayVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 89
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/PlayVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 91
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/PlayVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 93
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/PlayVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 95
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/PlayVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 97
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/PlayVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 99
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/PlayVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 101
    :try_start_0
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/PlayVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/kwlopen/sdk/activity/PlayVideoView;->pathString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/PlayVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :goto_0
    return-void

    .line 106
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 107
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/PlayVideoView;->context:Lcom/kwlopen/sdk/activity/CaptureVideo;

    const-string v1, "\u52a0\u8f7d\u89c6\u9891\u9519\u8bef\uff01"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public startPlay()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 157
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/PlayVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/PlayVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 162
    iput v1, p0, Lcom/kwlopen/sdk/activity/PlayVideoView;->minute:I

    .line 163
    iput v1, p0, Lcom/kwlopen/sdk/activity/PlayVideoView;->second:I

    .line 164
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/PlayVideoView;->timerTextView:Landroid/widget/TextView;

    const-string v1, "00:00"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/PlayVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 167
    invoke-direct {p0}, Lcom/kwlopen/sdk/activity/PlayVideoView;->startTimer()V

    .line 171
    :cond_0
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .prologue
    .line 306
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0

    .prologue
    .line 298
    invoke-virtual {p0}, Lcom/kwlopen/sdk/activity/PlayVideoView;->playVideo()V

    .line 299
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/PlayVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/PlayVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 313
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kwlopen/sdk/activity/PlayVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 314
    invoke-direct {p0}, Lcom/kwlopen/sdk/activity/PlayVideoView;->cancelTimer()V

    .line 318
    :cond_0
    return-void
.end method

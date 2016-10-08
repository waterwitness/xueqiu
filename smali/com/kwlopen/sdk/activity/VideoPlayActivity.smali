.class public Lcom/kwlopen/sdk/activity/VideoPlayActivity;
.super Landroid/app/Activity;
.source "VideoPlayActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# instance fields
.field private backBtn:Landroid/widget/ImageView;

.field private currentPlayPosition:I

.field private handler:Landroid/os/Handler;

.field private mediaPlayer:Landroid/media/MediaPlayer;

.field private pathString:Ljava/lang/String;

.field private progressBar:Landroid/widget/ProgressBar;

.field private repeatLayout:Landroid/widget/LinearLayout;

.field private startButton:Landroid/widget/Button;

.field private surfaceHolder:Landroid/view/SurfaceHolder;

.field private surfaceView:Landroid/view/SurfaceView;

.field private timer:Ljava/util/Timer;

.field public timerTextView:Landroid/widget/TextView;

.field private uploadLayout:Landroid/widget/LinearLayout;

.field private videoTimeLong:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 71
    const-string v0, ""

    iput-object v0, p0, Lcom/kwlopen/sdk/activity/VideoPlayActivity;->pathString:Ljava/lang/String;

    .line 87
    new-instance v0, Lcom/kwlopen/sdk/activity/VideoPlayActivity$1;

    invoke-direct {v0, p0}, Lcom/kwlopen/sdk/activity/VideoPlayActivity$1;-><init>(Lcom/kwlopen/sdk/activity/VideoPlayActivity;)V

    iput-object v0, p0, Lcom/kwlopen/sdk/activity/VideoPlayActivity;->handler:Landroid/os/Handler;

    .line 133
    return-void
.end method

.method static synthetic access$000(Lcom/kwlopen/sdk/activity/VideoPlayActivity;)Landroid/media/MediaPlayer;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoPlayActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$002(Lcom/kwlopen/sdk/activity/VideoPlayActivity;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/kwlopen/sdk/activity/VideoPlayActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic access$200(Lcom/kwlopen/sdk/activity/VideoPlayActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoPlayActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/kwlopen/sdk/activity/VideoPlayActivity;)Ljava/util/Timer;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoPlayActivity;->timer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$302(Lcom/kwlopen/sdk/activity/VideoPlayActivity;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/kwlopen/sdk/activity/VideoPlayActivity;->timer:Ljava/util/Timer;

    return-object p1
.end method

.method private showDialog()V
    .locals 3

    .prologue
    .line 427
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u9000\u51fa"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u786e\u5b9a\u9000\u51fa\u89c6\u9891\u5f55\u5236\u5417\uff1f"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u786e\u5b9a"

    new-instance v2, Lcom/kwlopen/sdk/activity/VideoPlayActivity$4;

    invoke-direct {v2, p0}, Lcom/kwlopen/sdk/activity/VideoPlayActivity$4;-><init>(Lcom/kwlopen/sdk/activity/VideoPlayActivity;)V

    .line 428
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u53d6\u6d88"

    new-instance v2, Lcom/kwlopen/sdk/activity/VideoPlayActivity$3;

    invoke-direct {v2, p0}, Lcom/kwlopen/sdk/activity/VideoPlayActivity$3;-><init>(Lcom/kwlopen/sdk/activity/VideoPlayActivity;)V

    .line 436
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 442
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 443
    return-void
.end method


# virtual methods
.method public format(I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 496
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 497
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 498
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "0"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 500
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
    .line 480
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 481
    invoke-virtual {v1, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 484
    const-wide/32 v2, 0xea60

    div-long v2, p1, v2

    const-wide/16 v4, 0x3c

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    .line 485
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "hh:mm:ss"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 489
    :goto_0
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 487
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "mm:ss"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public initViews()V
    .locals 3

    .prologue
    .line 111
    const-string v0, "arc_hf_video_timer_tv"

    invoke-static {p0, v0}, Lcom/b/a/a/f;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/kwlopen/sdk/activity/VideoPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kwlopen/sdk/activity/VideoPlayActivity;->timerTextView:Landroid/widget/TextView;

    .line 112
    const-string v0, "start_play_btn"

    invoke-static {p0, v0}, Lcom/b/a/a/f;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/kwlopen/sdk/activity/VideoPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kwlopen/sdk/activity/VideoPlayActivity;->startButton:Landroid/widget/Button;

    .line 113
    const-string v0, "surfaceView"

    invoke-static {p0, v0}, Lcom/b/a/a/f;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/kwlopen/sdk/activity/VideoPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Lcom/kwlopen/sdk/activity/VideoPlayActivity;->surfaceView:Landroid/view/SurfaceView;

    .line 114
    const-string v0, "progressBar"

    invoke-static {p0, v0}, Lcom/b/a/a/f;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/kwlopen/sdk/activity/VideoPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/kwlopen/sdk/activity/VideoPlayActivity;->progressBar:Landroid/widget/ProgressBar;

    .line 115
    const-string v0, "repeat_record_layout"

    invoke-static {p0, v0}, Lcom/b/a/a/f;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/kwlopen/sdk/activity/VideoPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/kwlopen/sdk/activity/VideoPlayActivity;->repeatLayout:Landroid/widget/LinearLayout;

    .line 116
    const-string v0, "upload_record_layout"

    invoke-static {p0, v0}, Lcom/b/a/a/f;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/kwlopen/sdk/activity/VideoPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/kwlopen/sdk/activity/VideoPlayActivity;->uploadLayout:Landroid/widget/LinearLayout;

    .line 117
    const-string v0, "back_btn"

    invoke-static {p0, v0}, Lcom/b/a/a/f;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/kwlopen/sdk/activity/VideoPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kwlopen/sdk/activity/VideoPlayActivity;->backBtn:Landroid/widget/ImageView;

    .line 120
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoPlayActivity;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/kwlopen/sdk/activity/VideoPlayActivity;->surfaceHolder:Landroid/view/SurfaceHolder;

    .line 122
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoPlayActivity;->surfaceHolder:Landroid/view/SurfaceHolder;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 124
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoPlayActivity;->surfaceHolder:Landroid/view/SurfaceHolder;

    new-instance v1, Lcom/kwlopen/sdk/activity/VideoPlayActivity$SurfaceCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/kwlopen/sdk/activity/VideoPlayActivity$SurfaceCallback;-><init>(Lcom/kwlopen/sdk/activity/VideoPlayActivity;Lcom/kwlopen/sdk/activity/VideoPlayActivity$1;)V

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 125
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoPlayActivity;->startButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoPlayActivity;->repeatLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoPlayActivity;->uploadLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoPlayActivity;->backBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    invoke-virtual {p0}, Lcom/kwlopen/sdk/activity/VideoPlayActivity;->startTimer()V

    .line 130
    return-void
.end method

.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 3

    .prologue
    .line 307
    const-string v0, "text"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onBufferingUpdate-->"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 249
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "upload_record_layout"

    invoke-static {p0, v1}, Lcom/b/a/a/f;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 256
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 257
    const-string v1, "type"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 258
    invoke-virtual {p0, v3, v0}, Lcom/kwlopen/sdk/activity/VideoPlayActivity;->setResult(ILandroid/content/Intent;)V

    .line 259
    invoke-virtual {p0}, Lcom/kwlopen/sdk/activity/VideoPlayActivity;->finish()V

    .line 283
    :cond_0
    :goto_0
    return-void

    .line 260
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "repeat_record_layout"

    invoke-static {p0, v1}, Lcom/b/a/a/f;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 261
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 262
    const-string v1, "type"

    const-string v2, "2"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 263
    invoke-virtual {p0, v3, v0}, Lcom/kwlopen/sdk/activity/VideoPlayActivity;->setResult(ILandroid/content/Intent;)V

    .line 264
    invoke-virtual {p0}, Lcom/kwlopen/sdk/activity/VideoPlayActivity;->finish()V

    goto :goto_0

    .line 265
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "start_play_btn"

    invoke-static {p0, v1}, Lcom/b/a/a/f;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 266
    invoke-virtual {p0}, Lcom/kwlopen/sdk/activity/VideoPlayActivity;->startTimer()V

    .line 267
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoPlayActivity;->startButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 268
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoPlayActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_3

    .line 270
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoPlayActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 272
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoPlayActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoPlayActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    goto :goto_0

    .line 277
    :cond_3
    invoke-virtual {p0}, Lcom/kwlopen/sdk/activity/VideoPlayActivity;->playVideo()V

    goto :goto_0

    .line 279
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "back_btn"

    invoke-static {p0, v1}, Lcom/b/a/a/f;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 281
    invoke-direct {p0}, Lcom/kwlopen/sdk/activity/VideoPlayActivity;->showDialog()V

    goto :goto_0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    .prologue
    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u64ad\u653e\u5b8c\u6bd5---->"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/a/d;->a(Ljava/lang/String;)V

    .line 295
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoPlayActivity;->startButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 297
    invoke-virtual {p0}, Lcom/kwlopen/sdk/activity/VideoPlayActivity;->stopTimer()V

    .line 299
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .prologue
    .line 411
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 412
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 101
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 103
    const-string v0, "kwlopen_surface_view"

    invoke-static {p0, v0}, Lcom/b/a/a/f;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/kwlopen/sdk/activity/VideoPlayActivity;->setContentView(I)V

    .line 105
    invoke-virtual {p0}, Lcom/kwlopen/sdk/activity/VideoPlayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "videoPath"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kwlopen/sdk/activity/VideoPlayActivity;->pathString:Ljava/lang/String;

    .line 106
    invoke-virtual {p0}, Lcom/kwlopen/sdk/activity/VideoPlayActivity;->initViews()V

    .line 107
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 450
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 453
    :try_start_0
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoPlayActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 456
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoPlayActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 457
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoPlayActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 459
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/kwlopen/sdk/activity/VideoPlayActivity;->currentPlayPosition:I

    .line 461
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoPlayActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 462
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kwlopen/sdk/activity/VideoPlayActivity;->mediaPlayer:Landroid/media/MediaPlayer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 468
    :cond_1
    :goto_0
    return-void

    .line 466
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 321
    sparse-switch p2, :sswitch_data_0

    .line 332
    :goto_0
    sparse-switch p3, :sswitch_data_1

    .line 349
    :goto_1
    return v1

    .line 323
    :sswitch_0
    const-string v0, "MEDIA_ERROR_UNKNOWN"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 326
    :sswitch_1
    const-string v0, "MEDIA_ERROR_SERVER_DIED"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 334
    :sswitch_2
    const-string v0, "MEDIA_ERROR_IO"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 337
    :sswitch_3
    const-string v0, "MEDIA_ERROR_MALFORMED"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 340
    :sswitch_4
    const-string v0, "MEDIA_ERROR_NOT_VALID_FOR_PROGRESSIVE_PLAYBACK"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 343
    :sswitch_5
    const-string v0, "MEDIA_ERROR_TIMED_OUT"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 346
    :sswitch_6
    const-string v0, "MEDIA_ERROR_UNSUPPORTED"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 321
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x64 -> :sswitch_1
    .end sparse-switch

    .line 332
    :sswitch_data_1
    .sparse-switch
        -0x3f2 -> :sswitch_6
        -0x3ef -> :sswitch_3
        -0x3ec -> :sswitch_2
        -0x6e -> :sswitch_5
        0xc8 -> :sswitch_4
    .end sparse-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 416
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 417
    invoke-direct {p0}, Lcom/kwlopen/sdk/activity/VideoPlayActivity;->showDialog()V

    .line 419
    const/4 v0, 0x1

    .line 422
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 376
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 378
    :try_start_0
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoPlayActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoPlayActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoPlayActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/kwlopen/sdk/activity/VideoPlayActivity;->currentPlayPosition:I

    .line 380
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoPlayActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 386
    :cond_0
    :goto_0
    return-void

    .line 384
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 188
    const-string v0, "\u51c6\u5907\u5b8c\u6bd5--"

    invoke-static {v0}, Lcom/b/a/a/d;->a(Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoPlayActivity;->progressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 192
    iget v0, p0, Lcom/kwlopen/sdk/activity/VideoPlayActivity;->currentPlayPosition:I

    if-ltz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoPlayActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    iget v1, p0, Lcom/kwlopen/sdk/activity/VideoPlayActivity;->currentPlayPosition:I

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 194
    const/4 v0, -0x1

    iput v0, p0, Lcom/kwlopen/sdk/activity/VideoPlayActivity;->currentPlayPosition:I

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoPlayActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/kwlopen/sdk/activity/VideoPlayActivity;->videoTimeLong:J

    .line 199
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoPlayActivity;->timerTextView:Landroid/widget/TextView;

    const-string v1, "00:00"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoPlayActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 204
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoPlayActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/kwlopen/sdk/activity/VideoPlayActivity;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 206
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoPlayActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 207
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoPlayActivity;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->setKeepScreenOn(Z)V

    .line 208
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 405
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 407
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 357
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 359
    iget v0, p0, Lcom/kwlopen/sdk/activity/VideoPlayActivity;->currentPlayPosition:I

    if-ltz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoPlayActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 362
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoPlayActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    iget v1, p0, Lcom/kwlopen/sdk/activity/VideoPlayActivity;->currentPlayPosition:I

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 363
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoPlayActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 369
    :cond_0
    :goto_0
    return-void

    .line 365
    :cond_1
    invoke-virtual {p0}, Lcom/kwlopen/sdk/activity/VideoPlayActivity;->playVideo()V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 393
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 394
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoPlayActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoPlayActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/kwlopen/sdk/activity/VideoPlayActivity;->currentPlayPosition:I

    .line 398
    :cond_0
    return-void
.end method

.method public playVideo()V
    .locals 2

    .prologue
    .line 156
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/kwlopen/sdk/activity/VideoPlayActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 158
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoPlayActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 160
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoPlayActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 162
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoPlayActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 164
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoPlayActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 166
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoPlayActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 168
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoPlayActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 170
    :try_start_0
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoPlayActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/kwlopen/sdk/activity/VideoPlayActivity;->pathString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoPlayActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    :goto_0
    return-void

    .line 175
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 176
    const-string v0, "\u52a0\u8f7d\u89c6\u9891\u9519\u8bef\uff01"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public startTimer()V
    .locals 6

    .prologue
    .line 213
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/kwlopen/sdk/activity/VideoPlayActivity;->timer:Ljava/util/Timer;

    .line 214
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoPlayActivity;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 215
    new-instance v1, Lcom/kwlopen/sdk/activity/VideoPlayActivity$2;

    invoke-direct {v1, p0}, Lcom/kwlopen/sdk/activity/VideoPlayActivity$2;-><init>(Lcom/kwlopen/sdk/activity/VideoPlayActivity;)V

    .line 228
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoPlayActivity;->timer:Ljava/util/Timer;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 229
    return-void
.end method

.method public stopTimer()V
    .locals 1

    .prologue
    .line 236
    :try_start_0
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoPlayActivity;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoPlayActivity;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 238
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kwlopen/sdk/activity/VideoPlayActivity;->timer:Ljava/util/Timer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

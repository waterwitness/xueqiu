.class public Lcom/kwlopen/sdk/activity/CaptureVideo;
.super Landroid/app/Activity;
.source "CaptureVideo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static final PLAY_AREA:I = 0x7


# instance fields
.field private FrameRate:I

.field private HResolution:I

.field private VResolution:I

.field private backBtn:Landroid/widget/ImageView;

.field public btnStartPlay:Landroid/widget/Button;

.field private btnStopRecord:Landroid/widget/Button;

.field private btnVideoButton:Landroid/widget/Button;

.field private camera:Landroid/hardware/Camera;

.field private cameraParams:Landroid/hardware/Camera$Parameters;

.field private context:Landroid/content/Context;

.field private fileName:Ljava/lang/String;

.field private fps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field handler:Landroid/os/Handler;

.field private heightArray:Landroid/util/SparseIntArray;

.field private isTaking:Z

.field private isVideoAuto:Z

.field private isVideoSizeSupport:Z

.field private kuangkuangImageView:Landroid/widget/ImageView;

.field private lastIntent:Landroid/content/Intent;

.field private layout:Landroid/widget/FrameLayout;

.field private limit:I

.field private mediaRecorder:Landroid/media/MediaRecorder;

.field private minute:I

.field private myAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

.field private path:Ljava/lang/String;

.field private perm:Z

.field private preview:Lcom/kwlopen/sdk/activity/CameraPreview;

.field private recordBtnlayout:Landroid/widget/RelativeLayout;

.field private recordVideoFrameLayout:Landroid/widget/FrameLayout;

.field private repeatLayout:Landroid/widget/LinearLayout;

.field private second:I

.field private sizeIndex:I

.field private timer:Landroid/widget/LinearLayout;

.field private timerCount:Ljava/util/Timer;

.field public timerTextView:Landroid/widget/TextView;

.field private uploadLayout:Landroid/widget/LinearLayout;

.field private uploadVideoLayout:Landroid/widget/LinearLayout;

.field private userReadLayout:Landroid/widget/RelativeLayout;

.field private userReadTextView:Landroid/widget/TextView;

.field private vercode:Ljava/lang/String;

.field private videoLogicFrameLayout:Landroid/widget/FrameLayout;

.field private videoPlayFrameLayout:Landroid/widget/FrameLayout;

.field private widthArray:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 54
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->widthArray:Landroid/util/SparseIntArray;

    .line 55
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->heightArray:Landroid/util/SparseIntArray;

    .line 56
    iput v1, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->sizeIndex:I

    .line 64
    iput v1, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->minute:I

    .line 65
    iput v1, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->second:I

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->myAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

    .line 75
    iput-boolean v2, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->isVideoSizeSupport:Z

    .line 76
    iput-boolean v2, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->isVideoAuto:Z

    .line 103
    const/16 v0, 0x1e

    iput v0, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->limit:I

    .line 107
    iput-boolean v2, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->perm:Z

    .line 109
    new-instance v0, Lcom/kwlopen/sdk/activity/CaptureVideo$1;

    invoke-direct {v0, p0}, Lcom/kwlopen/sdk/activity/CaptureVideo$1;-><init>(Lcom/kwlopen/sdk/activity/CaptureVideo;)V

    iput-object v0, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->handler:Landroid/os/Handler;

    return-void
.end method

.method private FindBackCamera()I
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 286
    new-instance v1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 287
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v2

    .line 289
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    .line 290
    invoke-static {v0, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 291
    iget v3, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v3, :cond_0

    .line 296
    :goto_1
    return v0

    .line 289
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 296
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private FindFrontCamera()I
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 270
    new-instance v1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 271
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v2

    .line 273
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    .line 274
    invoke-static {v0, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 275
    iget v3, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 280
    :goto_1
    return v0

    .line 273
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 280
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/kwlopen/sdk/activity/CaptureVideo;)I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->second:I

    return v0
.end method

.method static synthetic access$008(Lcom/kwlopen/sdk/activity/CaptureVideo;)I
    .locals 2

    .prologue
    .line 45
    iget v0, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->second:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->second:I

    return v0
.end method

.method static synthetic access$100(Lcom/kwlopen/sdk/activity/CaptureVideo;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->btnStopRecord:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$200(Lcom/kwlopen/sdk/activity/CaptureVideo;)I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->limit:I

    return v0
.end method

.method static synthetic access$300(Lcom/kwlopen/sdk/activity/CaptureVideo;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/kwlopen/sdk/activity/CaptureVideo;->stopVideo()V

    return-void
.end method

.method static synthetic access$400(Lcom/kwlopen/sdk/activity/CaptureVideo;)Landroid/media/MediaRecorder;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->mediaRecorder:Landroid/media/MediaRecorder;

    return-object v0
.end method

.method static synthetic access$402(Lcom/kwlopen/sdk/activity/CaptureVideo;Landroid/media/MediaRecorder;)Landroid/media/MediaRecorder;
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->mediaRecorder:Landroid/media/MediaRecorder;

    return-object p1
.end method

.method static synthetic access$500(Lcom/kwlopen/sdk/activity/CaptureVideo;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/kwlopen/sdk/activity/CaptureVideo;->cancelTimer()V

    return-void
.end method

.method private cancelTimer()V
    .locals 1

    .prologue
    .line 650
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->timerCount:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 651
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->timerCount:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 652
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->timerCount:Ljava/util/Timer;

    .line 654
    :cond_0
    return-void
.end method

.method public static getSDPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 640
    const/4 v0, 0x0

    .line 641
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 642
    if-eqz v1, :cond_0

    .line 643
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 645
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initCamera()V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 204
    :try_start_0
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->timer:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 205
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->timerTextView:Landroid/widget/TextView;

    const-string v1, "00:00"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    invoke-direct {p0}, Lcom/kwlopen/sdk/activity/CaptureVideo;->FindFrontCamera()I

    move-result v0

    .line 208
    if-ne v0, v3, :cond_0

    .line 209
    invoke-direct {p0}, Lcom/kwlopen/sdk/activity/CaptureVideo;->FindBackCamera()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 212
    :cond_0
    if-ne v0, v3, :cond_1

    .line 215
    :try_start_1
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->camera:Landroid/hardware/Camera;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 225
    :goto_0
    :try_start_2
    new-instance v0, Lcom/kwlopen/sdk/activity/CameraPreview;

    iget-object v1, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->camera:Landroid/hardware/Camera;

    invoke-direct {v0, p0, v1}, Lcom/kwlopen/sdk/activity/CameraPreview;-><init>(Landroid/content/Context;Landroid/hardware/Camera;)V

    iput-object v0, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->preview:Lcom/kwlopen/sdk/activity/CameraPreview;

    .line 226
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->preview:Lcom/kwlopen/sdk/activity/CameraPreview;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kwlopen/sdk/activity/CameraPreview;->setFocusable(Z)V

    .line 227
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->preview:Lcom/kwlopen/sdk/activity/CameraPreview;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kwlopen/sdk/activity/CameraPreview;->setEnabled(Z)V

    .line 229
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->cameraParams:Landroid/hardware/Camera$Parameters;

    .line 239
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->cameraParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v3

    .line 240
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    move v1, v2

    .line 241
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 242
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v0, "width--->"

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v0, "&&&height--->"

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget-object v4, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->widthArray:Landroid/util/SparseIntArray;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v4, v1, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 244
    iget-object v4, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->heightArray:Landroid/util/SparseIntArray;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v4, v1, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 241
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 217
    :catch_0
    move-exception v0

    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->camera:Landroid/hardware/Camera;

    .line 218
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "open()\u65b9\u6cd5\u6709\u95ee\u9898"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 261
    :catch_1
    move-exception v0

    .line 262
    iput-boolean v2, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->perm:Z

    .line 263
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 265
    :goto_2
    return-void

    .line 222
    :cond_1
    :try_start_3
    invoke-static {v0}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->camera:Landroid/hardware/Camera;

    goto/16 :goto_0

    .line 247
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->isVideoSizeSupport:Z

    .line 249
    :cond_3
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->cameraParams:Landroid/hardware/Camera$Parameters;

    const-string v1, "orientation"

    const-string v3, "portrait"

    invoke-virtual {v0, v1, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->camera:Landroid/hardware/Camera;

    const/16 v1, 0x5a

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 252
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->camera:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->cameraParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 253
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->cameraParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFrameRates()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->fps:Ljava/util/List;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 255
    :try_start_4
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->camera:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->preview:Lcom/kwlopen/sdk/activity/CameraPreview;

    invoke-virtual {v1}, Lcom/kwlopen/sdk/activity/CameraPreview;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 259
    :goto_3
    :try_start_5
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->layout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->preview:Lcom/kwlopen/sdk/activity/CameraPreview;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 260
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->layout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_2

    .line 257
    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_3
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/kwlopen/sdk/activity/CaptureVideo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 164
    const-string v1, "vercode"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->vercode:Ljava/lang/String;

    .line 166
    const-string v0, "HResolution"

    invoke-virtual {p0, p0, v0}, Lcom/kwlopen/sdk/activity/CaptureVideo;->getProperties(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->HResolution:I

    .line 167
    const-string v0, "VResolution"

    invoke-virtual {p0, p0, v0}, Lcom/kwlopen/sdk/activity/CaptureVideo;->getProperties(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->VResolution:I

    .line 168
    const-string v0, "FrameRate"

    invoke-virtual {p0, p0, v0}, Lcom/kwlopen/sdk/activity/CaptureVideo;->getProperties(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->FrameRate:I

    .line 174
    const-string v0, "take_video_layout"

    invoke-static {p0, v0}, Lcom/b/a/a/f;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/kwlopen/sdk/activity/CaptureVideo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->layout:Landroid/widget/FrameLayout;

    .line 175
    const-string v0, "arc_hf_video_start"

    invoke-static {p0, v0}, Lcom/b/a/a/f;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/kwlopen/sdk/activity/CaptureVideo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->btnVideoButton:Landroid/widget/Button;

    .line 176
    const-string v0, "arc_hf_video_stop"

    invoke-static {p0, v0}, Lcom/b/a/a/f;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/kwlopen/sdk/activity/CaptureVideo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->btnStopRecord:Landroid/widget/Button;

    .line 177
    const-string v0, "arc_hf_video_timer"

    invoke-static {p0, v0}, Lcom/b/a/a/f;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/kwlopen/sdk/activity/CaptureVideo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->timer:Landroid/widget/LinearLayout;

    .line 178
    const-string v0, "arc_hf_video_timer_tv"

    invoke-static {p0, v0}, Lcom/b/a/a/f;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/kwlopen/sdk/activity/CaptureVideo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->timerTextView:Landroid/widget/TextView;

    .line 179
    const-string v0, "video_play_framelayout"

    invoke-static {p0, v0}, Lcom/b/a/a/f;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/kwlopen/sdk/activity/CaptureVideo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->videoPlayFrameLayout:Landroid/widget/FrameLayout;

    .line 180
    const-string v0, "video_logic_framelayout"

    invoke-static {p0, v0}, Lcom/b/a/a/f;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/kwlopen/sdk/activity/CaptureVideo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->videoLogicFrameLayout:Landroid/widget/FrameLayout;

    .line 181
    const-string v0, "user_read_layout"

    invoke-static {p0, v0}, Lcom/b/a/a/f;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/kwlopen/sdk/activity/CaptureVideo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->userReadLayout:Landroid/widget/RelativeLayout;

    .line 182
    const-string v0, "record_btn_layout"

    invoke-static {p0, v0}, Lcom/b/a/a/f;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/kwlopen/sdk/activity/CaptureVideo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->recordBtnlayout:Landroid/widget/RelativeLayout;

    .line 183
    const-string v0, "user_read_textview"

    invoke-static {p0, v0}, Lcom/b/a/a/f;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/kwlopen/sdk/activity/CaptureVideo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->userReadTextView:Landroid/widget/TextView;

    .line 184
    const-string v0, "kuangkuang"

    invoke-static {p0, v0}, Lcom/b/a/a/f;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/kwlopen/sdk/activity/CaptureVideo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->kuangkuangImageView:Landroid/widget/ImageView;

    .line 185
    const-string v0, "back_btn"

    invoke-static {p0, v0}, Lcom/b/a/a/f;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/kwlopen/sdk/activity/CaptureVideo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->backBtn:Landroid/widget/ImageView;

    .line 186
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->userReadTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->vercode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->timer:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 188
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->btnStopRecord:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->btnVideoButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->backBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    invoke-direct {p0}, Lcom/kwlopen/sdk/activity/CaptureVideo;->initCamera()V

    .line 193
    return-void
.end method

.method private showDialog()V
    .locals 3

    .prologue
    .line 618
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u9000\u51fa"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u786e\u5b9a\u9000\u51fa\u89c6\u9891\u5f55\u5236\u5417\uff1f"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u786e\u5b9a"

    new-instance v2, Lcom/kwlopen/sdk/activity/CaptureVideo$3;

    invoke-direct {v2, p0}, Lcom/kwlopen/sdk/activity/CaptureVideo$3;-><init>(Lcom/kwlopen/sdk/activity/CaptureVideo;)V

    .line 619
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u53d6\u6d88"

    new-instance v2, Lcom/kwlopen/sdk/activity/CaptureVideo$2;

    invoke-direct {v2, p0}, Lcom/kwlopen/sdk/activity/CaptureVideo$2;-><init>(Lcom/kwlopen/sdk/activity/CaptureVideo;)V

    .line 630
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 636
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 637
    return-void
.end method

.method private startCamera()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 305
    iget-boolean v0, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->perm:Z

    if-nez v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->context:Landroid/content/Context;

    const-string v1, "kwlopen_msg_camera_error"

    invoke-static {p0, v1}, Lcom/b/a/a/f;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 307
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 387
    :goto_0
    return-void

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->btnVideoButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 311
    iput v3, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->second:I

    .line 312
    iput v3, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->minute:I

    .line 314
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 315
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->unlock()V

    .line 316
    new-instance v0, Landroid/media/MediaRecorder;

    invoke-direct {v0}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v0, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->mediaRecorder:Landroid/media/MediaRecorder;

    .line 317
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->mediaRecorder:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setCamera(Landroid/hardware/Camera;)V

    .line 318
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 319
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 320
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, v3}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 321
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->mediaRecorder:Landroid/media/MediaRecorder;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 322
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->mediaRecorder:Landroid/media/MediaRecorder;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    .line 331
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->mediaRecorder:Landroid/media/MediaRecorder;

    const/16 v1, 0x10e

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    .line 332
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->mediaRecorder:Landroid/media/MediaRecorder;

    iget v1, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->HResolution:I

    iget v2, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->VResolution:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    .line 338
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->mediaRecorder:Landroid/media/MediaRecorder;

    const v1, 0x927c0

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    .line 339
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->mediaRecorder:Landroid/media/MediaRecorder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->fileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 341
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->mediaRecorder:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->preview:Lcom/kwlopen/sdk/activity/CameraPreview;

    invoke-virtual {v1}, Lcom/kwlopen/sdk/activity/CameraPreview;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setPreviewDisplay(Landroid/view/Surface;)V

    .line 342
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->mediaRecorder:Landroid/media/MediaRecorder;

    iget v1, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->limit:I

    mul-int/lit16 v1, v1, 0x2710

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    .line 365
    :try_start_0
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->prepare()V

    .line 366
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->timer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 376
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->start()V

    .line 377
    invoke-direct {p0}, Lcom/kwlopen/sdk/activity/CaptureVideo;->startTimer()V

    .line 378
    const-string v0, "\u5f00\u59cb\u5f55\u5236"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    goto/16 :goto_0

    .line 379
    :catch_0
    move-exception v0

    .line 380
    invoke-virtual {p0}, Lcom/kwlopen/sdk/activity/CaptureVideo;->finish()V

    .line 381
    const-string v1, "\u4e0d\u80fd\u5f55\u5236\u89c6\u9891!"

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 382
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto/16 :goto_0

    .line 369
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_1

    .line 371
    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 373
    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 383
    :catch_4
    move-exception v0

    .line 384
    invoke-virtual {p0}, Lcom/kwlopen/sdk/activity/CaptureVideo;->finish()V

    .line 385
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method private startTimer()V
    .locals 6

    .prologue
    const-wide/16 v2, 0x3e8

    .line 657
    invoke-direct {p0}, Lcom/kwlopen/sdk/activity/CaptureVideo;->cancelTimer()V

    .line 658
    const/4 v0, 0x0

    iput v0, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->second:I

    .line 659
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->timerCount:Ljava/util/Timer;

    .line 660
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->timerCount:Ljava/util/Timer;

    new-instance v1, Lcom/kwlopen/sdk/activity/CaptureVideo$4;

    invoke-direct {v1, p0}, Lcom/kwlopen/sdk/activity/CaptureVideo$4;-><init>(Lcom/kwlopen/sdk/activity/CaptureVideo;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 674
    return-void
.end method

.method private stopRecord()V
    .locals 2

    .prologue
    .line 459
    invoke-direct {p0}, Lcom/kwlopen/sdk/activity/CaptureVideo;->cancelTimer()V

    .line 469
    :try_start_0
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->mediaRecorder:Landroid/media/MediaRecorder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 470
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V

    .line 471
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 472
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->mediaRecorder:Landroid/media/MediaRecorder;

    .line 473
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 474
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->lock()V

    .line 475
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 476
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->camera:Landroid/hardware/Camera;

    .line 477
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->layout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->preview:Lcom/kwlopen/sdk/activity/CameraPreview;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 478
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->preview:Lcom/kwlopen/sdk/activity/CameraPreview;

    .line 479
    const-string v0, "\u5f55\u5236\u5b8c\u6210\uff0c\u5df2\u4fdd\u5b58"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 484
    :goto_0
    return-void

    .line 482
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private stopVideo()V
    .locals 4

    .prologue
    .line 448
    invoke-direct {p0}, Lcom/kwlopen/sdk/activity/CaptureVideo;->stopRecord()V

    .line 449
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 450
    const-string v1, "videoPath"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->fileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 451
    const-class v1, Lcom/kwlopen/sdk/activity/VideoPlayActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 452
    const/4 v1, 0x7

    invoke-virtual {p0, v0, v1}, Lcom/kwlopen/sdk/activity/CaptureVideo;->startActivityForResult(Landroid/content/Intent;I)V

    .line 453
    return-void
.end method

.method private submitFocusAreaRect(Landroid/graphics/Rect;)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 520
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 521
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v1

    if-nez v1, :cond_1

    .line 541
    :cond_0
    :goto_0
    return-void

    .line 526
    :cond_1
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 527
    iget v2, p1, Landroid/graphics/Rect;->left:I

    mul-int/lit16 v2, v2, 0x7d0

    iget-object v3, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->preview:Lcom/kwlopen/sdk/activity/CameraPreview;

    invoke-virtual {v3}, Lcom/kwlopen/sdk/activity/CameraPreview;->getWidth()I

    move-result v3

    div-int/2addr v2, v3

    add-int/lit16 v2, v2, -0x3e8

    iget v3, p1, Landroid/graphics/Rect;->top:I

    mul-int/lit16 v3, v3, 0x7d0

    iget-object v4, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->preview:Lcom/kwlopen/sdk/activity/CameraPreview;

    .line 528
    invoke-virtual {v4}, Lcom/kwlopen/sdk/activity/CameraPreview;->getHeight()I

    move-result v4

    div-int/2addr v3, v4

    add-int/lit16 v3, v3, -0x3e8

    iget v4, p1, Landroid/graphics/Rect;->right:I

    mul-int/lit16 v4, v4, 0x7d0

    iget-object v5, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->preview:Lcom/kwlopen/sdk/activity/CameraPreview;

    invoke-virtual {v5}, Lcom/kwlopen/sdk/activity/CameraPreview;->getWidth()I

    move-result v5

    div-int/2addr v4, v5

    add-int/lit16 v4, v4, -0x3e8

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    mul-int/lit16 v5, v5, 0x7d0

    iget-object v6, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->preview:Lcom/kwlopen/sdk/activity/CameraPreview;

    .line 529
    invoke-virtual {v6}, Lcom/kwlopen/sdk/activity/CameraPreview;->getHeight()I

    move-result v6

    div-int/2addr v5, v6

    add-int/lit16 v5, v5, -0x3e8

    .line 527
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 531
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 532
    new-instance v3, Landroid/hardware/Camera$Area;

    const/16 v4, 0x3e8

    invoke-direct {v3, v1, v4}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 533
    const-string v1, "auto"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 534
    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 536
    :try_start_0
    iget-object v1, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->camera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 537
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->camera:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->myAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 539
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public format(I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 492
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 493
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 494
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "0"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 496
    :cond_0
    return-object v0
.end method

.method public getProperties(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 677
    const/4 v0, 0x0

    .line 678
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 680
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "property.properties"

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 681
    invoke-virtual {v1, p2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 685
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 683
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    .prologue
    const/16 v2, 0x8

    const/4 v4, -0x1

    .line 714
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 715
    const-string v0, "onActivityResult cordovaOlugin"

    invoke-static {v0}, Lcom/b/a/a/d;->b(Ljava/lang/String;)V

    .line 717
    if-ne p2, v4, :cond_0

    .line 719
    const/4 v0, 0x7

    if-ne p1, v0, :cond_0

    .line 720
    const-string v0, "type"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 722
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 723
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->lastIntent:Landroid/content/Intent;

    const-string v1, "videoPath"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->fileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 724
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->lastIntent:Landroid/content/Intent;

    invoke-virtual {p0, v4, v0}, Lcom/kwlopen/sdk/activity/CaptureVideo;->setResult(ILandroid/content/Intent;)V

    .line 725
    invoke-virtual {p0}, Lcom/kwlopen/sdk/activity/CaptureVideo;->finish()V

    .line 744
    :cond_0
    :goto_0
    return-void

    .line 727
    :cond_1
    const-string v1, "2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 733
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->btnVideoButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 734
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->btnStopRecord:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 735
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->timer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 737
    invoke-direct {p0}, Lcom/kwlopen/sdk/activity/CaptureVideo;->initCamera()V

    goto :goto_0

    .line 738
    :cond_2
    const-string v1, "3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 739
    invoke-virtual {p0}, Lcom/kwlopen/sdk/activity/CaptureVideo;->finish()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 406
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "arc_hf_video_start"

    invoke-static {p0, v1}, Lcom/b/a/a/f;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 410
    invoke-direct {p0}, Lcom/kwlopen/sdk/activity/CaptureVideo;->startCamera()V

    .line 444
    :cond_0
    :goto_0
    return-void

    .line 419
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "arc_hf_video_stop"

    invoke-static {p0, v1}, Lcom/b/a/a/f;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 421
    invoke-direct {p0}, Lcom/kwlopen/sdk/activity/CaptureVideo;->stopVideo()V

    goto :goto_0

    .line 422
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "start_play_btn"

    invoke-static {p0, v1}, Lcom/b/a/a/f;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 424
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "upload_record_layout"

    invoke-static {p0, v1}, Lcom/b/a/a/f;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 440
    invoke-virtual {p0}, Lcom/kwlopen/sdk/activity/CaptureVideo;->finish()V

    goto :goto_0

    .line 441
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "back_btn"

    invoke-static {p0, v1}, Lcom/b/a/a/f;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 442
    invoke-direct {p0}, Lcom/kwlopen/sdk/activity/CaptureVideo;->showDialog()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 133
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 134
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/kwlopen/sdk/activity/CaptureVideo;->requestWindowFeature(I)Z

    .line 135
    const-string v0, "kwlopen_capture_video"

    invoke-static {p0, v0}, Lcom/b/a/a/f;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/kwlopen/sdk/activity/CaptureVideo;->setContentView(I)V

    .line 146
    iput-object p0, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->context:Landroid/content/Context;

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/kwlopen/sdk/activity/CaptureVideo;->getSDPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->path:Ljava/lang/String;

    .line 149
    const-string v0, "video.mp4"

    iput-object v0, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->fileName:Ljava/lang/String;

    .line 151
    invoke-direct {p0}, Lcom/kwlopen/sdk/activity/CaptureVideo;->initView()V

    .line 152
    invoke-virtual {p0}, Lcom/kwlopen/sdk/activity/CaptureVideo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->lastIntent:Landroid/content/Intent;

    .line 153
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 391
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 393
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->mediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 396
    :cond_0
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    .line 397
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->lock()V

    .line 398
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 401
    :cond_1
    invoke-direct {p0}, Lcom/kwlopen/sdk/activity/CaptureVideo;->cancelTimer()V

    .line 402
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 603
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 605
    invoke-direct {p0}, Lcom/kwlopen/sdk/activity/CaptureVideo;->showDialog()V

    .line 610
    const/4 v0, 0x1

    .line 613
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 4

    .prologue
    .line 556
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 563
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->mediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    .line 565
    invoke-direct {p0}, Lcom/kwlopen/sdk/activity/CaptureVideo;->stopRecord()V

    .line 566
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 567
    const-string v1, "videoPath"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->fileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 568
    const-class v1, Lcom/kwlopen/sdk/activity/VideoPlayActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 569
    const/4 v1, 0x7

    invoke-virtual {p0, v0, v1}, Lcom/kwlopen/sdk/activity/CaptureVideo;->startActivityForResult(Landroid/content/Intent;I)V

    .line 584
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 545
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 552
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 598
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 599
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 593
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 594
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 588
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 589
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    .line 502
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 503
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/kwlopen/sdk/activity/CaptureVideo;->isVideoAuto:Z

    if-eqz v0, :cond_0

    .line 504
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 505
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 506
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getTouchMajor()F

    move-result v2

    .line 507
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getTouchMinor()F

    move-result v3

    .line 509
    new-instance v4, Landroid/graphics/Rect;

    div-float v5, v2, v7

    sub-float v5, v0, v5

    float-to-int v5, v5

    div-float v6, v3, v7

    sub-float v6, v1, v6

    float-to-int v6, v6

    div-float/2addr v2, v7

    add-float/2addr v0, v2

    float-to-int v0, v0

    div-float v2, v3, v7

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-direct {v4, v5, v6, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 512
    invoke-direct {p0, v4}, Lcom/kwlopen/sdk/activity/CaptureVideo;->submitFocusAreaRect(Landroid/graphics/Rect;)V

    .line 515
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public paserTime(I)Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0xa

    .line 690
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 694
    div-int/lit16 v0, p1, 0xe10

    if-ge v0, v4, :cond_0

    .line 695
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "0"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    div-int/lit16 v2, p1, 0xe10

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 703
    :goto_0
    rem-int/lit16 v0, p1, 0xe10

    div-int/lit8 v0, v0, 0x3c

    .line 704
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

    .line 706
    rem-int/lit16 v0, p1, 0xe10

    rem-int/lit8 v0, v0, 0x3c

    .line 707
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

    .line 709
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 698
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit16 v2, p1, 0xe10

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 704
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

    .line 707
    :cond_2
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

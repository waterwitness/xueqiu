.class public Lorg/webrtc/videoengine/VideoCaptureAndroid;
.super Ljava/lang/Object;
.source "VideoCaptureAndroid.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field public static final DEFAULT_SINGLE_POOL_NAME:Ljava/lang/String; = "DEFAULT_SINGLE_POOL_NAME"

.field private static final TAG:Ljava/lang/String; = "VideoCaptureAndroid"

.field public static cameraFront:Landroid/hardware/Camera;

.field private static cameraInfo:Landroid/hardware/Camera$CameraInfo;

.field private static handlerExchanger:Ljava/util/concurrent/Exchanger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Exchanger",
            "<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private static localPreview:Landroid/view/SurfaceHolder;

.field private static mAvCallStatusListener:Lcom/pingan/main/IAVCallStatusListener;

.field private static mShortPool:Lorg/webrtc/videoengine/VideoCaptureAndroid$ThreadPoolProxy;

.field private static result:Ljava/util/concurrent/Exchanger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Exchanger",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private camera:Landroid/hardware/Camera;

.field private cameraThread:Lorg/webrtc/videoengine/VideoCaptureAndroid$CameraThread;

.field private cameraThreadHandler:Landroid/os/Handler;

.field private dummySurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private executor:Ljava/util/concurrent/ExecutorService;

.field private final id:I

.field private final info:Landroid/hardware/Camera$CameraInfo;

.field private final native_capturer:J

.field private final numCaptureBuffers:I

.field task:Ljava/util/TimerTask;

.field timer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 60
    sput-object v0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->mAvCallStatusListener:Lcom/pingan/main/IAVCallStatusListener;

    .line 425
    sput-object v0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->mShortPool:Lorg/webrtc/videoengine/VideoCaptureAndroid$ThreadPoolProxy;

    .line 429
    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 4

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/4 v0, 0x3

    iput v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->numCaptureBuffers:I

    .line 89
    iput p1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->id:I

    .line 90
    iput-wide p2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->native_capturer:J

    .line 91
    sget-object v0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->cameraInfo:Landroid/hardware/Camera$CameraInfo;

    if-nez v0, :cond_0

    .line 92
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "new Camera.CameraInfo();"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 93
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    sput-object v0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->cameraInfo:Landroid/hardware/Camera$CameraInfo;

    .line 95
    :cond_0
    sget-object v0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->cameraInfo:Landroid/hardware/Camera$CameraInfo;

    iput-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->info:Landroid/hardware/Camera$CameraInfo;

    .line 96
    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->info:Landroid/hardware/Camera$CameraInfo;

    invoke-static {p1, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 97
    sget-object v0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->handlerExchanger:Ljava/util/concurrent/Exchanger;

    if-nez v0, :cond_1

    .line 98
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "new Exchanger<Handler>();=="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isAlive()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 99
    :cond_1
    new-instance v0, Ljava/util/concurrent/Exchanger;

    invoke-direct {v0}, Ljava/util/concurrent/Exchanger;-><init>()V

    sput-object v0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->handlerExchanger:Ljava/util/concurrent/Exchanger;

    .line 100
    sget-object v0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->mShortPool:Lorg/webrtc/videoengine/VideoCaptureAndroid$ThreadPoolProxy;

    if-nez v0, :cond_2

    .line 101
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "new ThreadPoolProxy()=="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isAlive()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 102
    new-instance v0, Lorg/webrtc/videoengine/VideoCaptureAndroid$ThreadPoolProxy;

    invoke-direct {v0}, Lorg/webrtc/videoengine/VideoCaptureAndroid$ThreadPoolProxy;-><init>()V

    sput-object v0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->mShortPool:Lorg/webrtc/videoengine/VideoCaptureAndroid$ThreadPoolProxy;

    .line 104
    :cond_2
    return-void
.end method

.method private native ProvideCameraFrame([BIJ)V
.end method

.method static synthetic access$0(Ljava/util/concurrent/Exchanger;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 415
    invoke-static {p0, p1}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->exchange(Ljava/util/concurrent/Exchanger;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Lorg/webrtc/videoengine/VideoCaptureAndroid;IIIILjava/util/concurrent/Exchanger;)V
    .locals 0

    .prologue
    .line 165
    invoke-direct/range {p0 .. p5}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->startCaptureOnCameraThread(IIIILjava/util/concurrent/Exchanger;)V

    return-void
.end method

.method static synthetic access$2(Lorg/webrtc/videoengine/VideoCaptureAndroid;)Landroid/hardware/Camera;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    return-object v0
.end method

.method static synthetic access$3()Ljava/util/concurrent/Exchanger;
    .locals 1

    .prologue
    .line 258
    sget-object v0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->result:Ljava/util/concurrent/Exchanger;

    return-object v0
.end method

.method static synthetic access$4(Lorg/webrtc/videoengine/VideoCaptureAndroid;Ljava/util/concurrent/Exchanger;)V
    .locals 0

    .prologue
    .line 278
    invoke-direct {p0, p1}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->stopCaptureOnCameraThread(Ljava/util/concurrent/Exchanger;)V

    return-void
.end method

.method static synthetic access$5(Lorg/webrtc/videoengine/VideoCaptureAndroid;I)V
    .locals 0

    .prologue
    .line 340
    invoke-direct {p0, p1}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->setPreviewRotationOnCameraThread(I)V

    return-void
.end method

.method static synthetic access$6(Lorg/webrtc/videoengine/VideoCaptureAndroid;Landroid/view/SurfaceHolder;Ljava/util/concurrent/Exchanger;)V
    .locals 0

    .prologue
    .line 402
    invoke-direct {p0, p1, p2}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->setPreviewDisplayOnCameraThread(Landroid/view/SurfaceHolder;Ljava/util/concurrent/Exchanger;)V

    return-void
.end method

.method private static exchange(Ljava/util/concurrent/Exchanger;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Exchanger",
            "<TT;>;TT;)TT;"
        }
    .end annotation

    .prologue
    .line 417
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/Exchanger;->exchange(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 418
    :catch_0
    move-exception v0

    .line 419
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private outputAVCallStatus(ILjava/lang/Object;)V
    .locals 3

    .prologue
    .line 448
    invoke-static {}, Lcom/letpower/engine/PAEngine;->getIAVCallStatusListener()Lcom/pingan/main/IAVCallStatusListener;

    move-result-object v0

    sput-object v0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->mAvCallStatusListener:Lcom/pingan/main/IAVCallStatusListener;

    .line 449
    const-string v0, "LDSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "VideoCaptureAndroid-outputAVCallStatus mAvCallStatusListener:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lorg/webrtc/videoengine/VideoCaptureAndroid;->mAvCallStatusListener:Lcom/pingan/main/IAVCallStatusListener;

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

    .line 450
    sget-object v0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->mAvCallStatusListener:Lcom/pingan/main/IAVCallStatusListener;

    if-eqz v0, :cond_0

    .line 451
    const-string v0, "LDSDK"

    const-string v1, "VideoCaptureAndroid-outputAVCallStatus mAvCallStatusListener  in"

    invoke-static {v0, v1}, Lcom/pingan/a/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    sget-object v0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->mAvCallStatusListener:Lcom/pingan/main/IAVCallStatusListener;

    invoke-interface {v0, p1, p2}, Lcom/pingan/main/IAVCallStatusListener;->outputAVCallStatus(ILjava/lang/Object;)V

    .line 454
    :cond_0
    return-void
.end method

.method public static setLocalPreview(Landroid/view/SurfaceHolder;)V
    .locals 0

    .prologue
    .line 84
    sput-object p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->localPreview:Landroid/view/SurfaceHolder;

    .line 85
    return-void
.end method

.method private setPreviewDisplayOnCameraThread(Landroid/view/SurfaceHolder;Ljava/util/concurrent/Exchanger;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/SurfaceHolder;",
            "Ljava/util/concurrent/Exchanger",
            "<",
            "Ljava/io/IOException;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 404
    :try_start_0
    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 409
    const/4 v0, 0x0

    invoke-static {p2, v0}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->exchange(Ljava/util/concurrent/Exchanger;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    :goto_0
    return-void

    .line 405
    :catch_0
    move-exception v0

    .line 406
    invoke-static {p2, v0}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->exchange(Ljava/util/concurrent/Exchanger;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private declared-synchronized setPreviewRotation(I)V
    .locals 2

    .prologue
    .line 332
    monitor-enter p0

    :try_start_0
    sget-object v0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->mShortPool:Lorg/webrtc/videoengine/VideoCaptureAndroid$ThreadPoolProxy;

    new-instance v1, Lorg/webrtc/videoengine/VideoCaptureAndroid$4;

    invoke-direct {v1, p0, p1}, Lorg/webrtc/videoengine/VideoCaptureAndroid$4;-><init>(Lorg/webrtc/videoengine/VideoCaptureAndroid;I)V

    invoke-virtual {v0, v1}, Lorg/webrtc/videoengine/VideoCaptureAndroid$ThreadPoolProxy;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 338
    monitor-exit p0

    return-void

    .line 332
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setPreviewRotationOnCameraThread(I)V
    .locals 4

    .prologue
    .line 341
    const-string v0, "VideoCaptureAndroid"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setPreviewRotation:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 360
    :goto_0
    return-void

    .line 348
    :cond_0
    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->info:Landroid/hardware/Camera$CameraInfo;

    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 351
    rsub-int v0, p1, 0x168

    rem-int/lit16 v0, v0, 0x168

    .line 353
    const-string v1, "VideoCaptureAndroid"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "info.facing == Camera.CameraInfo.CAMERA_FACING_FRONT setPreviewRotation:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", resultRotation="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v0

    .line 359
    :goto_1
    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    goto :goto_0

    .line 357
    :cond_1
    const-string v0, "VideoCaptureAndroid"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "info.facing == Camera.CameraInfo.CAMERA_FACING_BACK setPreviewRotation:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", resultRotation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private declared-synchronized startCapture(IIII)Z
    .locals 8

    .prologue
    .line 147
    monitor-enter p0

    :try_start_0
    new-instance v6, Ljava/util/concurrent/Exchanger;

    invoke-direct {v6}, Ljava/util/concurrent/Exchanger;-><init>()V

    .line 148
    sget-object v0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->mShortPool:Lorg/webrtc/videoengine/VideoCaptureAndroid$ThreadPoolProxy;

    if-nez v0, :cond_0

    .line 149
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "diyici==mShortPool"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 150
    new-instance v0, Lorg/webrtc/videoengine/VideoCaptureAndroid$ThreadPoolProxy;

    invoke-direct {v0}, Lorg/webrtc/videoengine/VideoCaptureAndroid$ThreadPoolProxy;-><init>()V

    sput-object v0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->mShortPool:Lorg/webrtc/videoengine/VideoCaptureAndroid$ThreadPoolProxy;

    .line 152
    :cond_0
    sget-object v7, Lorg/webrtc/videoengine/VideoCaptureAndroid;->mShortPool:Lorg/webrtc/videoengine/VideoCaptureAndroid$ThreadPoolProxy;

    new-instance v0, Lorg/webrtc/videoengine/VideoCaptureAndroid$1;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v6}, Lorg/webrtc/videoengine/VideoCaptureAndroid$1;-><init>(Lorg/webrtc/videoengine/VideoCaptureAndroid;IIIILjava/util/concurrent/Exchanger;)V

    invoke-virtual {v7, v0}, Lorg/webrtc/videoengine/VideoCaptureAndroid$ThreadPoolProxy;->execute(Ljava/lang/Runnable;)V

    .line 161
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v6, v0}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->exchange(Ljava/util/concurrent/Exchanger;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 147
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private startCaptureOnCameraThread(IIIILjava/util/concurrent/Exchanger;)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljava/util/concurrent/Exchanger",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 166
    const-string v0, "VideoCaptureAndroid"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "startCapture: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :try_start_0
    iget v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->id:I

    invoke-static {v0}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 177
    :try_start_1
    iget v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->id:I

    if-nez v0, :cond_0

    .line 178
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->timer:Ljava/util/Timer;

    .line 179
    new-instance v0, Lorg/webrtc/videoengine/VideoCaptureAndroid$2;

    invoke-direct {v0, p0}, Lorg/webrtc/videoengine/VideoCaptureAndroid$2;-><init>(Lorg/webrtc/videoengine/VideoCaptureAndroid;)V

    iput-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->task:Ljava/util/TimerTask;

    .line 199
    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->timer:Ljava/util/Timer;

    iget-object v1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->task:Ljava/util/TimerTask;

    const-wide/16 v2, 0x7d0

    const-wide/16 v4, 0x1388

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 202
    :cond_0
    const-string v0, "VideoCaptureAndroid"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "startCaptureOnCameraThread: Camera id + "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    sget-object v0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->localPreview:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_4

    .line 204
    sget-object v0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->localPreview:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 205
    sget-object v0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->localPreview:Landroid/view/SurfaceHolder;

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->localPreview:Landroid/view/SurfaceHolder;

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 206
    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    sget-object v1, Lorg/webrtc/videoengine/VideoCaptureAndroid;->localPreview:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 222
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 223
    const-string v1, "VideoCaptureAndroid"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isVideoStabilizationSupported: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isVideoStabilizationSupported()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isVideoStabilizationSupported()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 225
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setVideoStabilization(Z)V

    .line 227
    :cond_2
    invoke-virtual {v0, p1, p2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 228
    invoke-virtual {v0, p3, p4}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    .line 230
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setPreviewFormat(I)V

    .line 231
    iget-object v1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 232
    mul-int v0, p1, p2

    const/16 v1, 0x11

    invoke-static {v1}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v1

    mul-int/2addr v0, v1

    div-int/lit8 v1, v0, 0x8

    move v0, v6

    .line 233
    :goto_1
    const/4 v2, 0x3

    if-lt v0, v2, :cond_5

    .line 236
    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, p0}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 237
    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 238
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p5, v0}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->exchange(Ljava/util/concurrent/Exchanger;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    sput-object v0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->cameraFront:Landroid/hardware/Camera;

    .line 255
    :goto_2
    return-void

    .line 171
    :catch_0
    move-exception v0

    .line 172
    const-string v1, "VideoCaptureAndroid"

    const-string v2, "RuntimeException--\u6444\u50cf\u5934\u5f00\u542f\u5931\u8d25"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const/16 v1, 0x14

    const-string v2, "PERMISSION_CAMERA"

    invoke-direct {p0, v1, v2}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->outputAVCallStatus(ILjava/lang/Object;)V

    .line 174
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 244
    :catch_1
    move-exception v0

    .line 246
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 248
    const-string v1, "VideoCaptureAndroid"

    const-string v2, "startCapture failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 249
    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_3

    .line 250
    new-instance v0, Ljava/util/concurrent/Exchanger;

    invoke-direct {v0}, Ljava/util/concurrent/Exchanger;-><init>()V

    .line 251
    invoke-direct {p0, v0}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->stopCaptureOnCameraThread(Ljava/util/concurrent/Exchanger;)V

    .line 252
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->exchange(Ljava/util/concurrent/Exchanger;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    :cond_3
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p5, v0}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->exchange(Ljava/util/concurrent/Exchanger;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 218
    :cond_4
    :try_start_2
    new-instance v0, Landroid/graphics/SurfaceTexture;

    const/16 v1, 0x2a

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->dummySurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 219
    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    iget-object v1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->dummySurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    goto/16 :goto_0

    .line 234
    :cond_5
    iget-object v2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    new-array v3, v1, [B

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->addCallbackBuffer([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 233
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private declared-synchronized stopCapture()Z
    .locals 2

    .prologue
    .line 264
    monitor-enter p0

    :try_start_0
    sget-object v0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->result:Ljava/util/concurrent/Exchanger;

    if-nez v0, :cond_0

    .line 265
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "new Exchanger<Boolean>() "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 266
    new-instance v0, Ljava/util/concurrent/Exchanger;

    invoke-direct {v0}, Ljava/util/concurrent/Exchanger;-><init>()V

    sput-object v0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->result:Ljava/util/concurrent/Exchanger;

    .line 268
    :cond_0
    sget-object v0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->mShortPool:Lorg/webrtc/videoengine/VideoCaptureAndroid$ThreadPoolProxy;

    new-instance v1, Lorg/webrtc/videoengine/VideoCaptureAndroid$3;

    invoke-direct {v1, p0}, Lorg/webrtc/videoengine/VideoCaptureAndroid$3;-><init>(Lorg/webrtc/videoengine/VideoCaptureAndroid;)V

    invoke-virtual {v0, v1}, Lorg/webrtc/videoengine/VideoCaptureAndroid$ThreadPoolProxy;->execute(Ljava/lang/Runnable;)V

    .line 275
    sget-object v0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->result:Ljava/util/concurrent/Exchanger;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->exchange(Ljava/util/concurrent/Exchanger;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 264
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private stopCaptureOnCameraThread(Ljava/util/concurrent/Exchanger;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Exchanger",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 279
    const-string v0, "VideoCaptureAndroid"

    const-string v1, "stopCapture"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 281
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Camera is already stopped!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 285
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->task:Ljava/util/TimerTask;

    if-eqz v0, :cond_1

    .line 286
    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->task:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 287
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->task:Ljava/util/TimerTask;

    .line 289
    :cond_1
    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_2

    .line 290
    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 291
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->timer:Ljava/util/Timer;

    .line 293
    :cond_2
    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 294
    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 295
    sget-object v0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->localPreview:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_3

    .line 296
    sget-object v0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->localPreview:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 297
    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 301
    :goto_0
    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 302
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    .line 303
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->exchange(Ljava/util/concurrent/Exchanger;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    :goto_1
    return-void

    .line 299
    :cond_3
    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 306
    :catch_0
    move-exception v0

    .line 310
    :goto_2
    const-string v1, "VideoCaptureAndroid"

    const-string v2, "Failed to stop camera"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 311
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->exchange(Ljava/util/concurrent/Exchanger;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 308
    :catch_1
    move-exception v0

    goto :goto_2
.end method


# virtual methods
.method public declared-synchronized onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 4

    .prologue
    .line 318
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 326
    :goto_0
    monitor-exit p0

    return-void

    .line 321
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    if-eq v0, p2, :cond_1

    .line 322
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unexpected camera in callback!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 318
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 324
    :cond_1
    :try_start_2
    array-length v0, p1

    iget-wide v2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->native_capturer:J

    invoke-direct {p0, p1, v0, v2, v3}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->ProvideCameraFrame([BIJ)V

    .line 325
    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 3

    .prologue
    .line 363
    monitor-enter p0

    :try_start_0
    const-string v0, "VideoCaptureAndroid"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "VideoCaptureAndroid::surfaceChanged ignored: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 364
    monitor-exit p0

    return-void

    .line 363
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3

    .prologue
    .line 367
    monitor-enter p0

    :try_start_0
    const-string v0, "VideoCaptureAndroid"

    const-string v1, "VideoCaptureAndroid::surfaceCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 382
    :cond_0
    monitor-exit p0

    return-void

    .line 371
    :cond_1
    :try_start_1
    new-instance v0, Ljava/util/concurrent/Exchanger;

    invoke-direct {v0}, Ljava/util/concurrent/Exchanger;-><init>()V

    .line 372
    iget-object v1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->cameraThreadHandler:Landroid/os/Handler;

    new-instance v2, Lorg/webrtc/videoengine/VideoCaptureAndroid$5;

    invoke-direct {v2, p0, p1, v0}, Lorg/webrtc/videoengine/VideoCaptureAndroid$5;-><init>(Lorg/webrtc/videoengine/VideoCaptureAndroid;Landroid/view/SurfaceHolder;Ljava/util/concurrent/Exchanger;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 378
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->exchange(Ljava/util/concurrent/Exchanger;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/IOException;

    .line 379
    if-eqz v0, :cond_0

    .line 380
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 367
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 3

    .prologue
    .line 385
    monitor-enter p0

    :try_start_0
    const-string v0, "VideoCaptureAndroid"

    const-string v1, "VideoCaptureAndroid::surfaceDestroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 400
    :cond_0
    monitor-exit p0

    return-void

    .line 389
    :cond_1
    :try_start_1
    new-instance v0, Ljava/util/concurrent/Exchanger;

    invoke-direct {v0}, Ljava/util/concurrent/Exchanger;-><init>()V

    .line 390
    iget-object v1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->cameraThreadHandler:Landroid/os/Handler;

    new-instance v2, Lorg/webrtc/videoengine/VideoCaptureAndroid$6;

    invoke-direct {v2, p0, v0}, Lorg/webrtc/videoengine/VideoCaptureAndroid$6;-><init>(Lorg/webrtc/videoengine/VideoCaptureAndroid;Ljava/util/concurrent/Exchanger;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 396
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->exchange(Ljava/util/concurrent/Exchanger;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/IOException;

    .line 397
    if-eqz v0, :cond_0

    .line 398
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 385
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

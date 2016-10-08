.class public final Lcom/bairuitech/anychat/e;
.super Ljava/lang/Object;
.source "AnyChatCameraHelper.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field public a:Landroid/hardware/Camera;

.field public b:Z

.field c:Z

.field public d:I

.field public e:Landroid/view/SurfaceHolder;

.field public f:I

.field public g:Landroid/content/Context;

.field h:I

.field public final i:I

.field public final j:I

.field private final k:I

.field private l:I

.field private m:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object v2, p0, Lcom/bairuitech/anychat/e;->a:Landroid/hardware/Camera;

    .line 21
    iput-boolean v1, p0, Lcom/bairuitech/anychat/e;->b:Z

    .line 22
    iput-boolean v1, p0, Lcom/bairuitech/anychat/e;->c:Z

    .line 23
    iput v1, p0, Lcom/bairuitech/anychat/e;->d:I

    .line 24
    iput-object v2, p0, Lcom/bairuitech/anychat/e;->e:Landroid/view/SurfaceHolder;

    .line 25
    const/4 v0, -0x1

    iput v0, p0, Lcom/bairuitech/anychat/e;->f:I

    .line 26
    const/4 v0, 0x3

    iput v0, p0, Lcom/bairuitech/anychat/e;->k:I

    .line 28
    iput-object v2, p0, Lcom/bairuitech/anychat/e;->g:Landroid/content/Context;

    .line 29
    iput v1, p0, Lcom/bairuitech/anychat/e;->l:I

    .line 30
    iput v1, p0, Lcom/bairuitech/anychat/e;->h:I

    .line 31
    iput v1, p0, Lcom/bairuitech/anychat/e;->m:I

    .line 33
    iput v1, p0, Lcom/bairuitech/anychat/e;->i:I

    .line 34
    const/4 v0, 0x1

    iput v0, p0, Lcom/bairuitech/anychat/e;->j:I

    return-void
.end method

.method static synthetic a(Lcom/bairuitech/anychat/e;)Z
    .locals 1

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/bairuitech/anychat/e;->c:Z

    return v0
.end method

.method public static b()I
    .locals 1

    .prologue
    .line 165
    :try_start_0
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 167
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/bairuitech/anychat/e;)Landroid/hardware/Camera;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/bairuitech/anychat/e;->a:Landroid/hardware/Camera;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/16 v10, 0x11

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 42
    iget-object v0, p0, Lcom/bairuitech/anychat/e;->a:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 142
    :goto_0
    return-void

    .line 45
    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lcom/bairuitech/anychat/e;->b:Z

    if-eqz v0, :cond_1

    .line 46
    iget-object v0, p0, Lcom/bairuitech/anychat/e;->a:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 47
    iget-object v0, p0, Lcom/bairuitech/anychat/e;->a:Landroid/hardware/Camera;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 49
    :cond_1
    new-instance v4, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v4}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 50
    iget v0, p0, Lcom/bairuitech/anychat/e;->d:I

    invoke-static {v0, v4}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 51
    iget v0, v4, Landroid/hardware/Camera$CameraInfo;->orientation:I

    iput v0, p0, Lcom/bairuitech/anychat/e;->l:I

    .line 52
    iget v0, v4, Landroid/hardware/Camera$CameraInfo;->facing:I

    iput v0, p0, Lcom/bairuitech/anychat/e;->h:I

    .line 1289
    iget-object v0, p0, Lcom/bairuitech/anychat/e;->g:Landroid/content/Context;

    if-eqz v0, :cond_d

    .line 1290
    iget-object v0, p0, Lcom/bairuitech/anychat/e;->g:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 1292
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move v0, v1

    .line 53
    :goto_1
    iput v0, p0, Lcom/bairuitech/anychat/e;->m:I

    .line 54
    const-string v0, "ANYCHAT"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "allocate: device orientation="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/bairuitech/anychat/e;->m:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", camera orientation="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/bairuitech/anychat/e;->l:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", facing="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/bairuitech/anychat/e;->h:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-virtual {p0}, Lcom/bairuitech/anychat/e;->c()V

    .line 59
    iget-object v0, p0, Lcom/bairuitech/anychat/e;->a:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v5

    .line 62
    iget-object v0, p0, Lcom/bairuitech/anychat/e;->a:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v6

    .line 65
    const/16 v0, 0x26

    invoke-static {v0}, Lcom/bairuitech/anychat/AnyChatCoreSDK;->GetSDKOptionInt(I)I

    move-result v7

    .line 66
    const/16 v0, 0x27

    invoke-static {v0}, Lcom/bairuitech/anychat/AnyChatCoreSDK;->GetSDKOptionInt(I)I

    move-result v8

    move v3, v1

    .line 68
    :goto_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_c

    .line 69
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    .line 70
    iget v9, v0, Landroid/hardware/Camera$Size;->width:I

    if-ne v9, v7, :cond_4

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    if-ne v0, v8, :cond_4

    .line 72
    invoke-virtual {v5, v7, v8}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    move v0, v2

    .line 77
    :goto_3
    if-nez v0, :cond_2

    .line 78
    const/16 v0, 0x140

    const/16 v2, 0xf0

    invoke-virtual {v5, v0, v2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 82
    :cond_2
    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v3

    move v2, v1

    .line 83
    :goto_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 84
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 85
    const/4 v6, 0x0

    aget v6, v0, v6

    const/16 v7, 0x61a8

    if-lt v6, v7, :cond_5

    const/4 v6, 0x1

    aget v6, v0, v6

    const/16 v7, 0x61a8

    if-lt v6, v7, :cond_5

    .line 87
    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v0, v0, v3

    invoke-virtual {v5, v2, v0}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    .line 93
    :cond_3
    const/16 v0, 0x11

    invoke-virtual {v5, v0}, Landroid/hardware/Camera$Parameters;->setPreviewFormat(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :try_start_1
    iget-object v0, p0, Lcom/bairuitech/anychat/e;->a:Landroid/hardware/Camera;

    invoke-virtual {v0, v5}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 100
    :goto_5
    :try_start_2
    iget-object v0, p0, Lcom/bairuitech/anychat/e;->a:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 101
    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v0, v2

    const/16 v2, 0x11

    invoke-static {v2}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v2

    mul-int/2addr v0, v2

    div-int/lit8 v2, v0, 0x8

    move v0, v1

    .line 102
    :goto_6
    if-ge v0, v11, :cond_6

    .line 103
    iget-object v1, p0, Lcom/bairuitech/anychat/e;->a:Landroid/hardware/Camera;

    new-array v3, v2, [B

    invoke-virtual {v1, v3}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 102
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1294
    :pswitch_0
    const/16 v0, 0x5a

    .line 1295
    goto/16 :goto_1

    .line 1297
    :pswitch_1
    const/16 v0, 0xb4

    .line 1298
    goto/16 :goto_1

    .line 1300
    :pswitch_2
    const/16 v0, 0x10e

    .line 1301
    goto/16 :goto_1

    .line 68
    :cond_4
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_2

    .line 83
    :cond_5
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4

    .line 106
    :cond_6
    iget-object v0, p0, Lcom/bairuitech/anychat/e;->a:Landroid/hardware/Camera;

    new-instance v1, Lcom/bairuitech/anychat/e$1;

    invoke-direct {v1, p0}, Lcom/bairuitech/anychat/e$1;-><init>(Lcom/bairuitech/anychat/e;)V

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 115
    iget-object v0, p0, Lcom/bairuitech/anychat/e;->a:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bairuitech/anychat/e;->b:Z

    .line 119
    iget-object v0, p0, Lcom/bairuitech/anychat/e;->a:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v0

    if-ne v0, v10, :cond_7

    .line 120
    const/16 v0, 0x8

    iput v0, p0, Lcom/bairuitech/anychat/e;->f:I

    .line 132
    :goto_7
    iget-object v0, p0, Lcom/bairuitech/anychat/e;->a:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 133
    const/16 v1, 0x1a

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/bairuitech/anychat/AnyChatCoreSDK;->SetSDKOptionInt(II)I

    .line 135
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 136
    invoke-virtual {v5, v1}, Landroid/hardware/Camera$Parameters;->getPreviewFpsRange([I)V

    .line 137
    iget v2, p0, Lcom/bairuitech/anychat/e;->f:I

    iget v3, v0, Landroid/hardware/Camera$Size;->width:I

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    const/4 v5, 0x1

    aget v1, v1, v5

    div-int/lit16 v1, v1, 0x3e8

    const/4 v5, 0x0

    invoke-static {v2, v3, v0, v1, v5}, Lcom/bairuitech/anychat/AnyChatCoreSDK;->SetInputVideoFormat(IIIII)I

    .line 138
    const/16 v0, 0x64

    iget v1, v4, Landroid/hardware/Camera$CameraInfo;->facing:I

    invoke-static {v0, v1}, Lcom/bairuitech/anychat/AnyChatCoreSDK;->SetSDKOptionInt(II)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 140
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 121
    :cond_7
    :try_start_3
    iget-object v0, p0, Lcom/bairuitech/anychat/e;->a:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v0

    const v1, 0x32315659

    if-ne v0, v1, :cond_8

    .line 122
    const/4 v0, 0x2

    iput v0, p0, Lcom/bairuitech/anychat/e;->f:I

    goto :goto_7

    .line 123
    :cond_8
    iget-object v0, p0, Lcom/bairuitech/anychat/e;->a:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_9

    .line 124
    const/16 v0, 0x9

    iput v0, p0, Lcom/bairuitech/anychat/e;->f:I

    goto :goto_7

    .line 125
    :cond_9
    iget-object v0, p0, Lcom/bairuitech/anychat/e;->a:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v0

    const/16 v1, 0x14

    if-ne v0, v1, :cond_a

    .line 126
    const/4 v0, 0x3

    iput v0, p0, Lcom/bairuitech/anychat/e;->f:I

    goto :goto_7

    .line 127
    :cond_a
    iget-object v0, p0, Lcom/bairuitech/anychat/e;->a:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_b

    .line 128
    const/4 v0, 0x5

    iput v0, p0, Lcom/bairuitech/anychat/e;->f:I

    goto :goto_7

    .line 130
    :cond_b
    const-string v0, "ANYCHAT"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unknow camera privew format:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bairuitech/anychat/e;->a:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_7

    :catch_1
    move-exception v0

    goto/16 :goto_5

    :cond_c
    move v0, v1

    goto/16 :goto_3

    :cond_d
    move v0, v1

    goto/16 :goto_1

    .line 1292
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final c()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 312
    iget-object v0, p0, Lcom/bairuitech/anychat/e;->g:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 340
    :goto_0
    return-void

    .line 315
    :cond_0
    :try_start_0
    new-instance v2, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v2}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 316
    iget v0, p0, Lcom/bairuitech/anychat/e;->d:I

    invoke-static {v0, v2}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 318
    iget-object v0, p0, Lcom/bairuitech/anychat/e;->g:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 319
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 321
    packed-switch v0, :pswitch_data_0

    move v0, v1

    .line 329
    :goto_1
    iget v1, v2, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 330
    iget v1, v2, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v0, v1

    rem-int/lit16 v0, v0, 0x168

    .line 331
    rsub-int v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    .line 336
    :goto_2
    iget-object v1, p0, Lcom/bairuitech/anychat/e;->a:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    goto :goto_0

    .line 340
    :catch_0
    move-exception v0

    goto :goto_0

    :pswitch_0
    move v0, v1

    .line 322
    goto :goto_1

    .line 323
    :pswitch_1
    const/16 v0, 0x5a

    goto :goto_1

    .line 324
    :pswitch_2
    const/16 v0, 0xb4

    goto :goto_1

    .line 325
    :pswitch_3
    const/16 v0, 0x10e

    goto :goto_1

    .line 333
    :cond_1
    iget v1, v2, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int v0, v1, v0

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 321
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .prologue
    .line 251
    return-void
.end method

.method public final surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    .prologue
    .line 256
    :try_start_0
    iget v0, p0, Lcom/bairuitech/anychat/e;->d:I

    invoke-static {v0}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/bairuitech/anychat/e;->a:Landroid/hardware/Camera;

    .line 257
    iput-object p1, p0, Lcom/bairuitech/anychat/e;->e:Landroid/view/SurfaceHolder;

    .line 258
    iget-object v0, p0, Lcom/bairuitech/anychat/e;->a:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 259
    invoke-virtual {p0}, Lcom/bairuitech/anychat/e;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    :cond_0
    :goto_0
    return-void

    .line 261
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/bairuitech/anychat/e;->a:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/bairuitech/anychat/e;->a:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 263
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bairuitech/anychat/e;->a:Landroid/hardware/Camera;

    .line 264
    const/4 v0, -0x1

    iput v0, p0, Lcom/bairuitech/anychat/e;->f:I

    goto :goto_0
.end method

.method public final surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 271
    iget-object v0, p0, Lcom/bairuitech/anychat/e;->a:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 273
    :try_start_0
    iget-object v0, p0, Lcom/bairuitech/anychat/e;->a:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 274
    iget-object v0, p0, Lcom/bairuitech/anychat/e;->a:Landroid/hardware/Camera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 275
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bairuitech/anychat/e;->b:Z

    .line 276
    iget-object v0, p0, Lcom/bairuitech/anychat/e;->a:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 277
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bairuitech/anychat/e;->a:Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    :cond_0
    :goto_0
    iput-object v2, p0, Lcom/bairuitech/anychat/e;->e:Landroid/view/SurfaceHolder;

    .line 284
    const/4 v0, -0x1

    iput v0, p0, Lcom/bairuitech/anychat/e;->f:I

    .line 285
    return-void

    .line 279
    :catch_0
    move-exception v0

    iput-object v2, p0, Lcom/bairuitech/anychat/e;->a:Landroid/hardware/Camera;

    .line 280
    iput-boolean v3, p0, Lcom/bairuitech/anychat/e;->b:Z

    goto :goto_0
.end method

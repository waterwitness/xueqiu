.class final Lcom/kwlopen/sdk/camera/c;
.super Landroid/view/SurfaceView;
.source "MaskSurfaceView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field final synthetic a:Lcom/kwlopen/sdk/camera/MaskSurfaceView;

.field private b:Landroid/view/SurfaceHolder;


# direct methods
.method public constructor <init>(Lcom/kwlopen/sdk/camera/MaskSurfaceView;Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 148
    iput-object p1, p0, Lcom/kwlopen/sdk/camera/c;->a:Lcom/kwlopen/sdk/camera/MaskSurfaceView;

    .line 149
    invoke-direct {p0, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 150
    invoke-virtual {p0}, Lcom/kwlopen/sdk/camera/c;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/kwlopen/sdk/camera/c;->b:Landroid/view/SurfaceHolder;

    .line 152
    iget-object v0, p0, Lcom/kwlopen/sdk/camera/c;->b:Landroid/view/SurfaceHolder;

    const/4 v1, -0x2

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 153
    iget-object v0, p0, Lcom/kwlopen/sdk/camera/c;->b:Landroid/view/SurfaceHolder;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 154
    iget-object v0, p0, Lcom/kwlopen/sdk/camera/c;->b:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 155
    return-void
.end method


# virtual methods
.method public final surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .prologue
    .line 163
    return-void
.end method

.method public final surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 167
    invoke-static {}, Lcom/kwlopen/sdk/camera/a;->a()Lcom/kwlopen/sdk/camera/a;

    move-result-object v3

    iget-object v0, p0, Lcom/kwlopen/sdk/camera/c;->a:Lcom/kwlopen/sdk/camera/MaskSurfaceView;

    invoke-static {v0}, Lcom/kwlopen/sdk/camera/MaskSurfaceView;->c(Lcom/kwlopen/sdk/camera/MaskSurfaceView;)I

    move-result v4

    iget-object v0, p0, Lcom/kwlopen/sdk/camera/c;->a:Lcom/kwlopen/sdk/camera/MaskSurfaceView;

    invoke-static {v0}, Lcom/kwlopen/sdk/camera/MaskSurfaceView;->d(Lcom/kwlopen/sdk/camera/MaskSurfaceView;)I

    move-result v5

    .line 1122
    :try_start_0
    iget-object v0, v3, Lcom/kwlopen/sdk/camera/a;->d:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 1123
    iget-object v0, v3, Lcom/kwlopen/sdk/camera/a;->d:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 1172
    :cond_0
    new-instance v6, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v6}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 1173
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v7

    move v0, v2

    .line 1175
    :goto_0
    if-ge v0, v7, :cond_4

    .line 1176
    invoke-static {v0, v6}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 1177
    iget v8, v6, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v8, :cond_3

    .line 1128
    :goto_1
    if-ne v0, v1, :cond_1

    .line 1129
    invoke-static {}, Lcom/kwlopen/sdk/camera/a;->b()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 1132
    :cond_1
    if-ne v0, v1, :cond_5

    .line 1134
    :try_start_1
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, v3, Lcom/kwlopen/sdk/camera/a;->d:Landroid/hardware/Camera;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1328
    :goto_2
    :try_start_2
    iget-object v0, v3, Lcom/kwlopen/sdk/camera/a;->d:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 1329
    iget-object v1, v3, Lcom/kwlopen/sdk/camera/a;->d:Landroid/hardware/Camera;

    invoke-virtual {v1, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 1335
    iget-object v1, v3, Lcom/kwlopen/sdk/camera/a;->d:Landroid/hardware/Camera;

    const/16 v6, 0x5a

    invoke-virtual {v1, v6}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 1337
    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setPictureFormat(I)V

    .line 1338
    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setJpegQuality(I)V

    .line 1340
    const-string v1, "off"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 1372
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v1

    .line 1373
    invoke-static {v1, v5, v4}, Lcom/kwlopen/sdk/camera/a;->a(Ljava/util/List;II)Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 1375
    iget v4, v1, Landroid/hardware/Camera$Size;->width:I

    iget v5, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v0, v4, v5}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 1378
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v4

    .line 1379
    iget v5, v1, Landroid/hardware/Camera$Size;->width:I

    iget v1, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-static {v4, v5, v1}, Lcom/kwlopen/sdk/camera/a;->a(Ljava/util/List;II)Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 1380
    iget v4, v1, Landroid/hardware/Camera$Size;->width:I

    iget v1, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v0, v4, v1}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 1381
    iget-object v1, v3, Lcom/kwlopen/sdk/camera/a;->d:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1385
    iget-object v0, v3, Lcom/kwlopen/sdk/camera/a;->d:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 1398
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v0, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    div-float/2addr v1, v4

    .line 1400
    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    int-to-float v0, v0

    mul-float/2addr v0, v1

    iput v0, v3, Lcom/kwlopen/sdk/camera/a;->f:F

    .line 1402
    iget v0, v3, Lcom/kwlopen/sdk/camera/a;->f:F

    iget v1, v3, Lcom/kwlopen/sdk/camera/a;->h:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_6

    .line 1403
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, v3, Lcom/kwlopen/sdk/camera/a;->h:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1405
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v4, v3, Lcom/kwlopen/sdk/camera/a;->h:I

    int-to-float v4, v4

    iget v5, v3, Lcom/kwlopen/sdk/camera/a;->f:F

    div-float/2addr v4, v5

    mul-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1411
    :goto_3
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, v3, Lcom/kwlopen/sdk/camera/a;->f:F

    .line 1412
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, v3, Lcom/kwlopen/sdk/camera/a;->g:F
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1451
    :goto_4
    :try_start_3
    iget-object v0, v3, Lcom/kwlopen/sdk/camera/a;->d:Landroid/hardware/Camera;

    if-eqz v0, :cond_2

    .line 1452
    iget-object v0, v3, Lcom/kwlopen/sdk/camera/a;->d:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 1453
    iget-object v0, v3, Lcom/kwlopen/sdk/camera/a;->d:Landroid/hardware/Camera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 1454
    const/4 v0, 0x1

    iput-boolean v0, v3, Lcom/kwlopen/sdk/camera/a;->b:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 1458
    :cond_2
    :goto_5
    return-void

    .line 1175
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_4
    move v0, v1

    .line 1182
    goto/16 :goto_1

    .line 1136
    :catch_0
    move-exception v0

    :try_start_4
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, v3, Lcom/kwlopen/sdk/camera/a;->d:Landroid/hardware/Camera;

    .line 1137
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "open()\u65b9\u6cd5\u6709\u95ee\u9898"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_2

    .line 1146
    :catch_1
    move-exception v0

    .line 1147
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1148
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "kwlopen_msg_camera_error"

    invoke-static {v3, v4}, Lcom/b/a/a/f;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 1147
    invoke-static {v1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 1149
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1150
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 1141
    :cond_5
    :try_start_5
    invoke-static {v0}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, v3, Lcom/kwlopen/sdk/camera/a;->d:Landroid/hardware/Camera;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_2

    .line 1408
    :cond_6
    :try_start_6
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, v3, Lcom/kwlopen/sdk/camera/a;->f:F

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_3

    .line 1415
    :catch_2
    move-exception v0

    :try_start_7
    const-string v0, "CameraHelper"

    const-string v1, "\u76f8\u673a\u53c2\u6570\u8bbe\u7f6e\u9519\u8bef"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_4

    :catch_3
    move-exception v0

    goto :goto_5
.end method

.method public final surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 172
    invoke-static {}, Lcom/kwlopen/sdk/camera/a;->a()Lcom/kwlopen/sdk/camera/a;

    move-result-object v0

    .line 2424
    iget-object v1, v0, Lcom/kwlopen/sdk/camera/a;->d:Landroid/hardware/Camera;

    if-eqz v1, :cond_1

    .line 2425
    iget-boolean v1, v0, Lcom/kwlopen/sdk/camera/a;->b:Z

    if-eqz v1, :cond_0

    .line 2426
    invoke-virtual {v0}, Lcom/kwlopen/sdk/camera/a;->c()V

    .line 2428
    :cond_0
    iget-object v1, v0, Lcom/kwlopen/sdk/camera/a;->d:Landroid/hardware/Camera;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 2429
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/kwlopen/sdk/camera/a;->b:Z

    .line 2430
    iget-object v1, v0, Lcom/kwlopen/sdk/camera/a;->d:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    .line 2431
    iput-object v2, v0, Lcom/kwlopen/sdk/camera/a;->d:Landroid/hardware/Camera;

    .line 2432
    sput-object v2, Lcom/kwlopen/sdk/camera/a;->c:Lcom/kwlopen/sdk/camera/a;

    .line 173
    :cond_1
    return-void
.end method

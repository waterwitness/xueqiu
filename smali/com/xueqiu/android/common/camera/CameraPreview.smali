.class public Lcom/xueqiu/android/common/camera/CameraPreview;
.super Landroid/view/SurfaceView;
.source "CameraPreview.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field a:Z

.field b:Lcom/xueqiu/android/common/camera/g;

.field private c:Landroid/view/SurfaceHolder;

.field private d:Landroid/hardware/Camera;

.field private e:Ljava/util/Timer;

.field private f:Lcom/xueqiu/android/common/camera/f;

.field private g:I

.field private h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xueqiu/android/common/camera/CameraPreview;->a:Z

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/common/camera/CameraPreview;->h:Ljava/util/ArrayList;

    .line 41
    invoke-virtual {p0}, Lcom/xueqiu/android/common/camera/CameraPreview;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/common/camera/CameraPreview;->c:Landroid/view/SurfaceHolder;

    .line 42
    iget-object v0, p0, Lcom/xueqiu/android/common/camera/CameraPreview;->c:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 43
    iget-object v0, p0, Lcom/xueqiu/android/common/camera/CameraPreview;->c:Landroid/view/SurfaceHolder;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 44
    invoke-virtual {p0, p0}, Lcom/xueqiu/android/common/camera/CameraPreview;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 45
    return-void
.end method

.method static synthetic a(I)Landroid/hardware/Camera;
    .locals 1

    .prologue
    .line 26
    invoke-static {p0}, Lcom/xueqiu/android/common/camera/CameraPreview;->b(I)Landroid/hardware/Camera;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/xueqiu/android/common/camera/CameraPreview;Landroid/hardware/Camera;)Landroid/hardware/Camera;
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/xueqiu/android/common/camera/CameraPreview;->d:Landroid/hardware/Camera;

    return-object p1
.end method

.method static synthetic a(Lcom/xueqiu/android/common/camera/CameraPreview;Lcom/xueqiu/android/common/camera/f;)Lcom/xueqiu/android/common/camera/f;
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/xueqiu/android/common/camera/CameraPreview;->f:Lcom/xueqiu/android/common/camera/f;

    return-object p1
.end method

.method static synthetic a(Lcom/xueqiu/android/common/camera/CameraPreview;)Lcom/xueqiu/android/common/camera/g;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/xueqiu/android/common/camera/CameraPreview;->b:Lcom/xueqiu/android/common/camera/g;

    return-object v0
.end method

.method static synthetic a(Lcom/xueqiu/android/common/camera/CameraPreview;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/xueqiu/android/common/camera/CameraPreview;->e:Ljava/util/Timer;

    return-object p1
.end method

.method private static b(I)Landroid/hardware/Camera;
    .locals 2

    .prologue
    .line 105
    :try_start_0
    invoke-static {p0}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 108
    :goto_0
    return-object v0

    .line 106
    :catch_0
    move-exception v0

    .line 107
    const-string v1, "CameraPreview"

    invoke-static {v1, v0}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 108
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/xueqiu/android/common/camera/CameraPreview;)Landroid/hardware/Camera;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/xueqiu/android/common/camera/CameraPreview;->d:Landroid/hardware/Camera;

    return-object v0
.end method

.method static synthetic c(Lcom/xueqiu/android/common/camera/CameraPreview;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/xueqiu/android/common/camera/CameraPreview;->d()V

    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/xueqiu/android/common/camera/CameraPreview;->d:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 123
    :try_start_0
    iget-object v0, p0, Lcom/xueqiu/android/common/camera/CameraPreview;->d:Landroid/hardware/Camera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 124
    iget-object v0, p0, Lcom/xueqiu/android/common/camera/CameraPreview;->d:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 125
    iget-object v0, p0, Lcom/xueqiu/android/common/camera/CameraPreview;->d:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 126
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xueqiu/android/common/camera/CameraPreview;->d:Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 127
    :catch_0
    move-exception v0

    .line 128
    const-string v1, "CameraPreview"

    invoke-static {v1, v0}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/xueqiu/android/common/camera/CameraPreview;)V
    .locals 15

    .prologue
    .line 26
    .line 1146
    iget-object v0, p0, Lcom/xueqiu/android/common/camera/CameraPreview;->d:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v5

    .line 1147
    const/16 v0, 0x100

    invoke-virtual {v5, v0}, Landroid/hardware/Camera$Parameters;->setPictureFormat(I)V

    .line 1150
    invoke-virtual {p0}, Lcom/xueqiu/android/common/camera/CameraPreview;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/xueqiu/android/common/camera/CameraPreview;->getHeight()I

    move-result v1

    if-le v0, v1, :cond_5

    .line 1151
    invoke-virtual {p0}, Lcom/xueqiu/android/common/camera/CameraPreview;->getWidth()I

    move-result v1

    .line 1152
    invoke-virtual {p0}, Lcom/xueqiu/android/common/camera/CameraPreview;->getHeight()I

    move-result v0

    move v14, v0

    move v0, v1

    move v1, v14

    .line 1158
    :goto_0
    iget-object v2, p0, Lcom/xueqiu/android/common/camera/CameraPreview;->d:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v6

    .line 2083
    int-to-double v2, v0

    int-to-double v8, v1

    div-double v8, v2, v8

    .line 2084
    if-nez v6, :cond_6

    const/4 v4, 0x0

    .line 1160
    :cond_0
    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 1161
    iget v1, v4, Landroid/hardware/Camera$Size;->width:I

    iget v2, v4, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v5, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 1162
    invoke-virtual {v0, v4}, Landroid/hardware/Camera$Size;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1163
    iget-object v0, p0, Lcom/xueqiu/android/common/camera/CameraPreview;->d:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v0

    iget v1, v4, Landroid/hardware/Camera$Size;->width:I

    .line 2111
    new-instance v2, Lcom/xueqiu/android/common/camera/e$1;

    invoke-direct {v2}, Lcom/xueqiu/android/common/camera/e$1;-><init>()V

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2117
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    .line 2118
    iget v3, v0, Landroid/hardware/Camera$Size;->width:I

    if-lt v3, v1, :cond_1

    .line 1164
    :goto_1
    if-eqz v0, :cond_2

    .line 1165
    iget v1, v0, Landroid/hardware/Camera$Size;->width:I

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v5, v1, v0}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 3056
    :cond_2
    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    .line 3058
    if-eqz v0, :cond_3

    .line 3059
    const-string v1, "continuous-picture"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 3060
    const-string v0, "continuous-picture"

    invoke-virtual {v5, v0}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 1171
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/xueqiu/android/common/camera/CameraPreview;->d:Landroid/hardware/Camera;

    invoke-virtual {v0, v5}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1172
    invoke-virtual {p0}, Lcom/xueqiu/android/common/camera/CameraPreview;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/xueqiu/android/common/camera/CameraPreview;->b:Lcom/xueqiu/android/common/camera/g;

    .line 4062
    iget v1, v1, Lcom/xueqiu/android/common/camera/g;->c:I

    .line 1173
    iget-object v2, p0, Lcom/xueqiu/android/common/camera/CameraPreview;->d:Landroid/hardware/Camera;

    .line 5024
    new-instance v3, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v3}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 5026
    invoke-static {v1, v3}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 5027
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 5028
    const/4 v0, 0x0

    .line 5029
    packed-switch v1, :pswitch_data_0

    .line 5045
    :goto_3
    iget v1, v3, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v4, 0x1

    if-ne v1, v4, :cond_c

    .line 5046
    iget v1, v3, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v0, v1

    rem-int/lit16 v0, v0, 0x168

    .line 5047
    rsub-int v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    .line 5051
    :goto_4
    invoke-virtual {v2, v0}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 1172
    iput v0, p0, Lcom/xueqiu/android/common/camera/CameraPreview;->g:I

    .line 1174
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_4

    .line 1175
    iget-object v0, p0, Lcom/xueqiu/android/common/camera/CameraPreview;->d:Landroid/hardware/Camera;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->enableShutterSound(Z)Z

    .line 26
    :cond_4
    return-void

    .line 1154
    :cond_5
    invoke-virtual {p0}, Lcom/xueqiu/android/common/camera/CameraPreview;->getHeight()I

    move-result v1

    .line 1155
    invoke-virtual {p0}, Lcom/xueqiu/android/common/camera/CameraPreview;->getWidth()I

    move-result v0

    move v14, v0

    move v0, v1

    move v1, v14

    goto/16 :goto_0

    .line 2085
    :cond_6
    const/4 v4, 0x0

    .line 2086
    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 2089
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_7
    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    .line 2090
    iget v10, v0, Landroid/hardware/Camera$Size;->width:I

    int-to-double v10, v10

    iget v12, v0, Landroid/hardware/Camera$Size;->height:I

    int-to-double v12, v12

    div-double/2addr v10, v12

    .line 2091
    sub-double/2addr v10, v8

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    const-wide v12, 0x3fb999999999999aL    # 0.1

    cmpl-double v10, v10, v12

    if-gtz v10, :cond_7

    .line 2092
    iget v10, v0, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v10, v1

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    int-to-double v10, v10

    cmpg-double v10, v10, v2

    if-gez v10, :cond_d

    .line 2094
    iget v2, v0, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-double v2, v2

    :goto_6
    move-object v4, v0

    .line 2096
    goto :goto_5

    .line 2098
    :cond_8
    if-nez v4, :cond_0

    .line 2099
    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 2100
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_9
    :goto_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    .line 2101
    iget v7, v0, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v7, v1

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    int-to-double v8, v7

    cmpg-double v7, v8, v2

    if-gez v7, :cond_9

    .line 2103
    iget v2, v0, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-double v2, v2

    move-object v4, v0

    goto :goto_7

    .line 2122
    :cond_a
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 3062
    :cond_b
    const-string v1, "auto"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3063
    const-string v0, "auto"

    invoke-virtual {v5, v0}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 5031
    :pswitch_0
    const/4 v0, 0x0

    .line 5032
    goto/16 :goto_3

    .line 5034
    :pswitch_1
    const/16 v0, 0x5a

    .line 5035
    goto/16 :goto_3

    .line 5037
    :pswitch_2
    const/16 v0, 0xb4

    .line 5038
    goto/16 :goto_3

    .line 5040
    :pswitch_3
    const/16 v0, 0x10e

    goto/16 :goto_3

    .line 5049
    :cond_c
    iget v1, v3, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int v0, v1, v0

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    goto/16 :goto_4

    :cond_d
    move-object v0, v4

    goto :goto_6

    .line 5029
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic e(Lcom/xueqiu/android/common/camera/CameraPreview;)Landroid/view/SurfaceHolder;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/xueqiu/android/common/camera/CameraPreview;->c:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method static synthetic f(Lcom/xueqiu/android/common/camera/CameraPreview;)Lcom/xueqiu/android/common/camera/f;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/xueqiu/android/common/camera/CameraPreview;->f:Lcom/xueqiu/android/common/camera/f;

    return-object v0
.end method

.method static synthetic g(Lcom/xueqiu/android/common/camera/CameraPreview;)Ljava/util/Timer;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/xueqiu/android/common/camera/CameraPreview;->e:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic h(Lcom/xueqiu/android/common/camera/CameraPreview;)Z
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xueqiu/android/common/camera/CameraPreview;->a:Z

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 52
    new-instance v0, Lcom/xueqiu/android/common/camera/CameraPreview$1;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/common/camera/CameraPreview$1;-><init>(Lcom/xueqiu/android/common/camera/CameraPreview;)V

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/camera/CameraPreview;->post(Ljava/lang/Runnable;)Z

    .line 79
    return-void
.end method

.method public final a(FF)V
    .locals 5

    .prologue
    .line 205
    iget-object v0, p0, Lcom/xueqiu/android/common/camera/CameraPreview;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/xueqiu/android/common/camera/CameraPreview;->h:Ljava/util/ArrayList;

    new-instance v1, Landroid/hardware/Camera$Area;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    :cond_0
    const-string v0, "CameraPreview"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "x:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",y:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Lcom/xueqiu/android/common/camera/CameraPreview;->h:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 212
    invoke-virtual {p0}, Lcom/xueqiu/android/common/camera/CameraPreview;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/xueqiu/android/common/camera/CameraPreview;->getHeight()I

    move-result v3

    .line 211
    invoke-static {p1, p2, v1, v2, v3}, Lcom/xueqiu/android/common/camera/e;->a(FFFII)Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    .line 213
    const/high16 v0, 0x3fc00000    # 1.5f

    .line 214
    invoke-virtual {p0}, Lcom/xueqiu/android/common/camera/CameraPreview;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/xueqiu/android/common/camera/CameraPreview;->getHeight()I

    move-result v2

    .line 213
    invoke-static {p1, p2, v0, v1, v2}, Lcom/xueqiu/android/common/camera/e;->a(FFFII)Landroid/graphics/Rect;

    move-result-object v0

    .line 215
    iget-object v1, p0, Lcom/xueqiu/android/common/camera/CameraPreview;->d:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 216
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v2

    if-lez v2, :cond_1

    .line 217
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getFocusAreas()Ljava/util/List;

    .line 218
    iget-object v2, p0, Lcom/xueqiu/android/common/camera/CameraPreview;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 220
    :cond_1
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    move-result v2

    if-lez v2, :cond_2

    .line 221
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 222
    new-instance v3, Landroid/hardware/Camera$Area;

    const/4 v4, 0x2

    invoke-direct {v3, v0, v4}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    .line 226
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/xueqiu/android/common/camera/CameraPreview;->d:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->cancelAutoFocus()V

    .line 227
    iget-object v0, p0, Lcom/xueqiu/android/common/camera/CameraPreview;->d:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    :goto_0
    return-void

    .line 228
    :catch_0
    move-exception v0

    .line 229
    const-string v1, "CameraPreview"

    invoke-static {v1, v0}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/xueqiu/android/common/camera/CameraPreview;->c()V

    .line 99
    invoke-direct {p0}, Lcom/xueqiu/android/common/camera/CameraPreview;->d()V

    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xueqiu/android/common/camera/CameraPreview;->a:Z

    .line 101
    return-void
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 139
    .line 1093
    :try_start_0
    iget-object v0, p0, Lcom/xueqiu/android/common/camera/CameraPreview;->e:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/common/camera/CameraPreview;->e:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1094
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/common/camera/CameraPreview;->f:Lcom/xueqiu/android/common/camera/f;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xueqiu/android/common/camera/CameraPreview;->f:Lcom/xueqiu/android/common/camera/f;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/camera/f;->cancel()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :cond_1
    :goto_0
    return-void

    .line 140
    :catch_0
    move-exception v0

    .line 141
    const-string v1, "CameraPreview"

    invoke-static {v1, v0}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getCamera()Landroid/hardware/Camera;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/xueqiu/android/common/camera/CameraPreview;->d:Landroid/hardware/Camera;

    return-object v0
.end method

.method public getCameraRotate()I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/xueqiu/android/common/camera/CameraPreview;->g:I

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 196
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 201
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 198
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/xueqiu/android/common/camera/CameraPreview;->a(FF)V

    goto :goto_0

    .line 196
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setCameraSetting(Lcom/xueqiu/android/common/camera/g;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/xueqiu/android/common/camera/CameraPreview;->b:Lcom/xueqiu/android/common/camera/g;

    .line 49
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .prologue
    .line 192
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/xueqiu/android/common/camera/CameraPreview;->a()V

    .line 182
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/xueqiu/android/common/camera/CameraPreview;->b()V

    .line 187
    return-void
.end method

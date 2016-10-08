.class final Lcom/xueqiu/android/common/camera/f;
.super Ljava/util/TimerTask;
.source "CameraPreview.java"


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/camera/CameraPreview;


# direct methods
.method private constructor <init>(Lcom/xueqiu/android/common/camera/CameraPreview;)V
    .locals 0

    .prologue
    .line 233
    iput-object p1, p0, Lcom/xueqiu/android/common/camera/f;->a:Lcom/xueqiu/android/common/camera/CameraPreview;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xueqiu/android/common/camera/CameraPreview;B)V
    .locals 0

    .prologue
    .line 233
    invoke-direct {p0, p1}, Lcom/xueqiu/android/common/camera/f;-><init>(Lcom/xueqiu/android/common/camera/CameraPreview;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 236
    iget-object v0, p0, Lcom/xueqiu/android/common/camera/f;->a:Lcom/xueqiu/android/common/camera/CameraPreview;

    iget-object v1, p0, Lcom/xueqiu/android/common/camera/f;->a:Lcom/xueqiu/android/common/camera/CameraPreview;

    invoke-virtual {v1}, Lcom/xueqiu/android/common/camera/CameraPreview;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/xueqiu/android/common/camera/f;->a:Lcom/xueqiu/android/common/camera/CameraPreview;

    invoke-virtual {v2}, Lcom/xueqiu/android/common/camera/CameraPreview;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/camera/CameraPreview;->a(FF)V

    .line 237
    return-void
.end method

.class final Lcom/xueqiu/android/common/camera/CameraPreview$1;
.super Ljava/lang/Object;
.source "CameraPreview.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/common/camera/CameraPreview;->a()V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/camera/CameraPreview;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/camera/CameraPreview;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/xueqiu/android/common/camera/CameraPreview$1;->a:Lcom/xueqiu/android/common/camera/CameraPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 55
    iget-object v0, p0, Lcom/xueqiu/android/common/camera/CameraPreview$1;->a:Lcom/xueqiu/android/common/camera/CameraPreview;

    invoke-static {v0}, Lcom/xueqiu/android/common/camera/CameraPreview;->a(Lcom/xueqiu/android/common/camera/CameraPreview;)Lcom/xueqiu/android/common/camera/g;

    move-result-object v0

    if-nez v0, :cond_1

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/common/camera/CameraPreview$1;->a:Lcom/xueqiu/android/common/camera/CameraPreview;

    invoke-static {v0}, Lcom/xueqiu/android/common/camera/CameraPreview;->b(Lcom/xueqiu/android/common/camera/CameraPreview;)Landroid/hardware/Camera;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 59
    iget-object v0, p0, Lcom/xueqiu/android/common/camera/CameraPreview$1;->a:Lcom/xueqiu/android/common/camera/CameraPreview;

    invoke-static {v0}, Lcom/xueqiu/android/common/camera/CameraPreview;->c(Lcom/xueqiu/android/common/camera/CameraPreview;)V

    .line 61
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/common/camera/CameraPreview$1;->a:Lcom/xueqiu/android/common/camera/CameraPreview;

    iget-object v1, p0, Lcom/xueqiu/android/common/camera/CameraPreview$1;->a:Lcom/xueqiu/android/common/camera/CameraPreview;

    invoke-static {v1}, Lcom/xueqiu/android/common/camera/CameraPreview;->a(Lcom/xueqiu/android/common/camera/CameraPreview;)Lcom/xueqiu/android/common/camera/g;

    move-result-object v1

    .line 1062
    iget v1, v1, Lcom/xueqiu/android/common/camera/g;->c:I

    .line 61
    invoke-static {v1}, Lcom/xueqiu/android/common/camera/CameraPreview;->a(I)Landroid/hardware/Camera;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/common/camera/CameraPreview;->a(Lcom/xueqiu/android/common/camera/CameraPreview;Landroid/hardware/Camera;)Landroid/hardware/Camera;

    .line 62
    iget-object v0, p0, Lcom/xueqiu/android/common/camera/CameraPreview$1;->a:Lcom/xueqiu/android/common/camera/CameraPreview;

    invoke-static {v0}, Lcom/xueqiu/android/common/camera/CameraPreview;->b(Lcom/xueqiu/android/common/camera/CameraPreview;)Landroid/hardware/Camera;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 64
    :try_start_0
    iget-object v0, p0, Lcom/xueqiu/android/common/camera/CameraPreview$1;->a:Lcom/xueqiu/android/common/camera/CameraPreview;

    invoke-static {v0}, Lcom/xueqiu/android/common/camera/CameraPreview;->d(Lcom/xueqiu/android/common/camera/CameraPreview;)V

    .line 65
    iget-object v0, p0, Lcom/xueqiu/android/common/camera/CameraPreview$1;->a:Lcom/xueqiu/android/common/camera/CameraPreview;

    invoke-static {v0}, Lcom/xueqiu/android/common/camera/CameraPreview;->b(Lcom/xueqiu/android/common/camera/CameraPreview;)Landroid/hardware/Camera;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/common/camera/CameraPreview$1;->a:Lcom/xueqiu/android/common/camera/CameraPreview;

    invoke-static {v1}, Lcom/xueqiu/android/common/camera/CameraPreview;->e(Lcom/xueqiu/android/common/camera/CameraPreview;)Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 66
    iget-object v0, p0, Lcom/xueqiu/android/common/camera/CameraPreview$1;->a:Lcom/xueqiu/android/common/camera/CameraPreview;

    invoke-static {v0}, Lcom/xueqiu/android/common/camera/CameraPreview;->b(Lcom/xueqiu/android/common/camera/CameraPreview;)Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 68
    iget-object v0, p0, Lcom/xueqiu/android/common/camera/CameraPreview$1;->a:Lcom/xueqiu/android/common/camera/CameraPreview;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/camera/CameraPreview;->c()V

    .line 69
    iget-object v0, p0, Lcom/xueqiu/android/common/camera/CameraPreview$1;->a:Lcom/xueqiu/android/common/camera/CameraPreview;

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    invoke-static {v0, v1}, Lcom/xueqiu/android/common/camera/CameraPreview;->a(Lcom/xueqiu/android/common/camera/CameraPreview;Ljava/util/Timer;)Ljava/util/Timer;

    .line 70
    iget-object v0, p0, Lcom/xueqiu/android/common/camera/CameraPreview$1;->a:Lcom/xueqiu/android/common/camera/CameraPreview;

    new-instance v1, Lcom/xueqiu/android/common/camera/f;

    iget-object v2, p0, Lcom/xueqiu/android/common/camera/CameraPreview$1;->a:Lcom/xueqiu/android/common/camera/CameraPreview;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/xueqiu/android/common/camera/f;-><init>(Lcom/xueqiu/android/common/camera/CameraPreview;B)V

    invoke-static {v0, v1}, Lcom/xueqiu/android/common/camera/CameraPreview;->a(Lcom/xueqiu/android/common/camera/CameraPreview;Lcom/xueqiu/android/common/camera/f;)Lcom/xueqiu/android/common/camera/f;

    .line 71
    iget-object v0, p0, Lcom/xueqiu/android/common/camera/CameraPreview$1;->a:Lcom/xueqiu/android/common/camera/CameraPreview;

    invoke-static {v0}, Lcom/xueqiu/android/common/camera/CameraPreview;->g(Lcom/xueqiu/android/common/camera/CameraPreview;)Ljava/util/Timer;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/common/camera/CameraPreview$1;->a:Lcom/xueqiu/android/common/camera/CameraPreview;

    invoke-static {v1}, Lcom/xueqiu/android/common/camera/CameraPreview;->f(Lcom/xueqiu/android/common/camera/CameraPreview;)Lcom/xueqiu/android/common/camera/f;

    move-result-object v1

    const-wide/16 v2, 0x1388

    const-wide/16 v4, 0xbb8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 72
    iget-object v0, p0, Lcom/xueqiu/android/common/camera/CameraPreview$1;->a:Lcom/xueqiu/android/common/camera/CameraPreview;

    invoke-static {v0}, Lcom/xueqiu/android/common/camera/CameraPreview;->h(Lcom/xueqiu/android/common/camera/CameraPreview;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 74
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

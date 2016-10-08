.class final Lcom/xueqiu/android/common/camera/b;
.super Ljava/lang/Object;
.source "CameraFragment.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;
.implements Landroid/hardware/Camera$ShutterCallback;


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/camera/a;


# direct methods
.method private constructor <init>(Lcom/xueqiu/android/common/camera/a;)V
    .locals 0

    .prologue
    .line 283
    iput-object p1, p0, Lcom/xueqiu/android/common/camera/b;->a:Lcom/xueqiu/android/common/camera/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xueqiu/android/common/camera/a;B)V
    .locals 0

    .prologue
    .line 283
    invoke-direct {p0, p1}, Lcom/xueqiu/android/common/camera/b;-><init>(Lcom/xueqiu/android/common/camera/a;)V

    return-void
.end method


# virtual methods
.method public final onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 287
    iget-object v0, p0, Lcom/xueqiu/android/common/camera/b;->a:Lcom/xueqiu/android/common/camera/a;

    invoke-static {v0, v2}, Lcom/xueqiu/android/common/camera/a;->a(Lcom/xueqiu/android/common/camera/a;Z)Z

    .line 288
    iget-object v0, p0, Lcom/xueqiu/android/common/camera/b;->a:Lcom/xueqiu/android/common/camera/a;

    invoke-static {v0}, Lcom/xueqiu/android/common/camera/a;->b(Lcom/xueqiu/android/common/camera/a;)Lcom/xueqiu/android/common/camera/CameraPreview;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/common/camera/CameraPreview;->b()V

    .line 289
    iget-object v0, p0, Lcom/xueqiu/android/common/camera/b;->a:Lcom/xueqiu/android/common/camera/a;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/xueqiu/android/common/camera/a;->a(Lcom/xueqiu/android/common/camera/a;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    .line 290
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 291
    new-instance v0, Lcom/xueqiu/android/common/camera/c;

    iget-object v1, p0, Lcom/xueqiu/android/common/camera/b;->a:Lcom/xueqiu/android/common/camera/a;

    invoke-direct {v0, v1, p1}, Lcom/xueqiu/android/common/camera/c;-><init>(Lcom/xueqiu/android/common/camera/a;[B)V

    invoke-virtual {v0}, Lcom/xueqiu/android/common/camera/c;->start()V

    .line 292
    return-void
.end method

.method public final onShutter()V
    .locals 0

    .prologue
    .line 296
    return-void
.end method

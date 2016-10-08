.class final Lcom/kwlopen/sdk/camera/MaskSurfaceView$1;
.super Ljava/lang/Object;
.source "MaskSurfaceView.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwlopen/sdk/camera/MaskSurfaceView;
.end annotation


# instance fields
.field final synthetic a:Lcom/kwlopen/sdk/camera/MaskSurfaceView;


# direct methods
.method constructor <init>(Lcom/kwlopen/sdk/camera/MaskSurfaceView;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/kwlopen/sdk/camera/MaskSurfaceView$1;->a:Lcom/kwlopen/sdk/camera/MaskSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x3e8

    const/4 v2, 0x0

    .line 80
    if-eqz p1, :cond_0

    .line 81
    iget-object v0, p0, Lcom/kwlopen/sdk/camera/MaskSurfaceView$1;->a:Lcom/kwlopen/sdk/camera/MaskSurfaceView;

    invoke-static {v0}, Lcom/kwlopen/sdk/camera/MaskSurfaceView;->a(Lcom/kwlopen/sdk/camera/MaskSurfaceView;)Lcom/kwlopen/sdk/camera/FocusImageView;

    move-result-object v0

    .line 1099
    iget v1, v0, Lcom/kwlopen/sdk/camera/FocusImageView;->b:I

    invoke-virtual {v0, v1}, Lcom/kwlopen/sdk/camera/FocusImageView;->setImageResource(I)V

    .line 1101
    iget-object v1, v0, Lcom/kwlopen/sdk/camera/FocusImageView;->e:Landroid/os/Handler;

    invoke-virtual {v1, v2, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 1102
    iget-object v1, v0, Lcom/kwlopen/sdk/camera/FocusImageView;->e:Landroid/os/Handler;

    new-instance v2, Lcom/kwlopen/sdk/camera/FocusImageView$2;

    invoke-direct {v2, v0}, Lcom/kwlopen/sdk/camera/FocusImageView$2;-><init>(Lcom/kwlopen/sdk/camera/FocusImageView;)V

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 87
    :goto_0
    return-void

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/kwlopen/sdk/camera/MaskSurfaceView$1;->a:Lcom/kwlopen/sdk/camera/MaskSurfaceView;

    invoke-static {v0}, Lcom/kwlopen/sdk/camera/MaskSurfaceView;->a(Lcom/kwlopen/sdk/camera/MaskSurfaceView;)Lcom/kwlopen/sdk/camera/FocusImageView;

    move-result-object v0

    .line 1116
    iget v1, v0, Lcom/kwlopen/sdk/camera/FocusImageView;->c:I

    invoke-virtual {v0, v1}, Lcom/kwlopen/sdk/camera/FocusImageView;->setImageResource(I)V

    .line 1118
    iget-object v1, v0, Lcom/kwlopen/sdk/camera/FocusImageView;->e:Landroid/os/Handler;

    invoke-virtual {v1, v2, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 1119
    iget-object v1, v0, Lcom/kwlopen/sdk/camera/FocusImageView;->e:Landroid/os/Handler;

    new-instance v2, Lcom/kwlopen/sdk/camera/FocusImageView$3;

    invoke-direct {v2, v0}, Lcom/kwlopen/sdk/camera/FocusImageView$3;-><init>(Lcom/kwlopen/sdk/camera/FocusImageView;)V

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

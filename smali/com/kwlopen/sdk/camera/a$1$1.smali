.class final Lcom/kwlopen/sdk/camera/a$1$1;
.super Ljava/lang/Object;
.source "CameraHelper.java"

# interfaces
.implements Landroid/hardware/Camera$ShutterCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwlopen/sdk/camera/a$1;->onAutoFocus(ZLandroid/hardware/Camera;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/kwlopen/sdk/camera/a$1;


# direct methods
.method constructor <init>(Lcom/kwlopen/sdk/camera/a$1;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lcom/kwlopen/sdk/camera/a$1$1;->a:Lcom/kwlopen/sdk/camera/a$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onShutter()V
    .locals 4

    .prologue
    .line 196
    iget-object v0, p0, Lcom/kwlopen/sdk/camera/a$1$1;->a:Lcom/kwlopen/sdk/camera/a$1;

    iget-object v0, v0, Lcom/kwlopen/sdk/camera/a$1;->c:Lcom/kwlopen/sdk/camera/a;

    .line 1040
    iget-object v0, v0, Lcom/kwlopen/sdk/camera/a;->a:Landroid/media/ToneGenerator;

    .line 196
    if-nez v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/kwlopen/sdk/camera/a$1$1;->a:Lcom/kwlopen/sdk/camera/a$1;

    iget-object v0, v0, Lcom/kwlopen/sdk/camera/a$1;->c:Lcom/kwlopen/sdk/camera/a;

    new-instance v1, Landroid/media/ToneGenerator;

    const/4 v2, 0x3

    const/16 v3, 0x64

    invoke-direct {v1, v2, v3}, Landroid/media/ToneGenerator;-><init>(II)V

    .line 2040
    iput-object v1, v0, Lcom/kwlopen/sdk/camera/a;->a:Landroid/media/ToneGenerator;

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/kwlopen/sdk/camera/a$1$1;->a:Lcom/kwlopen/sdk/camera/a$1;

    iget-object v0, v0, Lcom/kwlopen/sdk/camera/a$1;->c:Lcom/kwlopen/sdk/camera/a;

    .line 3040
    iget-object v0, v0, Lcom/kwlopen/sdk/camera/a;->a:Landroid/media/ToneGenerator;

    .line 200
    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroid/media/ToneGenerator;->startTone(I)Z

    .line 201
    return-void
.end method

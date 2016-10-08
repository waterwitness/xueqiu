.class final Lcom/kwlopen/sdk/camera/a$1$2;
.super Ljava/lang/Object;
.source "CameraHelper.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


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
    .line 202
    iput-object p1, p0, Lcom/kwlopen/sdk/camera/a$1$2;->a:Lcom/kwlopen/sdk/camera/a$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 3

    .prologue
    .line 205
    iget-object v0, p0, Lcom/kwlopen/sdk/camera/a$1$2;->a:Lcom/kwlopen/sdk/camera/a$1;

    iget-object v0, v0, Lcom/kwlopen/sdk/camera/a$1;->c:Lcom/kwlopen/sdk/camera/a;

    iget-object v1, p0, Lcom/kwlopen/sdk/camera/a$1$2;->a:Lcom/kwlopen/sdk/camera/a$1;

    iget-object v1, v1, Lcom/kwlopen/sdk/camera/a$1;->a:Landroid/app/Activity;

    .line 1040
    invoke-virtual {v0, v1, p1}, Lcom/kwlopen/sdk/camera/a;->a(Landroid/content/Context;[B)Ljava/lang/String;

    move-result-object v1

    .line 206
    const/4 v0, 0x0

    .line 207
    if-eqz v1, :cond_0

    .line 208
    const/4 v0, 0x1

    .line 210
    :cond_0
    iget-object v2, p0, Lcom/kwlopen/sdk/camera/a$1$2;->a:Lcom/kwlopen/sdk/camera/a$1;

    iget-object v2, v2, Lcom/kwlopen/sdk/camera/a$1;->c:Lcom/kwlopen/sdk/camera/a;

    .line 2040
    invoke-virtual {v2}, Lcom/kwlopen/sdk/camera/a;->c()V

    .line 211
    iget-object v2, p0, Lcom/kwlopen/sdk/camera/a$1$2;->a:Lcom/kwlopen/sdk/camera/a$1;

    iget-object v2, v2, Lcom/kwlopen/sdk/camera/a$1;->b:Lcom/kwlopen/sdk/camera/f;

    invoke-interface {v2, v0, v1}, Lcom/kwlopen/sdk/camera/f;->onCapture(ZLjava/lang/String;)V

    .line 212
    return-void
.end method

.class public final Lcom/kwlopen/sdk/camera/a$1;
.super Ljava/lang/Object;
.source "CameraHelper.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwlopen/sdk/camera/a;
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/kwlopen/sdk/camera/f;

.field final synthetic c:Lcom/kwlopen/sdk/camera/a;


# direct methods
.method public constructor <init>(Lcom/kwlopen/sdk/camera/a;Landroid/app/Activity;Lcom/kwlopen/sdk/camera/f;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcom/kwlopen/sdk/camera/a$1;->c:Lcom/kwlopen/sdk/camera/a;

    iput-object p2, p0, Lcom/kwlopen/sdk/camera/a$1;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/kwlopen/sdk/camera/a$1;->b:Lcom/kwlopen/sdk/camera/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 3

    .prologue
    .line 193
    new-instance v0, Lcom/kwlopen/sdk/camera/a$1$1;

    invoke-direct {v0, p0}, Lcom/kwlopen/sdk/camera/a$1$1;-><init>(Lcom/kwlopen/sdk/camera/a$1;)V

    const/4 v1, 0x0

    new-instance v2, Lcom/kwlopen/sdk/camera/a$1$2;

    invoke-direct {v2, p0}, Lcom/kwlopen/sdk/camera/a$1$2;-><init>(Lcom/kwlopen/sdk/camera/a$1;)V

    invoke-virtual {p2, v0, v1, v2}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 214
    return-void
.end method

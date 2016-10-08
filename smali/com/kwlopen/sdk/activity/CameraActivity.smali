.class public Lcom/kwlopen/sdk/activity/CameraActivity;
.super Landroid/app/Activity;
.source "CameraActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/kwlopen/sdk/camera/f;


# static fields
.field public static final TAG:Ljava/lang/String; = "CameraAty"


# instance fields
.field private closeButton:Landroid/widget/Button;

.field private mCameraShutterButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCapture(ZLjava/lang/String;)V
    .locals 2

    .prologue
    .line 54
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/kwlopen/sdk/activity/ImageShowActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 55
    const-string v1, "image_path"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    invoke-virtual {p0, v0}, Lcom/kwlopen/sdk/activity/CameraActivity;->startActivity(Landroid/content/Intent;)V

    .line 57
    invoke-virtual {p0}, Lcom/kwlopen/sdk/activity/CameraActivity;->finish()V

    .line 58
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 43
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "btn_shutter_camera"

    invoke-static {p0, v1}, Lcom/b/a/a/f;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 44
    invoke-static {}, Lcom/kwlopen/sdk/camera/a;->a()Lcom/kwlopen/sdk/camera/a;

    move-result-object v0

    .line 1190
    :try_start_0
    iget-object v1, v0, Lcom/kwlopen/sdk/camera/a;->d:Landroid/hardware/Camera;

    new-instance v2, Lcom/kwlopen/sdk/camera/a$1;

    invoke-direct {v2, v0, p0, p0}, Lcom/kwlopen/sdk/camera/a$1;-><init>(Lcom/kwlopen/sdk/camera/a;Landroid/app/Activity;Lcom/kwlopen/sdk/camera/f;)V

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1218
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "close_btn"

    invoke-static {p0, v1}, Lcom/b/a/a/f;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/kwlopen/sdk/activity/CameraActivity;->finish()V

    goto :goto_0

    .line 44
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 30
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/kwlopen/sdk/activity/CameraActivity;->requestWindowFeature(I)Z

    .line 32
    const-string v0, "kwlopen_camera"

    invoke-static {p0, v0}, Lcom/b/a/a/f;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/kwlopen/sdk/activity/CameraActivity;->setContentView(I)V

    .line 33
    const-string v0, "btn_shutter_camera"

    invoke-static {p0, v0}, Lcom/b/a/a/f;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/kwlopen/sdk/activity/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kwlopen/sdk/activity/CameraActivity;->mCameraShutterButton:Landroid/widget/Button;

    .line 34
    const-string v0, "close_btn"

    invoke-static {p0, v0}, Lcom/b/a/a/f;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/kwlopen/sdk/activity/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kwlopen/sdk/activity/CameraActivity;->closeButton:Landroid/widget/Button;

    .line 35
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/CameraActivity;->mCameraShutterButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/CameraActivity;->closeButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    return-void
.end method

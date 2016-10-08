.class Lcom/kwlopen/sdk/activity/ImageShowActivity$2;
.super Ljava/lang/Object;
.source "ImageShowActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwlopen/sdk/activity/ImageShowActivity;->decodeImage()V
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kwlopen/sdk/activity/ImageShowActivity;


# direct methods
.method constructor <init>(Lcom/kwlopen/sdk/activity/ImageShowActivity;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/kwlopen/sdk/activity/ImageShowActivity$2;->this$0:Lcom/kwlopen/sdk/activity/ImageShowActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "image_path ---->"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kwlopen/sdk/activity/ImageShowActivity$2;->this$0:Lcom/kwlopen/sdk/activity/ImageShowActivity;

    # getter for: Lcom/kwlopen/sdk/activity/ImageShowActivity;->image_path:Ljava/lang/String;
    invoke-static {v1}, Lcom/kwlopen/sdk/activity/ImageShowActivity;->access$300(Lcom/kwlopen/sdk/activity/ImageShowActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/a/d;->a(Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/ImageShowActivity$2;->this$0:Lcom/kwlopen/sdk/activity/ImageShowActivity;

    iget-object v1, p0, Lcom/kwlopen/sdk/activity/ImageShowActivity$2;->this$0:Lcom/kwlopen/sdk/activity/ImageShowActivity;

    # getter for: Lcom/kwlopen/sdk/activity/ImageShowActivity;->image_path:Ljava/lang/String;
    invoke-static {v1}, Lcom/kwlopen/sdk/activity/ImageShowActivity;->access$300(Lcom/kwlopen/sdk/activity/ImageShowActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/b/a/a/b;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    # setter for: Lcom/kwlopen/sdk/activity/ImageShowActivity;->bmp:Landroid/graphics/Bitmap;
    invoke-static {v0, v1}, Lcom/kwlopen/sdk/activity/ImageShowActivity;->access$102(Lcom/kwlopen/sdk/activity/ImageShowActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 77
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/ImageShowActivity$2;->this$0:Lcom/kwlopen/sdk/activity/ImageShowActivity;

    # getter for: Lcom/kwlopen/sdk/activity/ImageShowActivity;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/kwlopen/sdk/activity/ImageShowActivity;->access$400(Lcom/kwlopen/sdk/activity/ImageShowActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 78
    return-void
.end method

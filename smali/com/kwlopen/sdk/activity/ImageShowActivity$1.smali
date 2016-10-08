.class Lcom/kwlopen/sdk/activity/ImageShowActivity$1;
.super Landroid/os/Handler;
.source "ImageShowActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwlopen/sdk/activity/ImageShowActivity;
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kwlopen/sdk/activity/ImageShowActivity;


# direct methods
.method constructor <init>(Lcom/kwlopen/sdk/activity/ImageShowActivity;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/kwlopen/sdk/activity/ImageShowActivity$1;->this$0:Lcom/kwlopen/sdk/activity/ImageShowActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 35
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/ImageShowActivity$1;->this$0:Lcom/kwlopen/sdk/activity/ImageShowActivity;

    # invokes: Lcom/kwlopen/sdk/activity/ImageShowActivity;->dismissDialog()V
    invoke-static {v0}, Lcom/kwlopen/sdk/activity/ImageShowActivity;->access$000(Lcom/kwlopen/sdk/activity/ImageShowActivity;)V

    .line 38
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/ImageShowActivity$1;->this$0:Lcom/kwlopen/sdk/activity/ImageShowActivity;

    # getter for: Lcom/kwlopen/sdk/activity/ImageShowActivity;->imageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/kwlopen/sdk/activity/ImageShowActivity;->access$200(Lcom/kwlopen/sdk/activity/ImageShowActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/kwlopen/sdk/activity/ImageShowActivity$1;->this$0:Lcom/kwlopen/sdk/activity/ImageShowActivity;

    # getter for: Lcom/kwlopen/sdk/activity/ImageShowActivity;->bmp:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/kwlopen/sdk/activity/ImageShowActivity;->access$100(Lcom/kwlopen/sdk/activity/ImageShowActivity;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 40
    :cond_0
    return-void
.end method

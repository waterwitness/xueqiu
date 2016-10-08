.class Lcom/kwlopen/sdk/activity/CaptureVideo$3;
.super Ljava/lang/Object;
.source "CaptureVideo.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwlopen/sdk/activity/CaptureVideo;->showDialog()V
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kwlopen/sdk/activity/CaptureVideo;


# direct methods
.method constructor <init>(Lcom/kwlopen/sdk/activity/CaptureVideo;)V
    .locals 0

    .prologue
    .line 619
    iput-object p1, p0, Lcom/kwlopen/sdk/activity/CaptureVideo$3;->this$0:Lcom/kwlopen/sdk/activity/CaptureVideo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 622
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/CaptureVideo$3;->this$0:Lcom/kwlopen/sdk/activity/CaptureVideo;

    # getter for: Lcom/kwlopen/sdk/activity/CaptureVideo;->mediaRecorder:Landroid/media/MediaRecorder;
    invoke-static {v0}, Lcom/kwlopen/sdk/activity/CaptureVideo;->access$400(Lcom/kwlopen/sdk/activity/CaptureVideo;)Landroid/media/MediaRecorder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 623
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/CaptureVideo$3;->this$0:Lcom/kwlopen/sdk/activity/CaptureVideo;

    # getter for: Lcom/kwlopen/sdk/activity/CaptureVideo;->mediaRecorder:Landroid/media/MediaRecorder;
    invoke-static {v0}, Lcom/kwlopen/sdk/activity/CaptureVideo;->access$400(Lcom/kwlopen/sdk/activity/CaptureVideo;)Landroid/media/MediaRecorder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V

    .line 624
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/CaptureVideo$3;->this$0:Lcom/kwlopen/sdk/activity/CaptureVideo;

    # invokes: Lcom/kwlopen/sdk/activity/CaptureVideo;->cancelTimer()V
    invoke-static {v0}, Lcom/kwlopen/sdk/activity/CaptureVideo;->access$500(Lcom/kwlopen/sdk/activity/CaptureVideo;)V

    .line 627
    :cond_0
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/CaptureVideo$3;->this$0:Lcom/kwlopen/sdk/activity/CaptureVideo;

    const/4 v1, 0x0

    # setter for: Lcom/kwlopen/sdk/activity/CaptureVideo;->mediaRecorder:Landroid/media/MediaRecorder;
    invoke-static {v0, v1}, Lcom/kwlopen/sdk/activity/CaptureVideo;->access$402(Lcom/kwlopen/sdk/activity/CaptureVideo;Landroid/media/MediaRecorder;)Landroid/media/MediaRecorder;

    .line 628
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/CaptureVideo$3;->this$0:Lcom/kwlopen/sdk/activity/CaptureVideo;

    invoke-virtual {v0}, Lcom/kwlopen/sdk/activity/CaptureVideo;->finish()V

    .line 629
    return-void
.end method

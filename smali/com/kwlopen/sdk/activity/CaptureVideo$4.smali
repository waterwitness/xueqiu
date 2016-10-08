.class Lcom/kwlopen/sdk/activity/CaptureVideo$4;
.super Ljava/util/TimerTask;
.source "CaptureVideo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwlopen/sdk/activity/CaptureVideo;->startTimer()V
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kwlopen/sdk/activity/CaptureVideo;


# direct methods
.method constructor <init>(Lcom/kwlopen/sdk/activity/CaptureVideo;)V
    .locals 0

    .prologue
    .line 660
    iput-object p1, p0, Lcom/kwlopen/sdk/activity/CaptureVideo$4;->this$0:Lcom/kwlopen/sdk/activity/CaptureVideo;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 666
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/CaptureVideo$4;->this$0:Lcom/kwlopen/sdk/activity/CaptureVideo;

    # operator++ for: Lcom/kwlopen/sdk/activity/CaptureVideo;->second:I
    invoke-static {v0}, Lcom/kwlopen/sdk/activity/CaptureVideo;->access$008(Lcom/kwlopen/sdk/activity/CaptureVideo;)I

    .line 668
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 669
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 670
    iget-object v1, p0, Lcom/kwlopen/sdk/activity/CaptureVideo$4;->this$0:Lcom/kwlopen/sdk/activity/CaptureVideo;

    iget-object v1, v1, Lcom/kwlopen/sdk/activity/CaptureVideo;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 672
    return-void
.end method

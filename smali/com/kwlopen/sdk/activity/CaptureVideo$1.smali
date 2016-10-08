.class Lcom/kwlopen/sdk/activity/CaptureVideo$1;
.super Landroid/os/Handler;
.source "CaptureVideo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwlopen/sdk/activity/CaptureVideo;
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kwlopen/sdk/activity/CaptureVideo;


# direct methods
.method constructor <init>(Lcom/kwlopen/sdk/activity/CaptureVideo;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/kwlopen/sdk/activity/CaptureVideo$1;->this$0:Lcom/kwlopen/sdk/activity/CaptureVideo;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 112
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 114
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/CaptureVideo$1;->this$0:Lcom/kwlopen/sdk/activity/CaptureVideo;

    # getter for: Lcom/kwlopen/sdk/activity/CaptureVideo;->second:I
    invoke-static {v0}, Lcom/kwlopen/sdk/activity/CaptureVideo;->access$000(Lcom/kwlopen/sdk/activity/CaptureVideo;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 116
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/CaptureVideo$1;->this$0:Lcom/kwlopen/sdk/activity/CaptureVideo;

    # getter for: Lcom/kwlopen/sdk/activity/CaptureVideo;->btnStopRecord:Landroid/widget/Button;
    invoke-static {v0}, Lcom/kwlopen/sdk/activity/CaptureVideo;->access$100(Lcom/kwlopen/sdk/activity/CaptureVideo;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/CaptureVideo$1;->this$0:Lcom/kwlopen/sdk/activity/CaptureVideo;

    # getter for: Lcom/kwlopen/sdk/activity/CaptureVideo;->second:I
    invoke-static {v0}, Lcom/kwlopen/sdk/activity/CaptureVideo;->access$000(Lcom/kwlopen/sdk/activity/CaptureVideo;)I

    move-result v0

    iget-object v1, p0, Lcom/kwlopen/sdk/activity/CaptureVideo$1;->this$0:Lcom/kwlopen/sdk/activity/CaptureVideo;

    # getter for: Lcom/kwlopen/sdk/activity/CaptureVideo;->limit:I
    invoke-static {v1}, Lcom/kwlopen/sdk/activity/CaptureVideo;->access$200(Lcom/kwlopen/sdk/activity/CaptureVideo;)I

    move-result v1

    if-le v0, v1, :cond_1

    .line 120
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/CaptureVideo$1;->this$0:Lcom/kwlopen/sdk/activity/CaptureVideo;

    # invokes: Lcom/kwlopen/sdk/activity/CaptureVideo;->stopVideo()V
    invoke-static {v0}, Lcom/kwlopen/sdk/activity/CaptureVideo;->access$300(Lcom/kwlopen/sdk/activity/CaptureVideo;)V

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/CaptureVideo$1;->this$0:Lcom/kwlopen/sdk/activity/CaptureVideo;

    iget-object v0, v0, Lcom/kwlopen/sdk/activity/CaptureVideo;->timerTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/kwlopen/sdk/activity/CaptureVideo$1;->this$0:Lcom/kwlopen/sdk/activity/CaptureVideo;

    iget-object v2, p0, Lcom/kwlopen/sdk/activity/CaptureVideo$1;->this$0:Lcom/kwlopen/sdk/activity/CaptureVideo;

    # getter for: Lcom/kwlopen/sdk/activity/CaptureVideo;->second:I
    invoke-static {v2}, Lcom/kwlopen/sdk/activity/CaptureVideo;->access$000(Lcom/kwlopen/sdk/activity/CaptureVideo;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/kwlopen/sdk/activity/CaptureVideo;->paserTime(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    :cond_2
    return-void
.end method

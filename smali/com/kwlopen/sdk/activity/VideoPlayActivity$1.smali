.class Lcom/kwlopen/sdk/activity/VideoPlayActivity$1;
.super Landroid/os/Handler;
.source "VideoPlayActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwlopen/sdk/activity/VideoPlayActivity;
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kwlopen/sdk/activity/VideoPlayActivity;


# direct methods
.method constructor <init>(Lcom/kwlopen/sdk/activity/VideoPlayActivity;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/kwlopen/sdk/activity/VideoPlayActivity$1;->this$0:Lcom/kwlopen/sdk/activity/VideoPlayActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 89
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoPlayActivity$1;->this$0:Lcom/kwlopen/sdk/activity/VideoPlayActivity;

    # getter for: Lcom/kwlopen/sdk/activity/VideoPlayActivity;->mediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/kwlopen/sdk/activity/VideoPlayActivity;->access$000(Lcom/kwlopen/sdk/activity/VideoPlayActivity;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoPlayActivity$1;->this$0:Lcom/kwlopen/sdk/activity/VideoPlayActivity;

    # getter for: Lcom/kwlopen/sdk/activity/VideoPlayActivity;->mediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/kwlopen/sdk/activity/VideoPlayActivity;->access$000(Lcom/kwlopen/sdk/activity/VideoPlayActivity;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoPlayActivity$1;->this$0:Lcom/kwlopen/sdk/activity/VideoPlayActivity;

    # getter for: Lcom/kwlopen/sdk/activity/VideoPlayActivity;->mediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/kwlopen/sdk/activity/VideoPlayActivity;->access$000(Lcom/kwlopen/sdk/activity/VideoPlayActivity;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    int-to-long v0, v0

    .line 91
    iget-object v2, p0, Lcom/kwlopen/sdk/activity/VideoPlayActivity$1;->this$0:Lcom/kwlopen/sdk/activity/VideoPlayActivity;

    invoke-virtual {v2, v0, v1}, Lcom/kwlopen/sdk/activity/VideoPlayActivity;->getShowTime(J)Ljava/lang/String;

    move-result-object v0

    .line 92
    iget-object v1, p0, Lcom/kwlopen/sdk/activity/VideoPlayActivity$1;->this$0:Lcom/kwlopen/sdk/activity/VideoPlayActivity;

    iget-object v1, v1, Lcom/kwlopen/sdk/activity/VideoPlayActivity;->timerTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    :cond_0
    return-void
.end method

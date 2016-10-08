.class Lcom/kwlopen/sdk/activity/PlayVideoView$1;
.super Landroid/os/Handler;
.source "PlayVideoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwlopen/sdk/activity/PlayVideoView;
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kwlopen/sdk/activity/PlayVideoView;


# direct methods
.method constructor <init>(Lcom/kwlopen/sdk/activity/PlayVideoView;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/kwlopen/sdk/activity/PlayVideoView$1;->this$0:Lcom/kwlopen/sdk/activity/PlayVideoView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 135
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_1

    .line 136
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/PlayVideoView$1;->this$0:Lcom/kwlopen/sdk/activity/PlayVideoView;

    iget-object v0, v0, Lcom/kwlopen/sdk/activity/PlayVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 138
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/PlayVideoView$1;->this$0:Lcom/kwlopen/sdk/activity/PlayVideoView;

    iget-object v0, v0, Lcom/kwlopen/sdk/activity/PlayVideoView;->timerTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/kwlopen/sdk/activity/PlayVideoView$1;->this$0:Lcom/kwlopen/sdk/activity/PlayVideoView;

    iget-object v2, p0, Lcom/kwlopen/sdk/activity/PlayVideoView$1;->this$0:Lcom/kwlopen/sdk/activity/PlayVideoView;

    # getter for: Lcom/kwlopen/sdk/activity/PlayVideoView;->second:I
    invoke-static {v2}, Lcom/kwlopen/sdk/activity/PlayVideoView;->access$000(Lcom/kwlopen/sdk/activity/PlayVideoView;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/kwlopen/sdk/activity/PlayVideoView;->paserTime(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

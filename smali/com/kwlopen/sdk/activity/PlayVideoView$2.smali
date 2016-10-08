.class Lcom/kwlopen/sdk/activity/PlayVideoView$2;
.super Ljava/util/TimerTask;
.source "PlayVideoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwlopen/sdk/activity/PlayVideoView;->startTimer()V
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kwlopen/sdk/activity/PlayVideoView;


# direct methods
.method constructor <init>(Lcom/kwlopen/sdk/activity/PlayVideoView;)V
    .locals 0

    .prologue
    .line 355
    iput-object p1, p0, Lcom/kwlopen/sdk/activity/PlayVideoView$2;->this$0:Lcom/kwlopen/sdk/activity/PlayVideoView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 361
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/PlayVideoView$2;->this$0:Lcom/kwlopen/sdk/activity/PlayVideoView;

    # operator++ for: Lcom/kwlopen/sdk/activity/PlayVideoView;->second:I
    invoke-static {v0}, Lcom/kwlopen/sdk/activity/PlayVideoView;->access$008(Lcom/kwlopen/sdk/activity/PlayVideoView;)I

    .line 363
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 364
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 365
    iget-object v1, p0, Lcom/kwlopen/sdk/activity/PlayVideoView$2;->this$0:Lcom/kwlopen/sdk/activity/PlayVideoView;

    # getter for: Lcom/kwlopen/sdk/activity/PlayVideoView;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/kwlopen/sdk/activity/PlayVideoView;->access$100(Lcom/kwlopen/sdk/activity/PlayVideoView;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 367
    return-void
.end method

.class Lcom/kwlopen/sdk/activity/VideoPlayActivity$2;
.super Ljava/util/TimerTask;
.source "VideoPlayActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwlopen/sdk/activity/VideoPlayActivity;->startTimer()V
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kwlopen/sdk/activity/VideoPlayActivity;


# direct methods
.method constructor <init>(Lcom/kwlopen/sdk/activity/VideoPlayActivity;)V
    .locals 0

    .prologue
    .line 215
    iput-object p1, p0, Lcom/kwlopen/sdk/activity/VideoPlayActivity$2;->this$0:Lcom/kwlopen/sdk/activity/VideoPlayActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 219
    :try_start_0
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoPlayActivity$2;->this$0:Lcom/kwlopen/sdk/activity/VideoPlayActivity;

    # getter for: Lcom/kwlopen/sdk/activity/VideoPlayActivity;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/kwlopen/sdk/activity/VideoPlayActivity;->access$200(Lcom/kwlopen/sdk/activity/VideoPlayActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    :goto_0
    return-void

    .line 222
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoPlayActivity$2;->this$0:Lcom/kwlopen/sdk/activity/VideoPlayActivity;

    # getter for: Lcom/kwlopen/sdk/activity/VideoPlayActivity;->timer:Ljava/util/Timer;
    invoke-static {v0}, Lcom/kwlopen/sdk/activity/VideoPlayActivity;->access$300(Lcom/kwlopen/sdk/activity/VideoPlayActivity;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 223
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoPlayActivity$2;->this$0:Lcom/kwlopen/sdk/activity/VideoPlayActivity;

    const/4 v1, 0x0

    # setter for: Lcom/kwlopen/sdk/activity/VideoPlayActivity;->timer:Ljava/util/Timer;
    invoke-static {v0, v1}, Lcom/kwlopen/sdk/activity/VideoPlayActivity;->access$302(Lcom/kwlopen/sdk/activity/VideoPlayActivity;Ljava/util/Timer;)Ljava/util/Timer;

    goto :goto_0
.end method

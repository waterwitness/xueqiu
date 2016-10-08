.class Lcom/kwlopen/sdk/activity/VideoVitness$8;
.super Ljava/util/TimerTask;
.source "VideoVitness.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwlopen/sdk/activity/VideoVitness;->startLoginTimer()V
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kwlopen/sdk/activity/VideoVitness;


# direct methods
.method constructor <init>(Lcom/kwlopen/sdk/activity/VideoVitness;)V
    .locals 0

    .prologue
    .line 813
    iput-object p1, p0, Lcom/kwlopen/sdk/activity/VideoVitness$8;->this$0:Lcom/kwlopen/sdk/activity/VideoVitness;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 819
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness$8;->this$0:Lcom/kwlopen/sdk/activity/VideoVitness;

    # getter for: Lcom/kwlopen/sdk/activity/VideoVitness;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/kwlopen/sdk/activity/VideoVitness;->access$600(Lcom/kwlopen/sdk/activity/VideoVitness;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 820
    return-void
.end method

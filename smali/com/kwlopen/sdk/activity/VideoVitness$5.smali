.class Lcom/kwlopen/sdk/activity/VideoVitness$5;
.super Ljava/util/TimerTask;
.source "VideoVitness.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwlopen/sdk/activity/VideoVitness;->startTimer()V
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kwlopen/sdk/activity/VideoVitness;


# direct methods
.method constructor <init>(Lcom/kwlopen/sdk/activity/VideoVitness;)V
    .locals 0

    .prologue
    .line 720
    iput-object p1, p0, Lcom/kwlopen/sdk/activity/VideoVitness$5;->this$0:Lcom/kwlopen/sdk/activity/VideoVitness;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 723
    const-class v0, Lcom/kwlopen/sdk/activity/VideoVitness;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u6211\u5230\u65f6\u95f4\u4e86--------"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 725
    const-string v1, "errcode"

    const/4 v2, -0x6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 726
    const-string v1, "errmsg"

    const-string v2, "\u5750\u5e2d\u610f\u5916\u65ad\u5f00\uff0c\u8bf7\u91cd\u65b0\u8ba4\u8bc1\uff01"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 727
    const-string v1, "flag"

    iget-object v2, p0, Lcom/kwlopen/sdk/activity/VideoVitness$5;->this$0:Lcom/kwlopen/sdk/activity/VideoVitness;

    # getter for: Lcom/kwlopen/sdk/activity/VideoVitness;->video_status:I
    invoke-static {v2}, Lcom/kwlopen/sdk/activity/VideoVitness;->access$400(Lcom/kwlopen/sdk/activity/VideoVitness;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 728
    iget-object v1, p0, Lcom/kwlopen/sdk/activity/VideoVitness$5;->this$0:Lcom/kwlopen/sdk/activity/VideoVitness;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/kwlopen/sdk/activity/VideoVitness;->setResult(ILandroid/content/Intent;)V

    .line 729
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness$5;->this$0:Lcom/kwlopen/sdk/activity/VideoVitness;

    invoke-virtual {v0}, Lcom/kwlopen/sdk/activity/VideoVitness;->stopTimer()V

    .line 730
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness$5;->this$0:Lcom/kwlopen/sdk/activity/VideoVitness;

    invoke-virtual {v0}, Lcom/kwlopen/sdk/activity/VideoVitness;->finish()V

    .line 731
    return-void
.end method

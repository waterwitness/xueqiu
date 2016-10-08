.class Lcom/kwlopen/sdk/activity/VideoVitness$6;
.super Ljava/lang/Object;
.source "VideoVitness.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwlopen/sdk/activity/VideoVitness;->ShowEndSessionResumeDialg()V
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kwlopen/sdk/activity/VideoVitness;


# direct methods
.method constructor <init>(Lcom/kwlopen/sdk/activity/VideoVitness;)V
    .locals 0

    .prologue
    .line 771
    iput-object p1, p0, Lcom/kwlopen/sdk/activity/VideoVitness$6;->this$0:Lcom/kwlopen/sdk/activity/VideoVitness;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 774
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 777
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness$6;->this$0:Lcom/kwlopen/sdk/activity/VideoVitness;

    # getter for: Lcom/kwlopen/sdk/activity/VideoVitness;->anychat:Lcom/bairuitech/anychat/AnyChatCoreSDK;
    invoke-static {v0}, Lcom/kwlopen/sdk/activity/VideoVitness;->access$500(Lcom/kwlopen/sdk/activity/VideoVitness;)Lcom/bairuitech/anychat/AnyChatCoreSDK;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Lcom/bairuitech/anychat/AnyChatCoreSDK;->UserCameraControl(II)I

    .line 778
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness$6;->this$0:Lcom/kwlopen/sdk/activity/VideoVitness;

    # getter for: Lcom/kwlopen/sdk/activity/VideoVitness;->anychat:Lcom/bairuitech/anychat/AnyChatCoreSDK;
    invoke-static {v0}, Lcom/kwlopen/sdk/activity/VideoVitness;->access$500(Lcom/kwlopen/sdk/activity/VideoVitness;)Lcom/bairuitech/anychat/AnyChatCoreSDK;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Lcom/bairuitech/anychat/AnyChatCoreSDK;->UserSpeakControl(II)I

    .line 779
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness$6;->this$0:Lcom/kwlopen/sdk/activity/VideoVitness;

    # getter for: Lcom/kwlopen/sdk/activity/VideoVitness;->anychat:Lcom/bairuitech/anychat/AnyChatCoreSDK;
    invoke-static {v0}, Lcom/kwlopen/sdk/activity/VideoVitness;->access$500(Lcom/kwlopen/sdk/activity/VideoVitness;)Lcom/bairuitech/anychat/AnyChatCoreSDK;

    move-result-object v0

    iget-object v1, p0, Lcom/kwlopen/sdk/activity/VideoVitness$6;->this$0:Lcom/kwlopen/sdk/activity/VideoVitness;

    iget v1, v1, Lcom/kwlopen/sdk/activity/VideoVitness;->dwTargetUserId:I

    invoke-virtual {v0, v1, v2}, Lcom/bairuitech/anychat/AnyChatCoreSDK;->UserSpeakControl(II)I

    .line 780
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness$6;->this$0:Lcom/kwlopen/sdk/activity/VideoVitness;

    # getter for: Lcom/kwlopen/sdk/activity/VideoVitness;->anychat:Lcom/bairuitech/anychat/AnyChatCoreSDK;
    invoke-static {v0}, Lcom/kwlopen/sdk/activity/VideoVitness;->access$500(Lcom/kwlopen/sdk/activity/VideoVitness;)Lcom/bairuitech/anychat/AnyChatCoreSDK;

    move-result-object v0

    iget-object v1, p0, Lcom/kwlopen/sdk/activity/VideoVitness$6;->this$0:Lcom/kwlopen/sdk/activity/VideoVitness;

    iget v1, v1, Lcom/kwlopen/sdk/activity/VideoVitness;->dwTargetUserId:I

    invoke-virtual {v0, v1, v2}, Lcom/bairuitech/anychat/AnyChatCoreSDK;->UserCameraControl(II)I

    .line 781
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness$6;->this$0:Lcom/kwlopen/sdk/activity/VideoVitness;

    # getter for: Lcom/kwlopen/sdk/activity/VideoVitness;->anychat:Lcom/bairuitech/anychat/AnyChatCoreSDK;
    invoke-static {v0}, Lcom/kwlopen/sdk/activity/VideoVitness;->access$500(Lcom/kwlopen/sdk/activity/VideoVitness;)Lcom/bairuitech/anychat/AnyChatCoreSDK;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/bairuitech/anychat/AnyChatCoreSDK;->LeaveRoom(I)I

    .line 782
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness$6;->this$0:Lcom/kwlopen/sdk/activity/VideoVitness;

    # getter for: Lcom/kwlopen/sdk/activity/VideoVitness;->anychat:Lcom/bairuitech/anychat/AnyChatCoreSDK;
    invoke-static {v0}, Lcom/kwlopen/sdk/activity/VideoVitness;->access$500(Lcom/kwlopen/sdk/activity/VideoVitness;)Lcom/bairuitech/anychat/AnyChatCoreSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bairuitech/anychat/AnyChatCoreSDK;->Logout()I

    .line 784
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 785
    const-string v1, "errcode"

    const/4 v2, -0x7

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 786
    const-string v1, "errmsg"

    const-string v2, "\u5ba2\u6237\u81ea\u52a8\u65ad\u5f00\uff0c\u8ba4\u8bc1\u4e0d\u901a\u8fc7\uff01"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 787
    iget-object v1, p0, Lcom/kwlopen/sdk/activity/VideoVitness$6;->this$0:Lcom/kwlopen/sdk/activity/VideoVitness;

    invoke-virtual {v1, v3, v0}, Lcom/kwlopen/sdk/activity/VideoVitness;->setResult(ILandroid/content/Intent;)V

    .line 788
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness$6;->this$0:Lcom/kwlopen/sdk/activity/VideoVitness;

    invoke-virtual {v0}, Lcom/kwlopen/sdk/activity/VideoVitness;->stopTimer()V

    .line 789
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness$6;->this$0:Lcom/kwlopen/sdk/activity/VideoVitness;

    invoke-virtual {v0}, Lcom/kwlopen/sdk/activity/VideoVitness;->finish()V

    .line 790
    return-void
.end method

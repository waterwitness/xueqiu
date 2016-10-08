.class Lcom/kwlopen/sdk/activity/VideoVitness$9;
.super Landroid/os/Handler;
.source "VideoVitness.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwlopen/sdk/activity/VideoVitness;
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kwlopen/sdk/activity/VideoVitness;


# direct methods
.method constructor <init>(Lcom/kwlopen/sdk/activity/VideoVitness;)V
    .locals 0

    .prologue
    .line 894
    iput-object p1, p0, Lcom/kwlopen/sdk/activity/VideoVitness$9;->this$0:Lcom/kwlopen/sdk/activity/VideoVitness;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 896
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 907
    :goto_0
    return-void

    .line 900
    :pswitch_0
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness$9;->this$0:Lcom/kwlopen/sdk/activity/VideoVitness;

    # getter for: Lcom/kwlopen/sdk/activity/VideoVitness;->anychat:Lcom/bairuitech/anychat/AnyChatCoreSDK;
    invoke-static {v0}, Lcom/kwlopen/sdk/activity/VideoVitness;->access$500(Lcom/kwlopen/sdk/activity/VideoVitness;)Lcom/bairuitech/anychat/AnyChatCoreSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bairuitech/anychat/AnyChatCoreSDK;->Logout()I

    goto :goto_0

    .line 896
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

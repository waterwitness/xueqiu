.class Lcom/kwlopen/sdk/activity/VideoVitness$1;
.super Ljava/lang/Object;
.source "VideoVitness.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwlopen/sdk/activity/VideoVitness;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kwlopen/sdk/activity/VideoVitness;


# direct methods
.method constructor <init>(Lcom/kwlopen/sdk/activity/VideoVitness;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/kwlopen/sdk/activity/VideoVitness$1;->this$0:Lcom/kwlopen/sdk/activity/VideoVitness;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 7

    .prologue
    const/16 v6, 0xa

    .line 117
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 126
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 119
    :pswitch_0
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness$1;->this$0:Lcom/kwlopen/sdk/activity/VideoVitness;

    # invokes: Lcom/kwlopen/sdk/activity/VideoVitness;->CheckVideoStatus()V
    invoke-static {v0}, Lcom/kwlopen/sdk/activity/VideoVitness;->access$000(Lcom/kwlopen/sdk/activity/VideoVitness;)V

    .line 120
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness$1;->this$0:Lcom/kwlopen/sdk/activity/VideoVitness;

    # invokes: Lcom/kwlopen/sdk/activity/VideoVitness;->updateVolume()V
    invoke-static {v0}, Lcom/kwlopen/sdk/activity/VideoVitness;->access$100(Lcom/kwlopen/sdk/activity/VideoVitness;)V

    goto :goto_0

    .line 123
    :pswitch_1
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness$1;->this$0:Lcom/kwlopen/sdk/activity/VideoVitness;

    # getter for: Lcom/kwlopen/sdk/activity/VideoVitness;->mTxtTime:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/kwlopen/sdk/activity/VideoVitness;->access$200(Lcom/kwlopen/sdk/activity/VideoVitness;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness$1;->this$0:Lcom/kwlopen/sdk/activity/VideoVitness;

    iget v1, v0, Lcom/kwlopen/sdk/activity/VideoVitness;->videocallSeconds:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v0, Lcom/kwlopen/sdk/activity/VideoVitness;->videocallSeconds:I

    .line 1080
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 1081
    div-int/lit16 v0, v1, 0xe10

    .line 1082
    div-int/lit8 v2, v1, 0x3c

    rem-int/lit8 v4, v2, 0x3c

    .line 1083
    rem-int/lit8 v5, v1, 0x3c

    .line 1084
    if-lt v0, v6, :cond_0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 1085
    :goto_1
    if-lt v4, v6, :cond_1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 1086
    :goto_2
    if-lt v5, v6, :cond_2

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 1087
    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 123
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1084
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "0"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_1

    .line 1085
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "0"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_2

    .line 1086
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "0"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 117
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.class final Lcom/bairuitech/anychat/c;
.super Ljava/lang/Thread;
.source "AnyChatAudioHelper.java"


# instance fields
.field final synthetic a:Lcom/bairuitech/anychat/a;


# direct methods
.method constructor <init>(Lcom/bairuitech/anychat/a;)V
    .locals 0

    .prologue
    .line 233
    iput-object p1, p0, Lcom/bairuitech/anychat/c;->a:Lcom/bairuitech/anychat/a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    const/16 v4, 0x280

    .line 237
    iget-object v0, p0, Lcom/bairuitech/anychat/c;->a:Lcom/bairuitech/anychat/a;

    .line 1013
    iget-object v0, v0, Lcom/bairuitech/anychat/a;->b:Landroid/media/AudioRecord;

    .line 237
    if-nez v0, :cond_0

    .line 265
    :goto_0
    return-void

    .line 240
    :cond_0
    const/16 v0, -0x13

    :try_start_0
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/bairuitech/anychat/c;->a:Lcom/bairuitech/anychat/a;

    .line 2013
    iget-object v0, v0, Lcom/bairuitech/anychat/a;->b:Landroid/media/AudioRecord;

    .line 246
    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 250
    :goto_2
    const-string v0, "ANYCHAT"

    const-string v1, "audio record...."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    new-array v0, v4, [B

    .line 252
    :goto_3
    iget-object v1, p0, Lcom/bairuitech/anychat/c;->a:Lcom/bairuitech/anychat/a;

    .line 3013
    iget-boolean v1, v1, Lcom/bairuitech/anychat/a;->g:Z

    .line 252
    if-nez v1, :cond_1

    .line 255
    :try_start_2
    iget-object v1, p0, Lcom/bairuitech/anychat/c;->a:Lcom/bairuitech/anychat/a;

    .line 4013
    iget-object v1, v1, Lcom/bairuitech/anychat/a;->b:Landroid/media/AudioRecord;

    .line 255
    const/4 v2, 0x0

    const/16 v3, 0x280

    invoke-virtual {v1, v0, v2, v3}, Landroid/media/AudioRecord;->read([BII)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v1

    .line 256
    const/4 v2, -0x3

    if-eq v1, v2, :cond_1

    const/4 v2, -0x2

    if-ne v1, v2, :cond_2

    .line 264
    :cond_1
    :goto_4
    const-string v0, "ANYCHAT"

    const-string v1, "audio record stop...."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 242
    :catch_0
    move-exception v0

    .line 243
    const-string v1, "ANYCHAT"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Set record thread priority failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 248
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 259
    :cond_2
    const/4 v2, 0x0

    :try_start_3
    invoke-static {v0, v1, v2}, Lcom/bairuitech/anychat/AnyChatCoreSDK;->InputAudioData([BII)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_4
.end method

.class final Lcom/bairuitech/anychat/b;
.super Ljava/lang/Thread;
.source "AnyChatAudioHelper.java"


# instance fields
.field final synthetic a:Lcom/bairuitech/anychat/a;


# direct methods
.method constructor <init>(Lcom/bairuitech/anychat/a;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/bairuitech/anychat/b;->a:Lcom/bairuitech/anychat/a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 108
    iget-object v0, p0, Lcom/bairuitech/anychat/b;->a:Lcom/bairuitech/anychat/a;

    .line 1013
    iget-object v0, v0, Lcom/bairuitech/anychat/a;->a:Landroid/media/AudioTrack;

    .line 108
    if-nez v0, :cond_0

    .line 133
    :goto_0
    return-void

    .line 111
    :cond_0
    const/16 v0, -0x13

    :try_start_0
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 117
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/bairuitech/anychat/b;->a:Lcom/bairuitech/anychat/a;

    .line 2013
    iget-object v0, v0, Lcom/bairuitech/anychat/a;->a:Landroid/media/AudioTrack;

    .line 117
    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 121
    :goto_2
    const-string v0, "ANYCHAT"

    const-string v1, "audio play...."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :goto_3
    iget-object v0, p0, Lcom/bairuitech/anychat/b;->a:Lcom/bairuitech/anychat/a;

    .line 3013
    iget-boolean v0, v0, Lcom/bairuitech/anychat/a;->d:Z

    .line 122
    if-nez v0, :cond_1

    .line 125
    const/16 v0, 0x280

    :try_start_2
    invoke-static {v0}, Lcom/bairuitech/anychat/AnyChatCoreSDK;->FetchAudioPlayBuffer(I)[B

    move-result-object v0

    .line 126
    iget-object v1, p0, Lcom/bairuitech/anychat/b;->a:Lcom/bairuitech/anychat/a;

    .line 4013
    iget-object v1, v1, Lcom/bairuitech/anychat/a;->a:Landroid/media/AudioTrack;

    .line 126
    const/4 v2, 0x0

    array-length v3, v0

    invoke-virtual {v1, v0, v2, v3}, Landroid/media/AudioTrack;->write([BII)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 132
    :cond_1
    const-string v0, "ANYCHAT"

    const-string v1, "audio play stop...."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 113
    :catch_1
    move-exception v0

    .line 114
    const-string v1, "ANYCHAT"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Set play thread priority failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 119
    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

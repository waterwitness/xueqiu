.class public final Lcom/bairuitech/anychat/a;
.super Ljava/lang/Object;
.source "AnyChatAudioHelper.java"


# instance fields
.field a:Landroid/media/AudioTrack;

.field b:Landroid/media/AudioRecord;

.field c:Lcom/bairuitech/anychat/b;

.field d:Z

.field e:Z

.field f:Lcom/bairuitech/anychat/c;

.field g:Z

.field h:Z

.field public i:Landroid/content/Context;

.field private j:I

.field private k:I

.field private l:I

.field private m:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object v1, p0, Lcom/bairuitech/anychat/a;->a:Landroid/media/AudioTrack;

    .line 16
    iput-object v1, p0, Lcom/bairuitech/anychat/a;->b:Landroid/media/AudioRecord;

    .line 22
    iput-object v1, p0, Lcom/bairuitech/anychat/a;->c:Lcom/bairuitech/anychat/b;

    .line 23
    iput-boolean v0, p0, Lcom/bairuitech/anychat/a;->d:Z

    .line 24
    iput v0, p0, Lcom/bairuitech/anychat/a;->j:I

    .line 25
    iput-boolean v0, p0, Lcom/bairuitech/anychat/a;->e:Z

    .line 27
    iput-object v1, p0, Lcom/bairuitech/anychat/a;->f:Lcom/bairuitech/anychat/c;

    .line 28
    iput-boolean v0, p0, Lcom/bairuitech/anychat/a;->g:Z

    .line 29
    iput v0, p0, Lcom/bairuitech/anychat/a;->k:I

    .line 30
    iput-boolean v0, p0, Lcom/bairuitech/anychat/a;->h:Z

    .line 32
    iput-object v1, p0, Lcom/bairuitech/anychat/a;->i:Landroid/content/Context;

    .line 33
    iput v0, p0, Lcom/bairuitech/anychat/a;->l:I

    .line 34
    const/4 v0, 0x2

    iput v0, p0, Lcom/bairuitech/anychat/a;->m:I

    .line 233
    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 9

    .prologue
    const/4 v1, 0x3

    const/4 v5, 0x1

    const/4 v8, -0x1

    const/4 v4, 0x2

    const/4 v7, 0x0

    .line 41
    iget-object v0, p0, Lcom/bairuitech/anychat/a;->a:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    move v0, v7

    .line 77
    :goto_0
    return v0

    .line 43
    :cond_0
    iput p1, p0, Lcom/bairuitech/anychat/a;->l:I

    .line 44
    const-string v0, "ANYCHAT"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "InitAudioPlayer, profile: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    if-ne p1, v5, :cond_2

    .line 48
    const/16 v2, 0x3e80

    move v3, v4

    .line 61
    :goto_1
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/bairuitech/anychat/a;->e:Z

    .line 63
    const/4 v0, 0x2

    invoke-static {v2, v3, v0}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v0

    iput v0, p0, Lcom/bairuitech/anychat/a;->j:I

    .line 64
    new-instance v0, Landroid/media/AudioTrack;

    iget v5, p0, Lcom/bairuitech/anychat/a;->m:I

    if-ne v5, v4, :cond_4

    :goto_2
    const/4 v4, 0x2

    iget v5, p0, Lcom/bairuitech/anychat/a;->j:I

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v0, p0, Lcom/bairuitech/anychat/a;->a:Landroid/media/AudioTrack;

    .line 67
    iget-object v0, p0, Lcom/bairuitech/anychat/a;->c:Lcom/bairuitech/anychat/b;

    if-nez v0, :cond_1

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bairuitech/anychat/a;->d:Z

    .line 70
    new-instance v0, Lcom/bairuitech/anychat/b;

    invoke-direct {v0, p0}, Lcom/bairuitech/anychat/b;-><init>(Lcom/bairuitech/anychat/a;)V

    iput-object v0, p0, Lcom/bairuitech/anychat/a;->c:Lcom/bairuitech/anychat/b;

    .line 71
    iget-object v0, p0, Lcom/bairuitech/anychat/a;->c:Lcom/bairuitech/anychat/b;

    invoke-virtual {v0}, Lcom/bairuitech/anychat/b;->start()V

    .line 73
    :cond_1
    const-string v0, "ANYCHAT"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mMinPlayBufSize = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/bairuitech/anychat/a;->j:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v7

    .line 77
    goto :goto_0

    .line 52
    :cond_2
    if-ne p1, v4, :cond_3

    .line 53
    const v2, 0xac44

    move v3, v1

    .line 55
    goto :goto_1

    :cond_3
    move v0, v8

    .line 58
    goto :goto_0

    :cond_4
    move v1, v7

    .line 64
    goto :goto_2

    .line 75
    :catch_0
    move-exception v0

    move v0, v8

    goto :goto_0
.end method

.method public final b(I)I
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v7, -0x1

    const/4 v3, 0x2

    const/4 v6, 0x0

    .line 167
    iget-object v0, p0, Lcom/bairuitech/anychat/a;->b:Landroid/media/AudioRecord;

    if-eqz v0, :cond_0

    move v0, v6

    .line 206
    :goto_0
    return v0

    .line 169
    :cond_0
    const-string v0, "ANYCHAT"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "InitAudioRecorder, profile: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    if-ne p1, v4, :cond_2

    .line 173
    const/16 v2, 0x3e80

    .line 186
    :goto_1
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/bairuitech/anychat/a;->h:Z

    .line 188
    const/4 v0, 0x2

    invoke-static {v2, v3, v0}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    iput v0, p0, Lcom/bairuitech/anychat/a;->k:I

    .line 189
    new-instance v0, Landroid/media/AudioRecord;

    const/4 v1, 0x1

    const/4 v4, 0x2

    iget v5, p0, Lcom/bairuitech/anychat/a;->k:I

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lcom/bairuitech/anychat/a;->b:Landroid/media/AudioRecord;

    .line 192
    iget-object v0, p0, Lcom/bairuitech/anychat/a;->b:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getChannelCount()I

    move-result v0

    iget-object v1, p0, Lcom/bairuitech/anychat/a;->b:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->getSampleRate()I

    move-result v1

    const/16 v2, 0x10

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/bairuitech/anychat/AnyChatCoreSDK;->SetInputAudioFormat(IIII)I

    .line 194
    iget-object v0, p0, Lcom/bairuitech/anychat/a;->f:Lcom/bairuitech/anychat/c;

    if-nez v0, :cond_1

    .line 196
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bairuitech/anychat/a;->g:Z

    .line 197
    new-instance v0, Lcom/bairuitech/anychat/c;

    invoke-direct {v0, p0}, Lcom/bairuitech/anychat/c;-><init>(Lcom/bairuitech/anychat/a;)V

    iput-object v0, p0, Lcom/bairuitech/anychat/a;->f:Lcom/bairuitech/anychat/c;

    .line 198
    iget-object v0, p0, Lcom/bairuitech/anychat/a;->f:Lcom/bairuitech/anychat/c;

    invoke-virtual {v0}, Lcom/bairuitech/anychat/c;->start()V

    .line 200
    :cond_1
    const-string v0, "ANYCHAT"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mMinRecordBufSize = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/bairuitech/anychat/a;->k:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v6

    .line 206
    goto :goto_0

    .line 177
    :cond_2
    if-ne p1, v3, :cond_3

    .line 178
    const v2, 0xac44

    .line 179
    const/4 v3, 0x3

    .line 180
    goto :goto_1

    :cond_3
    move v0, v7

    .line 183
    goto :goto_0

    .line 204
    :catch_0
    move-exception v0

    move v0, v7

    goto :goto_0
.end method

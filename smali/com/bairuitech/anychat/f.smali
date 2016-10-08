.class public final Lcom/bairuitech/anychat/f;
.super Landroid/os/Handler;
.source "AnyChatCoreSDK.java"


# instance fields
.field a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/bairuitech/anychat/AnyChatCoreSDK;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bairuitech/anychat/AnyChatCoreSDK;)V
    .locals 1

    .prologue
    .line 391
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 392
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bairuitech/anychat/f;->a:Ljava/lang/ref/WeakReference;

    .line 393
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 9

    .prologue
    const/16 v8, 0x1a

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 400
    iget-object v0, p0, Lcom/bairuitech/anychat/f;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bairuitech/anychat/AnyChatCoreSDK;

    .line 401
    if-nez v0, :cond_1

    .line 3156
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 403
    :cond_1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 404
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    .line 405
    const-string v3, "HANDLETYPE"

    invoke-virtual {v7, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 406
    invoke-static {}, Lcom/bairuitech/anychat/AnyChatCoreSDK;->a()I

    move-result v4

    if-ne v3, v4, :cond_a

    .line 408
    const-string v3, "MSG"

    invoke-virtual {v7, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 409
    const-string v4, "WPARAM"

    invoke-virtual {v7, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 410
    const-string v5, "LPARAM"

    invoke-virtual {v7, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 1293
    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    .line 1296
    :sswitch_1
    iget-object v3, v0, Lcom/bairuitech/anychat/AnyChatCoreSDK;->a:Lcom/bairuitech/anychat/d;

    if-eqz v3, :cond_0

    .line 1297
    iget-object v3, v0, Lcom/bairuitech/anychat/AnyChatCoreSDK;->a:Lcom/bairuitech/anychat/d;

    if-lez v4, :cond_2

    move v0, v1

    :goto_1
    invoke-interface {v3, v0}, Lcom/bairuitech/anychat/d;->OnAnyChatConnectMessage(Z)V

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    .line 1300
    :sswitch_2
    iget-object v1, v0, Lcom/bairuitech/anychat/AnyChatCoreSDK;->a:Lcom/bairuitech/anychat/d;

    if-eqz v1, :cond_0

    .line 1301
    iget-object v0, v0, Lcom/bairuitech/anychat/AnyChatCoreSDK;->a:Lcom/bairuitech/anychat/d;

    invoke-interface {v0, v4, v5}, Lcom/bairuitech/anychat/d;->OnAnyChatLoginMessage(II)V

    goto :goto_0

    .line 1304
    :sswitch_3
    iget-object v1, v0, Lcom/bairuitech/anychat/AnyChatCoreSDK;->a:Lcom/bairuitech/anychat/d;

    if-eqz v1, :cond_0

    .line 1305
    iget-object v0, v0, Lcom/bairuitech/anychat/AnyChatCoreSDK;->a:Lcom/bairuitech/anychat/d;

    invoke-interface {v0, v4, v5}, Lcom/bairuitech/anychat/d;->OnAnyChatEnterRoomMessage(II)V

    goto :goto_0

    .line 1308
    :sswitch_4
    iget-object v3, v0, Lcom/bairuitech/anychat/AnyChatCoreSDK;->a:Lcom/bairuitech/anychat/d;

    if-eqz v3, :cond_0

    .line 1309
    iget-object v0, v0, Lcom/bairuitech/anychat/AnyChatCoreSDK;->a:Lcom/bairuitech/anychat/d;

    if-lez v5, :cond_3

    :goto_2
    invoke-interface {v0, v4, v1}, Lcom/bairuitech/anychat/d;->OnAnyChatUserAtRoomMessage(IZ)V

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_2

    .line 1312
    :sswitch_5
    iget-object v1, v0, Lcom/bairuitech/anychat/AnyChatCoreSDK;->a:Lcom/bairuitech/anychat/d;

    if-eqz v1, :cond_0

    .line 1313
    iget-object v0, v0, Lcom/bairuitech/anychat/AnyChatCoreSDK;->a:Lcom/bairuitech/anychat/d;

    invoke-interface {v0, v5}, Lcom/bairuitech/anychat/d;->OnAnyChatLinkCloseMessage(I)V

    goto :goto_0

    .line 1316
    :sswitch_6
    iget-object v1, v0, Lcom/bairuitech/anychat/AnyChatCoreSDK;->a:Lcom/bairuitech/anychat/d;

    if-eqz v1, :cond_0

    .line 1317
    iget-object v0, v0, Lcom/bairuitech/anychat/AnyChatCoreSDK;->a:Lcom/bairuitech/anychat/d;

    invoke-interface {v0, v4, v5}, Lcom/bairuitech/anychat/d;->OnAnyChatOnlineUserMessage(II)V

    goto :goto_0

    .line 1320
    :sswitch_7
    iget-object v0, v0, Lcom/bairuitech/anychat/AnyChatCoreSDK;->b:Lcom/bairuitech/anychat/k;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1324
    :sswitch_8
    iget-object v0, v0, Lcom/bairuitech/anychat/AnyChatCoreSDK;->b:Lcom/bairuitech/anychat/k;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1328
    :sswitch_9
    iget-object v0, v0, Lcom/bairuitech/anychat/AnyChatCoreSDK;->b:Lcom/bairuitech/anychat/k;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1332
    :sswitch_a
    iget-object v0, v0, Lcom/bairuitech/anychat/AnyChatCoreSDK;->b:Lcom/bairuitech/anychat/k;

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 1336
    :sswitch_b
    iget-object v0, v0, Lcom/bairuitech/anychat/AnyChatCoreSDK;->b:Lcom/bairuitech/anychat/k;

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 1343
    :sswitch_c
    iget-object v0, v0, Lcom/bairuitech/anychat/AnyChatCoreSDK;->c:Lcom/bairuitech/anychat/h;

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 1347
    :sswitch_d
    iget-object v0, v0, Lcom/bairuitech/anychat/AnyChatCoreSDK;->c:Lcom/bairuitech/anychat/h;

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 1351
    :sswitch_e
    iget-object v0, v0, Lcom/bairuitech/anychat/AnyChatCoreSDK;->c:Lcom/bairuitech/anychat/h;

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 1355
    :sswitch_f
    iget-object v0, v0, Lcom/bairuitech/anychat/AnyChatCoreSDK;->g:Lcom/bairuitech/anychat/n;

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 1359
    :sswitch_10
    iget-object v0, v0, Lcom/bairuitech/anychat/AnyChatCoreSDK;->g:Lcom/bairuitech/anychat/n;

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 1363
    :sswitch_11
    sget-object v0, Lcom/bairuitech/anychat/AnyChatCoreSDK;->j:Lcom/bairuitech/anychat/a;

    if-eqz v0, :cond_0

    .line 1365
    if-ne v4, v1, :cond_4

    .line 1366
    sget-object v0, Lcom/bairuitech/anychat/AnyChatCoreSDK;->j:Lcom/bairuitech/anychat/a;

    invoke-virtual {v0, v5}, Lcom/bairuitech/anychat/a;->a(I)I

    goto/16 :goto_0

    .line 1368
    :cond_4
    sget-object v0, Lcom/bairuitech/anychat/AnyChatCoreSDK;->j:Lcom/bairuitech/anychat/a;

    .line 2081
    iget-boolean v2, v0, Lcom/bairuitech/anychat/a;->e:Z

    if-nez v2, :cond_0

    .line 2083
    iput-boolean v1, v0, Lcom/bairuitech/anychat/a;->e:Z

    .line 2084
    const-string v2, "ANYCHAT"

    const-string v3, "ReleaseAudioPlayer"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2085
    iget-object v2, v0, Lcom/bairuitech/anychat/a;->c:Lcom/bairuitech/anychat/b;

    if-eqz v2, :cond_5

    .line 2086
    iput-boolean v1, v0, Lcom/bairuitech/anychat/a;->d:Z

    .line 2087
    iput-object v6, v0, Lcom/bairuitech/anychat/a;->c:Lcom/bairuitech/anychat/b;

    .line 2090
    :cond_5
    iget-object v1, v0, Lcom/bairuitech/anychat/a;->a:Landroid/media/AudioTrack;

    if-eqz v1, :cond_0

    .line 2092
    :try_start_0
    iget-object v1, v0, Lcom/bairuitech/anychat/a;->a:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->stop()V

    .line 2093
    iget-object v1, v0, Lcom/bairuitech/anychat/a;->a:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->release()V

    .line 2094
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/bairuitech/anychat/a;->a:Landroid/media/AudioTrack;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_0

    .line 1371
    :sswitch_12
    sget-object v0, Lcom/bairuitech/anychat/AnyChatCoreSDK;->j:Lcom/bairuitech/anychat/a;

    if-eqz v0, :cond_0

    .line 1373
    if-ne v4, v1, :cond_6

    .line 1374
    sget-object v0, Lcom/bairuitech/anychat/AnyChatCoreSDK;->j:Lcom/bairuitech/anychat/a;

    invoke-virtual {v0, v5}, Lcom/bairuitech/anychat/a;->b(I)I

    goto/16 :goto_0

    .line 1376
    :cond_6
    sget-object v0, Lcom/bairuitech/anychat/AnyChatCoreSDK;->j:Lcom/bairuitech/anychat/a;

    .line 2210
    iget-boolean v2, v0, Lcom/bairuitech/anychat/a;->h:Z

    if-nez v2, :cond_0

    .line 2212
    iput-boolean v1, v0, Lcom/bairuitech/anychat/a;->h:Z

    .line 2213
    const-string v2, "ANYCHAT"

    const-string v3, "ReleaseAudioRecorder"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2214
    iget-object v2, v0, Lcom/bairuitech/anychat/a;->f:Lcom/bairuitech/anychat/c;

    if-eqz v2, :cond_7

    .line 2215
    iput-boolean v1, v0, Lcom/bairuitech/anychat/a;->g:Z

    .line 2216
    iput-object v6, v0, Lcom/bairuitech/anychat/a;->f:Lcom/bairuitech/anychat/c;

    .line 2218
    :cond_7
    iget-object v1, v0, Lcom/bairuitech/anychat/a;->b:Landroid/media/AudioRecord;

    if-eqz v1, :cond_0

    .line 2220
    :try_start_1
    iget-object v1, v0, Lcom/bairuitech/anychat/a;->b:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->stop()V

    .line 2221
    iget-object v1, v0, Lcom/bairuitech/anychat/a;->b:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->release()V

    .line 2222
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/bairuitech/anychat/a;->b:Landroid/media/AudioRecord;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    goto/16 :goto_0

    .line 1379
    :sswitch_13
    sget-object v0, Lcom/bairuitech/anychat/AnyChatCoreSDK;->k:Lcom/bairuitech/anychat/e;

    if-nez v4, :cond_8

    move v1, v2

    .line 3146
    :cond_8
    iput-boolean v1, v0, Lcom/bairuitech/anychat/e;->c:Z

    .line 3147
    iget-boolean v1, v0, Lcom/bairuitech/anychat/e;->c:Z

    if-eqz v1, :cond_9

    iget v1, v0, Lcom/bairuitech/anychat/e;->f:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_9

    .line 3150
    :try_start_2
    iget-object v1, v0, Lcom/bairuitech/anychat/e;->a:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 3151
    const/16 v2, 0x1a

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/bairuitech/anychat/AnyChatCoreSDK;->SetSDKOptionInt(II)I

    .line 3152
    iget v2, v0, Lcom/bairuitech/anychat/e;->f:I

    iget v3, v1, Landroid/hardware/Camera$Size;->width:I

    iget v1, v1, Landroid/hardware/Camera$Size;->height:I

    iget-object v4, v0, Lcom/bairuitech/anychat/e;->a:Landroid/hardware/Camera;

    invoke-virtual {v4}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getPreviewFrameRate()I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v2, v3, v1, v4, v5}, Lcom/bairuitech/anychat/AnyChatCoreSDK;->SetInputVideoFormat(IIIII)I

    .line 3153
    const/16 v1, 0x64

    iget v0, v0, Lcom/bairuitech/anychat/e;->h:I

    invoke-static {v1, v0}, Lcom/bairuitech/anychat/AnyChatCoreSDK;->SetSDKOptionInt(II)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 3156
    :catch_2
    move-exception v0

    goto/16 :goto_0

    .line 3158
    :cond_9
    invoke-static {v8, v2}, Lcom/bairuitech/anychat/AnyChatCoreSDK;->SetSDKOptionInt(II)I

    goto/16 :goto_0

    .line 413
    :cond_a
    invoke-static {}, Lcom/bairuitech/anychat/AnyChatCoreSDK;->b()I

    move-result v1

    if-ne v3, v1, :cond_b

    .line 415
    const-string v1, "FROMUSERID"

    invoke-virtual {v7, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 416
    const-string v1, "TOUSERID"

    invoke-virtual {v7, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 417
    const-string v1, "SECRET"

    invoke-virtual {v7, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 418
    const-string v1, "MESSAGE"

    invoke-virtual {v7, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 419
    iget-object v1, v0, Lcom/bairuitech/anychat/AnyChatCoreSDK;->d:Lcom/bairuitech/anychat/l;

    if-eqz v1, :cond_0

    .line 420
    iget-object v0, v0, Lcom/bairuitech/anychat/AnyChatCoreSDK;->d:Lcom/bairuitech/anychat/l;

    goto/16 :goto_0

    .line 422
    :cond_b
    invoke-static {}, Lcom/bairuitech/anychat/AnyChatCoreSDK;->c()I

    move-result v1

    if-ne v3, v1, :cond_c

    .line 424
    const-string v1, "USERID"

    invoke-virtual {v7, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 425
    const-string v2, "FILENAME"

    invoke-virtual {v7, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 426
    const-string v3, "TEMPFILE"

    invoke-virtual {v7, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 427
    const-string v4, "LENGTH"

    invoke-virtual {v7, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 428
    const-string v5, "WPARAM"

    invoke-virtual {v7, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 429
    const-string v6, "LPARAM"

    invoke-virtual {v7, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 430
    const-string v8, "TASKID"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 431
    iget-object v8, v0, Lcom/bairuitech/anychat/AnyChatCoreSDK;->e:Lcom/bairuitech/anychat/m;

    if-eqz v8, :cond_0

    .line 432
    iget-object v0, v0, Lcom/bairuitech/anychat/AnyChatCoreSDK;->e:Lcom/bairuitech/anychat/m;

    invoke-interface/range {v0 .. v7}, Lcom/bairuitech/anychat/m;->OnAnyChatTransFile(ILjava/lang/String;Ljava/lang/String;IIII)V

    goto/16 :goto_0

    .line 434
    :cond_c
    invoke-static {}, Lcom/bairuitech/anychat/AnyChatCoreSDK;->d()I

    move-result v1

    if-ne v3, v1, :cond_d

    .line 436
    const-string v1, "USERID"

    invoke-virtual {v7, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 437
    const-string v2, "LENGTH"

    invoke-virtual {v7, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 438
    const-string v3, "BUF"

    invoke-virtual {v7, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v3

    .line 439
    iget-object v4, v0, Lcom/bairuitech/anychat/AnyChatCoreSDK;->e:Lcom/bairuitech/anychat/m;

    if-eqz v4, :cond_0

    .line 440
    iget-object v0, v0, Lcom/bairuitech/anychat/AnyChatCoreSDK;->e:Lcom/bairuitech/anychat/m;

    invoke-interface {v0, v1, v3, v2}, Lcom/bairuitech/anychat/m;->OnAnyChatTransBuffer(I[BI)V

    goto/16 :goto_0

    .line 442
    :cond_d
    invoke-static {}, Lcom/bairuitech/anychat/AnyChatCoreSDK;->e()I

    move-result v1

    if-ne v3, v1, :cond_e

    .line 444
    const-string v1, "USERID"

    invoke-virtual {v7, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 445
    const-string v2, "LENGTH"

    invoke-virtual {v7, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 446
    const-string v2, "BUF"

    invoke-virtual {v7, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    .line 447
    const-string v4, "WPARAM"

    invoke-virtual {v7, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 448
    const-string v5, "LPARAM"

    invoke-virtual {v7, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 449
    const-string v6, "TASKID"

    invoke-virtual {v7, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 450
    iget-object v7, v0, Lcom/bairuitech/anychat/AnyChatCoreSDK;->e:Lcom/bairuitech/anychat/m;

    if-eqz v7, :cond_0

    .line 451
    iget-object v0, v0, Lcom/bairuitech/anychat/AnyChatCoreSDK;->e:Lcom/bairuitech/anychat/m;

    invoke-interface/range {v0 .. v6}, Lcom/bairuitech/anychat/m;->OnAnyChatTransBufferEx(I[BIIII)V

    goto/16 :goto_0

    .line 453
    :cond_e
    invoke-static {}, Lcom/bairuitech/anychat/AnyChatCoreSDK;->f()I

    move-result v1

    if-ne v3, v1, :cond_f

    .line 455
    const-string v1, "LENGTH"

    invoke-virtual {v7, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 456
    const-string v2, "BUF"

    invoke-virtual {v7, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    .line 457
    iget-object v3, v0, Lcom/bairuitech/anychat/AnyChatCoreSDK;->e:Lcom/bairuitech/anychat/m;

    if-eqz v3, :cond_0

    .line 458
    iget-object v0, v0, Lcom/bairuitech/anychat/AnyChatCoreSDK;->e:Lcom/bairuitech/anychat/m;

    invoke-interface {v0, v2, v1}, Lcom/bairuitech/anychat/m;->OnAnyChatSDKFilterData([BI)V

    goto/16 :goto_0

    .line 460
    :cond_f
    invoke-static {}, Lcom/bairuitech/anychat/AnyChatCoreSDK;->g()I

    move-result v1

    if-ne v3, v1, :cond_10

    .line 462
    const-string v1, "EVENTTYPE"

    invoke-virtual {v7, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 463
    const-string v2, "USERID"

    invoke-virtual {v7, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 464
    const-string v3, "ERRORCODE"

    invoke-virtual {v7, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 465
    const-string v4, "FLAGS"

    invoke-virtual {v7, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 466
    const-string v5, "PARAM"

    invoke-virtual {v7, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 467
    const-string v6, "USERSTR"

    invoke-virtual {v7, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 468
    iget-object v7, v0, Lcom/bairuitech/anychat/AnyChatCoreSDK;->f:Lcom/bairuitech/anychat/o;

    if-eqz v7, :cond_0

    .line 469
    iget-object v0, v0, Lcom/bairuitech/anychat/AnyChatCoreSDK;->f:Lcom/bairuitech/anychat/o;

    invoke-interface/range {v0 .. v6}, Lcom/bairuitech/anychat/o;->OnAnyChatVideoCallEvent(IIIIILjava/lang/String;)V

    goto/16 :goto_0

    .line 471
    :cond_10
    invoke-static {}, Lcom/bairuitech/anychat/AnyChatCoreSDK;->h()I

    move-result v1

    if-ne v3, v1, :cond_0

    .line 473
    const-string v1, "USERID"

    invoke-virtual {v7, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 474
    const-string v1, "FILENAME"

    invoke-virtual {v7, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 475
    const-string v1, "ELAPSE"

    invoke-virtual {v7, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 476
    const-string v1, "FLAGS"

    invoke-virtual {v7, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 477
    const-string v2, "PARAM"

    invoke-virtual {v7, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 478
    const-string v2, "USERSTR"

    invoke-virtual {v7, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 480
    iget-object v2, v0, Lcom/bairuitech/anychat/AnyChatCoreSDK;->h:Lcom/bairuitech/anychat/i;

    if-eqz v2, :cond_0

    .line 481
    and-int/lit16 v1, v1, 0x400

    if-nez v1, :cond_11

    .line 482
    iget-object v0, v0, Lcom/bairuitech/anychat/AnyChatCoreSDK;->h:Lcom/bairuitech/anychat/i;

    goto/16 :goto_0

    .line 484
    :cond_11
    iget-object v0, v0, Lcom/bairuitech/anychat/AnyChatCoreSDK;->h:Lcom/bairuitech/anychat/i;

    goto/16 :goto_0

    .line 1293
    :sswitch_data_0
    .sparse-switch
        0x4c9 -> :sswitch_1
        0x4ca -> :sswitch_2
        0x4cb -> :sswitch_3
        0x4cc -> :sswitch_7
        0x4cd -> :sswitch_4
        0x4ce -> :sswitch_5
        0x4cf -> :sswitch_6
        0x4d3 -> :sswitch_8
        0x4d4 -> :sswitch_9
        0x4d5 -> :sswitch_a
        0x4d6 -> :sswitch_b
        0x4d7 -> :sswitch_0
        0x4d8 -> :sswitch_f
        0x4d9 -> :sswitch_10
        0x4dd -> :sswitch_c
        0x4de -> :sswitch_d
        0x4df -> :sswitch_e
        0x52c -> :sswitch_11
        0x52d -> :sswitch_12
        0x52e -> :sswitch_13
    .end sparse-switch
.end method

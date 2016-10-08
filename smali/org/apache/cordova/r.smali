.class final Lorg/apache/cordova/r;
.super Ljava/lang/Object;
.source "NativeToJsMessageQueue.java"


# instance fields
.field final a:Ljava/lang/String;

.field final b:Lorg/apache/cordova/z;


# direct methods
.method constructor <init>(Lorg/apache/cordova/z;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 401
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 402
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 403
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 405
    :cond_1
    iput-object p2, p0, Lorg/apache/cordova/r;->a:Ljava/lang/String;

    .line 406
    iput-object p1, p0, Lorg/apache/cordova/r;->b:Lorg/apache/cordova/z;

    .line 407
    return-void
.end method


# virtual methods
.method final a()I
    .locals 2

    .prologue
    .line 410
    iget-object v0, p0, Lorg/apache/cordova/r;->b:Lorg/apache/cordova/z;

    if-nez v0, :cond_0

    .line 411
    iget-object v0, p0, Lorg/apache/cordova/r;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 436
    :goto_0
    return v0

    .line 413
    :cond_0
    iget-object v0, p0, Lorg/apache/cordova/r;->b:Lorg/apache/cordova/z;

    .line 1088
    iget v0, v0, Lorg/apache/cordova/z;->a:I

    .line 413
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 414
    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/apache/cordova/r;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 415
    iget-object v1, p0, Lorg/apache/cordova/r;->b:Lorg/apache/cordova/z;

    .line 1092
    iget v1, v1, Lorg/apache/cordova/z;->b:I

    .line 415
    packed-switch v1, :pswitch_data_0

    .line 434
    :pswitch_0
    iget-object v1, p0, Lorg/apache/cordova/r;->b:Lorg/apache/cordova/z;

    invoke-virtual {v1}, Lorg/apache/cordova/z;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    .line 418
    :pswitch_1
    add-int/lit8 v0, v0, 0x1

    .line 419
    goto :goto_0

    .line 421
    :pswitch_2
    iget-object v1, p0, Lorg/apache/cordova/r;->b:Lorg/apache/cordova/z;

    invoke-virtual {v1}, Lorg/apache/cordova/z;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 422
    goto :goto_0

    .line 424
    :pswitch_3
    iget-object v1, p0, Lorg/apache/cordova/r;->b:Lorg/apache/cordova/z;

    .line 1107
    iget-object v1, v1, Lorg/apache/cordova/z;->d:Ljava/lang/String;

    .line 424
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 425
    goto :goto_0

    .line 427
    :pswitch_4
    iget-object v1, p0, Lorg/apache/cordova/r;->b:Lorg/apache/cordova/z;

    invoke-virtual {v1}, Lorg/apache/cordova/z;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 428
    goto :goto_0

    .line 430
    :pswitch_5
    iget-object v1, p0, Lorg/apache/cordova/r;->b:Lorg/apache/cordova/z;

    invoke-virtual {v1}, Lorg/apache/cordova/z;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 431
    goto :goto_0

    .line 415
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method final a(Ljava/lang/StringBuilder;)V
    .locals 4

    .prologue
    .line 486
    iget-object v0, p0, Lorg/apache/cordova/r;->b:Lorg/apache/cordova/z;

    if-nez v0, :cond_0

    .line 487
    iget-object v0, p0, Lorg/apache/cordova/r;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    :goto_0
    return-void

    .line 489
    :cond_0
    iget-object v0, p0, Lorg/apache/cordova/r;->b:Lorg/apache/cordova/z;

    .line 2088
    iget v1, v0, Lorg/apache/cordova/z;->a:I

    .line 490
    sget v0, Lorg/apache/cordova/aa;->b:I

    add-int/lit8 v0, v0, -0x1

    if-eq v1, v0, :cond_1

    sget v0, Lorg/apache/cordova/aa;->a:I

    add-int/lit8 v0, v0, -0x1

    if-ne v1, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 491
    :goto_1
    const-string v2, "cordova.callbackFromNative(\'"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/cordova/r;->a:Ljava/lang/String;

    .line 492
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\',"

    .line 493
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 494
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    .line 495
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 496
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",["

    .line 497
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    iget-object v0, p0, Lorg/apache/cordova/r;->b:Lorg/apache/cordova/z;

    .line 2092
    iget v0, v0, Lorg/apache/cordova/z;->b:I

    .line 498
    packed-switch v0, :pswitch_data_0

    .line 510
    iget-object v0, p0, Lorg/apache/cordova/r;->b:Lorg/apache/cordova/z;

    invoke-virtual {v0}, Lorg/apache/cordova/z;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    :goto_2
    const-string v0, "],"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/cordova/r;->b:Lorg/apache/cordova/z;

    .line 2111
    iget-boolean v1, v1, Lorg/apache/cordova/z;->c:Z

    .line 513
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    .line 514
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 490
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 500
    :pswitch_0
    const-string v0, "atob(\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/cordova/r;->b:Lorg/apache/cordova/z;

    .line 501
    invoke-virtual {v1}, Lorg/apache/cordova/z;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\')"

    .line 502
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 505
    :pswitch_1
    const-string v0, "cordova.require(\'cordova/base64\').toArrayBuffer(\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/cordova/r;->b:Lorg/apache/cordova/z;

    .line 506
    invoke-virtual {v1}, Lorg/apache/cordova/z;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\')"

    .line 507
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 498
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

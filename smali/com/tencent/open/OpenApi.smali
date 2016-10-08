.class public Lcom/tencent/open/OpenApi;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private a:Lcom/tencent/open/TContext;


# direct methods
.method public constructor <init>(Lcom/tencent/open/TContext;)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/tencent/open/OpenApi;->a:Lcom/tencent/open/TContext;

    .line 81
    return-void
.end method

.method private static a(Ljava/io/IOException;)I
    .locals 1

    .prologue
    .line 578
    instance-of v0, p0, Ljava/io/CharConversionException;

    if-eqz v0, :cond_0

    .line 579
    const/16 v0, -0x14

    .line 655
    :goto_0
    return v0

    .line 580
    :cond_0
    instance-of v0, p0, Ljava/nio/charset/MalformedInputException;

    if-eqz v0, :cond_1

    .line 581
    const/16 v0, -0x15

    goto :goto_0

    .line 582
    :cond_1
    instance-of v0, p0, Ljava/nio/charset/UnmappableCharacterException;

    if-eqz v0, :cond_2

    .line 583
    const/16 v0, -0x16

    goto :goto_0

    .line 584
    :cond_2
    instance-of v0, p0, Lorg/apache/http/client/HttpResponseException;

    if-eqz v0, :cond_3

    .line 585
    const/16 v0, -0x17

    goto :goto_0

    .line 586
    :cond_3
    instance-of v0, p0, Ljava/nio/channels/ClosedChannelException;

    if-eqz v0, :cond_4

    .line 587
    const/16 v0, -0x18

    goto :goto_0

    .line 588
    :cond_4
    instance-of v0, p0, Lorg/apache/http/ConnectionClosedException;

    if-eqz v0, :cond_5

    .line 589
    const/16 v0, -0x19

    goto :goto_0

    .line 590
    :cond_5
    instance-of v0, p0, Ljava/io/EOFException;

    if-eqz v0, :cond_6

    .line 591
    const/16 v0, -0x1a

    goto :goto_0

    .line 592
    :cond_6
    instance-of v0, p0, Ljava/nio/channels/FileLockInterruptionException;

    if-eqz v0, :cond_7

    .line 593
    const/16 v0, -0x1b

    goto :goto_0

    .line 594
    :cond_7
    instance-of v0, p0, Ljava/io/FileNotFoundException;

    if-eqz v0, :cond_8

    .line 595
    const/16 v0, -0x1c

    goto :goto_0

    .line 596
    :cond_8
    instance-of v0, p0, Ljava/net/HttpRetryException;

    if-eqz v0, :cond_9

    .line 597
    const/16 v0, -0x1d

    goto :goto_0

    .line 598
    :cond_9
    instance-of v0, p0, Lorg/apache/http/conn/ConnectTimeoutException;

    if-eqz v0, :cond_a

    .line 599
    const/4 v0, -0x7

    goto :goto_0

    .line 600
    :cond_a
    instance-of v0, p0, Ljava/net/SocketTimeoutException;

    if-eqz v0, :cond_b

    .line 601
    const/4 v0, -0x8

    goto :goto_0

    .line 602
    :cond_b
    instance-of v0, p0, Ljava/util/InvalidPropertiesFormatException;

    if-eqz v0, :cond_c

    .line 603
    const/16 v0, -0x1e

    goto :goto_0

    .line 604
    :cond_c
    instance-of v0, p0, Lorg/apache/http/MalformedChunkCodingException;

    if-eqz v0, :cond_d

    .line 605
    const/16 v0, -0x1f

    goto :goto_0

    .line 606
    :cond_d
    instance-of v0, p0, Ljava/net/MalformedURLException;

    if-eqz v0, :cond_e

    .line 607
    const/4 v0, -0x3

    goto :goto_0

    .line 608
    :cond_e
    instance-of v0, p0, Lorg/apache/http/NoHttpResponseException;

    if-eqz v0, :cond_f

    .line 609
    const/16 v0, -0x20

    goto :goto_0

    .line 610
    :cond_f
    instance-of v0, p0, Ljava/io/InvalidClassException;

    if-eqz v0, :cond_10

    .line 611
    const/16 v0, -0x21

    goto :goto_0

    .line 612
    :cond_10
    instance-of v0, p0, Ljava/io/InvalidObjectException;

    if-eqz v0, :cond_11

    .line 613
    const/16 v0, -0x22

    goto :goto_0

    .line 614
    :cond_11
    instance-of v0, p0, Ljava/io/NotActiveException;

    if-eqz v0, :cond_12

    .line 615
    const/16 v0, -0x23

    goto :goto_0

    .line 616
    :cond_12
    instance-of v0, p0, Ljava/io/NotSerializableException;

    if-eqz v0, :cond_13

    .line 617
    const/16 v0, -0x24

    goto/16 :goto_0

    .line 618
    :cond_13
    instance-of v0, p0, Ljava/io/OptionalDataException;

    if-eqz v0, :cond_14

    .line 619
    const/16 v0, -0x25

    goto/16 :goto_0

    .line 620
    :cond_14
    instance-of v0, p0, Ljava/io/StreamCorruptedException;

    if-eqz v0, :cond_15

    .line 621
    const/16 v0, -0x26

    goto/16 :goto_0

    .line 622
    :cond_15
    instance-of v0, p0, Ljava/io/WriteAbortedException;

    if-eqz v0, :cond_16

    .line 623
    const/16 v0, -0x27

    goto/16 :goto_0

    .line 624
    :cond_16
    instance-of v0, p0, Ljava/net/ProtocolException;

    if-eqz v0, :cond_17

    .line 625
    const/16 v0, -0x28

    goto/16 :goto_0

    .line 626
    :cond_17
    instance-of v0, p0, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v0, :cond_18

    .line 627
    const/16 v0, -0x29

    goto/16 :goto_0

    .line 628
    :cond_18
    instance-of v0, p0, Ljavax/net/ssl/SSLKeyException;

    if-eqz v0, :cond_19

    .line 629
    const/16 v0, -0x2a

    goto/16 :goto_0

    .line 630
    :cond_19
    instance-of v0, p0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-eqz v0, :cond_1a

    .line 631
    const/16 v0, -0x2b

    goto/16 :goto_0

    .line 632
    :cond_1a
    instance-of v0, p0, Ljavax/net/ssl/SSLProtocolException;

    if-eqz v0, :cond_1b

    .line 633
    const/16 v0, -0x2c

    goto/16 :goto_0

    .line 634
    :cond_1b
    instance-of v0, p0, Ljava/net/BindException;

    if-eqz v0, :cond_1c

    .line 635
    const/16 v0, -0x2d

    goto/16 :goto_0

    .line 636
    :cond_1c
    instance-of v0, p0, Ljava/net/ConnectException;

    if-eqz v0, :cond_1d

    .line 637
    const/16 v0, -0x2e

    goto/16 :goto_0

    .line 638
    :cond_1d
    instance-of v0, p0, Ljava/net/NoRouteToHostException;

    if-eqz v0, :cond_1e

    .line 639
    const/16 v0, -0x2f

    goto/16 :goto_0

    .line 640
    :cond_1e
    instance-of v0, p0, Ljava/net/PortUnreachableException;

    if-eqz v0, :cond_1f

    .line 641
    const/16 v0, -0x30

    goto/16 :goto_0

    .line 642
    :cond_1f
    instance-of v0, p0, Ljava/io/SyncFailedException;

    if-eqz v0, :cond_20

    .line 643
    const/16 v0, -0x31

    goto/16 :goto_0

    .line 644
    :cond_20
    instance-of v0, p0, Ljava/io/UTFDataFormatException;

    if-eqz v0, :cond_21

    .line 645
    const/16 v0, -0x32

    goto/16 :goto_0

    .line 646
    :cond_21
    instance-of v0, p0, Ljava/net/UnknownHostException;

    if-eqz v0, :cond_22

    .line 647
    const/16 v0, -0x33

    goto/16 :goto_0

    .line 648
    :cond_22
    instance-of v0, p0, Ljava/net/UnknownServiceException;

    if-eqz v0, :cond_23

    .line 649
    const/16 v0, -0x34

    goto/16 :goto_0

    .line 650
    :cond_23
    instance-of v0, p0, Ljava/io/UnsupportedEncodingException;

    if-eqz v0, :cond_24

    .line 651
    const/16 v0, -0x35

    goto/16 :goto_0

    .line 652
    :cond_24
    instance-of v0, p0, Ljava/util/zip/ZipException;

    if-eqz v0, :cond_25

    .line 653
    const/16 v0, -0x36

    goto/16 :goto_0

    .line 655
    :cond_25
    const/4 v0, -0x2

    goto/16 :goto_0
.end method

.method private a(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 397
    if-nez p2, :cond_0

    .line 398
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 399
    :cond_0
    const-string v0, "format"

    const-string v1, "json"

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    const-string v0, "status_os"

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    const-string v0, "status_machine"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    const-string v0, "status_version"

    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    const-string v0, "sdkv"

    const-string v1, "1.8"

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    const-string v0, "sdkp"

    const-string v1, "a"

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    iget-object v0, p0, Lcom/tencent/open/OpenApi;->a:Lcom/tencent/open/TContext;

    if-nez v0, :cond_1

    .line 437
    :goto_0
    return-object p2

    .line 411
    :cond_1
    invoke-direct {p0}, Lcom/tencent/open/OpenApi;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 412
    const-string v0, "access_token"

    invoke-direct {p0}, Lcom/tencent/open/OpenApi;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    :cond_2
    const-string v0, "oauth2.0/m_me"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 415
    const-string v0, "oauth_consumer_key"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tencent/open/OpenApi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v2}, Lcom/tencent/open/TContext;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    iget-object v0, p0, Lcom/tencent/open/OpenApi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v0}, Lcom/tencent/open/TContext;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 418
    const-string v0, "openid"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tencent/open/OpenApi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v2}, Lcom/tencent/open/TContext;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    :cond_3
    const-string v0, "appid_for_getting_config"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tencent/open/OpenApi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v2}, Lcom/tencent/open/TContext;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    :try_start_0
    iget-object v0, p0, Lcom/tencent/open/OpenApi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v0}, Lcom/tencent/open/TContext;->f()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pfStore"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 430
    const-string v1, "pf"

    const-string v2, "openmobile_android"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 431
    const-string v1, "pf"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 433
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 434
    const-string v0, "pf"

    const-string v1, "openmobile_android"

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 508
    const-string v0, "Android_SDK_1.8"

    return-object v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 554
    const-string v0, "add_share"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    const-string v0, "upload_pic"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    const-string v0, "add_topic"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    const-string v0, "set_user_face"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    const-string v0, "add_t"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    const-string v0, "add_pic_t"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    const-string v0, "add_pic_url"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    const-string v0, "add_video"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 562
    :cond_0
    iget-object v0, p0, Lcom/tencent/open/OpenApi;->a:Lcom/tencent/open/TContext;

    const-string v1, "requireApi"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/tencent/open/TencentStat;->a(Lcom/tencent/open/TContext;Ljava/lang/String;[Ljava/lang/String;)V

    .line 564
    :cond_1
    return-void
.end method

.method private b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Lcom/tencent/open/OpenApi;->a:Lcom/tencent/open/TContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/open/OpenApi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v0}, Lcom/tencent/open/TContext;->b()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c()Z
    .locals 1

    .prologue
    .line 504
    iget-object v0, p0, Lcom/tencent/open/OpenApi;->a:Lcom/tencent/open/TContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/open/OpenApi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v0}, Lcom/tencent/open/TContext;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Lorg/json/JSONObject;
    .locals 20

    .prologue
    .line 259
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/tencent/open/OpenApi;->a(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v17

    .line 263
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "http"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 267
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/open/ServerSetting;->getInstance()Lcom/tencent/open/ServerSetting;

    move-result-object v5

    const/4 v6, 0x6

    move-object/from16 v0, p1

    invoke-virtual {v5, v0, v6}, Lcom/tencent/open/ServerSetting;->getSettingUrl(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 269
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/open/ServerSetting;->getInstance()Lcom/tencent/open/ServerSetting;

    move-result-object v6

    const/4 v7, 0x6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0, v7}, Lcom/tencent/open/ServerSetting;->getSettingUrl(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 273
    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/tencent/open/OpenApi;->a(Ljava/lang/String;)V

    .line 274
    const/4 v10, 0x0

    .line 275
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 280
    const/4 v6, 0x0

    .line 281
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tencent/open/OpenApi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v5}, Lcom/tencent/open/TContext;->d()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-static {v0, v5}, Lcom/tencent/open/OpenConfig;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/open/OpenConfig;

    move-result-object v5

    const-string v11, "Common_HttpRetryCount"

    invoke-virtual {v5, v11}, Lcom/tencent/open/OpenConfig;->b(Ljava/lang/String;)I

    move-result v5

    .line 283
    const-string v11, "OpenConfig_test"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "config 1:Common_HttpRetryCount            config_value:"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "   appid:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/open/OpenApi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v13}, Lcom/tencent/open/TContext;->d()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "     url:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    if-nez v5, :cond_0

    const/4 v5, 0x3

    .line 287
    :cond_0
    const-string v11, "OpenConfig_test"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "config 1:Common_HttpRetryCount            result_value:"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "   appid:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/open/OpenApi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v13}, Lcom/tencent/open/TContext;->d()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "     url:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :cond_1
    add-int/lit8 v6, v6, 0x1

    .line 295
    :try_start_0
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v4, v1}, Lcom/tencent/open/Util;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Lcom/tencent/open/Util$Statistic;

    move-result-object v12

    .line 297
    iget-object v11, v12, Lcom/tencent/open/Util$Statistic;->a:Ljava/lang/String;

    .line 298
    invoke-static {v11}, Lcom/tencent/open/Util;->d(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Lcom/tencent/open/HttpStatusException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/tencent/open/NetworkUnavailableException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_8

    move-result-object v15

    .line 299
    :try_start_1
    const-string v10, "oauth2.0/m_me"

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    if-eqz v15, :cond_2

    .line 300
    const-string v10, "openid"

    invoke-virtual {v15, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 301
    if-eqz v10, :cond_2

    .line 302
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/tencent/open/OpenApi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v11, v10}, Lcom/tencent/open/TContext;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/tencent/open/HttpStatusException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/tencent/open/NetworkUnavailableException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_8

    .line 306
    :cond_2
    :try_start_2
    const-string v10, "ret"

    invoke-virtual {v15, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/tencent/open/HttpStatusException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/tencent/open/NetworkUnavailableException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    move-result v14

    .line 311
    :goto_1
    :try_start_3
    iget-wide v10, v12, Lcom/tencent/open/Util$Statistic;->b:J

    .line 312
    iget-wide v12, v12, Lcom/tencent/open/Util$Statistic;->c:J
    :try_end_3
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/tencent/open/HttpStatusException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lcom/tencent/open/NetworkUnavailableException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_8

    move-object v4, v15

    .line 392
    :goto_2
    invoke-static {}, Lcom/tencent/open/cgireport/ReportManager;->a()Lcom/tencent/open/cgireport/ReportManager;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/tencent/open/OpenApi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v6}, Lcom/tencent/open/TContext;->d()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v6, p1

    invoke-virtual/range {v5 .. v15}, Lcom/tencent/open/cgireport/ReportManager;->a(Landroid/content/Context;Ljava/lang/String;JJJILjava/lang/String;)V

    .line 393
    return-object v4

    .line 309
    :catch_0
    move-exception v10

    const/4 v14, -0x4

    goto :goto_1

    .line 315
    :catch_1
    move-exception v10

    move-object/from16 v16, v10

    .line 316
    :goto_3
    invoke-virtual/range {v16 .. v16}, Lorg/apache/http/conn/ConnectTimeoutException;->printStackTrace()V

    .line 317
    const/4 v14, -0x7

    .line 318
    const-wide/16 v10, 0x0

    .line 319
    const-wide/16 v12, 0x0

    .line 320
    if-ge v6, v5, :cond_3

    .line 321
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    move-wide/from16 v18, v10

    move v11, v14

    move-object v10, v15

    move-wide/from16 v14, v18

    .line 391
    :goto_4
    if-lt v6, v5, :cond_1

    move-object v4, v10

    move/from16 v18, v11

    move-wide v10, v14

    move/from16 v14, v18

    goto :goto_2

    .line 324
    :cond_3
    invoke-static {}, Lcom/tencent/open/cgireport/ReportManager;->a()Lcom/tencent/open/cgireport/ReportManager;

    move-result-object v5

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, -0x7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/open/OpenApi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v4}, Lcom/tencent/open/TContext;->d()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v6, p1

    invoke-virtual/range {v5 .. v15}, Lcom/tencent/open/cgireport/ReportManager;->a(Landroid/content/Context;Ljava/lang/String;JJJILjava/lang/String;)V

    .line 326
    throw v16

    .line 328
    :catch_2
    move-exception v10

    move-object/from16 v16, v10

    .line 329
    :goto_5
    invoke-virtual/range {v16 .. v16}, Ljava/net/SocketTimeoutException;->printStackTrace()V

    .line 330
    const/4 v14, -0x8

    .line 331
    const-wide/16 v10, 0x0

    .line 332
    const-wide/16 v12, 0x0

    .line 334
    if-ge v6, v5, :cond_4

    .line 335
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    move-wide/from16 v18, v10

    move v11, v14

    move-object v10, v15

    move-wide/from16 v14, v18

    .line 336
    goto :goto_4

    .line 338
    :cond_4
    invoke-static {}, Lcom/tencent/open/cgireport/ReportManager;->a()Lcom/tencent/open/cgireport/ReportManager;

    move-result-object v5

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, -0x8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/open/OpenApi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v4}, Lcom/tencent/open/TContext;->d()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v6, p1

    invoke-virtual/range {v5 .. v15}, Lcom/tencent/open/cgireport/ReportManager;->a(Landroid/content/Context;Ljava/lang/String;JJJILjava/lang/String;)V

    .line 340
    throw v16

    .line 344
    :catch_3
    move-exception v4

    .line 345
    invoke-virtual {v4}, Lcom/tencent/open/HttpStatusException;->printStackTrace()V

    .line 346
    invoke-virtual {v4}, Lcom/tencent/open/HttpStatusException;->getMessage()Ljava/lang/String;

    move-result-object v5

    .line 349
    :try_start_4
    const-string v6, "http status code error:"

    const-string v10, ""

    invoke-virtual {v5, v6, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 351
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-result v14

    .line 359
    :goto_6
    invoke-static {}, Lcom/tencent/open/cgireport/ReportManager;->a()Lcom/tencent/open/cgireport/ReportManager;

    move-result-object v5

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/tencent/open/OpenApi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v6}, Lcom/tencent/open/TContext;->d()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v6, p1

    invoke-virtual/range {v5 .. v15}, Lcom/tencent/open/cgireport/ReportManager;->a(Landroid/content/Context;Ljava/lang/String;JJJILjava/lang/String;)V

    .line 361
    throw v4

    .line 353
    :catch_4
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 355
    const/16 v14, -0x9

    goto :goto_6

    .line 362
    :catch_5
    move-exception v4

    .line 363
    invoke-virtual {v4}, Lcom/tencent/open/NetworkUnavailableException;->printStackTrace()V

    .line 364
    throw v4

    .line 365
    :catch_6
    move-exception v4

    .line 366
    invoke-virtual {v4}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 370
    invoke-static {}, Lcom/tencent/open/cgireport/ReportManager;->a()Lcom/tencent/open/cgireport/ReportManager;

    move-result-object v5

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, -0x3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/tencent/open/OpenApi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v6}, Lcom/tencent/open/TContext;->d()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v6, p1

    invoke-virtual/range {v5 .. v15}, Lcom/tencent/open/cgireport/ReportManager;->a(Landroid/content/Context;Ljava/lang/String;JJJILjava/lang/String;)V

    .line 372
    throw v4

    .line 373
    :catch_7
    move-exception v4

    .line 374
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 376
    invoke-static {v4}, Lcom/tencent/open/OpenApi;->a(Ljava/io/IOException;)I

    move-result v14

    .line 379
    invoke-static {}, Lcom/tencent/open/cgireport/ReportManager;->a()Lcom/tencent/open/cgireport/ReportManager;

    move-result-object v5

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/tencent/open/OpenApi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v6}, Lcom/tencent/open/TContext;->d()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v6, p1

    invoke-virtual/range {v5 .. v15}, Lcom/tencent/open/cgireport/ReportManager;->a(Landroid/content/Context;Ljava/lang/String;JJJILjava/lang/String;)V

    .line 381
    throw v4

    .line 382
    :catch_8
    move-exception v4

    .line 383
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    .line 387
    invoke-static {}, Lcom/tencent/open/cgireport/ReportManager;->a()Lcom/tencent/open/cgireport/ReportManager;

    move-result-object v5

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, -0x4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/tencent/open/OpenApi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v6}, Lcom/tencent/open/TContext;->d()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v6, p1

    invoke-virtual/range {v5 .. v15}, Lcom/tencent/open/cgireport/ReportManager;->a(Landroid/content/Context;Ljava/lang/String;JJJILjava/lang/String;)V

    .line 389
    throw v4

    .line 328
    :catch_9
    move-exception v11

    move-object/from16 v16, v11

    move-object v15, v10

    goto/16 :goto_5

    .line 315
    :catch_a
    move-exception v11

    move-object/from16 v16, v11

    move-object v15, v10

    goto/16 :goto_3

    :cond_5
    move-object/from16 v7, p2

    move-object/from16 v4, p2

    goto/16 :goto_0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 20

    .prologue
    .line 104
    const-string v4, "openSDK_LOG"

    const-string v5, "OpenApi request"

    invoke-static {v4, v5}, Lcom/tencent/record/debug/WnsClientLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/tencent/open/OpenApi;->a(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v17

    .line 109
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "http"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 113
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/open/ServerSetting;->getInstance()Lcom/tencent/open/ServerSetting;

    move-result-object v5

    const/4 v6, 0x6

    move-object/from16 v0, p1

    invoke-virtual {v5, v0, v6}, Lcom/tencent/open/ServerSetting;->getSettingUrl(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 115
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/open/ServerSetting;->getInstance()Lcom/tencent/open/ServerSetting;

    move-result-object v6

    const/4 v7, 0x6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0, v7}, Lcom/tencent/open/ServerSetting;->getSettingUrl(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 119
    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/tencent/open/OpenApi;->a(Ljava/lang/String;)V

    .line 120
    const/4 v10, 0x0

    .line 121
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 126
    const/4 v6, 0x0

    .line 127
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tencent/open/OpenApi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v5}, Lcom/tencent/open/TContext;->d()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-static {v0, v5}, Lcom/tencent/open/OpenConfig;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/open/OpenConfig;

    move-result-object v5

    const-string v11, "Common_HttpRetryCount"

    invoke-virtual {v5, v11}, Lcom/tencent/open/OpenConfig;->b(Ljava/lang/String;)I

    move-result v5

    .line 129
    const-string v11, "OpenConfig_test"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "config 1:Common_HttpRetryCount            config_value:"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "   appid:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/open/OpenApi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v13}, Lcom/tencent/open/TContext;->d()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "     url:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    if-nez v5, :cond_0

    const/4 v5, 0x3

    .line 133
    :cond_0
    const-string v11, "OpenConfig_test"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "config 1:Common_HttpRetryCount            result_value:"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "   appid:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/open/OpenApi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v13}, Lcom/tencent/open/TContext;->d()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "     url:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_1
    add-int/lit8 v6, v6, 0x1

    .line 141
    :try_start_0
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, v17

    invoke-static {v0, v4, v1, v2}, Lcom/tencent/open/Util;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/tencent/open/Util$Statistic;

    move-result-object v12

    .line 143
    iget-object v11, v12, Lcom/tencent/open/Util$Statistic;->a:Ljava/lang/String;

    .line 144
    invoke-static {v11}, Lcom/tencent/open/Util;->d(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Lcom/tencent/open/HttpStatusException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/tencent/open/NetworkUnavailableException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_8

    move-result-object v15

    .line 145
    :try_start_1
    const-string v10, "oauth2.0/m_me"

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    if-eqz v15, :cond_2

    .line 146
    const-string v10, "openid"

    invoke-virtual {v15, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 147
    if-eqz v10, :cond_2

    .line 148
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/tencent/open/OpenApi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v11, v10}, Lcom/tencent/open/TContext;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/tencent/open/HttpStatusException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/tencent/open/NetworkUnavailableException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_8

    .line 152
    :cond_2
    :try_start_2
    const-string v10, "ret"

    invoke-virtual {v15, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/tencent/open/HttpStatusException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/tencent/open/NetworkUnavailableException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    move-result v14

    .line 157
    :goto_1
    :try_start_3
    iget-wide v10, v12, Lcom/tencent/open/Util$Statistic;->b:J

    .line 158
    iget-wide v12, v12, Lcom/tencent/open/Util$Statistic;->c:J
    :try_end_3
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/tencent/open/HttpStatusException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lcom/tencent/open/NetworkUnavailableException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_8

    move-object v4, v15

    .line 238
    :goto_2
    invoke-static {}, Lcom/tencent/open/cgireport/ReportManager;->a()Lcom/tencent/open/cgireport/ReportManager;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/tencent/open/OpenApi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v6}, Lcom/tencent/open/TContext;->d()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v6, p1

    invoke-virtual/range {v5 .. v15}, Lcom/tencent/open/cgireport/ReportManager;->a(Landroid/content/Context;Ljava/lang/String;JJJILjava/lang/String;)V

    .line 239
    return-object v4

    .line 155
    :catch_0
    move-exception v10

    const/4 v14, -0x4

    goto :goto_1

    .line 161
    :catch_1
    move-exception v10

    move-object/from16 v16, v10

    .line 162
    :goto_3
    invoke-virtual/range {v16 .. v16}, Lorg/apache/http/conn/ConnectTimeoutException;->printStackTrace()V

    .line 163
    const/4 v14, -0x7

    .line 164
    const-wide/16 v10, 0x0

    .line 165
    const-wide/16 v12, 0x0

    .line 166
    if-ge v6, v5, :cond_3

    .line 167
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    move-wide/from16 v18, v10

    move v11, v14

    move-object v10, v15

    move-wide/from16 v14, v18

    .line 237
    :goto_4
    if-lt v6, v5, :cond_1

    move-object v4, v10

    move/from16 v18, v11

    move-wide v10, v14

    move/from16 v14, v18

    goto :goto_2

    .line 170
    :cond_3
    invoke-static {}, Lcom/tencent/open/cgireport/ReportManager;->a()Lcom/tencent/open/cgireport/ReportManager;

    move-result-object v5

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, -0x7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/open/OpenApi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v4}, Lcom/tencent/open/TContext;->d()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v6, p1

    invoke-virtual/range {v5 .. v15}, Lcom/tencent/open/cgireport/ReportManager;->a(Landroid/content/Context;Ljava/lang/String;JJJILjava/lang/String;)V

    .line 172
    throw v16

    .line 174
    :catch_2
    move-exception v10

    move-object/from16 v16, v10

    .line 175
    :goto_5
    invoke-virtual/range {v16 .. v16}, Ljava/net/SocketTimeoutException;->printStackTrace()V

    .line 176
    const/4 v14, -0x8

    .line 177
    const-wide/16 v10, 0x0

    .line 178
    const-wide/16 v12, 0x0

    .line 180
    if-ge v6, v5, :cond_4

    .line 181
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    move-wide/from16 v18, v10

    move v11, v14

    move-object v10, v15

    move-wide/from16 v14, v18

    .line 182
    goto :goto_4

    .line 184
    :cond_4
    invoke-static {}, Lcom/tencent/open/cgireport/ReportManager;->a()Lcom/tencent/open/cgireport/ReportManager;

    move-result-object v5

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, -0x8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/open/OpenApi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v4}, Lcom/tencent/open/TContext;->d()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v6, p1

    invoke-virtual/range {v5 .. v15}, Lcom/tencent/open/cgireport/ReportManager;->a(Landroid/content/Context;Ljava/lang/String;JJJILjava/lang/String;)V

    .line 186
    throw v16

    .line 190
    :catch_3
    move-exception v4

    .line 191
    invoke-virtual {v4}, Lcom/tencent/open/HttpStatusException;->printStackTrace()V

    .line 192
    invoke-virtual {v4}, Lcom/tencent/open/HttpStatusException;->getMessage()Ljava/lang/String;

    move-result-object v5

    .line 195
    :try_start_4
    const-string v6, "http status code error:"

    const-string v10, ""

    invoke-virtual {v5, v6, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 197
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-result v14

    .line 205
    :goto_6
    invoke-static {}, Lcom/tencent/open/cgireport/ReportManager;->a()Lcom/tencent/open/cgireport/ReportManager;

    move-result-object v5

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/tencent/open/OpenApi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v6}, Lcom/tencent/open/TContext;->d()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v6, p1

    invoke-virtual/range {v5 .. v15}, Lcom/tencent/open/cgireport/ReportManager;->a(Landroid/content/Context;Ljava/lang/String;JJJILjava/lang/String;)V

    .line 207
    throw v4

    .line 199
    :catch_4
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 201
    const/16 v14, -0x9

    goto :goto_6

    .line 208
    :catch_5
    move-exception v4

    .line 209
    invoke-virtual {v4}, Lcom/tencent/open/NetworkUnavailableException;->printStackTrace()V

    .line 210
    throw v4

    .line 211
    :catch_6
    move-exception v4

    .line 212
    invoke-virtual {v4}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 216
    invoke-static {}, Lcom/tencent/open/cgireport/ReportManager;->a()Lcom/tencent/open/cgireport/ReportManager;

    move-result-object v5

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, -0x3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/tencent/open/OpenApi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v6}, Lcom/tencent/open/TContext;->d()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v6, p1

    invoke-virtual/range {v5 .. v15}, Lcom/tencent/open/cgireport/ReportManager;->a(Landroid/content/Context;Ljava/lang/String;JJJILjava/lang/String;)V

    .line 218
    throw v4

    .line 219
    :catch_7
    move-exception v4

    .line 220
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 222
    invoke-static {v4}, Lcom/tencent/open/OpenApi;->a(Ljava/io/IOException;)I

    move-result v14

    .line 225
    invoke-static {}, Lcom/tencent/open/cgireport/ReportManager;->a()Lcom/tencent/open/cgireport/ReportManager;

    move-result-object v5

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/tencent/open/OpenApi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v6}, Lcom/tencent/open/TContext;->d()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v6, p1

    invoke-virtual/range {v5 .. v15}, Lcom/tencent/open/cgireport/ReportManager;->a(Landroid/content/Context;Ljava/lang/String;JJJILjava/lang/String;)V

    .line 227
    throw v4

    .line 228
    :catch_8
    move-exception v4

    .line 229
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    .line 233
    invoke-static {}, Lcom/tencent/open/cgireport/ReportManager;->a()Lcom/tencent/open/cgireport/ReportManager;

    move-result-object v5

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, -0x4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/tencent/open/OpenApi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v6}, Lcom/tencent/open/TContext;->d()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v6, p1

    invoke-virtual/range {v5 .. v15}, Lcom/tencent/open/cgireport/ReportManager;->a(Landroid/content/Context;Ljava/lang/String;JJJILjava/lang/String;)V

    .line 235
    throw v4

    .line 174
    :catch_9
    move-exception v11

    move-object/from16 v16, v11

    move-object v15, v10

    goto/16 :goto_5

    .line 161
    :catch_a
    move-exception v11

    move-object/from16 v16, v11

    move-object v15, v10

    goto/16 :goto_3

    :cond_5
    move-object/from16 v7, p2

    move-object/from16 v4, p2

    goto/16 :goto_0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/IRequestListener;Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 443
    const-string v0, "openSDK_LOG"

    const-string v1, "OpenApi requestAsync"

    invoke-static {v0, v1}, Lcom/tencent/record/debug/WnsClientLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    new-instance v0, Lcom/tencent/open/p;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/tencent/open/p;-><init>(Lcom/tencent/open/OpenApi;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/IRequestListener;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/tencent/open/p;->start()V

    .line 497
    return-void
.end method

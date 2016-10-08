.class public Lcom/tencent/open/OpenUi;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private a:Lcom/tencent/open/TContext;

.field private b:I

.field private c:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>(Lcom/tencent/open/TContext;)V
    .locals 1

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const/16 v0, 0x1618

    iput v0, p0, Lcom/tencent/open/OpenUi;->b:I

    .line 106
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/tencent/open/OpenUi;->c:Landroid/util/SparseArray;

    .line 112
    iput-object p1, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    .line 113
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    const/4 v2, 0x0

    .line 365
    const-string v3, "\\."

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 366
    const-string v3, "\\."

    invoke-virtual {p2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    move v3, v2

    .line 369
    :goto_0
    :try_start_0
    array-length v6, v4

    if-ge v3, v6, :cond_3

    array-length v6, v5

    if-ge v3, v6, :cond_3

    .line 370
    aget-object v6, v4, v3

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 371
    aget-object v7, v5, v3

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 372
    if-ge v6, v7, :cond_1

    .line 386
    :cond_0
    :goto_1
    return v0

    .line 374
    :cond_1
    if-le v6, v7, :cond_2

    move v0, v1

    .line 375
    goto :goto_1

    .line 369
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 378
    :cond_3
    array-length v4, v4

    if-le v4, v3, :cond_4

    move v0, v1

    .line 379
    goto :goto_1

    .line 380
    :cond_4
    array-length v1, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-gt v1, v3, :cond_0

    move v0, v2

    .line 383
    goto :goto_1

    .line 386
    :catch_0
    move-exception v0

    move v0, v2

    goto :goto_1
.end method

.method private a(Landroid/app/Activity;Ljava/lang/String;)Landroid/content/Intent;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 516
    const-string v0, "openSDK_LOG"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "OpenUi, getActivityIntent, action = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/record/debug/WnsClientLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 519
    const-string v2, "action_avatar"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 520
    const-class v1, Lcom/tencent/plus/ImageActivity;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 562
    :goto_0
    return-object v0

    .line 524
    :cond_0
    invoke-virtual {p0, p1}, Lcom/tencent/open/OpenUi;->a(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v3

    .line 525
    const-string v0, "openSDK_LOG"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "OpenUi, getActivityIntent, qzoneversion = "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/record/debug/WnsClientLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    if-nez v3, :cond_2

    .line 527
    sget-object v0, Lcom/tencent/tauth/Constants;->PACKAGE_QQ:Ljava/lang/String;

    invoke-virtual {p0, v0, p1, p2}, Lcom/tencent/open/OpenUi;->a(Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 528
    if-eqz v0, :cond_1

    .line 529
    iget-object v1, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    const-string v2, "QQ"

    iput-object v2, v1, Lcom/tencent/open/TContext;->a:Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 532
    goto :goto_0

    .line 535
    :cond_2
    iget-object v0, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v0}, Lcom/tencent/open/TContext;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/tencent/open/OpenConfig;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/open/OpenConfig;

    move-result-object v0

    .line 537
    const-string v2, "Common_SSO_QzoneVersion"

    invoke-virtual {v0, v2}, Lcom/tencent/open/OpenConfig;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 538
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x1

    .line 539
    :goto_1
    if-nez v2, :cond_3

    .line 540
    const-string v0, "4.0"

    .line 542
    :cond_3
    const-string v2, "3.4"

    invoke-direct {p0, v3, v2}, Lcom/tencent/open/OpenUi;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_6

    invoke-direct {p0, v3, v0}, Lcom/tencent/open/OpenUi;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_6

    .line 544
    sget-object v0, Lcom/tencent/tauth/Constants;->PACKAGE_QZONE:Ljava/lang/String;

    invoke-virtual {p0, v0, p1, p2}, Lcom/tencent/open/OpenUi;->a(Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 545
    if-eqz v0, :cond_5

    .line 546
    iget-object v1, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    const-string v2, "qzone"

    iput-object v2, v1, Lcom/tencent/open/TContext;->a:Ljava/lang/String;

    goto :goto_0

    .line 538
    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    :cond_5
    move-object v0, v1

    .line 549
    goto :goto_0

    .line 552
    :cond_6
    sget-object v0, Lcom/tencent/tauth/Constants;->PACKAGE_QQ:Ljava/lang/String;

    invoke-virtual {p0, v0, p1, p2}, Lcom/tencent/open/OpenUi;->a(Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 553
    if-eqz v0, :cond_7

    .line 554
    iget-object v1, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    const-string v2, "QQ"

    iput-object v2, v1, Lcom/tencent/open/TContext;->a:Ljava/lang/String;

    goto :goto_0

    .line 557
    :cond_7
    sget-object v0, Lcom/tencent/tauth/Constants;->PACKAGE_QZONE:Ljava/lang/String;

    invoke-virtual {p0, v0, p1, p2}, Lcom/tencent/open/OpenUi;->a(Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 558
    if-eqz v0, :cond_8

    .line 559
    iget-object v1, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    const-string v2, "qzone"

    iput-object v2, v1, Lcom/tencent/open/TContext;->a:Ljava/lang/String;

    goto/16 :goto_0

    :cond_8
    move-object v0, v1

    .line 562
    goto/16 :goto_0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 573
    const-string v1, "openSDK_LOG"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "OpenUi, getSchemeIntent, action = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/record/debug/WnsClientLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    :try_start_0
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 577
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 582
    :goto_0
    if-nez v1, :cond_0

    .line 593
    :goto_1
    return-object v0

    .line 578
    :catch_0
    move-exception v1

    .line 579
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 580
    const-string v2, "openSDK_LOG"

    const-string v3, "OpenUi, getSchemeIntent parse scheme error"

    invoke-static {v2, v3, v1}, Lcom/tencent/record/debug/WnsClientLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v0

    goto :goto_0

    .line 585
    :cond_0
    const-string v2, "key_request_code"

    invoke-direct {p0}, Lcom/tencent/open/OpenUi;->b()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 587
    invoke-direct {p0, p1, v1}, Lcom/tencent/open/OpenUi;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 588
    const-string v0, "openSDK_LOG"

    const-string v2, "OpenUi, getSchemeIntent, validatQQIntent success"

    invoke-static {v0, v2}, Lcom/tencent/record/debug/WnsClientLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 589
    goto :goto_1

    .line 592
    :cond_1
    const-string v1, "openSDK_LOG"

    const-string v2, "OpenUi, getSchemeIntent, validatQQIntent failed"

    invoke-static {v1, v2}, Lcom/tencent/record/debug/WnsClientLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 8

    .prologue
    const-wide/16 v6, 0x3e8

    .line 810
    const-string v0, "openSDK_LOG"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "OpenUi, fillParamsActivity action = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/record/debug/WnsClientLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 812
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 814
    const-string v0, "action_story"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "shareurl"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 815
    const-string v0, "url"

    const-string v2, "shareurl"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    :cond_0
    const-string v0, "action_login"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 819
    iget-object v0, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    if-eqz v0, :cond_1

    .line 820
    const-string v0, "client_id"

    iget-object v2, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v2}, Lcom/tencent/open/TContext;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 821
    :cond_1
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 822
    const-string v2, "app_name"

    const-string v3, "string"

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 824
    const-string v2, "oauth_app_name"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    const-string v0, "pf"

    const-string v2, "openmobile_android"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    const-string v0, "need_pay"

    const-string v2, "1"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 829
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    div-long/2addr v2, v6

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 830
    invoke-direct {p0, v0}, Lcom/tencent/open/OpenUi;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 831
    const-string v3, "sign"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    const-string v2, "time"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    :cond_2
    :goto_0
    const-string v0, "sdkv"

    const-string v2, "1.8"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 884
    const-string v0, "sdkp"

    const-string v2, "a"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 886
    return-object v1

    .line 834
    :cond_3
    const-string v0, "action_pay"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 835
    iget-object v0, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    if-eqz v0, :cond_2

    .line 836
    const-string v0, "oauth_consumer_key"

    iget-object v2, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v2}, Lcom/tencent/open/TContext;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 838
    const-string v0, "pf"

    const-string v2, "openmobile_android"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 839
    const-string v0, "need_pay"

    const-string v2, "1"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    iget-object v0, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v0}, Lcom/tencent/open/TContext;->c()Ljava/lang/String;

    move-result-object v0

    .line 841
    if-eqz v0, :cond_4

    .line 842
    const-string v2, "hopenid"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 847
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    div-long/2addr v2, v6

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 848
    invoke-direct {p0, v0}, Lcom/tencent/open/OpenUi;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 849
    const-string v3, "sign"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    const-string v2, "time"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 851
    const-string v0, "sdkv"

    const-string v2, "1.8"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    const-string v0, "sdkp"

    const-string v2, "a"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 844
    :cond_4
    const-string v0, "hopenid"

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 855
    :cond_5
    iget-object v0, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    if-eqz v0, :cond_2

    .line 856
    const-string v0, "appid"

    iget-object v2, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v2}, Lcom/tencent/open/TContext;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    iget-object v0, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v0}, Lcom/tencent/open/TContext;->a()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 858
    const-string v0, "keystr"

    iget-object v2, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v2}, Lcom/tencent/open/TContext;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 860
    const-string v0, "keytype"

    const-string v2, "0x80"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    :cond_6
    iget-object v0, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v0}, Lcom/tencent/open/TContext;->c()Ljava/lang/String;

    move-result-object v0

    .line 863
    if-eqz v0, :cond_7

    .line 864
    const-string v2, "hopenid"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 867
    :cond_7
    const-string v0, "platform"

    const-string v2, "androidqz"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 871
    :try_start_0
    iget-object v0, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v0}, Lcom/tencent/open/TContext;->f()Landroid/content/Context;

    move-result-object v0

    const-string v2, "pfStore"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 874
    const-string v2, "pf"

    const-string v3, "openmobile_android"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 875
    const-string v2, "pf"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 877
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 878
    const-string v0, "pf"

    const-string v2, "openmobile_android"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private a(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 6

    .prologue
    .line 758
    const-string v0, "openSDK_LOG"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "OpenUi, fillParamsDialog action = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/record/debug/WnsClientLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 761
    const-string v0, "action_login"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "action_pay"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 763
    :cond_0
    iget-object v0, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    if-eqz v0, :cond_1

    .line 764
    const-string v0, "client_id"

    iget-object v2, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v2}, Lcom/tencent/open/TContext;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    const-string v0, "pf"

    const-string v2, "openmobile_android"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    const-string v0, "need_pay"

    const-string v2, "1"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 770
    invoke-direct {p0, v0}, Lcom/tencent/open/OpenUi;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 771
    const-string v3, "sign"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    const-string v2, "time"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    :cond_1
    :goto_0
    const-string v0, "sdkv"

    const-string v2, "1.8"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 804
    const-string v0, "sdkp"

    const-string v2, "a"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    return-object v1

    .line 775
    :cond_2
    iget-object v0, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    if-eqz v0, :cond_1

    .line 776
    const-string v0, "oauth_consumer_key"

    iget-object v2, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v2}, Lcom/tencent/open/TContext;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    iget-object v0, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v0}, Lcom/tencent/open/TContext;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 779
    const-string v0, "access_token"

    iget-object v2, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v2}, Lcom/tencent/open/TContext;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    :cond_3
    iget-object v0, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v0}, Lcom/tencent/open/TContext;->c()Ljava/lang/String;

    move-result-object v0

    .line 783
    if-eqz v0, :cond_4

    .line 784
    const-string v2, "openid"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    :cond_4
    :try_start_0
    iget-object v0, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v0}, Lcom/tencent/open/TContext;->f()Landroid/content/Context;

    move-result-object v0

    const-string v2, "pfStore"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 792
    const-string v2, "pf"

    const-string v3, "openmobile_android"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 794
    const-string v2, "pf"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 796
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 797
    const-string v0, "pf"

    const-string v2, "openmobile_android"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/tencent/open/OpenUi;)Lcom/tencent/open/TContext;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 730
    const-string v0, "openSDK_LOG"

    const-string v1, "OpenUi, getSignValidString"

    invoke-static {v0, v1}, Lcom/tencent/record/debug/WnsClientLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    const-string v1, ""

    .line 733
    :try_start_0
    iget-object v0, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v0}, Lcom/tencent/open/TContext;->f()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 734
    iget-object v2, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v2}, Lcom/tencent/open/TContext;->f()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 736
    const/16 v3, 0x40

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 737
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 739
    const-string v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 740
    const/4 v4, 0x0

    aget-object v2, v2, v4

    invoke-virtual {v2}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 741
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/open/Util;->a([B)Ljava/lang/String;

    move-result-object v2

    .line 742
    invoke-virtual {v3}, Ljava/security/MessageDigest;->reset()V

    .line 744
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "_"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 745
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 746
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/open/Util;->a([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 747
    :try_start_1
    invoke-virtual {v3}, Ljava/security/MessageDigest;->reset()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 753
    :goto_0
    return-object v0

    .line 749
    :catch_0
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    .line 750
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 751
    const-string v2, "openSDK_LOG"

    const-string v3, "OpenUi, getSignValidString error"

    invoke-static {v2, v3, v1}, Lcom/tencent/record/debug/WnsClientLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 749
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private a(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 603
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 605
    if-nez v1, :cond_0

    .line 609
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 653
    const-string v2, "openSDK_LOG"

    const-string v3, "OpenUi, validateAppSignatureForPackage"

    invoke-static {v2, v3}, Lcom/tencent/record/debug/WnsClientLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x40

    invoke-virtual {v2, p2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 662
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v5, v3, v2

    .line 663
    invoke-virtual {v5}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/open/Util;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 664
    sget-object v6, Lcom/tencent/tauth/Constants;->PACKAGE_QZONE:Ljava/lang/String;

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "ec96e9ac1149251acbb1b0c5777cae95"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 671
    :cond_0
    :goto_1
    return v0

    .line 659
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_1

    .line 666
    :cond_1
    sget-object v5, Lcom/tencent/tauth/Constants;->PACKAGE_QQ:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 662
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 671
    goto :goto_1
.end method

.method private b()I
    .locals 3

    .prologue
    .line 677
    :cond_0
    iget v0, p0, Lcom/tencent/open/OpenUi;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/open/OpenUi;->b:I

    .line 678
    iget v0, p0, Lcom/tencent/open/OpenUi;->b:I

    const/16 v1, 0x1a00

    if-ne v0, v1, :cond_1

    .line 679
    const/16 v0, 0x1618

    iput v0, p0, Lcom/tencent/open/OpenUi;->b:I

    .line 680
    :cond_1
    iget-object v0, p0, Lcom/tencent/open/OpenUi;->c:Landroid/util/SparseArray;

    iget v1, p0, Lcom/tencent/open/OpenUi;->b:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/open/u;

    .line 681
    iget-object v1, p0, Lcom/tencent/open/OpenUi;->c:Landroid/util/SparseArray;

    iget v2, p0, Lcom/tencent/open/OpenUi;->b:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 682
    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/tencent/open/u;->a:Lcom/tencent/tauth/IUiListener;

    if-eqz v1, :cond_2

    .line 683
    iget-object v1, v0, Lcom/tencent/open/u;->a:Lcom/tencent/tauth/IUiListener;

    invoke-interface {v1}, Lcom/tencent/tauth/IUiListener;->onCancel()V

    .line 685
    :cond_2
    if-nez v0, :cond_0

    .line 686
    iget v0, p0, Lcom/tencent/open/OpenUi;->b:I

    return v0
.end method

.method private b(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 890
    const-string v0, "display"

    const-string v1, "mobile"

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 891
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 892
    const-string v1, "action_login"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "action_pay"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 894
    :cond_0
    const-string v1, "response_type"

    const-string v2, "token"

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    const-string v1, "redirect_uri"

    invoke-static {}, Lcom/tencent/open/ServerSetting;->getInstance()Lcom/tencent/open/ServerSetting;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v3}, Lcom/tencent/open/TContext;->f()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/tencent/open/ServerSetting;->getSettingUrl(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 901
    const-string v1, "cancel_display"

    const-string v2, "1"

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    const-string v1, "switch"

    const-string v2, "1"

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 904
    const-string v1, "sdkp"

    const-string v2, "a"

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    const-string v1, "sdkv"

    const-string v2, "1.8"

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 906
    const-string v1, "status_userip"

    invoke-static {}, Lcom/tencent/open/Util;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 907
    const-string v1, "status_os"

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 908
    const-string v1, "status_version"

    sget-object v2, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 909
    const-string v1, "status_machine"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 910
    invoke-static {}, Lcom/tencent/open/ServerSetting;->getInstance()Lcom/tencent/open/ServerSetting;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v2}, Lcom/tencent/open/TContext;->f()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/tencent/open/ServerSetting;->getSettingUrl(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 912
    invoke-static {p2}, Lcom/tencent/open/Util;->a(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 950
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 915
    :cond_2
    const-string v1, "action_story"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 919
    invoke-static {}, Lcom/tencent/open/ServerSetting;->getInstance()Lcom/tencent/open/ServerSetting;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v2}, Lcom/tencent/open/TContext;->f()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Lcom/tencent/open/ServerSetting;->getSettingUrl(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 921
    const-string v1, "sdkv"

    const-string v2, "1.8"

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 922
    invoke-static {p2}, Lcom/tencent/open/Util;->a(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 923
    :cond_3
    const-string v1, "action_invite"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 927
    invoke-static {}, Lcom/tencent/open/ServerSetting;->getInstance()Lcom/tencent/open/ServerSetting;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v2}, Lcom/tencent/open/TContext;->f()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Lcom/tencent/open/ServerSetting;->getSettingUrl(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 929
    const-string v1, "sdkv"

    const-string v2, "1.8"

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 930
    invoke-static {p2}, Lcom/tencent/open/Util;->a(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 931
    :cond_4
    const-string v1, "action_challenge"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "action_brag"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 933
    :cond_5
    invoke-static {}, Lcom/tencent/open/ServerSetting;->getInstance()Lcom/tencent/open/ServerSetting;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v2}, Lcom/tencent/open/TContext;->f()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x7

    invoke-virtual {v1, v2, v3}, Lcom/tencent/open/ServerSetting;->getSettingUrl(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 936
    const-string v1, "sdkv"

    const-string v2, "1.8"

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 937
    invoke-static {p2}, Lcom/tencent/open/Util;->a(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 938
    :cond_6
    const-string v1, "action_ask"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 939
    invoke-static {}, Lcom/tencent/open/ServerSetting;->getInstance()Lcom/tencent/open/ServerSetting;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v2}, Lcom/tencent/open/TContext;->f()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v1, v2, v3}, Lcom/tencent/open/ServerSetting;->getSettingUrl(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 941
    const-string v1, "sdkv"

    const-string v2, "1.8"

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 942
    invoke-static {p2}, Lcom/tencent/open/Util;->a(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 943
    :cond_7
    const-string v1, "action_gift"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 944
    invoke-static {}, Lcom/tencent/open/ServerSetting;->getInstance()Lcom/tencent/open/ServerSetting;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v2}, Lcom/tencent/open/TContext;->f()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x9

    invoke-virtual {v1, v2, v3}, Lcom/tencent/open/ServerSetting;->getSettingUrl(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 946
    const-string v1, "sdkv"

    const-string v2, "1.8"

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 947
    invoke-static {p2}, Lcom/tencent/open/Util;->a(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0
.end method

.method private b(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 631
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 633
    if-nez v1, :cond_0

    .line 640
    :goto_0
    return v0

    .line 637
    :cond_0
    iget-object v0, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/tencent/open/OpenUi;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 638
    const-string v2, "openSDK_LOG"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "OpenUi, validateActivityIntent "

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_1

    const-string v0, "success"

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/record/debug/WnsClientLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 640
    goto :goto_0

    .line 638
    :cond_1
    const-string v0, "failed"

    goto :goto_1
.end method


# virtual methods
.method public a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)I
    .locals 6

    .prologue
    .line 133
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/open/OpenUi;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;Z)I

    move-result v0

    return v0
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;Z)I
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 154
    const-string v1, "openSDK_LOG"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "OpenUi, showUi, action = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", forceLogin = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p5, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/record/debug/WnsClientLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    if-nez p5, :cond_1

    .line 164
    iget-object v0, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v0}, Lcom/tencent/open/TContext;->b()Ljava/lang/String;

    move-result-object v0

    .line 165
    iget-object v1, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v1}, Lcom/tencent/open/TContext;->c()Ljava/lang/String;

    move-result-object v1

    .line 166
    iget-object v2, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v2}, Lcom/tencent/open/TContext;->d()Ljava/lang/String;

    move-result-object v2

    .line 168
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    const-string v0, "action_login"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    const-string v2, "action_check_token"

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/open/OpenUi;->b(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;Z)V

    .line 173
    const-string v0, "openSDK_LOG"

    const-string v1, "OpenUi, showUi, return Constants.UI_CHECK_TOKEN"

    invoke-static {v0, v1}, Lcom/tencent/record/debug/WnsClientLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const/4 v5, 0x3

    .line 195
    :goto_1
    return v5

    .line 154
    :cond_0
    const-string v0, "false"

    goto :goto_0

    .line 178
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/tencent/open/OpenUi;->b(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 179
    if-eqz p5, :cond_2

    .line 180
    const-string v0, "10785"

    const-wide/16 v2, 0x0

    iget-object v1, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v1}, Lcom/tencent/open/TContext;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v2, v3, v1}, Lcom/tencent/open/Util;->a(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;)V

    .line 182
    :cond_2
    const-string v0, "openSDK_LOG"

    const-string v1, "OpenUi, showUi, return Constants.UI_ACTIVITY"

    invoke-static {v0, v1}, Lcom/tencent/record/debug/WnsClientLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 184
    :cond_3
    const-string v0, "action_challenge"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "action_brag"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "action_ask"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "action_gift"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "action_story"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "action_invite"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 190
    :cond_4
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/open/OpenUi;->b(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;Z)V

    .line 191
    const-string v0, "openSDK_LOG"

    const-string v1, "OpenUi, showUi, return Constants.UI_DIALOG"

    invoke-static {v0, v1}, Lcom/tencent/record/debug/WnsClientLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const/4 v5, 0x2

    goto :goto_1

    .line 194
    :cond_5
    const-string v0, "openSDK_LOG"

    const-string v1, "OpenUi, showUi, return return showDialog"

    invoke-static {v0, v1}, Lcom/tencent/record/debug/WnsClientLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/tencent/open/OpenUi;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)I

    move-result v5

    goto :goto_1
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)I
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 700
    const-string v0, "openSDK_LOG"

    const-string v1, "OpenUi, showDialog --start"

    invoke-static {v0, v1}, Lcom/tencent/record/debug/WnsClientLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    invoke-static {p1}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 703
    invoke-direct {p0, p2, p3}, Lcom/tencent/open/OpenUi;->a(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 705
    invoke-direct {p0, p2, v0}, Lcom/tencent/open/OpenUi;->b(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v3

    .line 707
    const-string v0, "action_login"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 708
    new-instance v4, Lcom/tencent/open/j;

    invoke-direct {v4, p0, p4, v2}, Lcom/tencent/open/j;-><init>(Lcom/tencent/open/OpenUi;Lcom/tencent/tauth/IUiListener;Z)V

    .line 712
    :goto_0
    const-string v0, "action_challenge"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "action_brag"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 713
    :cond_0
    const-string v0, "openSDK_LOG"

    const-string v1, "OpenUi, showDialog PKDialog"

    invoke-static {v0, v1}, Lcom/tencent/record/debug/WnsClientLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    new-instance v0, Lcom/tencent/open/PKDialog;

    iget-object v5, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/tencent/open/PKDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;Lcom/tencent/open/TContext;)V

    invoke-virtual {v0}, Lcom/tencent/open/PKDialog;->show()V

    .line 719
    :goto_1
    const/4 v0, 0x2

    return v0

    .line 709
    :cond_1
    const-string v0, "action_pay"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 710
    new-instance v4, Lcom/tencent/open/j;

    invoke-direct {v4, p0, p4, v2}, Lcom/tencent/open/j;-><init>(Lcom/tencent/open/OpenUi;Lcom/tencent/tauth/IUiListener;Z)V

    goto :goto_0

    .line 716
    :cond_2
    const-string v0, "openSDK_LOG"

    const-string v1, "OpenUi, showDialog TDialog"

    invoke-static {v0, v1}, Lcom/tencent/record/debug/WnsClientLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    new-instance v0, Lcom/tencent/open/TDialog;

    iget-object v5, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/tencent/open/TDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;Lcom/tencent/open/TContext;)V

    invoke-virtual {v0}, Lcom/tencent/open/TDialog;->show()V

    goto :goto_1

    :cond_3
    move-object v4, p4

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;)Landroid/content/Intent;
    .locals 4

    .prologue
    .line 317
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 318
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 319
    const-string v2, "com.tencent.open.agent.AgentActivity"

    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 320
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 321
    const-string v2, "key_request_code"

    invoke-direct {p0}, Lcom/tencent/open/OpenUi;->b()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 323
    const-string v2, "action_challenge"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 324
    const-string v2, "com.tencent.open.agent.ChallengeActivity"

    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 340
    :goto_0
    invoke-direct {p0, p2, v1}, Lcom/tencent/open/OpenUi;->b(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 343
    :goto_1
    return-object v0

    .line 325
    :cond_0
    const-string v2, "action_brag"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 326
    const-string v2, "com.tencent.open.agent.BragActivity"

    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 327
    :cond_1
    const-string v2, "action_ask"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "action_gift"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 328
    :cond_2
    const-string v2, "com.tencent.open.agent.RequestFreegiftActivity"

    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 329
    :cond_3
    const-string v2, "action_story"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 330
    const-string v2, "com.tencent.open.agent.SendStoryActivity"

    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 331
    :cond_4
    const-string v2, "action_invite"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 332
    const-string v2, "com.tencent.open.agent.AppInvitationActivity"

    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 333
    :cond_5
    const-string v2, "action_check_token"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 334
    const-string v2, "com.tencent.open.agent.EncryTokenActivity"

    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 335
    const-string v2, "com.tencent.open.agent.EncryTokenActivity"

    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 337
    :cond_6
    const-string v2, "com.tencent.open.agent.AgentActivity"

    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 343
    :cond_7
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a(Landroid/app/Activity;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 204
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v1, Lcom/tencent/tauth/Constants;->PACKAGE_QZONE:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 206
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 279
    const-string v1, "tencent&sdk&qazxc***14969%%"

    .line 280
    iget-object v0, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v0}, Lcom/tencent/open/TContext;->b()Ljava/lang/String;

    move-result-object v2

    .line 281
    iget-object v0, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v0}, Lcom/tencent/open/TContext;->d()Ljava/lang/String;

    move-result-object v3

    .line 282
    iget-object v0, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v0}, Lcom/tencent/open/TContext;->c()Ljava/lang/String;

    move-result-object v4

    .line 283
    const-string v5, "qzone3.4"

    .line 284
    const/4 v0, 0x0

    .line 285
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/open/Util;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 289
    :goto_0
    new-instance v0, Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v2}, Lcom/tencent/open/TContext;->f()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 290
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    .line 291
    invoke-virtual {v2, v7}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 292
    invoke-virtual {v2, v7}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 293
    invoke-virtual {v2, v7}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 294
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<!DOCTYPE HTML><html lang=\"en-US\"><head><meta charset=\"UTF-8\"><title>localStorage Test</title><script type=\"text/javascript\">document.domain = \'qq.com\';localStorage[\""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v3}, Lcom/tencent/open/TContext;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v3}, Lcom/tencent/open/TContext;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\"]=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\";</script></head><body></body></html>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 301
    invoke-static {}, Lcom/tencent/open/ServerSetting;->getInstance()Lcom/tencent/open/ServerSetting;

    move-result-object v1

    iget-object v3, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v3}, Lcom/tencent/open/TContext;->f()Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v1, v3, v4}, Lcom/tencent/open/ServerSetting;->getSettingUrl(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 303
    const-string v3, "text/html"

    const-string v4, "utf-8"

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    return-void

    :cond_0
    move-object v1, v0

    goto :goto_0
.end method

.method public a(IILandroid/content/Intent;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 447
    const-string v0, "openSDK_LOG"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "OpenUi onActivityResult:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",resultCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/record/debug/WnsClientLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    const/16 v0, 0x1618

    if-lt p1, v0, :cond_4

    const/16 v0, 0x1a00

    if-gt p1, v0, :cond_4

    .line 451
    iget-object v0, p0, Lcom/tencent/open/OpenUi;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/open/u;

    .line 452
    iget-object v2, p0, Lcom/tencent/open/OpenUi;->c:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 453
    if-eqz v0, :cond_4

    iget-object v2, v0, Lcom/tencent/open/u;->a:Lcom/tencent/tauth/IUiListener;

    if-eqz v2, :cond_4

    .line 454
    const/4 v2, -0x1

    if-ne p2, v2, :cond_3

    .line 455
    const-string v2, "openSDK_LOG"

    const-string v3, "OpenUi, onActivityResult, Constants.ACTIVITY_OK"

    invoke-static {v2, v3}, Lcom/tencent/record/debug/WnsClientLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    const-string v2, "key_error_code"

    invoke-virtual {p3, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 457
    if-nez v1, :cond_2

    .line 458
    const-string v1, "key_response"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 460
    if-eqz v2, :cond_1

    .line 462
    :try_start_0
    iget-object v1, v0, Lcom/tencent/open/u;->a:Lcom/tencent/tauth/IUiListener;

    invoke-static {v2}, Lcom/tencent/open/Util;->d(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/tencent/tauth/IUiListener;->onComplete(Lorg/json/JSONObject;)V

    .line 463
    invoke-static {}, Lcom/tencent/record/debug/WnsClientLog;->a()Lcom/tencent/record/debug/WnsClientLog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/record/debug/WnsClientLog;->b()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 495
    :cond_0
    :goto_0
    const/4 v0, 0x1

    .line 498
    :goto_1
    return v0

    .line 464
    :catch_0
    move-exception v1

    .line 465
    iget-object v0, v0, Lcom/tencent/open/u;->a:Lcom/tencent/tauth/IUiListener;

    new-instance v3, Lcom/tencent/tauth/UiError;

    const/4 v4, -0x4

    const-string v5, "\u670d\u52a1\u5668\u8fd4\u56de\u6570\u636e\u683c\u5f0f\u6709\u8bef!"

    invoke-direct {v3, v4, v5, v2}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    .line 468
    const-string v0, "openSDK_LOG"

    const-string v2, "OpenUi, onActivityResult, json error"

    invoke-static {v0, v2, v1}, Lcom/tencent/record/debug/WnsClientLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 469
    invoke-static {}, Lcom/tencent/record/debug/WnsClientLog;->a()Lcom/tencent/record/debug/WnsClientLog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/record/debug/WnsClientLog;->b()V

    goto :goto_0

    .line 472
    :cond_1
    const-string v1, "openSDK_LOG"

    const-string v2, "OpenUi, onActivityResult, onComplete"

    invoke-static {v1, v2}, Lcom/tencent/record/debug/WnsClientLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    iget-object v0, v0, Lcom/tencent/open/u;->a:Lcom/tencent/tauth/IUiListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/tencent/tauth/IUiListener;->onComplete(Lorg/json/JSONObject;)V

    .line 474
    invoke-static {}, Lcom/tencent/record/debug/WnsClientLog;->a()Lcom/tencent/record/debug/WnsClientLog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/record/debug/WnsClientLog;->b()V

    goto :goto_0

    .line 477
    :cond_2
    const-string v2, "openSDK_LOG"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "OpenUi, onActivityResult, onError = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/record/debug/WnsClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    const-string v2, "key_error_msg"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 480
    const-string v3, "key_error_detail"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 482
    iget-object v0, v0, Lcom/tencent/open/u;->a:Lcom/tencent/tauth/IUiListener;

    new-instance v4, Lcom/tencent/tauth/UiError;

    invoke-direct {v4, v1, v2, v3}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    .line 483
    invoke-static {}, Lcom/tencent/record/debug/WnsClientLog;->a()Lcom/tencent/record/debug/WnsClientLog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/record/debug/WnsClientLog;->b()V

    goto :goto_0

    .line 490
    :cond_3
    if-nez p2, :cond_0

    .line 491
    const-string v1, "openSDK_LOG"

    const-string v2, "OpenUi, onActivityResult, Constants.ACTIVITY_CANCEL"

    invoke-static {v1, v2}, Lcom/tencent/record/debug/WnsClientLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    iget-object v0, v0, Lcom/tencent/open/u;->a:Lcom/tencent/tauth/IUiListener;

    invoke-interface {v0}, Lcom/tencent/tauth/IUiListener;->onCancel()V

    .line 493
    invoke-static {}, Lcom/tencent/record/debug/WnsClientLog;->a()Lcom/tencent/record/debug/WnsClientLog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/record/debug/WnsClientLog;->b()V

    goto :goto_0

    :cond_4
    move v0, v1

    .line 498
    goto :goto_1
.end method

.method public b(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;Z)V
    .locals 9

    .prologue
    .line 225
    new-instance v0, Lcom/tencent/open/i;

    iget-object v1, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v1}, Lcom/tencent/open/TContext;->d()Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v1}, Lcom/tencent/open/TContext;->c()Ljava/lang/String;

    move-result-object v6

    iget-object v1, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v1}, Lcom/tencent/open/TContext;->b()Ljava/lang/String;

    move-result-object v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/tencent/open/i;-><init>(Lcom/tencent/open/OpenUi;Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const-string v1, "action_login"

    invoke-direct {p0, p1, v1}, Lcom/tencent/open/OpenUi;->a(Landroid/app/Activity;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 229
    const-string v2, "action_check_token"

    invoke-direct {p0, p1, v2}, Lcom/tencent/open/OpenUi;->a(Landroid/app/Activity;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 230
    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 236
    const-string v1, "key_request_code"

    invoke-direct {p0}, Lcom/tencent/open/OpenUi;->b()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 237
    const-string v1, "key_action"

    const-string v3, "action_check_token"

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 238
    const-string v1, "oauth_consumer_key"

    iget-object v3, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v3}, Lcom/tencent/open/TContext;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 239
    const-string v1, "openid"

    iget-object v3, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v3}, Lcom/tencent/open/TContext;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 240
    const-string v1, "access_token"

    iget-object v3, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v3}, Lcom/tencent/open/TContext;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 241
    invoke-direct {p0}, Lcom/tencent/open/OpenUi;->b()I

    move-result v1

    .line 242
    invoke-virtual {p1, v2, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 243
    iget-object v2, p0, Lcom/tencent/open/OpenUi;->c:Landroid/util/SparseArray;

    new-instance v3, Lcom/tencent/open/u;

    const-string v4, "action_check_token"

    invoke-direct {v3, p1, v4, p3, v0}, Lcom/tencent/open/u;-><init>(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 275
    :goto_0
    return-void

    .line 248
    :cond_0
    const-string v1, "tencent&sdk&qazxc***14969%%"

    .line 249
    iget-object v2, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v2}, Lcom/tencent/open/TContext;->b()Ljava/lang/String;

    move-result-object v2

    .line 250
    iget-object v3, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v3}, Lcom/tencent/open/TContext;->d()Ljava/lang/String;

    move-result-object v3

    .line 251
    iget-object v4, p0, Lcom/tencent/open/OpenUi;->a:Lcom/tencent/open/TContext;

    invoke-virtual {v4}, Lcom/tencent/open/TContext;->c()Ljava/lang/String;

    move-result-object v4

    .line 252
    const-string v5, "qzone3.4"

    .line 253
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 255
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/open/Util;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 256
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 258
    :try_start_0
    const-string v3, "encry_token"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    :goto_1
    invoke-interface {v0, v2}, Lcom/tencent/tauth/IUiListener;->onComplete(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 260
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 265
    :cond_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 267
    :try_start_1
    const-string v1, "encry_token"

    const-string v3, ""

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 271
    :goto_2
    invoke-interface {v0, v2}, Lcom/tencent/tauth/IUiListener;->onComplete(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 269
    :catch_1
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2
.end method

.method public b(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 392
    const-string v1, "openSDK_LOG"

    const-string v2, "OpenUi, showUi, showActivity --start"

    invoke-static {v1, v2}, Lcom/tencent/record/debug/WnsClientLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    const-string v1, "action_share_qq"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 395
    const-string v1, "scheme"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, p2, v1}, Lcom/tencent/open/OpenUi;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 396
    const-string v2, "openSDK_LOG"

    const-string v3, "OpenUi, showUi, showActivity getSchemeIntent"

    invoke-static {v2, v3}, Lcom/tencent/record/debug/WnsClientLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    :goto_0
    if-eqz v1, :cond_0

    .line 403
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/open/OpenUi;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    .line 404
    const-string v3, "key_action"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 405
    const-string v3, "key_params"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 407
    :try_start_0
    const-string v2, "key_request_code"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 409
    const-string v2, "sample"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "start onActivityResult:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    invoke-virtual {p1, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 412
    const-string v1, "action_login"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 413
    new-instance v2, Lcom/tencent/open/j;

    const/4 v1, 0x0

    invoke-direct {v2, p0, p4, v1}, Lcom/tencent/open/j;-><init>(Lcom/tencent/open/OpenUi;Lcom/tencent/tauth/IUiListener;Z)V

    .line 414
    const-string v1, "openSDK_LOG"

    const-string v4, "OpenUi, showUi, showActivity ACTION_LOGIN"

    invoke-static {v1, v4}, Lcom/tencent/record/debug/WnsClientLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    :goto_1
    const-string v1, "action_pay"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 417
    new-instance v1, Lcom/tencent/open/j;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v2, v4}, Lcom/tencent/open/j;-><init>(Lcom/tencent/open/OpenUi;Lcom/tencent/tauth/IUiListener;Z)V

    .line 418
    const-string v2, "openSDK_LOG"

    const-string v4, "OpenUi, showUi, showActivity ACTION_PAY"

    invoke-static {v2, v4}, Lcom/tencent/record/debug/WnsClientLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    :goto_2
    iget-object v2, p0, Lcom/tencent/open/OpenUi;->c:Landroid/util/SparseArray;

    new-instance v4, Lcom/tencent/open/u;

    invoke-direct {v4, p1, p2, p3, v1}, Lcom/tencent/open/u;-><init>(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 423
    const/4 v0, 0x1

    .line 430
    :cond_0
    :goto_3
    return v0

    .line 398
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/tencent/open/OpenUi;->a(Landroid/app/Activity;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 399
    const-string v2, "openSDK_LOG"

    const-string v3, "OpenUi, showUi, showActivity getActivityIntent"

    invoke-static {v2, v3}, Lcom/tencent/record/debug/WnsClientLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 424
    :catch_0
    move-exception v1

    .line 425
    const-string v2, "openSDK_LOG"

    const-string v3, "OpenUi, showUi, not such activity"

    invoke-static {v2, v3, v1}, Lcom/tencent/record/debug/WnsClientLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_2
    move-object v1, v2

    goto :goto_2

    :cond_3
    move-object v2, p4

    goto :goto_1
.end method

.class final Lcom/pingan/main/PAVideoManage$2;
.super Ljava/lang/Thread;
.source "PAVideoManage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pingan/main/PAVideoManage;->checkChannel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/pingan/main/CheckChannelCallback;)V
.end annotation


# instance fields
.field final synthetic val$appId:Ljava/lang/String;

.field final synthetic val$callback:Lcom/pingan/main/CheckChannelCallback;

.field final synthetic val$channelIds:[Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/pingan/main/CheckChannelCallback;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 472
    iput-object p1, p0, Lcom/pingan/main/PAVideoManage$2;->val$channelIds:[Ljava/lang/String;

    iput-object p2, p0, Lcom/pingan/main/PAVideoManage$2;->val$appId:Ljava/lang/String;

    iput-object p3, p0, Lcom/pingan/main/PAVideoManage$2;->val$packageName:Ljava/lang/String;

    iput-object p4, p0, Lcom/pingan/main/PAVideoManage$2;->val$callback:Lcom/pingan/main/CheckChannelCallback;

    iput-object p5, p0, Lcom/pingan/main/PAVideoManage$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 474
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    move v0, v1

    .line 475
    :goto_0
    iget-object v3, p0, Lcom/pingan/main/PAVideoManage$2;->val$channelIds:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 476
    iget-object v3, p0, Lcom/pingan/main/PAVideoManage$2;->val$channelIds:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 478
    iget-object v3, p0, Lcom/pingan/main/PAVideoManage$2;->val$channelIds:[Ljava/lang/String;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-eq v0, v3, :cond_0

    .line 479
    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 475
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 482
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 483
    const-string v3, "accessSign"

    const-string v4, "OpenID"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    const-string v3, "Content-Type"

    const-string v4, "application/json"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 489
    const-string v4, "channel_ids"

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 490
    const-string v2, "app_id"

    iget-object v4, p0, Lcom/pingan/main/PAVideoManage$2;->val$appId:Ljava/lang/String;

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 491
    const-string v2, "channel_code"

    iget-object v4, p0, Lcom/pingan/main/PAVideoManage$2;->val$packageName:Ljava/lang/String;

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 492
    const-string v2, "source"

    const-string v4, "2"

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 494
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 495
    invoke-static {v2}, Lcom/pingan/main/PAVideoManage;->formatRequestParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 499
    sget-object v3, Lcom/pingan/a;->u:Ljava/lang/String;

    invoke-static {v3, v2, v0}, Lcom/paic/openapi/demo/util/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 502
    if-eqz v0, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 503
    :cond_2
    const/4 v0, 0x1

    # setter for: Lcom/pingan/main/PAVideoManage;->isChannelPassed:Z
    invoke-static {v0}, Lcom/pingan/main/PAVideoManage;->access$902(Z)Z

    .line 504
    iget-object v0, p0, Lcom/pingan/main/PAVideoManage$2;->val$callback:Lcom/pingan/main/CheckChannelCallback;

    invoke-interface {v0}, Lcom/pingan/main/CheckChannelCallback;->checkPassed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 552
    :goto_1
    return-void

    .line 510
    :cond_3
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 512
    const-string v0, "resCode"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 513
    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 515
    iget-object v0, p0, Lcom/pingan/main/PAVideoManage$2;->val$context:Landroid/content/Context;

    const-string v2, "config"

    const-string v3, "checkChannelResults"

    const-string v4, ""

    invoke-static {v0, v2, v3, v4}, Lcom/pingan/paphone/utils/CommonUtil;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 517
    const/4 v0, 0x0

    # setter for: Lcom/pingan/main/PAVideoManage;->isChannelPassed:Z
    invoke-static {v0}, Lcom/pingan/main/PAVideoManage;->access$902(Z)Z

    .line 518
    iget-object v0, p0, Lcom/pingan/main/PAVideoManage$2;->val$callback:Lcom/pingan/main/CheckChannelCallback;

    invoke-interface {v0}, Lcom/pingan/main/CheckChannelCallback;->checkFailed()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 535
    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 539
    const/4 v0, 0x1

    # setter for: Lcom/pingan/main/PAVideoManage;->isChannelPassed:Z
    invoke-static {v0}, Lcom/pingan/main/PAVideoManage;->access$902(Z)Z

    .line 540
    iget-object v0, p0, Lcom/pingan/main/PAVideoManage$2;->val$callback:Lcom/pingan/main/CheckChannelCallback;

    invoke-interface {v0}, Lcom/pingan/main/CheckChannelCallback;->checkPassed()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 546
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 548
    # setter for: Lcom/pingan/main/PAVideoManage;->isChannelPassed:Z
    invoke-static {v1}, Lcom/pingan/main/PAVideoManage;->access$902(Z)Z

    .line 549
    iget-object v0, p0, Lcom/pingan/main/PAVideoManage$2;->val$callback:Lcom/pingan/main/CheckChannelCallback;

    invoke-interface {v0}, Lcom/pingan/main/CheckChannelCallback;->checkFailed()V

    goto :goto_1

    .line 522
    :cond_4
    :try_start_3
    const-string v0, "resBody"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 524
    iget-object v2, p0, Lcom/pingan/main/PAVideoManage$2;->val$context:Landroid/content/Context;

    const-string v3, "config"

    const-string v4, "lastCheckChannelTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/pingan/paphone/utils/CommonUtil;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 525
    iget-object v2, p0, Lcom/pingan/main/PAVideoManage$2;->val$context:Landroid/content/Context;

    const-string v3, "config"

    const-string v4, "checkChannelResults"

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v4, v0}, Lcom/pingan/paphone/utils/CommonUtil;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 527
    # invokes: Lcom/pingan/main/PAVideoManage;->isChannelExists()Z
    invoke-static {}, Lcom/pingan/main/PAVideoManage;->access$1000()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 528
    const/4 v0, 0x1

    # setter for: Lcom/pingan/main/PAVideoManage;->isChannelPassed:Z
    invoke-static {v0}, Lcom/pingan/main/PAVideoManage;->access$902(Z)Z

    .line 529
    iget-object v0, p0, Lcom/pingan/main/PAVideoManage$2;->val$callback:Lcom/pingan/main/CheckChannelCallback;

    invoke-interface {v0}, Lcom/pingan/main/CheckChannelCallback;->checkPassed()V

    goto :goto_1

    .line 531
    :cond_5
    const/4 v0, 0x0

    # setter for: Lcom/pingan/main/PAVideoManage;->isChannelPassed:Z
    invoke-static {v0}, Lcom/pingan/main/PAVideoManage;->access$902(Z)Z

    .line 532
    iget-object v0, p0, Lcom/pingan/main/PAVideoManage$2;->val$callback:Lcom/pingan/main/CheckChannelCallback;

    invoke-interface {v0}, Lcom/pingan/main/CheckChannelCallback;->checkFailed()V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1
.end method

.class public final Lcom/xueqiu/android/base/util/ap;
.super Ljava/lang/Object;
.source "StatusUtil.java"


# static fields
.field private static a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 772
    const/4 v0, 0x0

    sput v0, Lcom/xueqiu/android/base/util/ap;->a:I

    return-void
.end method

.method public static final a()I
    .locals 2

    .prologue
    .line 775
    sget v0, Lcom/xueqiu/android/base/util/ap;->a:I

    add-int/lit8 v0, v0, 0x1

    .line 776
    sput v0, Lcom/xueqiu/android/base/util/ap;->a:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 777
    const/4 v0, 0x0

    sput v0, Lcom/xueqiu/android/base/util/ap;->a:I

    .line 779
    :cond_0
    sget v0, Lcom/xueqiu/android/base/util/ap;->a:I

    return v0
.end method

.method public static a(Lcom/xueqiu/android/community/model/Status;)J
    .locals 2

    .prologue
    .line 856
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/xueqiu/android/community/model/Status;->getPaidMention()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xueqiu/android/community/model/Status;->getPaidMention()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 857
    :cond_0
    const-wide/16 v0, 0x0

    .line 859
    :goto_0
    return-wide v0

    :cond_1
    invoke-virtual {p0}, Lcom/xueqiu/android/community/model/Status;->getPaidMention()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/PaidMention;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/PaidMention;->getUserId()J

    move-result-wide v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;J)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 783
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/xueqiu/android/community/CashierActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 784
    const-string v1, "extra_type"

    const-string v2, "type_reward_status"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 785
    const-string v1, "extra_status_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 786
    return-object v0
.end method

.method public static a(Landroid/content/Context;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 806
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/xueqiu/android/community/CashierActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 807
    const-string v1, "extra_type"

    const-string v2, "type_paid_mention_comment"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 808
    const-string v1, "extra_status_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 809
    const-string v1, "extra_comment_id"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 810
    const-string v1, "extra_content"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 811
    const-string v1, "extra_mentions"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 812
    const-string v1, "extra_mentions_amount"

    invoke-virtual {v0, v1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 813
    const-string v1, "extra_forward"

    invoke-virtual {v0, v1, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 814
    return-object v0
.end method

.method public static a(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 818
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/xueqiu/android/community/CashierActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 819
    const-string v1, "extra_type"

    const-string v2, "type_paid_mention_repost"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 820
    const-string v1, "extra_status_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 821
    const-string v1, "extra_content"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 822
    const-string v1, "extra_mentions"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 823
    const-string v1, "extra_mentions_amount"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 824
    const-string v1, "extra_forward"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 825
    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 797
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/xueqiu/android/community/CashierActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 798
    const-string v1, "extra_type"

    const-string v2, "type_paid_mention_status"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 799
    const-string v1, "extra_content"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 800
    const-string v1, "extra_mentions"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 801
    const-string v1, "extra_mentions_amount"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 802
    return-object v0
.end method

.method private static a(Lorg/json/JSONObject;)Lcom/xueqiu/android/base/util/aq;
    .locals 10

    .prologue
    .line 565
    new-instance v1, Lcom/xueqiu/android/base/util/aq;

    invoke-direct {v1}, Lcom/xueqiu/android/base/util/aq;-><init>()V

    .line 566
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lcom/xueqiu/android/base/util/aq;->a:Ljava/util/List;

    .line 567
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lcom/xueqiu/android/base/util/aq;->b:Ljava/util/List;

    .line 568
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lcom/xueqiu/android/base/util/aq;->c:Ljava/util/List;

    .line 569
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lcom/xueqiu/android/base/util/aq;->d:Ljava/util/List;

    .line 571
    :try_start_0
    const-string v0, "recommend_cards"

    invoke-static {p0, v0}, Lcom/xueqiu/android/common/model/parser/AbstractParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 572
    const-string v0, "recommend_cards"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 573
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    .line 575
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_5

    .line 576
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 577
    const-string v0, "type"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 579
    if-eqz v6, :cond_0

    const-string v0, "USER"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 580
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/xueqiu/android/base/util/ap$6;

    invoke-direct {v8}, Lcom/xueqiu/android/base/util/ap$6;-><init>()V

    .line 582
    invoke-virtual {v8}, Lcom/xueqiu/android/base/util/ap$6;->getType()Ljava/lang/reflect/Type;

    move-result-object v8

    .line 580
    invoke-virtual {v0, v7, v8}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/RecommendCard;

    .line 583
    iget-object v7, v1, Lcom/xueqiu/android/base/util/aq;->a:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 586
    :cond_0
    if-eqz v6, :cond_1

    const-string v0, "STATUS"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 587
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/xueqiu/android/base/util/ap$7;

    invoke-direct {v8}, Lcom/xueqiu/android/base/util/ap$7;-><init>()V

    .line 589
    invoke-virtual {v8}, Lcom/xueqiu/android/base/util/ap$7;->getType()Ljava/lang/reflect/Type;

    move-result-object v8

    .line 587
    invoke-virtual {v0, v7, v8}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/RecommendCard;

    .line 590
    iget-object v7, v1, Lcom/xueqiu/android/base/util/aq;->b:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 592
    :cond_1
    if-eqz v6, :cond_2

    const-string v0, "STOCK"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 593
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/xueqiu/android/base/util/ap$8;

    invoke-direct {v8}, Lcom/xueqiu/android/base/util/ap$8;-><init>()V

    .line 595
    invoke-virtual {v8}, Lcom/xueqiu/android/base/util/ap$8;->getType()Ljava/lang/reflect/Type;

    move-result-object v8

    .line 593
    invoke-virtual {v0, v7, v8}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/RecommendCard;

    .line 596
    iget-object v7, v1, Lcom/xueqiu/android/base/util/aq;->c:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 598
    :cond_2
    if-eqz v6, :cond_4

    const-string v0, "CUBE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 599
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v0

    const-string v6, "elements"

    .line 600
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/xueqiu/android/base/util/ap$9;

    invoke-direct {v7}, Lcom/xueqiu/android/base/util/ap$9;-><init>()V

    .line 602
    invoke-virtual {v7}, Lcom/xueqiu/android/base/util/ap$9;->getType()Ljava/lang/reflect/Type;

    move-result-object v7

    .line 600
    invoke-virtual {v0, v6, v7}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 603
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 604
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/model/RecommendCube;

    .line 605
    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/RecommendCube;->getCube()Lcom/xueqiu/android/cube/model/Cube;

    move-result-object v8

    .line 606
    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/RecommendCube;->getOwner()Lcom/xueqiu/android/community/model/User;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/xueqiu/android/cube/model/Cube;->setOwner(Lcom/xueqiu/android/community/model/User;)V

    .line 607
    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/RecommendCube;->isHasExist()Z

    move-result v9

    invoke-virtual {v8, v9}, Lcom/xueqiu/android/cube/model/Cube;->setFollowing(Z)V

    .line 608
    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/RecommendCube;->getRecommendReason()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/xueqiu/android/cube/model/Cube;->setRecommendReason(Ljava/lang/String;)V

    .line 609
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 622
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 623
    const/4 v0, 0x0

    .line 625
    :goto_2
    return-object v0

    .line 611
    :cond_3
    :try_start_1
    new-instance v0, Lcom/xueqiu/android/community/model/RecommendCard;

    invoke-direct {v0}, Lcom/xueqiu/android/community/model/RecommendCard;-><init>()V

    .line 612
    const-string v7, "name"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/xueqiu/android/community/model/RecommendCard;->setName(Ljava/lang/String;)V

    .line 613
    const-string v7, "id"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/xueqiu/android/community/model/RecommendCard;->setId(Ljava/lang/String;)V

    .line 614
    const-string v7, "location"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/xueqiu/android/community/model/RecommendCard;->setLocation(I)V

    .line 615
    invoke-virtual {v0, v6}, Lcom/xueqiu/android/community/model/RecommendCard;->setElements(Ljava/util/List;)V

    .line 616
    iget-object v5, v1, Lcom/xueqiu/android/base/util/aq;->d:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 575
    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_0

    :cond_5
    move-object v0, v1

    .line 625
    goto :goto_2
.end method

.method public static a(Lcom/xueqiu/android/community/model/Status;Lorg/json/JSONObject;)Lcom/xueqiu/android/community/model/Status;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 538
    invoke-static {p1}, Lcom/xueqiu/android/base/util/ap;->a(Lorg/json/JSONObject;)Lcom/xueqiu/android/base/util/aq;

    move-result-object v1

    .line 540
    iget-object v0, v1, Lcom/xueqiu/android/base/util/aq;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 541
    iget-object v0, v1, Lcom/xueqiu/android/base/util/aq;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/RecommendCard;

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/model/Status;->setRecommendUserCard(Lcom/xueqiu/android/community/model/RecommendCard;)V

    .line 544
    :cond_0
    iget-object v0, v1, Lcom/xueqiu/android/base/util/aq;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 545
    iget-object v0, v1, Lcom/xueqiu/android/base/util/aq;->b:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/RecommendCard;

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/model/Status;->setRecommendStatusCard(Lcom/xueqiu/android/community/model/RecommendCard;)V

    .line 547
    :cond_1
    iget-object v0, v1, Lcom/xueqiu/android/base/util/aq;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 548
    iget-object v0, v1, Lcom/xueqiu/android/base/util/aq;->c:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/RecommendCard;

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/model/Status;->setRecommendStockCard(Lcom/xueqiu/android/community/model/RecommendCard;)V

    .line 550
    :cond_2
    iget-object v0, v1, Lcom/xueqiu/android/base/util/aq;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 551
    iget-object v0, v1, Lcom/xueqiu/android/base/util/aq;->d:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/RecommendCard;

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/model/Status;->setRecommendCubeCard(Lcom/xueqiu/android/community/model/RecommendCard;)V

    .line 554
    :cond_3
    return-object p0
.end method

.method public static a(Lcom/xueqiu/android/community/model/Comment;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 870
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/xueqiu/android/community/model/Comment;->getPaidMention()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xueqiu/android/community/model/Comment;->getPaidMention()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 871
    :cond_0
    const-string v0, "NONE"

    .line 873
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/xueqiu/android/community/model/Comment;->getPaidMention()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/PaidMention;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/PaidMention;->getState()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 884
    const-string v0, "pay_mention_answer_postfix"

    const-string v1, ""

    invoke-static {v0, v1, p2}, Lcom/xueqiu/android/base/storage/prefs/DefaultPrefs;->getString(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 885
    if-eqz p1, :cond_0

    .line 886
    const-string v0, "pay_mention_refuse_postfix"

    const-string v1, ""

    invoke-static {v0, v1, p2}, Lcom/xueqiu/android/base/storage/prefs/DefaultPrefs;->getString(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 889
    :cond_0
    invoke-static {v0}, Lcom/xueqiu/android/base/util/au;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 890
    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v2, "<font color=\"#aaaaaa\">%s</font>"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 3898
    :cond_1
    const-string v1, "//<a[^>]+>@[^<]+</a>"

    .line 3899
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 3900
    aget-object v1, v1, v4

    .line 3901
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 893
    return-object v0
.end method

.method public static a(Ljava/util/Date;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 829
    if-nez p0, :cond_0

    .line 830
    const-string v0, ""

    .line 832
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/xueqiu/android/base/util/h;->a(Ljava/util/Date;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/xueqiu/android/base/b/ai;JLcom/xueqiu/android/community/model/Comment;Ljava/lang/String;Z)Lrx/a;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/xueqiu/android/base/b/ai;",
            "J",
            "Lcom/xueqiu/android/community/model/Comment;",
            "Ljava/lang/String;",
            "Z)",
            "Lrx/a",
            "<",
            "Lcom/xueqiu/android/community/model/Comment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 364
    new-instance v1, Lcom/xueqiu/android/base/util/ap$3;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    move-object v7, p5

    move/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/xueqiu/android/base/util/ap$3;-><init>(Landroid/content/Context;Lcom/xueqiu/android/base/b/ai;JLcom/xueqiu/android/community/model/Comment;Ljava/lang/String;Z)V

    invoke-static {v1}, Lrx/a;->a(Lrx/b;)Lrx/a;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/xueqiu/android/base/b/ai;JLcom/xueqiu/android/community/model/Comment;Ljava/lang/String;ZZLjava/lang/String;Z)Lrx/a;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/xueqiu/android/base/b/ai;",
            "J",
            "Lcom/xueqiu/android/community/model/Comment;",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/lang/String;",
            "Z)",
            "Lrx/a",
            "<",
            "Lcom/xueqiu/android/community/model/Comment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 421
    new-instance v0, Lcom/xueqiu/android/base/util/ap$4;

    move-object v1, p1

    move-wide v2, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p9

    move-object/from16 v9, p8

    move-object v10, p0

    invoke-direct/range {v0 .. v10}, Lcom/xueqiu/android/base/util/ap$4;-><init>(Lcom/xueqiu/android/base/b/ai;JLcom/xueqiu/android/community/model/Comment;Ljava/lang/String;ZZZLjava/lang/String;Landroid/content/Context;)V

    invoke-static {v0}, Lrx/a;->a(Lrx/b;)Lrx/a;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/xueqiu/android/base/b/ai;JLjava/lang/String;I)Lrx/a;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/xueqiu/android/base/b/ai;",
            "J",
            "Ljava/lang/String;",
            "I)",
            "Lrx/a",
            "<",
            "Lcom/xueqiu/android/community/model/Status;",
            ">;"
        }
    .end annotation

    .prologue
    .line 321
    new-instance v0, Lcom/xueqiu/android/base/util/ap$2;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p1

    move-wide v4, p2

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/xueqiu/android/base/util/ap$2;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/xueqiu/android/base/b/ai;JI)V

    invoke-static {v0}, Lrx/a;->a(Lrx/b;)Lrx/a;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/xueqiu/android/base/b/ai;JLjava/lang/String;Ljava/lang/String;)Lrx/a;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/xueqiu/android/base/b/ai;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lrx/a",
            "<",
            "Lcom/xueqiu/android/community/model/Status;",
            ">;"
        }
    .end annotation

    .prologue
    .line 150
    if-eqz p5, :cond_0

    invoke-virtual {p5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/xueqiu/android/base/util/ad;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/xueqiu/android/base/util/ad;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/xueqiu/android/base/util/ap;->b(Landroid/content/Context;Lcom/xueqiu/android/base/b/ai;Ljava/lang/String;)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/base/util/ap$12;

    invoke-direct {v1}, Lcom/xueqiu/android/base/util/ap$12;-><init>()V

    invoke-virtual {v0, v1}, Lrx/a;->d(Lrx/c/f;)Lrx/a;

    move-result-object v7

    new-instance v0, Lcom/xueqiu/android/base/util/ap$11;

    move-object v1, p4

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/xueqiu/android/base/util/ap$11;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/xueqiu/android/base/b/ai;JLjava/lang/String;)V

    .line 157
    invoke-virtual {v7, v0}, Lrx/a;->b(Lrx/c/f;)Lrx/a;

    move-result-object v0

    .line 175
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1, p2, p3, p4}, Lcom/xueqiu/android/base/util/ap;->b(Lcom/xueqiu/android/base/b/ai;JLjava/lang/String;)Lrx/a;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/xueqiu/android/base/b/ai;Ljava/lang/String;)Lrx/a;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/xueqiu/android/base/b/ai;",
            "Ljava/lang/String;",
            ")",
            "Lrx/a",
            "<",
            "Lcom/xueqiu/android/community/model/Status;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 85
    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    invoke-static/range {v0 .. v6}, Lcom/xueqiu/android/base/util/ap;->a(Landroid/content/Context;Lcom/xueqiu/android/base/b/ai;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/a;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/xueqiu/android/base/b/ai;Ljava/lang/String;Ljava/lang/String;)Lrx/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/xueqiu/android/base/b/ai;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lrx/a",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 262
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/xueqiu/android/base/util/ad;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/xueqiu/android/base/util/ad;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/xueqiu/android/base/util/ap;->b(Landroid/content/Context;Lcom/xueqiu/android/base/b/ai;Ljava/lang/String;)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/base/util/ap$16;

    invoke-direct {v1}, Lcom/xueqiu/android/base/util/ap$16;-><init>()V

    invoke-virtual {v0, v1}, Lrx/a;->d(Lrx/c/f;)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/base/util/ap$15;

    invoke-direct {v1, p2, p0, p3}, Lcom/xueqiu/android/base/util/ap$15;-><init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    .line 269
    invoke-virtual {v0, v1}, Lrx/a;->b(Lrx/c/f;)Lrx/a;

    move-result-object v0

    .line 286
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p2}, Lcom/xueqiu/android/base/util/ap;->b(Ljava/lang/String;)Lrx/a;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/xueqiu/android/base/b/ai;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/a;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/xueqiu/android/base/b/ai;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lrx/a",
            "<",
            "Lcom/xueqiu/android/community/model/Status;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 81
    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, v2

    invoke-static/range {v0 .. v6}, Lcom/xueqiu/android/base/util/ap;->a(Landroid/content/Context;Lcom/xueqiu/android/base/b/ai;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/a;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/xueqiu/android/base/b/ai;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/a;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/xueqiu/android/base/b/ai;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lrx/a",
            "<",
            "Lcom/xueqiu/android/community/model/Status;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-static/range {v0 .. v8}, Lcom/xueqiu/android/base/util/ap;->a(Landroid/content/Context;Lcom/xueqiu/android/base/b/ai;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/a;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/xueqiu/android/base/b/ai;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/a;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/xueqiu/android/base/b/ai;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lrx/a",
            "<",
            "Lcom/xueqiu/android/community/model/Status;",
            ">;"
        }
    .end annotation

    .prologue
    .line 111
    const v1, 0x7f070294

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const v4, 0x7f070124

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 112
    invoke-static {p0}, Lcom/xueqiu/android/base/util/aa;->a(Landroid/content/Context;)Landroid/support/v4/a/av;

    move-result-object v2

    .line 113
    invoke-virtual {v2, v1}, Landroid/support/v4/a/av;->b(Ljava/lang/CharSequence;)Landroid/support/v4/a/av;

    move-result-object v2

    .line 114
    invoke-virtual {v2, v1}, Landroid/support/v4/a/av;->c(Ljava/lang/CharSequence;)Landroid/support/v4/a/av;

    move-result-object v2

    new-instance v3, Landroid/support/v4/a/au;

    invoke-direct {v3}, Landroid/support/v4/a/au;-><init>()V

    .line 115
    invoke-virtual {v3, v1}, Landroid/support/v4/a/au;->a(Ljava/lang/CharSequence;)Landroid/support/v4/a/au;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/support/v4/a/av;->a(Landroid/support/v4/a/bh;)Landroid/support/v4/a/av;

    move-result-object v1

    const/4 v2, 0x0

    .line 116
    invoke-virtual {v1, v2}, Landroid/support/v4/a/av;->a(Z)Landroid/support/v4/a/av;

    move-result-object v1

    .line 117
    invoke-virtual {v1}, Landroid/support/v4/a/av;->a()Landroid/support/v4/a/av;

    move-result-object v2

    .line 118
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    const/16 v3, 0x270d

    invoke-virtual {v2}, Landroid/support/v4/a/av;->b()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 121
    if-eqz p8, :cond_0

    invoke-virtual/range {p8 .. p8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/xueqiu/android/base/util/ad;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p8

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/xueqiu/android/base/util/ad;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p8

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, v1}, Lcom/xueqiu/android/base/util/ap;->b(Landroid/content/Context;Lcom/xueqiu/android/base/b/ai;Ljava/lang/String;)Lrx/a;

    move-result-object v1

    new-instance v2, Lcom/xueqiu/android/base/util/ap$10;

    invoke-direct {v2}, Lcom/xueqiu/android/base/util/ap$10;-><init>()V

    invoke-virtual {v1, v2}, Lrx/a;->d(Lrx/c/f;)Lrx/a;

    move-result-object v11

    new-instance v1, Lcom/xueqiu/android/base/util/ap$1;

    move-object/from16 v2, p4

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-direct/range {v1 .. v10}, Lcom/xueqiu/android/base/util/ap$1;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/xueqiu/android/base/b/ai;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-virtual {v11, v1}, Lrx/a;->b(Lrx/c/f;)Lrx/a;

    move-result-object v1

    .line 146
    :goto_0
    return-object v1

    :cond_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p4

    move-object/from16 v10, p8

    invoke-static/range {v1 .. v10}, Lcom/xueqiu/android/base/util/ap;->b(Landroid/content/Context;Lcom/xueqiu/android/base/b/ai;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/a;

    move-result-object v1

    goto :goto_0
.end method

.method static synthetic a(Landroid/content/Context;Lcom/xueqiu/android/base/b/ai;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/a;
    .locals 1

    .prologue
    .line 60
    invoke-static/range {p0 .. p9}, Lcom/xueqiu/android/base/util/ap;->b(Landroid/content/Context;Lcom/xueqiu/android/base/b/ai;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/xueqiu/android/base/b/ai;JLjava/lang/String;)Lrx/a;
    .locals 1

    .prologue
    .line 60
    invoke-static {p0, p1, p2, p3}, Lcom/xueqiu/android/base/util/ap;->b(Lcom/xueqiu/android/base/b/ai;JLjava/lang/String;)Lrx/a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Ljava/lang/String;)Lrx/a;
    .locals 1

    .prologue
    .line 60
    invoke-static {p0}, Lcom/xueqiu/android/base/util/ap;->b(Ljava/lang/String;)Lrx/a;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;JLcom/xueqiu/android/community/model/Comment;Ljava/lang/String;Z)V
    .locals 9

    .prologue
    const-wide/16 v0, 0x0

    const/4 v7, 0x1

    .line 487
    new-instance v2, Lcom/xueqiu/android/community/model/Draft;

    invoke-direct {v2}, Lcom/xueqiu/android/community/model/Draft;-><init>()V

    .line 488
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/xueqiu/android/community/model/Comment;->getId()J

    move-result-wide v4

    cmp-long v3, v4, v0

    if-eqz v3, :cond_0

    invoke-virtual {p3}, Lcom/xueqiu/android/community/model/Comment;->getUser()Lcom/xueqiu/android/community/model/User;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 489
    const v3, 0x7f07009f

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p3}, Lcom/xueqiu/android/community/model/Comment;->getUser()Lcom/xueqiu/android/community/model/User;

    move-result-object v6

    invoke-virtual {v6}, Lcom/xueqiu/android/community/model/User;->getScreenName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xueqiu/android/community/model/Draft;->setTitle(Ljava/lang/String;)V

    .line 494
    :goto_0
    invoke-virtual {v2, v7}, Lcom/xueqiu/android/community/model/Draft;->setType(I)V

    .line 495
    new-instance v3, Lcom/google/gson/JsonObject;

    invoke-direct {v3}, Lcom/google/gson/JsonObject;-><init>()V

    .line 496
    const-string v4, "status_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 497
    const-string v4, "comment_id"

    if-nez p3, :cond_1

    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 498
    const-string v0, "is_repost"

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 499
    const-string v0, "draft_text"

    const-string v1, "\n"

    const-string v4, ""

    .line 500
    invoke-virtual {p4, v1, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "<p dir=\"ltr\">"

    const-string v5, ""

    .line 501
    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "</p>"

    const-string v5, ""

    .line 502
    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 499
    invoke-virtual {v3, v0, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    invoke-virtual {v3}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/xueqiu/android/community/model/Draft;->setText(Ljava/lang/String;)V

    .line 504
    invoke-static {}, Lcom/xueqiu/android/base/storage/DBManager;->getInstance()Lcom/xueqiu/android/base/storage/DBManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/base/storage/DBManager;->insertDraft(Lcom/xueqiu/android/community/model/Draft;)Z

    .line 505
    return-void

    .line 491
    :cond_0
    const v3, 0x7f07009e

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xueqiu/android/community/model/Draft;->setTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 497
    :cond_1
    invoke-virtual {p3}, Lcom/xueqiu/android/community/model/Comment;->getId()J

    move-result-wide v0

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)V
    .locals 9

    .prologue
    const-wide/16 v6, 0x0

    .line 508
    new-instance v0, Lcom/xueqiu/android/community/model/Draft;

    invoke-direct {v0}, Lcom/xueqiu/android/community/model/Draft;-><init>()V

    .line 509
    cmp-long v1, p1, v6

    if-lez v1, :cond_2

    .line 510
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/model/Draft;->setType(I)V

    .line 511
    const v1, 0x7f0702f8

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/model/Draft;->setTitle(Ljava/lang/String;)V

    .line 518
    :goto_0
    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 519
    const-string v2, "draft_text"

    const-string v3, "\n"

    const-string v4, ""

    invoke-virtual {p3, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "<p dir=\"ltr\">"

    const-string v5, ""

    .line 520
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "</p>"

    const-string v5, ""

    .line 521
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 519
    invoke-virtual {v1, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    cmp-long v2, p1, v6

    if-lez v2, :cond_0

    .line 523
    const-string v2, "status_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 525
    :cond_0
    invoke-virtual {v1}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/model/Draft;->setText(Ljava/lang/String;)V

    .line 526
    if-eqz p4, :cond_1

    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 527
    invoke-virtual {v0, p4}, Lcom/xueqiu/android/community/model/Draft;->setImageName(Ljava/lang/String;)V

    .line 529
    :cond_1
    invoke-static {}, Lcom/xueqiu/android/base/storage/DBManager;->getInstance()Lcom/xueqiu/android/base/storage/DBManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/storage/DBManager;->insertDraft(Lcom/xueqiu/android/community/model/Draft;)Z

    .line 530
    return-void

    .line 515
    :cond_2
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/model/Draft;->setType(I)V

    .line 516
    const v1, 0x7f07057c

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/model/Draft;->setTitle(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Lcom/xueqiu/android/community/model/HomeTimelineStatusGroup;Lcom/xueqiu/android/community/a/ak;)V
    .locals 6

    .prologue
    .line 741
    if-nez p1, :cond_1

    .line 769
    :cond_0
    :goto_0
    return-void

    .line 745
    :cond_1
    invoke-virtual {p0}, Lcom/xueqiu/android/community/model/HomeTimelineStatusGroup;->getRecommendStatusCardList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_2

    .line 746
    invoke-virtual {p0}, Lcom/xueqiu/android/community/model/HomeTimelineStatusGroup;->getRecommendUserCardList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_2

    .line 747
    invoke-virtual {p0}, Lcom/xueqiu/android/community/model/HomeTimelineStatusGroup;->getRecommendStockCardList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_2

    .line 748
    invoke-virtual {p0}, Lcom/xueqiu/android/community/model/HomeTimelineStatusGroup;->getRecommendCubeCardList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 752
    :cond_2
    invoke-virtual {p1}, Lcom/xueqiu/android/community/a/ak;->a()Ljava/util/ArrayList;

    move-result-object v4

    .line 753
    invoke-virtual {p0}, Lcom/xueqiu/android/community/model/HomeTimelineStatusGroup;->getRecommendUserCardList()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 754
    const-string v1, "USER"

    invoke-static {v0, v4, p0, v1}, Lcom/xueqiu/android/base/util/ap;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/xueqiu/android/community/model/HomeTimelineStatusGroup;Ljava/lang/String;)V

    .line 756
    invoke-virtual {p0}, Lcom/xueqiu/android/community/model/HomeTimelineStatusGroup;->getRecommendStatusCardList()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 757
    const-string v2, "STATUS"

    invoke-static {v1, v4, p0, v2}, Lcom/xueqiu/android/base/util/ap;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/xueqiu/android/community/model/HomeTimelineStatusGroup;Ljava/lang/String;)V

    .line 759
    invoke-virtual {p0}, Lcom/xueqiu/android/community/model/HomeTimelineStatusGroup;->getRecommendStockCardList()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 760
    const-string v3, "STOCK"

    invoke-static {v2, v4, p0, v3}, Lcom/xueqiu/android/base/util/ap;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/xueqiu/android/community/model/HomeTimelineStatusGroup;Ljava/lang/String;)V

    .line 762
    invoke-virtual {p0}, Lcom/xueqiu/android/community/model/HomeTimelineStatusGroup;->getRecommendCubeCardList()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 763
    const-string v5, "CUBE"

    invoke-static {v3, v4, p0, v5}, Lcom/xueqiu/android/base/util/ap;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/xueqiu/android/community/model/HomeTimelineStatusGroup;Ljava/lang/String;)V

    .line 1184
    iput-object v0, p1, Lcom/xueqiu/android/community/a/ak;->j:Ljava/util/List;

    .line 2176
    iput-object v1, p1, Lcom/xueqiu/android/community/a/ak;->m:Ljava/util/List;

    .line 2196
    iget-object v0, p1, Lcom/xueqiu/android/community/a/ak;->l:Ljava/util/List;

    iput-object v0, p1, Lcom/xueqiu/android/community/a/ak;->l:Ljava/util/List;

    .line 3190
    iput-object v2, p1, Lcom/xueqiu/android/community/a/ak;->k:Ljava/util/List;

    goto :goto_0
.end method

.method public static a(Lcom/xueqiu/android/community/model/HomeTimelineStatusGroup;Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 635
    invoke-static {p1}, Lcom/xueqiu/android/base/util/ap;->a(Lorg/json/JSONObject;)Lcom/xueqiu/android/base/util/aq;

    move-result-object v0

    .line 637
    iget-object v1, v0, Lcom/xueqiu/android/base/util/aq;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 638
    iget-object v1, v0, Lcom/xueqiu/android/base/util/aq;->a:Ljava/util/List;

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/community/model/HomeTimelineStatusGroup;->setRecommendUserCardList(Ljava/util/List;)V

    .line 641
    :cond_0
    iget-object v1, v0, Lcom/xueqiu/android/base/util/aq;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 642
    iget-object v1, v0, Lcom/xueqiu/android/base/util/aq;->b:Ljava/util/List;

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/community/model/HomeTimelineStatusGroup;->setRecommendStatusCardList(Ljava/util/List;)V

    .line 644
    :cond_1
    iget-object v1, v0, Lcom/xueqiu/android/base/util/aq;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 645
    iget-object v1, v0, Lcom/xueqiu/android/base/util/aq;->c:Ljava/util/List;

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/community/model/HomeTimelineStatusGroup;->setRecommendStockCardList(Ljava/util/List;)V

    .line 647
    :cond_2
    iget-object v1, v0, Lcom/xueqiu/android/base/util/aq;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 648
    iget-object v0, v0, Lcom/xueqiu/android/base/util/aq;->d:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/model/HomeTimelineStatusGroup;->setRecommendCubeCardList(Ljava/util/List;)V

    .line 650
    :cond_3
    return-void
.end method

.method private static a(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/xueqiu/android/community/model/HomeTimelineStatusGroup;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/RecommendCard",
            "<TT;>;>;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/Status;",
            ">;",
            "Lcom/xueqiu/android/community/model/HomeTimelineStatusGroup;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 662
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 731
    :cond_0
    return-void

    .line 666
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 668
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/RecommendCard;

    .line 670
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/community/model/Status;

    .line 671
    const/4 v2, 0x0

    .line 673
    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/Status;->getType()Ljava/lang/String;

    move-result-object v6

    const-string v7, "STATUS"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 674
    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/Status;->getRecommendStatusCard()Lcom/xueqiu/android/community/model/RecommendCard;

    move-result-object v2

    .line 677
    :cond_4
    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/Status;->getType()Ljava/lang/String;

    move-result-object v6

    const-string v7, "USER"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 678
    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/Status;->getRecommendUserCard()Lcom/xueqiu/android/community/model/RecommendCard;

    move-result-object v2

    .line 681
    :cond_5
    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/Status;->getType()Ljava/lang/String;

    move-result-object v6

    const-string v7, "STOCK"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 682
    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/Status;->getRecommendStockCard()Lcom/xueqiu/android/community/model/RecommendCard;

    move-result-object v2

    .line 685
    :cond_6
    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/Status;->getType()Ljava/lang/String;

    move-result-object v6

    const-string v7, "CUBE"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 686
    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/Status;->getRecommendCubeCard()Lcom/xueqiu/android/community/model/RecommendCard;

    move-result-object v2

    .line 689
    :cond_7
    if-eqz v2, :cond_3

    .line 693
    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/RecommendCard;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/RecommendCard;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 694
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 700
    :cond_8
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 702
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/RecommendCard;

    .line 704
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/RecommendCard;->getLocation()I

    move-result v1

    .line 707
    new-instance v3, Lcom/xueqiu/android/community/model/Status;

    invoke-direct {v3}, Lcom/xueqiu/android/community/model/Status;-><init>()V

    .line 708
    invoke-virtual {v3, p3}, Lcom/xueqiu/android/community/model/Status;->setType(Ljava/lang/String;)V

    .line 709
    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/xueqiu/android/community/model/Status;->setMark(I)V

    .line 711
    const-string v4, "USER"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 712
    invoke-virtual {v3, v0}, Lcom/xueqiu/android/community/model/Status;->setRecommendUserCard(Lcom/xueqiu/android/community/model/RecommendCard;)V

    .line 721
    :cond_9
    :goto_2
    invoke-virtual {p2}, Lcom/xueqiu/android/community/model/HomeTimelineStatusGroup;->size()I

    move-result v0

    if-nez v0, :cond_e

    .line 722
    const/4 v0, 0x0

    .line 725
    :goto_3
    invoke-virtual {p2}, Lcom/xueqiu/android/community/model/HomeTimelineStatusGroup;->size()I

    move-result v1

    if-le v0, v1, :cond_a

    .line 726
    invoke-virtual {p2}, Lcom/xueqiu/android/community/model/HomeTimelineStatusGroup;->size()I

    move-result v0

    .line 729
    :cond_a
    invoke-virtual {p2, v0, v3}, Lcom/xueqiu/android/community/model/HomeTimelineStatusGroup;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 713
    :cond_b
    const-string v4, "STATUS"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 714
    invoke-virtual {v3, v0}, Lcom/xueqiu/android/community/model/Status;->setRecommendStatusCard(Lcom/xueqiu/android/community/model/RecommendCard;)V

    goto :goto_2

    .line 715
    :cond_c
    const-string v4, "STOCK"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 716
    invoke-virtual {v3, v0}, Lcom/xueqiu/android/community/model/Status;->setRecommendStockCard(Lcom/xueqiu/android/community/model/RecommendCard;)V

    goto :goto_2

    .line 717
    :cond_d
    const-string v4, "CUBE"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 718
    invoke-virtual {v3, v0}, Lcom/xueqiu/android/community/model/Status;->setRecommendCubeCard(Lcom/xueqiu/android/community/model/RecommendCard;)V

    goto :goto_2

    :cond_e
    move v0, v1

    goto :goto_3
.end method

.method public static b(Lcom/xueqiu/android/community/model/Comment;)J
    .locals 2

    .prologue
    .line 877
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/xueqiu/android/community/model/Comment;->getPaidMention()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xueqiu/android/community/model/Comment;->getPaidMention()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 878
    :cond_0
    const-wide/16 v0, 0x0

    .line 880
    :goto_0
    return-wide v0

    :cond_1
    invoke-virtual {p0}, Lcom/xueqiu/android/community/model/Comment;->getPaidMention()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/PaidMention;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/PaidMention;->getUserId()J

    move-result-wide v0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;J)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 790
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/xueqiu/android/community/CashierActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 791
    const-string v1, "extra_type"

    const-string v2, "type_reward_comment"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 792
    const-string v1, "extra_comment_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 793
    return-object v0
.end method

.method public static b(Lcom/xueqiu/android/community/model/Status;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 863
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/xueqiu/android/community/model/Status;->getPaidMention()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xueqiu/android/community/model/Status;->getPaidMention()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 864
    :cond_0
    const-string v0, "NONE"

    .line 866
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/xueqiu/android/community/model/Status;->getPaidMention()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/PaidMention;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/PaidMention;->getState()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static b(Ljava/util/Date;)Ljava/lang/String;
    .locals 12

    .prologue
    const-wide/32 v10, 0x36ee80

    const-wide/16 v0, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 836
    if-nez p0, :cond_0

    .line 837
    const-string v0, ""

    .line 851
    :goto_0
    return-object v0

    .line 839
    :cond_0
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 840
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 843
    const-wide/32 v6, 0xa4cb800

    sub-long v2, v4, v2

    sub-long v2, v6, v2

    .line 845
    cmp-long v4, v2, v0

    if-gez v4, :cond_2

    .line 848
    :goto_1
    cmp-long v2, v0, v10

    if-gez v2, :cond_1

    .line 849
    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v3, "%d\u5206\u949f\u540e\u8fc7\u671f"

    new-array v4, v9, [Ljava/lang/Object;

    const-wide/32 v6, 0xea60

    div-long/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v8

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 851
    :cond_1
    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v3, "%d\u5c0f\u65f6\u540e\u8fc7\u671f"

    new-array v4, v9, [Ljava/lang/Object;

    div-long/2addr v0, v10

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v8

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-wide v0, v2

    goto :goto_1
.end method

.method public static b(Landroid/content/Context;Lcom/xueqiu/android/base/b/ai;Ljava/lang/String;)Lrx/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/xueqiu/android/base/b/ai;",
            "Ljava/lang/String;",
            ")",
            "Lrx/a",
            "<",
            "Lcom/xueqiu/android/common/model/PhotoUploadResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 453
    new-instance v0, Lcom/xueqiu/android/base/util/ap$5;

    invoke-direct {v0, p0, p2, p1}, Lcom/xueqiu/android/base/util/ap$5;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/xueqiu/android/base/b/ai;)V

    invoke-static {v0}, Lrx/a;->a(Lrx/b;)Lrx/a;

    move-result-object v0

    return-object v0
.end method

.method private static b(Landroid/content/Context;Lcom/xueqiu/android/base/b/ai;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/a;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/xueqiu/android/base/b/ai;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lrx/a",
            "<",
            "Lcom/xueqiu/android/community/model/Status;",
            ">;"
        }
    .end annotation

    .prologue
    .line 198
    new-instance v0, Lcom/xueqiu/android/base/util/ap$13;

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p2

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object v7, p0

    move/from16 v8, p5

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/xueqiu/android/base/util/ap$13;-><init>(Lcom/xueqiu/android/base/b/ai;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lrx/a;->a(Lrx/b;)Lrx/a;

    move-result-object v0

    return-object v0
.end method

.method private static b(Lcom/xueqiu/android/base/b/ai;JLjava/lang/String;)Lrx/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xueqiu/android/base/b/ai;",
            "J",
            "Ljava/lang/String;",
            ")",
            "Lrx/a",
            "<",
            "Lcom/xueqiu/android/community/model/Status;",
            ">;"
        }
    .end annotation

    .prologue
    .line 241
    new-instance v0, Lcom/xueqiu/android/base/util/ap$14;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/xueqiu/android/base/util/ap$14;-><init>(Lcom/xueqiu/android/base/b/ai;JLjava/lang/String;)V

    invoke-static {v0}, Lrx/a;->a(Lrx/b;)Lrx/a;

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/lang/String;)Lrx/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lrx/a",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 290
    new-instance v0, Lcom/xueqiu/android/base/util/ap$17;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/base/util/ap$17;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lrx/a;->a(Lrx/b;)Lrx/a;

    move-result-object v0

    return-object v0
.end method

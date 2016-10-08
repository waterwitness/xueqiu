.class public final Lcom/xueqiu/android/base/b/c;
.super Lcom/xueqiu/android/base/b/a;
.source "CubeClient.java"


# direct methods
.method public constructor <init>(Lcom/xueqiu/android/base/b/ae;)V
    .locals 0

    .prologue
    .line 153
    invoke-direct {p0}, Lcom/xueqiu/android/base/b/a;-><init>()V

    .line 154
    iput-object p1, p0, Lcom/xueqiu/android/base/b/c;->f:Lcom/xueqiu/android/base/b/ae;

    .line 155
    return-void
.end method

.method private static a(Ljava/util/List;Ljava/util/List;)Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/cube/model/Holding;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/cube/model/Holding;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    .line 551
    new-instance v3, Lcom/google/gson/JsonArray;

    invoke-direct {v3}, Lcom/google/gson/JsonArray;-><init>()V

    .line 552
    if-eqz p1, :cond_6

    .line 553
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 554
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 555
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/model/Holding;

    .line 556
    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Holding;->getStockId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 559
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/model/Holding;

    .line 561
    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Holding;->getStockId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 562
    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Holding;->getStockId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/cube/model/Holding;

    invoke-virtual {v1}, Lcom/xueqiu/android/cube/model/Holding;->getWeight()D

    move-result-wide v6

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Holding;->getWeight()D

    move-result-wide v8

    cmpl-double v1, v6, v8

    if-nez v1, :cond_1

    .line 563
    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Holding;->getStockId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/cube/model/Holding;

    invoke-virtual {v1}, Lcom/xueqiu/android/cube/model/Holding;->getVolume()D

    move-result-wide v6

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Holding;->getVolume()D

    move-result-wide v8

    cmpl-double v1, v6, v8

    if-eqz v1, :cond_2

    .line 564
    :cond_1
    invoke-virtual {v0, v10}, Lcom/xueqiu/android/cube/model/Holding;->setProactive(Z)V

    .line 566
    :cond_2
    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Holding;->getStockId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 570
    :cond_3
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 571
    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 572
    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/cube/model/Holding;

    .line 573
    invoke-virtual {v1, v10}, Lcom/xueqiu/android/cube/model/Holding;->setProactive(Z)V

    .line 574
    const-wide/16 v6, 0x0

    invoke-virtual {v1, v6, v7}, Lcom/xueqiu/android/cube/model/Holding;->setWeight(D)V

    .line 575
    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 578
    :cond_5
    new-instance p0, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 580
    :cond_6
    const/4 v0, 0x0

    move v1, v0

    :goto_3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_9

    .line 581
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/model/Holding;

    .line 582
    new-instance v4, Lcom/google/gson/JsonObject;

    invoke-direct {v4}, Lcom/google/gson/JsonObject;-><init>()V

    .line 583
    const-string v2, "stock_id"

    new-instance v5, Lcom/google/gson/JsonPrimitive;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Holding;->getStockId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v4, v2, v5}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 584
    const-string v2, "weight"

    new-instance v5, Lcom/google/gson/JsonPrimitive;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Holding;->getWeight()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v4, v2, v5}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 585
    const-string v2, "volume"

    new-instance v5, Lcom/google/gson/JsonPrimitive;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Holding;->getVolume()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v4, v2, v5}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 586
    const-string v5, "segment_name"

    new-instance v6, Lcom/google/gson/JsonPrimitive;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Holding;->getSegmentName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_8

    const-string v2, "\u5176\u4ed6"

    :goto_4
    invoke-direct {v6, v2}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 587
    if-eqz p1, :cond_7

    .line 588
    const-string v2, "proactive"

    new-instance v5, Lcom/google/gson/JsonPrimitive;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Holding;->isProactive()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/Boolean;)V

    invoke-virtual {v4, v2, v5}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 590
    :cond_7
    invoke-virtual {v3, v4}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    .line 580
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 586
    :cond_8
    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Holding;->getSegmentName()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 592
    :cond_9
    invoke-virtual {v3}, Lcom/google/gson/JsonArray;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(IILjava/util/Map;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/cube/model/Cube;",
            ">;>;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/cube/model/Cube;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 613
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 614
    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 615
    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 616
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v4, v0, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 619
    :cond_0
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "category"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 620
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "page"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 621
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "count"

    const-string v3, "20"

    invoke-direct {v0, v1, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 623
    new-instance v1, Lcom/xueqiu/android/common/model/parser/GPagedParser;

    const-string v0, "list"

    new-instance v3, Lcom/xueqiu/android/base/b/c$8;

    invoke-direct {v3, p0}, Lcom/xueqiu/android/base/b/c$8;-><init>(Lcom/xueqiu/android/base/b/c;)V

    .line 624
    invoke-virtual {v3}, Lcom/xueqiu/android/base/b/c$8;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Lcom/xueqiu/android/common/model/parser/GPagedParser;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;)V

    .line 625
    const-string v0, "/cubes/discover/rank/cube/list"

    .line 18044
    invoke-static {v0, v5}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 626
    new-array v0, v5, [Lorg/apache/http/message/BasicNameValuePair;

    .line 627
    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/http/message/BasicNameValuePair;

    .line 625
    invoke-static {v3, v0, p4, v1}, Lcom/xueqiu/android/base/b/x;->a(Ljava/lang/String;[Lorg/apache/http/message/BasicNameValuePair;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 630
    iget-object v1, p0, Lcom/xueqiu/android/base/b/c;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 631
    return-object v0
.end method

.method public final a(ILcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/cube/model/Editorial;",
            ">;>;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/cube/model/Editorial;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 472
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/apache/http/message/BasicNameValuePair;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "page"

    .line 473
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v5

    const/4 v1, 0x1

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "count"

    const-string v4, "6"

    .line 474
    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 476
    const-string v1, "/cubes/discover/editorial/list"

    .line 14044
    invoke-static {v1, v5}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 477
    new-instance v2, Lcom/xueqiu/android/common/model/parser/GParser;

    new-instance v3, Lcom/xueqiu/android/base/b/c$4;

    invoke-direct {v3, p0}, Lcom/xueqiu/android/base/b/c$4;-><init>(Lcom/xueqiu/android/base/b/c;)V

    .line 481
    invoke-virtual {v3}, Lcom/xueqiu/android/base/b/c$4;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/xueqiu/android/common/model/parser/GParser;-><init>(Ljava/lang/reflect/Type;)V

    .line 476
    invoke-static {v1, v0, p2, v2}, Lcom/xueqiu/android/base/b/x;->a(Ljava/lang/String;[Lorg/apache/http/message/BasicNameValuePair;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 482
    iget-object v1, p0, Lcom/xueqiu/android/base/b/c;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 483
    return-object v0
.end method

.method public final a(JILcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/cube/model/Cube;",
            ">;>;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/cube/model/Cube;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 651
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/apache/http/message/BasicNameValuePair;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "editorial_id"

    .line 652
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v5

    const/4 v1, 0x1

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "page"

    .line 653
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "count"

    const-string v4, "20"

    .line 654
    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 656
    new-instance v1, Lcom/xueqiu/android/common/model/parser/GPagedParser;

    const-string v2, "list"

    new-instance v3, Lcom/xueqiu/android/base/b/c$10;

    invoke-direct {v3, p0}, Lcom/xueqiu/android/base/b/c$10;-><init>(Lcom/xueqiu/android/base/b/c;)V

    .line 657
    invoke-virtual {v3}, Lcom/xueqiu/android/base/b/c$10;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/xueqiu/android/common/model/parser/GPagedParser;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;)V

    .line 658
    const-string v2, "/cubes/discover/editorial/cube/list"

    .line 19044
    invoke-static {v2, v5}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 658
    invoke-static {v2, v0, p4, v1}, Lcom/xueqiu/android/base/b/x;->a(Ljava/lang/String;[Lorg/apache/http/message/BasicNameValuePair;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 659
    iget-object v1, p0, Lcom/xueqiu/android/base/b/c;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 660
    return-object v0
.end method

.method public final a(JJLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lcom/xueqiu/android/cube/model/OrderStatus;",
            ">;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lcom/xueqiu/android/cube/model/OrderStatus;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 757
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/apache/http/message/BasicNameValuePair;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "out_service_no"

    .line 758
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v5

    const/4 v1, 0x1

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "out_trade_no"

    .line 759
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 761
    const-string v1, "/tc/snowpay/trade/get_prepay_info"

    .line 25044
    invoke-static {v1, v5}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 762
    new-instance v2, Lcom/xueqiu/android/common/model/parser/GParser;

    const-string v3, "status"

    new-instance v4, Lcom/xueqiu/android/base/b/c$14;

    invoke-direct {v4, p0}, Lcom/xueqiu/android/base/b/c$14;-><init>(Lcom/xueqiu/android/base/b/c;)V

    .line 764
    invoke-virtual {v4}, Lcom/xueqiu/android/base/b/c$14;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/xueqiu/android/common/model/parser/GParser;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;)V

    .line 761
    invoke-static {v1, v0, p5, v2}, Lcom/xueqiu/android/base/b/x;->a(Ljava/lang/String;[Lorg/apache/http/message/BasicNameValuePair;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 765
    iget-object v1, p0, Lcom/xueqiu/android/base/b/c;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 766
    return-object v0
.end method

.method public final a(JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lcom/xueqiu/android/cube/model/Rebalancing;",
            ">;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lcom/xueqiu/android/cube/model/Rebalancing;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 179
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/http/message/BasicNameValuePair;

    .line 180
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "rb_id"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v4

    .line 182
    const-string v1, "/cubes/rebalancing/show_origin"

    .line 2044
    invoke-static {v1, v4}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 182
    new-instance v2, Lcom/xueqiu/android/common/model/parser/GParser;

    const-string v3, "rebalancing"

    const-class v4, Lcom/xueqiu/android/cube/model/Rebalancing;

    invoke-direct {v2, v3, v4}, Lcom/xueqiu/android/common/model/parser/GParser;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;)V

    invoke-static {v1, v0, p3, v2}, Lcom/xueqiu/android/base/b/x;->a(Ljava/lang/String;[Lorg/apache/http/message/BasicNameValuePair;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 183
    iget-object v1, p0, Lcom/xueqiu/android/base/b/c;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 184
    return-object v0
.end method

.method public final a(JLjava/lang/String;DLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "D",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lorg/json/JSONObject;",
            ">;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 783
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 785
    const-string v1, "plan"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 786
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-lez v1, :cond_0

    .line 787
    const-string v1, "cube_id"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 789
    :cond_0
    if-eqz p3, :cond_1

    .line 790
    const-string v1, "cube_symbol"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 794
    :cond_1
    const-wide/16 v2, 0x0

    cmpl-double v1, p4, v2

    if-lez v1, :cond_2

    .line 795
    const-string v1, "assets_limit"

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 798
    :cond_2
    const-string v1, "/cubes/order/plan"

    .line 27044
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 798
    new-instance v2, Lcom/xueqiu/android/base/b/c$16;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/base/b/c$16;-><init>(Lcom/xueqiu/android/base/b/c;)V

    invoke-static {v1, v0, p6, v2}, Lcom/xueqiu/android/base/b/x;->a(Ljava/lang/String;Ljava/util/Map;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 809
    iget-object v1, p0, Lcom/xueqiu/android/base/b/c;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 810
    return-object v0
.end method

.method public final a(JLjava/lang/String;IILcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "II",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lcom/xueqiu/android/common/model/PagedList",
            "<",
            "Lcom/xueqiu/android/cube/model/HistoryValue;",
            ">;>;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lcom/xueqiu/android/common/model/PagedList",
            "<",
            "Lcom/xueqiu/android/cube/model/HistoryValue;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 324
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/apache/http/message/BasicNameValuePair;

    .line 325
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-lez v1, :cond_0

    .line 326
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "cube_id"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v5

    .line 330
    :goto_0
    const/4 v1, 0x1

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "page"

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 331
    const/4 v1, 0x2

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "count"

    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 332
    const-string v1, "/cubes/nav_daily/page"

    .line 8044
    invoke-static {v1, v5}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 333
    new-instance v2, Lcom/xueqiu/android/common/model/parser/GParser;

    new-instance v3, Lcom/xueqiu/android/base/b/c$21;

    invoke-direct {v3, p0}, Lcom/xueqiu/android/base/b/c$21;-><init>(Lcom/xueqiu/android/base/b/c;)V

    .line 335
    invoke-virtual {v3}, Lcom/xueqiu/android/base/b/c$21;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/xueqiu/android/common/model/parser/GParser;-><init>(Ljava/lang/reflect/Type;)V

    .line 332
    invoke-static {v1, v0, p6, v2}, Lcom/xueqiu/android/base/b/x;->a(Ljava/lang/String;[Lorg/apache/http/message/BasicNameValuePair;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 336
    iget-object v1, p0, Lcom/xueqiu/android/base/b/c;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 337
    return-object v0

    .line 328
    :cond_0
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "cube_symbol"

    invoke-direct {v1, v2, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v5

    goto :goto_0
.end method

.method public final a(JLjava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lcom/xueqiu/android/cube/model/Cube;",
            ">;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lcom/xueqiu/android/cube/model/Cube;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 249
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/apache/http/message/BasicNameValuePair;

    .line 250
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-lez v1, :cond_0

    .line 251
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "id"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v5

    .line 255
    :goto_0
    const/4 v1, 0x1

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "mix_rebalancing"

    const-string v4, "true"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 256
    const/4 v1, 0x2

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "ret_last_buy_rb_id"

    const-string v4, "true"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 257
    const-string v1, "/cubes/show"

    .line 5044
    invoke-static {v1, v5}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 257
    new-instance v2, Lcom/xueqiu/android/common/model/parser/GParser;

    const-class v3, Lcom/xueqiu/android/cube/model/Cube;

    invoke-direct {v2, v3}, Lcom/xueqiu/android/common/model/parser/GParser;-><init>(Ljava/lang/reflect/Type;)V

    invoke-static {v1, v0, p4, v2}, Lcom/xueqiu/android/base/b/x;->a(Ljava/lang/String;[Lorg/apache/http/message/BasicNameValuePair;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 262
    iget-object v1, p0, Lcom/xueqiu/android/base/b/c;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 263
    return-object v0

    .line 253
    :cond_0
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "symbol"

    invoke-direct {v1, v2, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v5

    goto :goto_0
.end method

.method public final a(JLjava/lang/String;Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lcom/xueqiu/android/common/model/RequestResult;",
            ">;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lcom/xueqiu/android/common/model/RequestResult;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 212
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/apache/http/message/BasicNameValuePair;

    .line 213
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-lez v1, :cond_0

    .line 214
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "id"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v4

    .line 218
    :goto_0
    const/4 v1, 0x1

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "name"

    invoke-direct {v2, v3, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 219
    const/4 v1, 0x2

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "description"

    invoke-direct {v2, v3, p4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 221
    const-string v1, "/cubes/update"

    .line 3044
    invoke-static {v1, v4}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 221
    new-instance v2, Lcom/xueqiu/android/common/model/parser/GParser;

    const-class v3, Lcom/xueqiu/android/common/model/RequestResult;

    invoke-direct {v2, v3}, Lcom/xueqiu/android/common/model/parser/GParser;-><init>(Ljava/lang/reflect/Type;)V

    invoke-static {v1, v0, p5, v2}, Lcom/xueqiu/android/base/b/x;->b(Ljava/lang/String;[Lorg/apache/http/message/BasicNameValuePair;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 222
    iget-object v1, p0, Lcom/xueqiu/android/base/b/c;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 223
    return-object v0

    .line 216
    :cond_0
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "symbol"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v4

    goto :goto_0
.end method

.method public final a(JLjava/lang/String;Ljava/util/List;Ljava/util/List;DLjava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/cube/model/Holding;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/cube/model/Holding;",
            ">;D",
            "Ljava/lang/String;",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lcom/xueqiu/android/cube/model/Rebalancing;",
            ">;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lcom/xueqiu/android/cube/model/Rebalancing;",
            ">;"
        }
    .end annotation

    .prologue
    .line 382
    const/4 v2, 0x5

    new-array v2, v2, [Lorg/apache/http/message/BasicNameValuePair;

    .line 383
    const-wide/16 v4, 0x0

    cmp-long v3, p1, v4

    if-lez v3, :cond_1

    .line 384
    const/4 v3, 0x0

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "cube_id"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    .line 388
    :goto_0
    const/4 v3, 0x1

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "holdings"

    invoke-static/range {p4 .. p5}, Lcom/xueqiu/android/base/b/c;->a(Ljava/util/List;Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    .line 389
    const/4 v3, 0x2

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "cash"

    const-string v6, "%.2f"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static/range {p6 .. p7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    .line 390
    const/4 v3, 0x3

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "segmenting"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    .line 391
    const/4 v3, 0x4

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "comment"

    if-nez p8, :cond_0

    const-string p8, ""

    :cond_0
    move-object/from16 v0, p8

    invoke-direct {v4, v5, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    .line 392
    const-string v3, "/cubes/rebalancing/create"

    .line 10044
    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 392
    new-instance v4, Lcom/xueqiu/android/common/model/parser/GParser;

    const-class v5, Lcom/xueqiu/android/cube/model/Rebalancing;

    invoke-direct {v4, v5}, Lcom/xueqiu/android/common/model/parser/GParser;-><init>(Ljava/lang/reflect/Type;)V

    move-object/from16 v0, p9

    invoke-static {v3, v2, v0, v4}, Lcom/xueqiu/android/base/b/x;->b(Ljava/lang/String;[Lorg/apache/http/message/BasicNameValuePair;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v2

    .line 393
    iget-object v3, p0, Lcom/xueqiu/android/base/b/c;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v3, v2}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 394
    return-object v2

    .line 386
    :cond_1
    const/4 v3, 0x0

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "cube_symbol"

    invoke-direct {v4, v5, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    goto :goto_0
.end method

.method public final a(Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/cube/model/Industry;",
            ">;>;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/cube/model/Industry;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 534
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/apache/http/message/BasicNameValuePair;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "count"

    const-string v3, "28"

    .line 535
    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v5

    const/4 v1, 0x1

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "page"

    const-string v4, "1"

    .line 536
    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "order"

    const-string v4, "1"

    .line 537
    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 539
    new-instance v1, Lcom/xueqiu/android/common/model/parser/GPagedParser;

    const-string v2, "list"

    new-instance v3, Lcom/xueqiu/android/base/b/c$6;

    invoke-direct {v3, p0}, Lcom/xueqiu/android/base/b/c$6;-><init>(Lcom/xueqiu/android/base/b/c;)V

    .line 540
    invoke-virtual {v3}, Lcom/xueqiu/android/base/b/c$6;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/xueqiu/android/common/model/parser/GPagedParser;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;)V

    .line 541
    const-string v2, "/cubes/discover/industry/list"

    .line 16044
    invoke-static {v2, v5}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 541
    invoke-static {v2, v0, p1, v1}, Lcom/xueqiu/android/base/b/x;->a(Ljava/lang/String;[Lorg/apache/http/message/BasicNameValuePair;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 546
    iget-object v1, p0, Lcom/xueqiu/android/base/b/c;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 547
    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(Ljava/lang/String;IILcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lcom/google/gson/JsonObject;",
            ">;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lcom/google/gson/JsonObject;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 945
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/apache/http/message/BasicNameValuePair;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "cube_symbol"

    invoke-direct {v1, v2, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v5

    const/4 v1, 0x1

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "page"

    .line 947
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "count"

    .line 948
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 951
    new-instance v1, Lcom/xueqiu/android/common/model/parser/GParser;

    const-class v2, Lcom/google/gson/JsonObject;

    invoke-direct {v1, v2}, Lcom/xueqiu/android/common/model/parser/GParser;-><init>(Ljava/lang/reflect/Type;)V

    .line 953
    const-string v2, "/cubes/analyst/stock"

    .line 33044
    invoke-static {v2, v5}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 953
    invoke-static {v2, v0, p4, v1}, Lcom/xueqiu/android/base/b/x;->a(Ljava/lang/String;[Lorg/apache/http/message/BasicNameValuePair;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 955
    iget-object v1, p0, Lcom/xueqiu/android/base/b/c;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 956
    return-object v0
.end method

.method public final a(Ljava/lang/String;ILjava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lcom/google/gson/JsonObject;",
            ">;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lcom/google/gson/JsonObject;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 883
    new-instance v0, Lcom/xueqiu/android/common/model/parser/GParser;

    const-class v1, Lcom/google/gson/JsonObject;

    invoke-direct {v0, v1}, Lcom/xueqiu/android/common/model/parser/GParser;-><init>(Ljava/lang/reflect/Type;)V

    .line 884
    const/4 v1, 0x5

    new-array v1, v1, [Lorg/apache/http/message/BasicNameValuePair;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "list_param"

    invoke-direct {v2, v3, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v6

    const/4 v2, 0x1

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "cube_level"

    .line 886
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "market"

    invoke-direct {v3, v4, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "page"

    const-string v5, "1"

    .line 888
    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/4 v2, 0x4

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "count"

    const-string v5, "1"

    .line 889
    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    .line 892
    const-string v2, "/cubes/rank/arena_cubes"

    .line 30044
    invoke-static {v2, v6}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 892
    invoke-static {v2, v1, p4, v0}, Lcom/xueqiu/android/base/b/x;->a(Ljava/lang/String;[Lorg/apache/http/message/BasicNameValuePair;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 897
    iget-object v1, p0, Lcom/xueqiu/android/base/b/c;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 898
    return-object v0
.end method

.method public final a(Ljava/lang/String;ILjava/util/Map;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/cube/model/Cube;",
            ">;>;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/cube/model/Cube;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 664
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 665
    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 666
    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 667
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v4, v0, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 670
    :cond_0
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "industry_name"

    invoke-direct {v0, v1, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 671
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "page"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 672
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "count"

    const-string v3, "20"

    invoke-direct {v0, v1, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 674
    new-instance v1, Lcom/xueqiu/android/common/model/parser/GPagedParser;

    const-string v0, "list"

    new-instance v3, Lcom/xueqiu/android/base/b/c$11;

    invoke-direct {v3, p0}, Lcom/xueqiu/android/base/b/c$11;-><init>(Lcom/xueqiu/android/base/b/c;)V

    .line 675
    invoke-virtual {v3}, Lcom/xueqiu/android/base/b/c$11;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Lcom/xueqiu/android/common/model/parser/GPagedParser;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;)V

    .line 676
    const-string v0, "/cubes/discover/topic/cube/list"

    .line 20044
    invoke-static {v0, v5}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 677
    new-array v0, v5, [Lorg/apache/http/message/BasicNameValuePair;

    .line 678
    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/http/message/BasicNameValuePair;

    .line 676
    invoke-static {v3, v0, p4, v1}, Lcom/xueqiu/android/base/b/x;->a(Ljava/lang/String;[Lorg/apache/http/message/BasicNameValuePair;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 681
    iget-object v1, p0, Lcom/xueqiu/android/base/b/c;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 682
    return-object v0
.end method

.method public final a(Ljava/lang/String;JJLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJ",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/cube/model/NavDailyList;",
            ">;>;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/cube/model/NavDailyList;",
            ">;>;"
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 278
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 279
    const-string v1, "cube_symbol"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    cmp-long v1, p2, v2

    if-lez v1, :cond_0

    cmp-long v1, p4, v2

    if-lez v1, :cond_0

    .line 281
    const-string v1, "since"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    const-string v1, "until"

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    :cond_0
    const-string v1, "/cubes/nav_daily/all"

    .line 6044
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 285
    new-instance v2, Lcom/xueqiu/android/common/model/parser/GParser;

    new-instance v3, Lcom/xueqiu/android/base/b/c$1;

    invoke-direct {v3, p0}, Lcom/xueqiu/android/base/b/c$1;-><init>(Lcom/xueqiu/android/base/b/c;)V

    .line 287
    invoke-virtual {v3}, Lcom/xueqiu/android/base/b/c$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/xueqiu/android/common/model/parser/GParser;-><init>(Ljava/lang/reflect/Type;)V

    .line 284
    invoke-static {v1, v0, p6, v2}, Lcom/xueqiu/android/base/b/x;->a(Ljava/lang/String;Ljava/util/Map;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 288
    iget-object v1, p0, Lcom/xueqiu/android/base/b/c;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 289
    return-object v0
.end method

.method public final a(Ljava/lang/String;JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lcom/xueqiu/android/cube/model/SpCubeRelation;",
            ">;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lcom/xueqiu/android/cube/model/SpCubeRelation;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 239
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/apache/http/message/BasicNameValuePair;

    .line 240
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "cube_symbol"

    invoke-direct {v1, v2, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v5

    .line 241
    const/4 v1, 0x1

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "owner_id"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 242
    const-string v1, "/tc/snowx/cube/relation"

    .line 4044
    invoke-static {v1, v5}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 242
    new-instance v2, Lcom/xueqiu/android/common/model/parser/InTradeParser;

    const-class v3, Lcom/xueqiu/android/cube/model/SpCubeRelation;

    invoke-direct {v2, v3}, Lcom/xueqiu/android/common/model/parser/InTradeParser;-><init>(Ljava/lang/reflect/Type;)V

    invoke-static {v1, v0, p4, v2}, Lcom/xueqiu/android/base/b/x;->a(Ljava/lang/String;[Lorg/apache/http/message/BasicNameValuePair;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 244
    iget-object v1, p0, Lcom/xueqiu/android/base/b/c;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 245
    return-object v0
.end method

.method public final a(Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lcom/xueqiu/android/cube/model/Cube;",
            ">;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lcom/xueqiu/android/cube/model/Cube;",
            ">;"
        }
    .end annotation

    .prologue
    .line 197
    const-string v0, "/tc/snowx/cubes/license/query"

    invoke-static {v0, p1}, Lcom/xueqiu/android/base/b/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lorg/apache/http/message/BasicNameValuePair;

    new-instance v2, Lcom/xueqiu/android/common/model/parser/InTradeParser;

    const-class v3, Lcom/xueqiu/android/cube/model/Cube;

    invoke-direct {v2, v3}, Lcom/xueqiu/android/common/model/parser/InTradeParser;-><init>(Ljava/lang/reflect/Type;)V

    invoke-static {v0, v1, p2, v2}, Lcom/xueqiu/android/base/b/x;->a(Ljava/lang/String;[Lorg/apache/http/message/BasicNameValuePair;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 199
    iget-object v1, p0, Lcom/xueqiu/android/base/b/c;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 200
    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;IIJLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIJ",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/Status;",
            ">;>;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/Status;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 442
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 443
    const-string v1, "symbol"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    const-string v1, "source"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    const-string v1, "count"

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    const-string v1, "comment"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    const-string v1, "page"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    const-wide/16 v2, 0x0

    cmp-long v1, p5, v2

    if-eqz v1, :cond_0

    .line 449
    const-string v1, "uid"

    invoke-static {p5, p6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    :cond_0
    const-string v1, "/statuses/search"

    .line 12044
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 451
    new-instance v2, Lcom/xueqiu/android/common/model/parser/GPagedParser;

    const-string v3, "list"

    new-instance v4, Lcom/xueqiu/android/base/b/c$2;

    invoke-direct {v4, p0}, Lcom/xueqiu/android/base/b/c$2;-><init>(Lcom/xueqiu/android/base/b/c;)V

    .line 452
    invoke-virtual {v4}, Lcom/xueqiu/android/base/b/c$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/xueqiu/android/common/model/parser/GPagedParser;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;)V

    .line 451
    invoke-static {v1, v0, p7, v2}, Lcom/xueqiu/android/base/b/x;->a(Ljava/lang/String;Ljava/util/Map;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 453
    iget-object v1, p0, Lcom/xueqiu/android/base/b/c;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 454
    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;IILcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lcom/xueqiu/android/common/model/PagedList",
            "<",
            "Lcom/xueqiu/android/cube/model/HistoryValue;",
            ">;>;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lcom/xueqiu/android/common/model/PagedList",
            "<",
            "Lcom/xueqiu/android/cube/model/HistoryValue;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 341
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/apache/http/message/BasicNameValuePair;

    .line 342
    const/4 v1, 0x0

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "cube_symbol"

    invoke-direct {v2, v3, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 343
    const/4 v1, 0x1

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "page"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 344
    const/4 v1, 0x2

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "count"

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 345
    const-string v1, "/tc/snowx/cubes/nav_daily/page"

    .line 346
    invoke-static {v1, p2}, Lcom/xueqiu/android/base/b/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/xueqiu/android/common/model/parser/GParser;

    new-instance v3, Lcom/xueqiu/android/base/b/c$22;

    invoke-direct {v3, p0}, Lcom/xueqiu/android/base/b/c$22;-><init>(Lcom/xueqiu/android/base/b/c;)V

    .line 348
    invoke-virtual {v3}, Lcom/xueqiu/android/base/b/c$22;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/xueqiu/android/common/model/parser/GParser;-><init>(Ljava/lang/reflect/Type;)V

    .line 345
    invoke-static {v1, v0, p5, v2}, Lcom/xueqiu/android/base/b/x;->a(Ljava/lang/String;[Lorg/apache/http/message/BasicNameValuePair;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 349
    iget-object v1, p0, Lcom/xueqiu/android/base/b/c;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 350
    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;ILcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lcom/google/gson/JsonObject;",
            ">;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lcom/google/gson/JsonObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 963
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 964
    const-string v1, "cube_symbol"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 965
    const-string v1, "type"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 966
    if-lez p3, :cond_0

    .line 967
    const-string v1, "level"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 969
    :cond_0
    new-instance v1, Lcom/xueqiu/android/common/model/parser/GParser;

    const-class v2, Lcom/google/gson/JsonObject;

    invoke-direct {v1, v2}, Lcom/xueqiu/android/common/model/parser/GParser;-><init>(Ljava/lang/reflect/Type;)V

    .line 970
    const-string v2, "/cubes/analyst/histo/stat"

    .line 34044
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 970
    invoke-static {v2, v0, p4, v1}, Lcom/xueqiu/android/base/b/x;->a(Ljava/lang/String;Ljava/util/Map;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 972
    iget-object v1, p0, Lcom/xueqiu/android/base/b/c;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 973
    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;JJLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JJ",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/cube/model/NavDailyList;",
            ">;>;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/cube/model/NavDailyList;",
            ">;>;"
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 293
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 294
    const-string v1, "cube_symbol"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    cmp-long v1, p3, v2

    if-lez v1, :cond_0

    cmp-long v1, p5, v2

    if-lez v1, :cond_0

    .line 296
    const-string v1, "since"

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    const-string v1, "until"

    invoke-static {p5, p6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    :cond_0
    const-string v1, "/tc/snowx/cubes/nav_daily/all"

    .line 300
    invoke-static {v1, p2}, Lcom/xueqiu/android/base/b/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/xueqiu/android/common/model/parser/GParser;

    new-instance v3, Lcom/xueqiu/android/base/b/c$9;

    invoke-direct {v3, p0}, Lcom/xueqiu/android/base/b/c$9;-><init>(Lcom/xueqiu/android/base/b/c;)V

    .line 302
    invoke-virtual {v3}, Lcom/xueqiu/android/base/b/c$9;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/xueqiu/android/common/model/parser/GParser;-><init>(Ljava/lang/reflect/Type;)V

    .line 299
    invoke-static {v1, v0, p7, v2}, Lcom/xueqiu/android/base/b/x;->a(Ljava/lang/String;Ljava/util/Map;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 303
    iget-object v1, p0, Lcom/xueqiu/android/base/b/c;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 304
    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lcom/xueqiu/android/cube/model/Rebalancing;",
            ">;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lcom/xueqiu/android/cube/model/Rebalancing;",
            ">;"
        }
    .end annotation

    .prologue
    .line 188
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/http/message/BasicNameValuePair;

    .line 189
    const/4 v1, 0x0

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "cube_symbol"

    invoke-direct {v2, v3, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 191
    const-string v1, "/tc/snowx/cubes/rebalancing/show_origin"

    invoke-static {v1, p2}, Lcom/xueqiu/android/base/b/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/xueqiu/android/common/model/parser/GParser;

    const-string v3, "rebalancing"

    const-class v4, Lcom/xueqiu/android/cube/model/Rebalancing;

    invoke-direct {v2, v3, v4}, Lcom/xueqiu/android/common/model/parser/GParser;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;)V

    invoke-static {v1, v0, p3, v2}, Lcom/xueqiu/android/base/b/x;->a(Ljava/lang/String;[Lorg/apache/http/message/BasicNameValuePair;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 192
    iget-object v1, p0, Lcom/xueqiu/android/base/b/c;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 193
    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/cube/model/Cube;",
            ">;>;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/cube/model/Cube;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 902
    new-instance v0, Lcom/xueqiu/android/common/model/parser/GPagedParser;

    const-string v1, "list"

    new-instance v2, Lcom/xueqiu/android/base/b/c$19;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/base/b/c$19;-><init>(Lcom/xueqiu/android/base/b/c;)V

    .line 903
    invoke-virtual {v2}, Lcom/xueqiu/android/base/b/c$19;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/common/model/parser/GPagedParser;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;)V

    .line 904
    const/4 v1, 0x5

    new-array v1, v1, [Lorg/apache/http/message/BasicNameValuePair;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "list_param"

    invoke-direct {v2, v3, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v6

    const/4 v2, 0x1

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "cube_level"

    .line 906
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "market"

    invoke-direct {v3, v4, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "page"

    .line 908
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/4 v2, 0x4

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "count"

    const-string v5, "20"

    .line 909
    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    .line 912
    const-string v2, "/cubes/rank/arena_cubes"

    .line 31044
    invoke-static {v2, v6}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 912
    invoke-static {v2, v1, p5, v0}, Lcom/xueqiu/android/base/b/x;->a(Ljava/lang/String;[Lorg/apache/http/message/BasicNameValuePair;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 917
    iget-object v1, p0, Lcom/xueqiu/android/base/b/c;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 918
    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lcom/xueqiu/android/common/model/RequestResult;",
            ">;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lcom/xueqiu/android/common/model/RequestResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 228
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/apache/http/message/BasicNameValuePair;

    .line 229
    const/4 v1, 0x0

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "cube_symbol"

    invoke-direct {v2, v3, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 230
    const/4 v1, 0x1

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "name"

    invoke-direct {v2, v3, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 231
    const/4 v1, 0x2

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "description"

    invoke-direct {v2, v3, p4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 233
    const-string v1, "/tc/snowx/cubes/modify"

    invoke-static {v1, p2}, Lcom/xueqiu/android/base/b/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/xueqiu/android/common/model/parser/GParser;

    const-class v3, Lcom/xueqiu/android/common/model/RequestResult;

    invoke-direct {v2, v3}, Lcom/xueqiu/android/common/model/parser/GParser;-><init>(Ljava/lang/reflect/Type;)V

    invoke-static {v1, v0, p5, v2}, Lcom/xueqiu/android/base/b/x;->b(Ljava/lang/String;[Lorg/apache/http/message/BasicNameValuePair;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 234
    iget-object v1, p0, Lcom/xueqiu/android/base/b/c;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 235
    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;DLjava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/cube/model/Holding;",
            ">;D",
            "Ljava/lang/String;",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lcom/xueqiu/android/cube/model/Cube;",
            ">;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lcom/xueqiu/android/cube/model/Cube;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 164
    const/4 v0, 0x6

    new-array v0, v0, [Lorg/apache/http/message/BasicNameValuePair;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "name"

    invoke-direct {v1, v2, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v5

    const/4 v1, 0x1

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "description"

    invoke-direct {v2, v3, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "market"

    invoke-direct {v2, v3, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "cash"

    .line 168
    invoke-static {p5, p6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "holdings"

    const/4 v4, 0x0

    .line 169
    invoke-static {p4, v4}, Lcom/xueqiu/android/base/b/c;->a(Ljava/util/List;Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "session_token"

    invoke-direct {v2, v3, p7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 173
    const-string v1, "/cubes/create"

    .line 1044
    invoke-static {v1, v5}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 173
    new-instance v2, Lcom/xueqiu/android/common/model/parser/GParser;

    const-class v3, Lcom/xueqiu/android/cube/model/Cube;

    invoke-direct {v2, v3}, Lcom/xueqiu/android/common/model/parser/GParser;-><init>(Ljava/lang/reflect/Type;)V

    invoke-static {v1, v0, p8, v2}, Lcom/xueqiu/android/base/b/x;->b(Ljava/lang/String;[Lorg/apache/http/message/BasicNameValuePair;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 174
    iget-object v1, p0, Lcom/xueqiu/android/base/b/c;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 175
    return-object v0
.end method

.method public final a(Ljava/util/List;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/xueqiu/android/stock/model/StockQuote;",
            ">;>;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/xueqiu/android/stock/model/StockQuote;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 736
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 737
    const-string v1, "code"

    const-string v2, ","

    invoke-static {p1, v2}, Lcom/xueqiu/android/base/util/au;->a(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 741
    const-string v1, "/cubes/quote"

    .line 24044
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 742
    new-instance v2, Lcom/xueqiu/android/common/model/parser/GParser;

    new-instance v3, Lcom/xueqiu/android/base/b/c$13;

    invoke-direct {v3, p0}, Lcom/xueqiu/android/base/b/c$13;-><init>(Lcom/xueqiu/android/base/b/c;)V

    .line 743
    invoke-virtual {v3}, Lcom/xueqiu/android/base/b/c$13;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/xueqiu/android/common/model/parser/GParser;-><init>(Ljava/lang/reflect/Type;)V

    .line 741
    invoke-static {v1, v0, p2, v2}, Lcom/xueqiu/android/base/b/x;->a(Ljava/lang/String;Ljava/util/Map;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 744
    iget-object v1, p0, Lcom/xueqiu/android/base/b/c;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 745
    return-object v0
.end method

.method public final b(JILcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/cube/model/Cube;",
            ">;>;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/cube/model/Cube;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 686
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/apache/http/message/BasicNameValuePair;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "type"

    const-string v3, "2"

    .line 687
    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v5

    const/4 v1, 0x1

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "user_id"

    .line 688
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "page"

    .line 689
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "count"

    const-string v4, "20"

    .line 690
    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 692
    new-instance v1, Lcom/xueqiu/android/common/model/parser/GPagedParser;

    const-string v2, "list"

    new-instance v3, Lcom/xueqiu/android/base/b/c$12;

    invoke-direct {v3, p0}, Lcom/xueqiu/android/base/b/c$12;-><init>(Lcom/xueqiu/android/base/b/c;)V

    .line 693
    invoke-virtual {v3}, Lcom/xueqiu/android/base/b/c$12;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/xueqiu/android/common/model/parser/GPagedParser;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;)V

    .line 694
    const-string v2, "/cubes/onshelf/list"

    .line 21044
    invoke-static {v2, v5}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 694
    invoke-static {v2, v0, p4, v1}, Lcom/xueqiu/android/base/b/x;->a(Ljava/lang/String;[Lorg/apache/http/message/BasicNameValuePair;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 699
    iget-object v1, p0, Lcom/xueqiu/android/base/b/c;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 700
    return-object v0
.end method

.method public final b(JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lcom/xueqiu/android/cube/model/EditorialCube;",
            ">;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lcom/xueqiu/android/cube/model/EditorialCube;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 458
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/http/message/BasicNameValuePair;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "editorial_id"

    .line 459
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v4

    .line 461
    const-string v1, "/cubes/discover/editorial/cube/list"

    .line 13044
    invoke-static {v1, v4}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 462
    new-instance v2, Lcom/xueqiu/android/common/model/parser/GParser;

    new-instance v3, Lcom/xueqiu/android/base/b/c$3;

    invoke-direct {v3, p0}, Lcom/xueqiu/android/base/b/c$3;-><init>(Lcom/xueqiu/android/base/b/c;)V

    .line 466
    invoke-virtual {v3}, Lcom/xueqiu/android/base/b/c$3;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/xueqiu/android/common/model/parser/GParser;-><init>(Ljava/lang/reflect/Type;)V

    .line 461
    invoke-static {v1, v0, p3, v2}, Lcom/xueqiu/android/base/b/x;->a(Ljava/lang/String;[Lorg/apache/http/message/BasicNameValuePair;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 467
    iget-object v1, p0, Lcom/xueqiu/android/base/b/c;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 468
    return-object v0
.end method

.method public final b(JLjava/lang/String;IILcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "II",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lcom/xueqiu/android/common/model/PagedList",
            "<",
            "Lcom/xueqiu/android/cube/model/Rebalancing;",
            ">;>;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lcom/xueqiu/android/common/model/PagedList",
            "<",
            "Lcom/xueqiu/android/cube/model/Rebalancing;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v5, 0x0

    .line 398
    const/4 v1, 0x3

    new-array v1, v1, [Lorg/apache/http/message/BasicNameValuePair;

    .line 399
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-lez v2, :cond_2

    .line 400
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "cube_id"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v5

    .line 404
    :goto_0
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "count"

    if-gtz p4, :cond_0

    const/16 p4, 0x1e

    :cond_0
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v0

    .line 405
    const/4 v2, 0x2

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "page"

    if-gtz p5, :cond_1

    move p5, v0

    :cond_1
    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    .line 406
    const-string v0, "/cubes/rebalancing/history"

    .line 11044
    invoke-static {v0, v5}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 407
    new-instance v2, Lcom/xueqiu/android/common/model/parser/GParser;

    new-instance v3, Lcom/xueqiu/android/base/b/c$24;

    invoke-direct {v3, p0}, Lcom/xueqiu/android/base/b/c$24;-><init>(Lcom/xueqiu/android/base/b/c;)V

    .line 409
    invoke-virtual {v3}, Lcom/xueqiu/android/base/b/c$24;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/xueqiu/android/common/model/parser/GParser;-><init>(Ljava/lang/reflect/Type;)V

    .line 406
    invoke-static {v0, v1, p6, v2}, Lcom/xueqiu/android/base/b/x;->a(Ljava/lang/String;[Lorg/apache/http/message/BasicNameValuePair;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 410
    iget-object v1, p0, Lcom/xueqiu/android/base/b/c;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 411
    return-object v0

    .line 402
    :cond_2
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "cube_symbol"

    invoke-direct {v2, v3, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v5

    goto :goto_0
.end method

.method public final b(JLjava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 922
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 923
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-lez v1, :cond_0

    .line 924
    const-string v1, "id"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 926
    :cond_0
    if-eqz p3, :cond_1

    .line 927
    const-string v1, "symbol"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 929
    :cond_1
    const-string v1, "/cubes/close"

    .line 32044
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 930
    new-instance v2, Lcom/xueqiu/android/common/model/parser/ResultParser;

    invoke-direct {v2}, Lcom/xueqiu/android/common/model/parser/ResultParser;-><init>()V

    .line 929
    invoke-static {v1, v0, p4, v2}, Lcom/xueqiu/android/base/b/x;->b(Ljava/lang/String;Ljava/util/Map;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 931
    iget-object v1, p0, Lcom/xueqiu/android/base/b/c;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 932
    return-object v0
.end method

.method public final b(JLjava/lang/String;Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Ljava/lang/Double;",
            ">;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 814
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 815
    const-string v1, "cube_id"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 816
    const-string v1, "market"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 817
    const-string v1, "dimension"

    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 818
    const-string v1, "/cubes/data/rank_percent"

    .line 28044
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 818
    new-instance v2, Lcom/xueqiu/android/base/b/c$17;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/base/b/c$17;-><init>(Lcom/xueqiu/android/base/b/c;)V

    invoke-static {v1, v0, p5, v2}, Lcom/xueqiu/android/base/b/x;->a(Ljava/lang/String;Ljava/util/Map;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 833
    iget-object v1, p0, Lcom/xueqiu/android/base/b/c;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 834
    return-object v0
.end method

.method public final b(Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lcom/xueqiu/android/common/model/RequestResult;",
            ">;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lcom/xueqiu/android/common/model/RequestResult;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 730
    const-string v0, "/cubes/allow_create"

    .line 23044
    invoke-static {v0, v1}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 730
    new-array v1, v1, [Lorg/apache/http/message/BasicNameValuePair;

    new-instance v2, Lcom/xueqiu/android/common/model/parser/GParser;

    const-class v3, Lcom/xueqiu/android/common/model/RequestResult;

    invoke-direct {v2, v3}, Lcom/xueqiu/android/common/model/parser/GParser;-><init>(Ljava/lang/reflect/Type;)V

    invoke-static {v0, v1, p1, v2}, Lcom/xueqiu/android/base/b/x;->a(Ljava/lang/String;[Lorg/apache/http/message/BasicNameValuePair;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 731
    iget-object v1, p0, Lcom/xueqiu/android/base/b/c;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 732
    return-object v0
.end method

.method public final b(Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lcom/xueqiu/android/cube/model/Cube;",
            ">;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lcom/xueqiu/android/cube/model/Cube;",
            ">;"
        }
    .end annotation

    .prologue
    .line 204
    const-string v0, "/tc/snowx/cubes/license"

    invoke-static {v0, p1}, Lcom/xueqiu/android/base/b/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lorg/apache/http/message/BasicNameValuePair;

    new-instance v2, Lcom/xueqiu/android/common/model/parser/InTradeParser;

    const-class v3, Lcom/xueqiu/android/cube/model/Cube;

    invoke-direct {v2, v3}, Lcom/xueqiu/android/common/model/parser/InTradeParser;-><init>(Ljava/lang/reflect/Type;)V

    invoke-static {v0, v1, p2, v2}, Lcom/xueqiu/android/base/b/x;->b(Ljava/lang/String;[Lorg/apache/http/message/BasicNameValuePair;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 206
    iget-object v1, p0, Lcom/xueqiu/android/base/b/c;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 207
    return-object v0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;IILcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lcom/xueqiu/android/common/model/PagedList",
            "<",
            "Lcom/xueqiu/android/cube/model/Rebalancing;",
            ">;>;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lcom/xueqiu/android/common/model/PagedList",
            "<",
            "Lcom/xueqiu/android/cube/model/Rebalancing;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 415
    const/4 v1, 0x3

    new-array v1, v1, [Lorg/apache/http/message/BasicNameValuePair;

    .line 416
    const/4 v2, 0x0

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "cube_symbol"

    invoke-direct {v3, v4, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    .line 417
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "count"

    if-gtz p3, :cond_0

    const/16 p3, 0x1e

    :cond_0
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v0

    .line 418
    const/4 v2, 0x2

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "page"

    if-gtz p4, :cond_1

    move p4, v0

    :cond_1
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    .line 419
    const-string v0, "/tc/snowx/cubes/rebalancing/history"

    .line 420
    invoke-static {v0, p2}, Lcom/xueqiu/android/base/b/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/xueqiu/android/common/model/parser/GParser;

    new-instance v3, Lcom/xueqiu/android/base/b/c$25;

    invoke-direct {v3, p0}, Lcom/xueqiu/android/base/b/c$25;-><init>(Lcom/xueqiu/android/base/b/c;)V

    .line 422
    invoke-virtual {v3}, Lcom/xueqiu/android/base/b/c$25;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/xueqiu/android/common/model/parser/GParser;-><init>(Ljava/lang/reflect/Type;)V

    .line 419
    invoke-static {v0, v1, p5, v2}, Lcom/xueqiu/android/base/b/x;->a(Ljava/lang/String;[Lorg/apache/http/message/BasicNameValuePair;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 423
    iget-object v1, p0, Lcom/xueqiu/android/base/b/c;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 424
    return-object v0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lcom/xueqiu/android/cube/model/Cube;",
            ">;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lcom/xueqiu/android/cube/model/Cube;",
            ">;"
        }
    .end annotation

    .prologue
    .line 267
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/apache/http/message/BasicNameValuePair;

    .line 268
    const/4 v1, 0x0

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "cube_symbol"

    invoke-direct {v2, v3, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 269
    const/4 v1, 0x1

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "mix_rebalancing"

    const-string v4, "true"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 270
    const/4 v1, 0x2

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "ret_last_buy_rb_id"

    const-string v4, "true"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 271
    const-string v1, "/tc/snowx/cubes/show"

    invoke-static {v1, p2}, Lcom/xueqiu/android/base/b/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/xueqiu/android/common/model/parser/GParser;

    const-class v3, Lcom/xueqiu/android/cube/model/Cube;

    invoke-direct {v2, v3}, Lcom/xueqiu/android/common/model/parser/GParser;-><init>(Ljava/lang/reflect/Type;)V

    invoke-static {v1, v0, p3, v2}, Lcom/xueqiu/android/base/b/x;->a(Ljava/lang/String;[Lorg/apache/http/message/BasicNameValuePair;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 272
    iget-object v1, p0, Lcom/xueqiu/android/base/b/c;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 273
    return-object v0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Ljava/lang/Double;",
            ">;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 838
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 839
    const-string v1, "cube_symbol"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 840
    const-string v1, "market"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 841
    const-string v1, "dimension"

    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 842
    const-string v1, "/tc/snowx/cubes/data/rank_percent"

    invoke-static {v1, p2}, Lcom/xueqiu/android/base/b/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/xueqiu/android/base/b/c$18;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/base/b/c$18;-><init>(Lcom/xueqiu/android/base/b/c;)V

    invoke-static {v1, v0, p5, v2}, Lcom/xueqiu/android/base/b/x;->a(Ljava/lang/String;Ljava/util/Map;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 857
    iget-object v1, p0, Lcom/xueqiu/android/base/b/c;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 858
    return-object v0
.end method

.method public final c(JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/cube/model/Cube;",
            ">;>;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/cube/model/Cube;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 596
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/apache/http/message/BasicNameValuePair;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "user_id"

    .line 597
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v5

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "page"

    const-string v3, "1"

    .line 598
    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v6

    const/4 v1, 0x2

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "count"

    const-string v4, "50"

    .line 599
    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 601
    new-instance v1, Lcom/xueqiu/android/common/model/parser/GPagedParser;

    const-string v2, "list"

    new-instance v3, Lcom/xueqiu/android/base/b/c$7;

    invoke-direct {v3, p0}, Lcom/xueqiu/android/base/b/c$7;-><init>(Lcom/xueqiu/android/base/b/c;)V

    .line 602
    invoke-virtual {v3}, Lcom/xueqiu/android/base/b/c$7;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/xueqiu/android/common/model/parser/GPagedParser;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;)V

    .line 603
    const-string v2, "/cubes/list"

    .line 17044
    invoke-static {v2, v5}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 603
    invoke-static {v2, v0, p3, v1}, Lcom/xueqiu/android/base/b/x;->a(Ljava/lang/String;[Lorg/apache/http/message/BasicNameValuePair;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 604
    new-instance v1, Lcom/xueqiu/android/base/b/r;

    invoke-direct {v1}, Lcom/xueqiu/android/base/b/r;-><init>()V

    .line 18017
    iput-boolean v6, v1, Lcom/xueqiu/android/base/b/r;->a:Z

    .line 606
    sget-object v2, Lcom/android/volley/o;->c:Lcom/android/volley/o;

    .line 18033
    iput-object v2, v1, Lcom/xueqiu/android/base/b/r;->c:Lcom/android/volley/o;

    .line 607
    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/b/x;->a(Lcom/xueqiu/android/base/b/r;)V

    .line 608
    iget-object v1, p0, Lcom/xueqiu/android/base/b/c;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 609
    return-object v0
.end method

.method public final c(Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/cube/model/NavDailyList;",
            ">;>;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/cube/model/NavDailyList;",
            ">;>;"
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    .line 309
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/http/message/BasicNameValuePair;

    .line 310
    cmp-long v1, v2, v2

    if-lez v1, :cond_0

    .line 311
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "cube_id"

    const-string v3, "0"

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v4

    .line 315
    :goto_0
    const-string v1, "/cubes/nav_daily/all"

    .line 7044
    invoke-static {v1, v4}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 316
    new-instance v2, Lcom/xueqiu/android/common/model/parser/GParser;

    new-instance v3, Lcom/xueqiu/android/base/b/c$20;

    invoke-direct {v3, p0}, Lcom/xueqiu/android/base/b/c$20;-><init>(Lcom/xueqiu/android/base/b/c;)V

    .line 318
    invoke-virtual {v3}, Lcom/xueqiu/android/base/b/c$20;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/xueqiu/android/common/model/parser/GParser;-><init>(Ljava/lang/reflect/Type;)V

    .line 315
    invoke-static {v1, v0, p2, v2}, Lcom/xueqiu/android/base/b/x;->a(Ljava/lang/String;[Lorg/apache/http/message/BasicNameValuePair;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 319
    iget-object v1, p0, Lcom/xueqiu/android/base/b/c;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 320
    return-object v0

    .line 313
    :cond_0
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "cube_symbol"

    invoke-direct {v1, v2, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v4

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 936
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 937
    const-string v1, "cube_symbol"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 938
    const-string v1, "/tc/snowx/cubes/close"

    .line 939
    invoke-static {v1, p2}, Lcom/xueqiu/android/base/b/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/xueqiu/android/common/model/parser/ResultParser;

    invoke-direct {v2}, Lcom/xueqiu/android/common/model/parser/ResultParser;-><init>()V

    .line 938
    invoke-static {v1, v0, p3, v2}, Lcom/xueqiu/android/base/b/x;->b(Ljava/lang/String;Ljava/util/Map;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 940
    iget-object v1, p0, Lcom/xueqiu/android/base/b/c;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 941
    return-object v0
.end method

.method public final d(Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/cube/model/NavMonthlyList;",
            ">;>;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/cube/model/NavMonthlyList;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 371
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 372
    const-string v1, "cube_symbol"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    const-string v1, "/cubes/analyst/histo/benefit"

    .line 9044
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 374
    new-instance v2, Lcom/xueqiu/android/common/model/parser/GParser;

    new-instance v3, Lcom/xueqiu/android/base/b/c$23;

    invoke-direct {v3, p0}, Lcom/xueqiu/android/base/b/c$23;-><init>(Lcom/xueqiu/android/base/b/c;)V

    .line 376
    invoke-virtual {v3}, Lcom/xueqiu/android/base/b/c$23;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/xueqiu/android/common/model/parser/GParser;-><init>(Ljava/lang/reflect/Type;)V

    .line 373
    invoke-static {v1, v0, p2, v2}, Lcom/xueqiu/android/base/b/x;->a(Ljava/lang/String;Ljava/util/Map;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 377
    iget-object v1, p0, Lcom/xueqiu/android/base/b/c;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 378
    return-object v0
.end method

.method public final e(Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/cube/model/Topic;",
            ">;>;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/cube/model/Topic;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 516
    const/4 v0, 0x5

    new-array v0, v0, [Lorg/apache/http/message/BasicNameValuePair;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "industry_name"

    .line 517
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v5

    const/4 v1, 0x1

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "count"

    const-string v4, "50"

    .line 518
    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "page"

    const-string v4, "1"

    .line 519
    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "order"

    const-string v4, "1"

    .line 520
    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "has_header"

    const-string v4, "1"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 523
    const-string v1, "/cubes/discover/topic/list"

    .line 15044
    invoke-static {v1, v5}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 524
    new-instance v2, Lcom/xueqiu/android/common/model/parser/GParser;

    new-instance v3, Lcom/xueqiu/android/base/b/c$5;

    invoke-direct {v3, p0}, Lcom/xueqiu/android/base/b/c$5;-><init>(Lcom/xueqiu/android/base/b/c;)V

    .line 528
    invoke-virtual {v3}, Lcom/xueqiu/android/base/b/c$5;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/xueqiu/android/common/model/parser/GParser;-><init>(Ljava/lang/reflect/Type;)V

    .line 523
    invoke-static {v1, v0, p2, v2}, Lcom/xueqiu/android/base/b/x;->a(Ljava/lang/String;[Lorg/apache/http/message/BasicNameValuePair;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 529
    iget-object v1, p0, Lcom/xueqiu/android/base/b/c;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 530
    return-object v0
.end method

.method public final f(Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lcom/xueqiu/android/common/model/RequestResult;",
            ">;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lcom/xueqiu/android/common/model/RequestResult;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 721
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/http/message/BasicNameValuePair;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "name"

    invoke-direct {v1, v2, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v3

    .line 724
    const-string v1, "/cubes/valid_name"

    .line 22044
    invoke-static {v1, v3}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 724
    new-instance v2, Lcom/xueqiu/android/common/model/parser/GParser;

    const-class v3, Lcom/xueqiu/android/common/model/RequestResult;

    invoke-direct {v2, v3}, Lcom/xueqiu/android/common/model/parser/GParser;-><init>(Ljava/lang/reflect/Type;)V

    invoke-static {v1, v0, p2, v2}, Lcom/xueqiu/android/base/b/x;->a(Ljava/lang/String;[Lorg/apache/http/message/BasicNameValuePair;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 725
    iget-object v1, p0, Lcom/xueqiu/android/base/b/c;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 726
    return-object v0
.end method

.method public final g(Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/cube/model/Cube;",
            ">;>;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/cube/model/Cube;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 770
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/apache/http/message/BasicNameValuePair;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "q"

    invoke-direct {v1, v2, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v5

    const/4 v1, 0x1

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "count"

    const-string v4, "10"

    .line 772
    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 774
    new-instance v1, Lcom/xueqiu/android/common/model/parser/GPagedParser;

    const-string v2, "list"

    new-instance v3, Lcom/xueqiu/android/base/b/c$15;

    invoke-direct {v3, p0}, Lcom/xueqiu/android/base/b/c$15;-><init>(Lcom/xueqiu/android/base/b/c;)V

    .line 775
    invoke-virtual {v3}, Lcom/xueqiu/android/base/b/c$15;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/xueqiu/android/common/model/parser/GPagedParser;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;)V

    .line 777
    const-string v2, "/cube/search"

    .line 26044
    invoke-static {v2, v5}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 777
    invoke-static {v2, v0, p2, v1}, Lcom/xueqiu/android/base/b/x;->a(Ljava/lang/String;[Lorg/apache/http/message/BasicNameValuePair;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 778
    iget-object v1, p0, Lcom/xueqiu/android/base/b/c;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 779
    return-object v0
.end method

.method public final h(Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lcom/google/gson/JsonObject;",
            ">;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lcom/google/gson/JsonObject;",
            ">;"
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    .line 862
    new-instance v0, Lcom/xueqiu/android/common/model/parser/GParser;

    const-class v1, Lcom/google/gson/JsonObject;

    invoke-direct {v0, v1}, Lcom/xueqiu/android/common/model/parser/GParser;-><init>(Ljava/lang/reflect/Type;)V

    .line 864
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 865
    if-eqz p1, :cond_0

    .line 866
    const-string v2, "symbol"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 869
    :cond_0
    cmp-long v2, v4, v4

    if-lez v2, :cond_1

    .line 870
    const-string v2, "cube_id"

    const-string v3, "0"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 873
    :cond_1
    const-string v2, "/cubes/rank/summary"

    .line 29044
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 873
    invoke-static {v2, v1, p2, v0}, Lcom/xueqiu/android/base/b/x;->a(Ljava/lang/String;Ljava/util/Map;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 878
    iget-object v1, p0, Lcom/xueqiu/android/base/b/c;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 879
    return-object v0
.end method

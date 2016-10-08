.class public final Lcom/xueqiu/android/base/b/aj;
.super Lcom/xueqiu/android/base/b/a;
.source "StatusClient.java"


# direct methods
.method public constructor <init>(Lcom/xueqiu/android/base/b/ae;)V
    .locals 0

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/xueqiu/android/base/b/a;-><init>()V

    .line 123
    iput-object p1, p0, Lcom/xueqiu/android/base/b/aj;->f:Lcom/xueqiu/android/base/b/ae;

    .line 124
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;JJJLcom/xueqiu/android/base/b/p;)Lcom/android/volley/n;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJJ",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/Status;",
            ">;>;)",
            "Lcom/android/volley/n",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/Status;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 130
    const/4 v2, 0x7

    new-array v3, v2, [Lorg/apache/http/message/BasicNameValuePair;

    const/4 v4, 0x0

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "since_id"

    const-wide/16 v8, 0x0

    cmp-long v2, p2, v8

    if-nez v2, :cond_1

    const/4 v2, 0x0

    .line 132
    :goto_0
    invoke-direct {v5, v6, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "max_id"

    const-wide/16 v8, 0x0

    cmp-long v2, p4, v8

    if-nez v2, :cond_2

    const/4 v2, 0x0

    .line 134
    :goto_1
    invoke-direct {v5, v6, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v2, 0x2

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "source"

    .line 136
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-direct {v4, v5, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v3, v2

    const/4 v2, 0x3

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "count"

    const-string v6, "20"

    .line 137
    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v3, v2

    const/4 v4, 0x4

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "usergroup_id"

    const-wide/16 v8, 0x0

    cmp-long v2, p6, v8

    if-nez v2, :cond_3

    const/4 v2, 0x0

    .line 139
    :goto_2
    invoke-direct {v5, v6, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v2, 0x5

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "page"

    const/4 v6, 0x0

    .line 141
    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v3, v2

    const/4 v4, 0x6

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "filter_retweet_text"

    .line 142
    invoke-static {}, Lcom/xueqiu/android/base/util/i;->d()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    :goto_3
    invoke-direct {v5, v6, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    .line 144
    const-string v2, "/statuses/home_timeline"

    .line 1048
    const/4 v4, 0x1

    invoke-static {v2, v4}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 145
    new-instance v4, Lcom/xueqiu/android/base/b/aj$1;

    invoke-direct {v4, p0}, Lcom/xueqiu/android/base/b/aj$1;-><init>(Lcom/xueqiu/android/base/b/aj;)V

    move-object/from16 v0, p8

    invoke-static {v2, v3, v0, v4}, Lcom/xueqiu/android/base/b/x;->a(Ljava/lang/String;[Lorg/apache/http/message/BasicNameValuePair;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v2

    .line 172
    iget-object v3, p0, Lcom/xueqiu/android/base/b/aj;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v3, v2}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 173
    return-object v2

    .line 132
    :cond_1
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 134
    :cond_2
    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 139
    :cond_3
    invoke-static/range {p6 .. p7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 142
    :cond_4
    const-string v2, "1"

    goto :goto_3
.end method

.method public final a(IILjava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lcom/xueqiu/android/common/model/PagedList",
            "<",
            "Lcom/xueqiu/android/community/model/TopicInfo;",
            ">;>;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lcom/xueqiu/android/common/model/PagedList",
            "<",
            "Lcom/xueqiu/android/community/model/TopicInfo;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 586
    const/4 v0, 0x5

    new-array v1, v0, [Lorg/apache/http/message/BasicNameValuePair;

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "page"

    .line 587
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v1, v5

    const/4 v0, 0x1

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "size"

    .line 588
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v0

    const/4 v0, 0x2

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "type"

    const-string v4, "0"

    .line 589
    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v0

    const/4 v0, 0x3

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "tag"

    invoke-direct {v2, v3, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v0

    const/4 v2, 0x4

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "filter_retweet_text"

    .line 591
    invoke-static {}, Lcom/xueqiu/android/base/util/i;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {v3, v4, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    .line 593
    new-instance v0, Lcom/xueqiu/android/common/model/parser/GParser;

    const-string v2, "list"

    new-instance v3, Lcom/xueqiu/android/base/b/aj$4;

    invoke-direct {v3, p0}, Lcom/xueqiu/android/base/b/aj$4;-><init>(Lcom/xueqiu/android/base/b/aj;)V

    .line 594
    invoke-virtual {v3}, Lcom/xueqiu/android/base/b/aj$4;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/xueqiu/android/common/model/parser/GParser;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;)V

    .line 596
    const-string v2, "/statuses/special/v2/list"

    .line 14044
    invoke-static {v2, v5}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 596
    invoke-static {v2, v1, p4, v0}, Lcom/xueqiu/android/base/b/x;->a(Ljava/lang/String;[Lorg/apache/http/message/BasicNameValuePair;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 597
    iget-object v1, p0, Lcom/xueqiu/android/base/b/aj;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 598
    return-object v0

    .line 591
    :cond_0
    const-string v0, "1"

    goto :goto_0
.end method

.method public final a(IJLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lcom/xueqiu/android/common/model/parser/PagedIdList",
            "<",
            "Lcom/xueqiu/android/community/model/Status;",
            ">;>;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lcom/xueqiu/android/common/model/parser/PagedIdList",
            "<",
            "Lcom/xueqiu/android/community/model/Status;",
            ">;>;"
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    .line 935
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 936
    const-string v1, "type"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 937
    cmp-long v1, v4, v4

    if-lez v1, :cond_0

    .line 938
    const-string v1, "since_id"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 940
    :cond_0
    cmp-long v1, p2, v4

    if-lez v1, :cond_1

    .line 941
    const-string v1, "max_id"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 943
    :cond_1
    const-string v1, "size"

    const-string v2, "20"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 944
    const-string v1, "/statuses/paid_mention/list"

    .line 31044
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 945
    new-instance v2, Lcom/xueqiu/android/common/model/parser/GParser;

    new-instance v3, Lcom/xueqiu/android/base/b/aj$13;

    invoke-direct {v3, p0}, Lcom/xueqiu/android/base/b/aj$13;-><init>(Lcom/xueqiu/android/base/b/aj;)V

    .line 947
    invoke-virtual {v3}, Lcom/xueqiu/android/base/b/aj$13;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/xueqiu/android/common/model/parser/GParser;-><init>(Ljava/lang/reflect/Type;)V

    .line 945
    invoke-static {v1, v0, p4, v2}, Lcom/xueqiu/android/base/b/x;->a(Ljava/lang/String;Ljava/util/Map;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 948
    iget-object v1, p0, Lcom/xueqiu/android/base/b/aj;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 949
    return-object v0
.end method

.method public final a(ILjava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
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
    const/4 v5, 0x0

    .line 554
    const/4 v0, 0x4

    new-array v1, v0, [Lorg/apache/http/message/BasicNameValuePair;

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "page"

    .line 555
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v1, v5

    const/4 v0, 0x1

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "size"

    const-string v4, "20"

    .line 556
    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v0

    const/4 v0, 0x2

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "topicType"

    invoke-direct {v2, v3, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v0

    const/4 v2, 0x3

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "filter_retweet_text"

    .line 558
    invoke-static {}, Lcom/xueqiu/android/base/util/i;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {v3, v4, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    .line 559
    const-string v0, "/statuses/topic"

    .line 12044
    invoke-static {v0, v5}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 559
    new-instance v2, Lcom/xueqiu/android/common/model/parser/GParser;

    new-instance v3, Lcom/xueqiu/android/base/b/aj$2;

    invoke-direct {v3, p0}, Lcom/xueqiu/android/base/b/aj$2;-><init>(Lcom/xueqiu/android/base/b/aj;)V

    .line 561
    invoke-virtual {v3}, Lcom/xueqiu/android/base/b/aj$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/xueqiu/android/common/model/parser/GParser;-><init>(Ljava/lang/reflect/Type;)V

    .line 559
    invoke-static {v0, v1, p3, v2}, Lcom/xueqiu/android/base/b/x;->a(Ljava/lang/String;[Lorg/apache/http/message/BasicNameValuePair;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 562
    iget-object v1, p0, Lcom/xueqiu/android/base/b/aj;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 563
    return-object v0

    .line 558
    :cond_0
    const-string v0, "1"

    goto :goto_0
.end method

.method public final a(JIILcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JII",
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
    const/4 v5, 0x0

    .line 1000
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/apache/http/message/BasicNameValuePair;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "user_id"

    .line 1001
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v5

    const/4 v1, 0x1

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "page"

    .line 1002
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "size"

    .line 1003
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 1005
    const-string v1, "/statuses/user_timeline/hots"

    .line 35044
    invoke-static {v1, v5}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 1005
    new-instance v2, Lcom/xueqiu/android/common/model/parser/GParser;

    const-string v3, "items"

    new-instance v4, Lcom/xueqiu/android/base/b/aj$17;

    invoke-direct {v4, p0}, Lcom/xueqiu/android/base/b/aj$17;-><init>(Lcom/xueqiu/android/base/b/aj;)V

    .line 1007
    invoke-virtual {v4}, Lcom/xueqiu/android/base/b/aj$17;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/xueqiu/android/common/model/parser/GParser;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;)V

    .line 1005
    invoke-static {v1, v0, p5, v2}, Lcom/xueqiu/android/base/b/x;->a(Ljava/lang/String;[Lorg/apache/http/message/BasicNameValuePair;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 1008
    iget-object v1, p0, Lcom/xueqiu/android/base/b/aj;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 1009
    return-object v0
.end method

.method public final a(JILcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lcom/xueqiu/android/common/model/PagedList",
            "<",
            "Lcom/xueqiu/android/community/model/Status;",
            ">;>;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lcom/xueqiu/android/common/model/PagedList",
            "<",
            "Lcom/xueqiu/android/community/model/Status;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 604
    const/4 v0, 0x4

    new-array v1, v0, [Lorg/apache/http/message/BasicNameValuePair;

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "page"

    .line 605
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v1, v5

    const/4 v0, 0x1

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "size"

    const-string v4, "10"

    .line 606
    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v0

    const/4 v0, 0x2

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "id"

    .line 607
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v0

    const/4 v2, 0x3

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "filter_retweet_text"

    .line 608
    invoke-static {}, Lcom/xueqiu/android/base/util/i;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {v3, v4, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    .line 610
    new-instance v0, Lcom/xueqiu/android/common/model/parser/GParser;

    const-string v2, "statuses"

    new-instance v3, Lcom/xueqiu/android/base/b/aj$5;

    invoke-direct {v3, p0}, Lcom/xueqiu/android/base/b/aj$5;-><init>(Lcom/xueqiu/android/base/b/aj;)V

    .line 611
    invoke-virtual {v3}, Lcom/xueqiu/android/base/b/aj$5;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/xueqiu/android/common/model/parser/GParser;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;)V

    .line 613
    const-string v2, "/statuses/special/v2/show"

    .line 15044
    invoke-static {v2, v5}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 613
    invoke-static {v2, v1, p4, v0}, Lcom/xueqiu/android/base/b/x;->a(Ljava/lang/String;[Lorg/apache/http/message/BasicNameValuePair;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 614
    iget-object v1, p0, Lcom/xueqiu/android/base/b/aj;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 615
    return-object v0

    .line 608
    :cond_0
    const-string v0, "1"

    goto :goto_0
.end method

.method public final a(JJJLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJ",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/Question;",
            ">;>;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/Question;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 985
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/apache/http/message/BasicNameValuePair;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "user_id"

    .line 986
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v5

    const/4 v1, 0x1

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "since_id"

    .line 987
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "max_id"

    .line 988
    invoke-static {p5, p6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "size"

    const-string v4, "10"

    .line 989
    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 991
    const-string v1, "/statuses/user_timeline/answers"

    .line 34044
    invoke-static {v1, v5}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 991
    new-instance v2, Lcom/xueqiu/android/common/model/parser/GParser;

    const-string v3, "items"

    new-instance v4, Lcom/xueqiu/android/base/b/aj$16;

    invoke-direct {v4, p0}, Lcom/xueqiu/android/base/b/aj$16;-><init>(Lcom/xueqiu/android/base/b/aj;)V

    .line 993
    invoke-virtual {v4}, Lcom/xueqiu/android/base/b/aj$16;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/xueqiu/android/common/model/parser/GParser;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;)V

    .line 991
    invoke-static {v1, v0, p7, v2}, Lcom/xueqiu/android/base/b/x;->a(Ljava/lang/String;[Lorg/apache/http/message/BasicNameValuePair;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 994
    iget-object v1, p0, Lcom/xueqiu/android/base/b/aj;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 995
    return-object v0
.end method

.method public final a(JJLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
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
    const-wide/16 v10, 0x0

    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 269
    const/4 v2, 0x4

    new-array v4, v2, [Lorg/apache/http/message/BasicNameValuePair;

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "since_id"

    cmp-long v2, p1, v10

    if-nez v2, :cond_0

    move-object v2, v3

    .line 271
    :goto_0
    invoke-direct {v5, v6, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v4, v8

    const/4 v5, 0x1

    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "max_id"

    cmp-long v2, p3, v10

    if-nez v2, :cond_1

    move-object v2, v3

    .line 273
    :goto_1
    invoke-direct {v6, v7, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v4, v5

    const/4 v2, 0x2

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "count"

    const-string v7, "20"

    .line 274
    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v4, v2

    const/4 v2, 0x3

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "filter_retweet_text"

    .line 275
    invoke-static {}, Lcom/xueqiu/android/base/util/i;->d()Z

    move-result v7

    if-eqz v7, :cond_2

    :goto_2
    invoke-direct {v5, v6, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v4, v2

    .line 277
    const-string v2, "/statuses/mentions"

    .line 3044
    invoke-static {v2, v8}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 278
    new-instance v3, Lcom/xueqiu/android/base/b/aj$19;

    invoke-direct {v3, p0}, Lcom/xueqiu/android/base/b/aj$19;-><init>(Lcom/xueqiu/android/base/b/aj;)V

    move-object/from16 v0, p5

    invoke-static {v2, v4, v0, v3}, Lcom/xueqiu/android/base/b/x;->a(Ljava/lang/String;[Lorg/apache/http/message/BasicNameValuePair;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v2

    .line 296
    iget-object v3, p0, Lcom/xueqiu/android/base/b/aj;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v3, v2}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 297
    return-object v2

    .line 271
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 273
    :cond_1
    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 275
    :cond_2
    const-string v3, "1"

    goto :goto_2
.end method

.method public final a(JJLjava/lang/String;ZLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/lang/String;",
            "Z",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lcom/xueqiu/android/community/model/Comment;",
            ">;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lcom/xueqiu/android/community/model/Comment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 406
    const/4 v2, 0x6

    new-array v3, v2, [Lorg/apache/http/message/BasicNameValuePair;

    const/4 v2, 0x0

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "id"

    .line 407
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v3, v2

    const/4 v4, 0x1

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "cid"

    const-wide/16 v8, 0x0

    cmp-long v2, p3, v8

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 409
    :goto_0
    invoke-direct {v5, v6, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v2, 0x2

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "comment"

    move-object/from16 v0, p5

    invoke-direct {v4, v5, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v3, v2

    const/4 v4, 0x3

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "forward"

    if-eqz p6, :cond_1

    const/4 v2, 0x1

    .line 412
    :goto_1
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v6, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v2, 0x4

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "split"

    const-string v6, "true"

    .line 413
    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v3, v2

    const/4 v4, 0x5

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "device"

    if-eqz p6, :cond_2

    const-string v2, "%s_%s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    sget-object v9, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    sget-object v9, Landroid/os/Build;->BRAND:Ljava/lang/String;

    aput-object v9, v7, v8

    .line 414
    invoke-static {v2, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-direct {v5, v6, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    .line 415
    const-string v2, "/statuses/reply"

    .line 9044
    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 415
    new-instance v4, Lcom/xueqiu/android/common/model/parser/GParser;

    const-class v5, Lcom/xueqiu/android/community/model/Comment;

    invoke-direct {v4, v5}, Lcom/xueqiu/android/common/model/parser/GParser;-><init>(Ljava/lang/reflect/Type;)V

    move-object/from16 v0, p7

    invoke-static {v2, v3, v0, v4}, Lcom/xueqiu/android/base/b/x;->b(Ljava/lang/String;[Lorg/apache/http/message/BasicNameValuePair;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v2

    .line 416
    iget-object v3, p0, Lcom/xueqiu/android/base/b/aj;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v3, v2}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 417
    return-object v2

    .line 409
    :cond_0
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 414
    :cond_2
    const/4 v2, 0x0

    goto :goto_2
.end method

.method public final a(JJLjava/lang/String;ZZZZLjava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/lang/String;",
            "ZZZZ",
            "Ljava/lang/String;",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lcom/xueqiu/android/community/model/Comment;",
            ">;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lcom/xueqiu/android/community/model/Comment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 435
    const/16 v2, 0x9

    new-array v3, v2, [Lorg/apache/http/message/BasicNameValuePair;

    const/4 v2, 0x0

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "id"

    .line 436
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v3, v2

    const/4 v4, 0x1

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "cid"

    const-wide/16 v8, 0x0

    cmp-long v2, p3, v8

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 438
    :goto_0
    invoke-direct {v5, v6, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v2, 0x2

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "comment"

    move-object/from16 v0, p5

    invoke-direct {v4, v5, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v3, v2

    const/4 v4, 0x3

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "forward"

    if-eqz p6, :cond_1

    const/4 v2, 0x1

    .line 441
    :goto_1
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v6, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x4

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "split"

    if-eqz p7, :cond_2

    const-string v2, "true"

    .line 442
    :goto_2
    invoke-direct {v5, v6, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x5

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "answer"

    if-eqz p8, :cond_3

    const-string v2, "true"

    .line 443
    :goto_3
    invoke-direct {v5, v6, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x6

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "charge"

    if-eqz p9, :cond_4

    const-string v2, "true"

    .line 444
    :goto_4
    invoke-direct {v5, v6, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v2, 0x7

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "qtype"

    move-object/from16 v0, p10

    invoke-direct {v4, v5, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v3, v2

    const/16 v4, 0x8

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "device"

    if-eqz p6, :cond_5

    const-string v2, "%s_%s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    sget-object v9, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    sget-object v9, Landroid/os/Build;->BRAND:Ljava/lang/String;

    aput-object v9, v7, v8

    .line 446
    invoke-static {v2, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_5
    invoke-direct {v5, v6, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    .line 447
    const-string v2, "/statuses/reply"

    .line 10044
    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 447
    new-instance v4, Lcom/xueqiu/android/common/model/parser/GParser;

    const-class v5, Lcom/xueqiu/android/community/model/Comment;

    invoke-direct {v4, v5}, Lcom/xueqiu/android/common/model/parser/GParser;-><init>(Ljava/lang/reflect/Type;)V

    move-object/from16 v0, p11

    invoke-static {v2, v3, v0, v4}, Lcom/xueqiu/android/base/b/x;->b(Ljava/lang/String;[Lorg/apache/http/message/BasicNameValuePair;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v2

    .line 448
    iget-object v3, p0, Lcom/xueqiu/android/base/b/aj;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v3, v2}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 449
    return-object v2

    .line 438
    :cond_0
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 442
    :cond_2
    const-string v2, "false"

    goto :goto_2

    .line 443
    :cond_3
    const-string v2, "false"

    goto :goto_3

    .line 444
    :cond_4
    const-string v2, "false"

    goto :goto_4

    .line 446
    :cond_5
    const/4 v2, 0x0

    goto :goto_5
.end method

.method public final a(JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lcom/xueqiu/android/community/model/Status;",
            ">;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lcom/xueqiu/android/community/model/Status;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 366
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/apache/http/message/BasicNameValuePair;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "id"

    .line 367
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v4

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "card_addition"

    const-string v3, "1"

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v5

    .line 370
    const-string v1, "/statuses/show"

    .line 7044
    invoke-static {v1, v4}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 370
    new-instance v2, Lcom/xueqiu/android/base/b/aj$20;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/base/b/aj$20;-><init>(Lcom/xueqiu/android/base/b/aj;)V

    invoke-static {v1, v0, p3, v2}, Lcom/xueqiu/android/base/b/x;->a(Ljava/lang/String;[Lorg/apache/http/message/BasicNameValuePair;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 7481
    iput-boolean v5, v0, Lcom/android/volley/n;->g:Z

    .line 390
    iget-object v1, p0, Lcom/xueqiu/android/base/b/aj;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 391
    return-object v0
.end method

.method public final a(JLjava/lang/String;IJJIILcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "IJJII",
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
    .line 234
    const/16 v2, 0x8

    new-array v3, v2, [Lorg/apache/http/message/BasicNameValuePair;

    const/4 v4, 0x0

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "user_id"

    const-wide/16 v8, 0x0

    cmp-long v2, p1, v8

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 236
    :goto_0
    invoke-direct {v5, v6, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v2, 0x1

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "screen_name"

    invoke-direct {v4, v5, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v3, v2

    const/4 v4, 0x2

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "since_id"

    const-wide/16 v8, 0x0

    cmp-long v2, p5, v8

    if-nez v2, :cond_1

    const/4 v2, 0x0

    .line 239
    :goto_1
    invoke-direct {v5, v6, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x3

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "max_id"

    const-wide/16 v8, 0x0

    cmp-long v2, p7, v8

    if-nez v2, :cond_2

    const/4 v2, 0x0

    .line 241
    :goto_2
    invoke-direct {v5, v6, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v2, 0x4

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "count"

    .line 242
    invoke-static/range {p9 .. p9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v3, v2

    const/4 v4, 0x5

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "page"

    if-nez p10, :cond_3

    const/4 v2, 0x0

    .line 244
    :goto_3
    invoke-direct {v5, v6, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v2, 0x6

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "type"

    .line 245
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v3, v2

    const/4 v4, 0x7

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "filter_retweet_text"

    .line 246
    invoke-static {}, Lcom/xueqiu/android/base/util/i;->d()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    :goto_4
    invoke-direct {v5, v6, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    .line 248
    new-instance v2, Lcom/xueqiu/android/common/model/parser/GPagedParser;

    const-string v4, "statuses"

    new-instance v5, Lcom/xueqiu/android/base/b/aj$18;

    invoke-direct {v5, p0}, Lcom/xueqiu/android/base/b/aj$18;-><init>(Lcom/xueqiu/android/base/b/aj;)V

    .line 249
    invoke-virtual {v5}, Lcom/xueqiu/android/base/b/aj$18;->getType()Ljava/lang/reflect/Type;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Lcom/xueqiu/android/common/model/parser/GPagedParser;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;)V

    .line 250
    const-string v4, "/statuses/user_timeline"

    .line 2048
    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    .line 250
    move-object/from16 v0, p11

    invoke-static {v4, v3, v0, v2}, Lcom/xueqiu/android/base/b/x;->a(Ljava/lang/String;[Lorg/apache/http/message/BasicNameValuePair;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v2

    .line 251
    iget-object v3, p0, Lcom/xueqiu/android/base/b/aj;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v3, v2}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 252
    return-object v2

    .line 236
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 239
    :cond_1
    invoke-static/range {p5 .. p6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 241
    :cond_2
    invoke-static/range {p7 .. p8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 244
    :cond_3
    invoke-static/range {p10 .. p10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 246
    :cond_4
    const-string v2, "1"

    goto :goto_4
.end method

.method public final a(JLjava/lang/String;ILcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "I",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lcom/xueqiu/android/community/model/Status;",
            ">;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lcom/xueqiu/android/community/model/Status;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 355
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/apache/http/message/BasicNameValuePair;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "id"

    .line 356
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v7

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "status"

    invoke-direct {v1, v2, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v8

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "forward"

    .line 358
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v5

    const/4 v1, 0x3

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "device"

    const-string v4, "%s_%s"

    new-array v5, v5, [Ljava/lang/Object;

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v6, v5, v7

    sget-object v6, Landroid/os/Build;->BRAND:Ljava/lang/String;

    aput-object v6, v5, v8

    .line 359
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 360
    const-string v1, "/statuses/repost"

    .line 6044
    invoke-static {v1, v7}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 360
    new-instance v2, Lcom/xueqiu/android/common/model/parser/GParser;

    const-class v3, Lcom/xueqiu/android/community/model/Status;

    invoke-direct {v2, v3}, Lcom/xueqiu/android/common/model/parser/GParser;-><init>(Ljava/lang/reflect/Type;)V

    invoke-static {v1, v0, p5, v2}, Lcom/xueqiu/android/base/b/x;->b(Ljava/lang/String;[Lorg/apache/http/message/BasicNameValuePair;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 361
    iget-object v1, p0, Lcom/xueqiu/android/base/b/aj;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 362
    return-object v0
.end method

.method public final a(JLjava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lcom/xueqiu/android/community/model/Status;",
            ">;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lcom/xueqiu/android/community/model/Status;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 315
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/apache/http/message/BasicNameValuePair;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "status_id"

    .line 316
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "status"

    invoke-direct {v1, v2, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v7

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "device"

    const-string v3, "%s_%s"

    new-array v4, v8, [Ljava/lang/Object;

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v5, v4, v6

    sget-object v5, Landroid/os/Build;->BRAND:Ljava/lang/String;

    aput-object v5, v4, v7

    .line 318
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v8

    .line 321
    const-string v1, "/statuses/paid_mention/answer"

    .line 5044
    invoke-static {v1, v6}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 321
    new-instance v2, Lcom/xueqiu/android/common/model/parser/GParser;

    const-class v3, Lcom/xueqiu/android/community/model/Status;

    invoke-direct {v2, v3}, Lcom/xueqiu/android/common/model/parser/GParser;-><init>(Ljava/lang/reflect/Type;)V

    invoke-static {v1, v0, p4, v2}, Lcom/xueqiu/android/base/b/x;->b(Ljava/lang/String;[Lorg/apache/http/message/BasicNameValuePair;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 322
    iget-object v1, p0, Lcom/xueqiu/android/base/b/aj;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 323
    return-object v0
.end method

.method public final a(Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/TopicInfo;",
            ">;>;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/TopicInfo;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 569
    const/4 v0, 0x4

    new-array v1, v0, [Lorg/apache/http/message/BasicNameValuePair;

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "page"

    const-string v3, "1"

    .line 570
    invoke-direct {v0, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v1, v5

    const/4 v0, 0x1

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "count"

    const-string v4, "1"

    .line 571
    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v0

    const/4 v0, 0x2

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "type"

    const-string v4, "1"

    .line 572
    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v0

    const/4 v2, 0x3

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "filter_retweet_text"

    .line 573
    invoke-static {}, Lcom/xueqiu/android/base/util/i;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {v3, v4, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    .line 575
    new-instance v0, Lcom/xueqiu/android/common/model/parser/GPagedParser;

    const-string v2, "featured"

    new-instance v3, Lcom/xueqiu/android/base/b/aj$3;

    invoke-direct {v3, p0}, Lcom/xueqiu/android/base/b/aj$3;-><init>(Lcom/xueqiu/android/base/b/aj;)V

    .line 576
    invoke-virtual {v3}, Lcom/xueqiu/android/base/b/aj$3;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/xueqiu/android/common/model/parser/GPagedParser;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;)V

    .line 578
    const-string v2, "/statuses/special/v2/list"

    .line 13044
    invoke-static {v2, v5}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 578
    invoke-static {v2, v1, p1, v0}, Lcom/xueqiu/android/base/b/x;->a(Ljava/lang/String;[Lorg/apache/http/message/BasicNameValuePair;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 579
    iget-object v1, p0, Lcom/xueqiu/android/base/b/aj;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 580
    return-object v0

    .line 573
    :cond_0
    const-string v0, "1"

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
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
    .line 477
    const/16 v2, 0xb

    new-array v3, v2, [Lorg/apache/http/message/BasicNameValuePair;

    const/4 v2, 0x0

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "q"

    invoke-direct {v4, v5, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v3, v2

    const/4 v2, 0x1

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "page"

    .line 479
    invoke-static/range {p6 .. p6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v3, v2

    const/4 v4, 0x2

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "uid"

    const-wide/16 v8, 0x0

    cmp-long v2, p2, v8

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 480
    :goto_0
    invoke-direct {v5, v6, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v2, 0x3

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "source"

    invoke-direct {v4, v5, p5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v3, v2

    const/4 v2, 0x4

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "count"

    .line 482
    invoke-static/range {p7 .. p7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v3, v2

    const/4 v2, 0x5

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "sort"

    move-object/from16 v0, p8

    invoke-direct {v4, v5, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v3, v2

    const/4 v2, 0x6

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "comment"

    const-string v6, "0"

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v3, v2

    const/4 v2, 0x7

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "hl"

    const-string v6, "0"

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v3, v2

    const/16 v2, 0x8

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "symbol"

    invoke-direct {v4, v5, p4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v3, v2

    const/16 v2, 0x9

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "filter_text"

    const-string v6, "1"

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v3, v2

    const/16 v4, 0xa

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "filter_retweet_text"

    .line 488
    invoke-static {}, Lcom/xueqiu/android/base/util/i;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    :goto_1
    invoke-direct {v5, v6, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    .line 490
    const-string v2, "/statuses/search"

    .line 11044
    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 490
    new-instance v4, Lcom/xueqiu/android/base/b/aj$21;

    invoke-direct {v4, p0}, Lcom/xueqiu/android/base/b/aj$21;-><init>(Lcom/xueqiu/android/base/b/aj;)V

    move-object/from16 v0, p9

    invoke-static {v2, v3, v0, v4}, Lcom/xueqiu/android/base/b/x;->a(Ljava/lang/String;[Lorg/apache/http/message/BasicNameValuePair;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v2

    .line 510
    iget-object v3, p0, Lcom/xueqiu/android/base/b/aj;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v3, v2}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 511
    return-object v2

    .line 480
    :cond_0
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 488
    :cond_1
    const-string v2, "1"

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 4
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
    const/4 v3, 0x0

    .line 874
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/http/message/BasicNameValuePair;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "interviewId"

    invoke-direct {v1, v2, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v3

    .line 876
    const-string v1, "/interview/show"

    .line 26044
    invoke-static {v1, v3}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 877
    new-instance v2, Lcom/xueqiu/android/common/model/parser/GParser;

    const-class v3, Lcom/google/gson/JsonObject;

    invoke-direct {v2, v3}, Lcom/xueqiu/android/common/model/parser/GParser;-><init>(Ljava/lang/reflect/Type;)V

    invoke-static {v1, v0, p2, v2}, Lcom/xueqiu/android/base/b/x;->a(Ljava/lang/String;[Lorg/apache/http/message/BasicNameValuePair;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 879
    iget-object v1, p0, Lcom/xueqiu/android/base/b/aj;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 880
    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;IILcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
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
    const/4 v5, 0x0

    .line 662
    const/4 v0, 0x5

    new-array v1, v0, [Lorg/apache/http/message/BasicNameValuePair;

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "symbol_id"

    invoke-direct {v0, v2, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v1, v5

    const/4 v0, 0x1

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "source"

    invoke-direct {v2, v3, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v0

    const/4 v0, 0x2

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "count"

    .line 665
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v0

    const/4 v0, 0x3

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "page"

    .line 666
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v0

    const/4 v2, 0x4

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "filter_retweet_text"

    .line 667
    invoke-static {}, Lcom/xueqiu/android/base/util/i;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {v3, v4, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    .line 669
    const-string v0, "/statuses/stock_timeline"

    .line 17044
    invoke-static {v0, v5}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 669
    new-instance v2, Lcom/xueqiu/android/base/b/aj$6;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/base/b/aj$6;-><init>(Lcom/xueqiu/android/base/b/aj;)V

    invoke-static {v0, v1, p5, v2}, Lcom/xueqiu/android/base/b/x;->a(Ljava/lang/String;[Lorg/apache/http/message/BasicNameValuePair;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 696
    iget-object v1, p0, Lcom/xueqiu/android/base/b/aj;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 697
    return-object v0

    .line 667
    :cond_0
    const-string v0, "1"

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lcom/xueqiu/android/community/model/Status;",
            ">;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lcom/xueqiu/android/community/model/Status;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 301
    const/4 v0, 0x6

    new-array v0, v0, [Lorg/apache/http/message/BasicNameValuePair;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "title"

    invoke-direct {v1, v2, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v7

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "status"

    invoke-direct {v1, v2, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v8

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "module_id"

    invoke-direct {v1, v2, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v5

    const/4 v1, 0x3

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "device"

    const-string v4, "%s_%s"

    new-array v5, v5, [Ljava/lang/Object;

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v6, v5, v7

    sget-object v6, Landroid/os/Build;->BRAND:Ljava/lang/String;

    aput-object v6, v5, v8

    .line 305
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "card_type"

    invoke-direct {v2, v3, p4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "card_param"

    invoke-direct {v2, v3, p5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 309
    const-string v1, "/statuses/update"

    .line 4044
    invoke-static {v1, v7}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 309
    new-instance v2, Lcom/xueqiu/android/common/model/parser/GParser;

    const-class v3, Lcom/xueqiu/android/community/model/Status;

    invoke-direct {v2, v3}, Lcom/xueqiu/android/common/model/parser/GParser;-><init>(Ljava/lang/reflect/Type;)V

    invoke-static {v1, v0, p6, v2}, Lcom/xueqiu/android/base/b/x;->b(Ljava/lang/String;[Lorg/apache/http/message/BasicNameValuePair;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 310
    iget-object v1, p0, Lcom/xueqiu/android/base/b/aj;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 311
    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/util/List;JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;J",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/community/model/StatusFacetCount;",
            ">;>;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/community/model/StatusFacetCount;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 797
    const/4 v0, 0x3

    new-array v1, v0, [Lorg/apache/http/message/BasicNameValuePair;

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "symbol"

    invoke-direct {v0, v2, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v1, v5

    const/4 v2, 0x1

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "ownerId"

    const-wide/16 v6, 0x0

    cmp-long v0, p3, v6

    if-lez v0, :cond_0

    .line 799
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {v3, v4, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/4 v0, 0x2

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "source"

    const-string v4, ","

    .line 800
    invoke-static {p2, v4}, Lcom/xueqiu/android/base/util/au;->a(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v0

    .line 803
    const-string v0, "/statuses/facet/source_count"

    .line 23044
    invoke-static {v0, v5}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 804
    new-instance v2, Lcom/xueqiu/android/common/model/parser/GParser;

    const-string v3, "facet"

    new-instance v4, Lcom/xueqiu/android/base/b/aj$8;

    invoke-direct {v4, p0}, Lcom/xueqiu/android/base/b/aj$8;-><init>(Lcom/xueqiu/android/base/b/aj;)V

    .line 806
    invoke-virtual {v4}, Lcom/xueqiu/android/base/b/aj$8;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/xueqiu/android/common/model/parser/GParser;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;)V

    .line 803
    invoke-static {v0, v1, p5, v2}, Lcom/xueqiu/android/base/b/x;->a(Ljava/lang/String;[Lorg/apache/http/message/BasicNameValuePair;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 807
    iget-object v1, p0, Lcom/xueqiu/android/base/b/aj;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 808
    return-object v0

    .line 799
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(JJLcom/xueqiu/android/base/b/p;)Lcom/android/volley/n;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/LiveNews;",
            ">;>;)",
            "Lcom/android/volley/n",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/LiveNews;",
            ">;>;"
        }
    .end annotation

    .prologue
    const-wide/16 v10, 0x0

    const/4 v3, 0x0

    const/4 v8, 0x0

    .line 836
    const/4 v2, 0x3

    new-array v4, v2, [Lorg/apache/http/message/BasicNameValuePair;

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "since_id"

    cmp-long v2, p1, v10

    if-nez v2, :cond_0

    move-object v2, v3

    .line 837
    :goto_0
    invoke-direct {v5, v6, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v4, v8

    const/4 v2, 0x1

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "max_id"

    cmp-long v7, p3, v10

    if-nez v7, :cond_1

    .line 838
    :goto_1
    invoke-direct {v5, v6, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v4, v2

    const/4 v2, 0x2

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "size"

    const-string v6, "20"

    .line 839
    invoke-direct {v3, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v4, v2

    .line 841
    const-string v2, "/statuses/livenews/latest"

    .line 24044
    invoke-static {v2, v8}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 842
    new-instance v3, Lcom/xueqiu/android/common/model/parser/GParser;

    new-instance v5, Lcom/xueqiu/android/base/b/aj$9;

    invoke-direct {v5, p0}, Lcom/xueqiu/android/base/b/aj$9;-><init>(Lcom/xueqiu/android/base/b/aj;)V

    .line 844
    invoke-virtual {v5}, Lcom/xueqiu/android/base/b/aj$9;->getType()Ljava/lang/reflect/Type;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/xueqiu/android/common/model/parser/GParser;-><init>(Ljava/lang/reflect/Type;)V

    .line 842
    move-object/from16 v0, p5

    invoke-static {v2, v4, v0, v3}, Lcom/xueqiu/android/base/b/x;->a(Ljava/lang/String;[Lorg/apache/http/message/BasicNameValuePair;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v2

    .line 845
    iget-object v3, p0, Lcom/xueqiu/android/base/b/aj;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v3, v2}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 846
    return-object v2

    .line 837
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 838
    :cond_1
    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method public final b(IJLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lcom/xueqiu/android/common/model/parser/PagedIdList",
            "<",
            "Lcom/xueqiu/android/community/model/Comment;",
            ">;>;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lcom/xueqiu/android/common/model/parser/PagedIdList",
            "<",
            "Lcom/xueqiu/android/community/model/Comment;",
            ">;>;"
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    .line 954
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 955
    const-string v1, "type"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 956
    cmp-long v1, v4, v4

    if-lez v1, :cond_0

    .line 957
    const-string v1, "since_id"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 959
    :cond_0
    cmp-long v1, p2, v4

    if-lez v1, :cond_1

    .line 960
    const-string v1, "max_id"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 962
    :cond_1
    const-string v1, "size"

    const-string v2, "20"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 963
    const-string v1, "/statuses/paid_mention/comment/list"

    .line 32044
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 964
    new-instance v2, Lcom/xueqiu/android/common/model/parser/GParser;

    new-instance v3, Lcom/xueqiu/android/base/b/aj$14;

    invoke-direct {v3, p0}, Lcom/xueqiu/android/base/b/aj$14;-><init>(Lcom/xueqiu/android/base/b/aj;)V

    .line 966
    invoke-virtual {v3}, Lcom/xueqiu/android/base/b/aj$14;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/xueqiu/android/common/model/parser/GParser;-><init>(Ljava/lang/reflect/Type;)V

    .line 964
    invoke-static {v1, v0, p4, v2}, Lcom/xueqiu/android/base/b/x;->a(Ljava/lang/String;Ljava/util/Map;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 967
    iget-object v1, p0, Lcom/xueqiu/android/base/b/aj;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 968
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
    const/4 v5, 0x0

    .line 724
    const/4 v0, 0x4

    new-array v1, v0, [Lorg/apache/http/message/BasicNameValuePair;

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "userId"

    .line 725
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v1, v5

    const/4 v0, 0x1

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "size"

    const-string v4, "20"

    .line 726
    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v0

    const/4 v0, 0x2

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "page"

    .line 727
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v0

    const/4 v2, 0x3

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "filter_retweet_text"

    .line 728
    invoke-static {}, Lcom/xueqiu/android/base/util/i;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {v3, v4, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    .line 730
    new-instance v0, Lcom/xueqiu/android/base/b/aj$7;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/base/b/aj$7;-><init>(Lcom/xueqiu/android/base/b/aj;)V

    .line 758
    const-string v2, "/favorites"

    .line 19044
    invoke-static {v2, v5}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 758
    invoke-static {v2, v1, p4, v0}, Lcom/xueqiu/android/base/b/x;->a(Ljava/lang/String;[Lorg/apache/http/message/BasicNameValuePair;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 759
    iget-object v1, p0, Lcom/xueqiu/android/base/b/aj;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 760
    return-object v0

    .line 728
    :cond_0
    const-string v0, "1"

    goto :goto_0
.end method

.method public final b(JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
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
    const/4 v2, 0x0

    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/statuses/destroy/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8044
    invoke-static {v0, v2}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 400
    new-array v1, v2, [Lorg/apache/http/message/BasicNameValuePair;

    const/4 v2, 0x0

    invoke-static {v0, v1, p3, v2}, Lcom/xueqiu/android/base/b/x;->b(Ljava/lang/String;[Lorg/apache/http/message/BasicNameValuePair;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 401
    iget-object v1, p0, Lcom/xueqiu/android/base/b/aj;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 402
    return-object v0
.end method

.method public final b(Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lcom/xueqiu/android/community/model/UserNotification;",
            ">;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lcom/xueqiu/android/community/model/UserNotification;",
            ">;"
        }
    .end annotation

    .prologue
    .line 773
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 774
    const-wide/16 v2, -0x1

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 775
    const-string v1, "since_id"

    const-string v2, "-1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 777
    :cond_0
    const-string v1, "/comments/receive_last"

    .line 21044
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 778
    new-instance v2, Lcom/xueqiu/android/common/model/parser/GParser;

    const-string v3, "comment_last"

    const-class v4, Lcom/xueqiu/android/community/model/UserNotification;

    invoke-direct {v2, v3, v4}, Lcom/xueqiu/android/common/model/parser/GParser;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;)V

    .line 777
    invoke-static {v1, v0, p1, v2}, Lcom/xueqiu/android/base/b/x;->a(Ljava/lang/String;Ljava/util/Map;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 780
    iget-object v1, p0, Lcom/xueqiu/android/base/b/aj;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 781
    return-object v0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
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
    const/4 v4, 0x0

    .line 1013
    const/4 v0, 0x5

    new-array v0, v0, [Lorg/apache/http/message/BasicNameValuePair;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "title"

    invoke-direct {v1, v2, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v4

    const/4 v1, 0x1

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "summary"

    invoke-direct {v2, v3, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "content"

    invoke-direct {v2, v3, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "nickname"

    invoke-direct {v2, v3, p4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "qrcode"

    invoke-direct {v2, v3, p5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 1021
    const-string v1, "/image/sharing/comment"

    .line 36044
    invoke-static {v1, v4}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 1021
    new-instance v2, Lcom/xueqiu/android/common/model/parser/GParser;

    const-class v3, Lcom/google/gson/JsonObject;

    invoke-direct {v2, v3}, Lcom/xueqiu/android/common/model/parser/GParser;-><init>(Ljava/lang/reflect/Type;)V

    invoke-static {v1, v0, p6, v2}, Lcom/xueqiu/android/base/b/x;->b(Ljava/lang/String;[Lorg/apache/http/message/BasicNameValuePair;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 1022
    new-instance v1, Lcom/xueqiu/android/base/b/y;

    const/16 v2, 0x2710

    invoke-direct {v1, v2}, Lcom/xueqiu/android/base/b/y;-><init>(I)V

    .line 36198
    iput-object v1, v0, Lcom/android/volley/n;->j:Lcom/android/volley/v;

    .line 1023
    iget-object v1, p0, Lcom/xueqiu/android/base/b/aj;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 1024
    return-object v0
.end method

.method public final c(JILcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lcom/xueqiu/android/common/model/PagedList",
            "<",
            "Lcom/xueqiu/android/community/model/RewardCash;",
            ">;>;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lcom/xueqiu/android/common/model/PagedList",
            "<",
            "Lcom/xueqiu/android/community/model/RewardCash;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 884
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 885
    const-string v1, "status_id"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 886
    const-string v1, "size"

    const-string v2, "20"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 887
    const-string v1, "page"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 888
    const-string v1, "/statuses/reward/list"

    .line 27044
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 889
    new-instance v2, Lcom/xueqiu/android/common/model/parser/GParser;

    new-instance v3, Lcom/xueqiu/android/base/b/aj$10;

    invoke-direct {v3, p0}, Lcom/xueqiu/android/base/b/aj$10;-><init>(Lcom/xueqiu/android/base/b/aj;)V

    .line 891
    invoke-virtual {v3}, Lcom/xueqiu/android/base/b/aj$10;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/xueqiu/android/common/model/parser/GParser;-><init>(Ljava/lang/reflect/Type;)V

    .line 889
    invoke-static {v1, v0, p4, v2}, Lcom/xueqiu/android/base/b/x;->a(Ljava/lang/String;Ljava/util/Map;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 892
    iget-object v1, p0, Lcom/xueqiu/android/base/b/aj;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 893
    return-object v0
.end method

.method public final c(JJLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/PublicTimeline;",
            ">;>;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/PublicTimeline;",
            ">;>;"
        }
    .end annotation

    .prologue
    const-wide/16 v10, 0x0

    const/4 v3, 0x0

    const/4 v8, 0x1

    .line 861
    const/4 v2, 0x3

    new-array v4, v2, [Lorg/apache/http/message/BasicNameValuePair;

    const/4 v5, 0x0

    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "since_id"

    cmp-long v2, p1, v10

    if-nez v2, :cond_0

    move-object v2, v3

    .line 862
    :goto_0
    invoke-direct {v6, v7, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v4, v5

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "max_id"

    cmp-long v6, p3, v10

    if-nez v6, :cond_1

    .line 863
    :goto_1
    invoke-direct {v2, v5, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v4, v8

    const/4 v2, 0x2

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "count"

    const-string v6, "10"

    .line 864
    invoke-direct {v3, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v4, v2

    .line 866
    const-string v2, "/statuses/public_timeline"

    .line 25048
    invoke-static {v2, v8}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 867
    new-instance v3, Lcom/xueqiu/android/common/model/parser/PublicTimelineParser;

    invoke-direct {v3}, Lcom/xueqiu/android/common/model/parser/PublicTimelineParser;-><init>()V

    move-object/from16 v0, p5

    invoke-static {v2, v4, v0, v3}, Lcom/xueqiu/android/base/b/x;->a(Ljava/lang/String;[Lorg/apache/http/message/BasicNameValuePair;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v2

    .line 869
    iget-object v3, p0, Lcom/xueqiu/android/base/b/aj;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v3, v2}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 870
    return-object v2

    .line 862
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 863
    :cond_1
    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method public final c(JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
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

    .line 620
    const/4 v0, 0x4

    new-array v1, v0, [Lorg/apache/http/message/BasicNameValuePair;

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "page"

    const-string v3, "1"

    .line 621
    invoke-direct {v0, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v1, v5

    const/4 v0, 0x1

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "size"

    const-string v4, "1"

    .line 622
    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v0

    const/4 v0, 0x2

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "id"

    .line 623
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v0

    const/4 v2, 0x3

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "filter_retweet_text"

    .line 624
    invoke-static {}, Lcom/xueqiu/android/base/util/i;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {v3, v4, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    .line 626
    const-string v0, "/statuses/special/v2/show"

    .line 16044
    invoke-static {v0, v5}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 626
    new-instance v2, Lcom/xueqiu/android/common/model/parser/GParser;

    const-class v3, Lcom/google/gson/JsonObject;

    invoke-direct {v2, v3}, Lcom/xueqiu/android/common/model/parser/GParser;-><init>(Ljava/lang/reflect/Type;)V

    invoke-static {v0, v1, p3, v2}, Lcom/xueqiu/android/base/b/x;->a(Ljava/lang/String;[Lorg/apache/http/message/BasicNameValuePair;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 627
    iget-object v1, p0, Lcom/xueqiu/android/base/b/aj;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 628
    return-object v0

    .line 624
    :cond_0
    const-string v0, "1"

    goto :goto_0
.end method

.method public final c(Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lcom/xueqiu/android/community/model/UserNotification;",
            ">;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lcom/xueqiu/android/community/model/UserNotification;",
            ">;"
        }
    .end annotation

    .prologue
    .line 785
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 786
    const-wide/16 v2, -0x1

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 787
    const-string v1, "since_id"

    const-string v2, "-1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 789
    :cond_0
    const-string v1, "/statuses/mentions_last"

    .line 22044
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 790
    new-instance v2, Lcom/xueqiu/android/common/model/parser/GParser;

    const-string v3, "mention_last"

    const-class v4, Lcom/xueqiu/android/community/model/UserNotification;

    invoke-direct {v2, v3, v4}, Lcom/xueqiu/android/common/model/parser/GParser;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;)V

    .line 789
    invoke-static {v1, v0, p1, v2}, Lcom/xueqiu/android/base/b/x;->a(Ljava/lang/String;Ljava/util/Map;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 792
    iget-object v1, p0, Lcom/xueqiu/android/base/b/aj;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 793
    return-object v0
.end method

.method public final d(JILcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lcom/xueqiu/android/common/model/PagedList",
            "<",
            "Lcom/xueqiu/android/community/model/RewardCash;",
            ">;>;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lcom/xueqiu/android/common/model/PagedList",
            "<",
            "Lcom/xueqiu/android/community/model/RewardCash;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 909
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 910
    const-string v1, "comment_id"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 911
    const-string v1, "size"

    const-string v2, "20"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 912
    const-string v1, "page"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 913
    const-string v1, "/statuses/reward/comment/list"

    .line 29044
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 914
    new-instance v2, Lcom/xueqiu/android/common/model/parser/GParser;

    new-instance v3, Lcom/xueqiu/android/base/b/aj$12;

    invoke-direct {v3, p0}, Lcom/xueqiu/android/base/b/aj$12;-><init>(Lcom/xueqiu/android/base/b/aj;)V

    .line 916
    invoke-virtual {v3}, Lcom/xueqiu/android/base/b/aj$12;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/xueqiu/android/common/model/parser/GParser;-><init>(Ljava/lang/reflect/Type;)V

    .line 914
    invoke-static {v1, v0, p4, v2}, Lcom/xueqiu/android/base/b/x;->a(Ljava/lang/String;Ljava/util/Map;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 917
    iget-object v1, p0, Lcom/xueqiu/android/base/b/aj;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 918
    return-object v0
.end method

.method public final d(JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lcom/xueqiu/android/community/model/Status;",
            ">;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lcom/xueqiu/android/community/model/Status;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 701
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/http/message/BasicNameValuePair;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "id"

    .line 702
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v4

    .line 704
    const-string v1, "/favorites/destroy"

    .line 18044
    invoke-static {v1, v4}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 704
    new-instance v2, Lcom/xueqiu/android/common/model/parser/GParser;

    const-class v3, Lcom/xueqiu/android/community/model/Status;

    invoke-direct {v2, v3}, Lcom/xueqiu/android/common/model/parser/GParser;-><init>(Ljava/lang/reflect/Type;)V

    invoke-static {v1, v0, p3, v2}, Lcom/xueqiu/android/base/b/x;->b(Ljava/lang/String;[Lorg/apache/http/message/BasicNameValuePair;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 705
    iget-object v1, p0, Lcom/xueqiu/android/base/b/aj;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 706
    return-object v0
.end method

.method public final d(Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lcom/xueqiu/android/community/model/UserNotification;",
            ">;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lcom/xueqiu/android/community/model/UserNotification;",
            ">;"
        }
    .end annotation

    .prologue
    .line 924
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 925
    const-string v1, "since_id"

    const-string v2, "-1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 926
    const-string v1, "/statuses/paid_mention/last"

    .line 30044
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 927
    new-instance v2, Lcom/xueqiu/android/common/model/parser/GParser;

    const-string v3, "paid_mention_last"

    const-class v4, Lcom/xueqiu/android/community/model/UserNotification;

    invoke-direct {v2, v3, v4}, Lcom/xueqiu/android/common/model/parser/GParser;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;)V

    invoke-static {v1, v0, p1, v2}, Lcom/xueqiu/android/base/b/x;->a(Ljava/lang/String;Ljava/util/Map;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 929
    iget-object v1, p0, Lcom/xueqiu/android/base/b/aj;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 930
    return-object v0
.end method

.method public final e(JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lcom/xueqiu/android/community/model/Status;",
            ">;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lcom/xueqiu/android/community/model/Status;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 764
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/http/message/BasicNameValuePair;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "id"

    .line 765
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v4

    .line 767
    const-string v1, "/favorites/create"

    .line 20044
    invoke-static {v1, v4}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 767
    new-instance v2, Lcom/xueqiu/android/common/model/parser/GParser;

    const-class v3, Lcom/xueqiu/android/community/model/Status;

    invoke-direct {v2, v3}, Lcom/xueqiu/android/common/model/parser/GParser;-><init>(Ljava/lang/reflect/Type;)V

    invoke-static {v1, v0, p3, v2}, Lcom/xueqiu/android/base/b/x;->b(Ljava/lang/String;[Lorg/apache/http/message/BasicNameValuePair;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 768
    iget-object v1, p0, Lcom/xueqiu/android/base/b/aj;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 769
    return-object v0
.end method

.method public final e(Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
    const/4 v4, 0x0

    .line 1028
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/http/message/BasicNameValuePair;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "device_id"

    .line 1029
    invoke-static {}, Lcom/xueqiu/android/base/util/i;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v4

    .line 1032
    const-string v1, "/etc/luckymoney/sharing/comment"

    .line 37044
    invoke-static {v1, v4}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 1032
    new-instance v2, Lcom/xueqiu/android/common/model/parser/GParser;

    const-class v3, Lcom/google/gson/JsonObject;

    invoke-direct {v2, v3}, Lcom/xueqiu/android/common/model/parser/GParser;-><init>(Ljava/lang/reflect/Type;)V

    invoke-static {v1, v0, p1, v2}, Lcom/xueqiu/android/base/b/x;->b(Ljava/lang/String;[Lorg/apache/http/message/BasicNameValuePair;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 1033
    iget-object v1, p0, Lcom/xueqiu/android/base/b/aj;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 1034
    return-object v0
.end method

.method public final f(JLcom/xueqiu/android/base/b/p;)Lcom/android/volley/n;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/android/volley/n",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 850
    const/4 v0, 0x1

    new-array v1, v0, [Lorg/apache/http/message/BasicNameValuePair;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "since_id"

    const-wide/16 v4, 0x0

    cmp-long v0, p1, v4

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 851
    :goto_0
    invoke-direct {v2, v3, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v6

    .line 852
    const-string v0, "/statuses/livenews/unread_count"

    .line 25044
    invoke-static {v0, v6}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 853
    new-instance v2, Lcom/xueqiu/android/common/model/parser/GParser;

    const-string v3, "unread_count"

    const-class v4, Ljava/lang/Integer;

    invoke-direct {v2, v3, v4}, Lcom/xueqiu/android/common/model/parser/GParser;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;)V

    invoke-static {v0, v1, p3, v2}, Lcom/xueqiu/android/base/b/x;->a(Ljava/lang/String;[Lorg/apache/http/message/BasicNameValuePair;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 855
    iget-object v1, p0, Lcom/xueqiu/android/base/b/aj;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 856
    return-object v0

    .line 851
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final f(Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
    const/4 v4, 0x0

    .line 1038
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/http/message/BasicNameValuePair;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "device_id"

    .line 1039
    invoke-static {}, Lcom/xueqiu/android/base/util/i;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v4

    .line 1042
    const-string v1, "/etc/luckymoney/sharing/comment/percentage"

    .line 38044
    invoke-static {v1, v4}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 1042
    new-instance v2, Lcom/xueqiu/android/common/model/parser/GParser;

    const-class v3, Lcom/google/gson/JsonObject;

    invoke-direct {v2, v3}, Lcom/xueqiu/android/common/model/parser/GParser;-><init>(Ljava/lang/reflect/Type;)V

    invoke-static {v1, v0, p1, v2}, Lcom/xueqiu/android/base/b/x;->a(Ljava/lang/String;[Lorg/apache/http/message/BasicNameValuePair;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 1043
    iget-object v1, p0, Lcom/xueqiu/android/base/b/aj;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 1044
    return-object v0
.end method

.method public final g(JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lcom/xueqiu/android/common/model/PagedList",
            "<",
            "Lcom/xueqiu/android/community/model/RewardCash;",
            ">;>;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lcom/xueqiu/android/common/model/PagedList",
            "<",
            "Lcom/xueqiu/android/community/model/RewardCash;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 897
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 898
    const-string v1, "status_id"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 899
    const-string v1, "size"

    const-string v2, "20"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 900
    const-string v1, "/statuses/reward/list_by_user"

    .line 28044
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 901
    new-instance v2, Lcom/xueqiu/android/common/model/parser/GParser;

    new-instance v3, Lcom/xueqiu/android/base/b/aj$11;

    invoke-direct {v3, p0}, Lcom/xueqiu/android/base/b/aj$11;-><init>(Lcom/xueqiu/android/base/b/aj;)V

    .line 903
    invoke-virtual {v3}, Lcom/xueqiu/android/base/b/aj$11;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/xueqiu/android/common/model/parser/GParser;-><init>(Ljava/lang/reflect/Type;)V

    .line 901
    invoke-static {v1, v0, p3, v2}, Lcom/xueqiu/android/base/b/x;->a(Ljava/lang/String;Ljava/util/Map;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 904
    iget-object v1, p0, Lcom/xueqiu/android/base/b/aj;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 905
    return-object v0
.end method

.method public final h(JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Lcom/xueqiu/android/common/model/PagedList",
            "<",
            "Lcom/xueqiu/android/community/model/Question;",
            ">;>;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Lcom/xueqiu/android/common/model/PagedList",
            "<",
            "Lcom/xueqiu/android/community/model/Question;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 972
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/apache/http/message/BasicNameValuePair;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "user_id"

    .line 973
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v5

    const/4 v1, 0x1

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "page"

    const-string v4, "1"

    .line 974
    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "size"

    const-string v4, "1"

    .line 975
    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 977
    const-string v1, "/statuses/user_timeline/answers"

    .line 33044
    invoke-static {v1, v5}, Lcom/xueqiu/android/base/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 977
    new-instance v2, Lcom/xueqiu/android/common/model/parser/GParser;

    new-instance v3, Lcom/xueqiu/android/base/b/aj$15;

    invoke-direct {v3, p0}, Lcom/xueqiu/android/base/b/aj$15;-><init>(Lcom/xueqiu/android/base/b/aj;)V

    .line 979
    invoke-virtual {v3}, Lcom/xueqiu/android/base/b/aj$15;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/xueqiu/android/common/model/parser/GParser;-><init>(Ljava/lang/reflect/Type;)V

    .line 977
    invoke-static {v1, v0, p3, v2}, Lcom/xueqiu/android/base/b/x;->a(Ljava/lang/String;[Lorg/apache/http/message/BasicNameValuePair;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 980
    iget-object v1, p0, Lcom/xueqiu/android/base/b/aj;->f:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;

    .line 981
    return-object v0
.end method
